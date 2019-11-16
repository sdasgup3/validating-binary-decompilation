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
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fcd7_type = type <{ [8 x i8] }>
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
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fcd7 = global %G__0x57fcd7_type zeroinitializer

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

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @special_rescue6_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4688d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4688d0, %struct.Memory** %MEMORY
  %loadMem_4688d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i425 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i425
  %27 = load i64, i64* %PC.i424
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i424
  store i64 %26, i64* %RBP.i426, align 8
  store %struct.Memory* %loadMem_4688d1, %struct.Memory** %MEMORY
  %loadMem_4688d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i551 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i551
  %36 = load i64, i64* %PC.i550
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i550
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i551, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_4688d4, %struct.Memory** %MEMORY
  %loadMem_4688d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i567
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i567
  store i64 3, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_4688d8, %struct.Memory** %MEMORY
  %loadMem_4688dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i628 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i629
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i628
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i627
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i627
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_4688dd, %struct.Memory** %MEMORY
  %loadMem_4688e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i625 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i626
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i625
  %103 = load i64, i64* %PC.i624
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i624
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_4688e0, %struct.Memory** %MEMORY
  %loadMem_4688e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RDX.i622 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i623
  %116 = sub i64 %115, 24
  %117 = load i64, i64* %RDX.i622
  %118 = load i64, i64* %PC.i621
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i621
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  store %struct.Memory* %loadMem_4688e4, %struct.Memory** %MEMORY
  %loadMem_4688e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i620
  %131 = sub i64 %130, 4
  %132 = load i64, i64* %PC.i618
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i618
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RDX.i619, align 8
  store %struct.Memory* %loadMem_4688e8, %struct.Memory** %MEMORY
  %loadMem_4688ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RDX.i616 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RDI.i617 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RDX.i616
  %147 = add i64 %146, 12099168
  %148 = load i64, i64* %PC.i615
  %149 = add i64 %148, 8
  store i64 %149, i64* %PC.i615
  %150 = inttoptr i64 %147 to i8*
  %151 = load i8, i8* %150
  %152 = zext i8 %151 to i64
  store i64 %152, i64* %RDI.i617, align 8
  store %struct.Memory* %loadMem_4688ec, %struct.Memory** %MEMORY
  %loadMem_4688f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 11
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i614
  %163 = sub i64 %162, 28
  %164 = load i32, i32* %EDI.i
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC.i613
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i613
  %168 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %168
  store %struct.Memory* %loadMem_4688f4, %struct.Memory** %MEMORY
  %loadMem_4688f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RAX.i611
  %179 = load i64, i64* %RBP.i612
  %180 = sub i64 %179, 28
  %181 = load i64, i64* %PC.i610
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC.i610
  %183 = trunc i64 %178 to i32
  %184 = inttoptr i64 %180 to i32*
  %185 = load i32, i32* %184
  %186 = sub i32 %183, %185
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX.i611, align 8
  %188 = icmp ult i32 %183, %185
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %189, i8* %190, align 1
  %191 = and i32 %186, 255
  %192 = call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %195, i8* %196, align 1
  %197 = xor i32 %185, %183
  %198 = xor i32 %197, %186
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %201, i8* %202, align 1
  %203 = icmp eq i32 %186, 0
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %204, i8* %205, align 1
  %206 = lshr i32 %186, 31
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %207, i8* %208, align 1
  %209 = lshr i32 %183, 31
  %210 = lshr i32 %185, 31
  %211 = xor i32 %210, %209
  %212 = xor i32 %206, %209
  %213 = add i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %215, i8* %216, align 1
  store %struct.Memory* %loadMem_4688f7, %struct.Memory** %MEMORY
  %loadMem_4688fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %EAX.i608 = bitcast %union.anon* %222 to i32*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 15
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %RBP.i609
  %227 = sub i64 %226, 32
  %228 = load i32, i32* %EAX.i608
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC.i607
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC.i607
  %232 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %232
  store %struct.Memory* %loadMem_4688fa, %struct.Memory** %MEMORY
  %loadMem_4688fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 11
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RDI.i605 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i606
  %243 = sub i64 %242, 4
  %244 = load i64, i64* %PC.i604
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i604
  %246 = inttoptr i64 %243 to i32*
  %247 = load i32, i32* %246
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RDI.i605, align 8
  store %struct.Memory* %loadMem_4688fd, %struct.Memory** %MEMORY
  %loadMem1_468900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %PC.i603
  %253 = add i64 %252, -364928
  %254 = load i64, i64* %PC.i603
  %255 = add i64 %254, 5
  %256 = load i64, i64* %PC.i603
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC.i603
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %255, i64* %261
  store i64 %260, i64* %258, align 8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %253, i64* %262, align 8
  store %struct.Memory* %loadMem1_468900, %struct.Memory** %MEMORY
  %loadMem2_468900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468900 = load i64, i64* %3
  %call2_468900 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_468900, %struct.Memory* %loadMem2_468900)
  store %struct.Memory* %call2_468900, %struct.Memory** %MEMORY
  %loadMem_468905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %EAX.i601 = bitcast %union.anon* %268 to i32*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i602
  %273 = sub i64 %272, 68
  %274 = load i32, i32* %EAX.i601
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC.i600
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC.i600
  %278 = inttoptr i64 %273 to i32*
  store i32 %274, i32* %278
  store %struct.Memory* %loadMem_468905, %struct.Memory** %MEMORY
  %loadMem_468908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i599
  %286 = sub i64 %285, 68
  %287 = load i64, i64* %PC.i598
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC.i598
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = sub i32 %290, 3
  %292 = icmp ult i32 %290, 3
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %293, i8* %294, align 1
  %295 = and i32 %291, 255
  %296 = call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %299, i8* %300, align 1
  %301 = xor i32 %290, 3
  %302 = xor i32 %301, %291
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %305, i8* %306, align 1
  %307 = icmp eq i32 %291, 0
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %308, i8* %309, align 1
  %310 = lshr i32 %291, 31
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %311, i8* %312, align 1
  %313 = lshr i32 %290, 31
  %314 = xor i32 %310, %313
  %315 = add i32 %314, %313
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %317, i8* %318, align 1
  store %struct.Memory* %loadMem_468908, %struct.Memory** %MEMORY
  %loadMem_46890c = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i597
  %323 = add i64 %322, 16
  %324 = load i64, i64* %PC.i597
  %325 = add i64 %324, 6
  %326 = load i64, i64* %PC.i597
  %327 = add i64 %326, 6
  store i64 %327, i64* %PC.i597
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %329 = load i8, i8* %328, align 1
  store i8 %329, i8* %BRANCH_TAKEN, align 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %331 = icmp ne i8 %329, 0
  %332 = select i1 %331, i64 %323, i64 %325
  store i64 %332, i64* %330, align 8
  store %struct.Memory* %loadMem_46890c, %struct.Memory** %MEMORY
  %loadBr_46890c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46890c = icmp eq i8 %loadBr_46890c, 1
  br i1 %cmpBr_46890c, label %block_.L_46891c, label %block_468912

block_468912:                                     ; preds = %entry
  %loadMem_468912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 15
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RBP.i596
  %340 = sub i64 %339, 68
  %341 = load i64, i64* %PC.i595
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC.i595
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343
  %345 = sub i32 %344, 4
  %346 = icmp ult i32 %344, 4
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %347, i8* %348, align 1
  %349 = and i32 %345, 255
  %350 = call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %353, i8* %354, align 1
  %355 = xor i32 %344, 4
  %356 = xor i32 %355, %345
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %359, i8* %360, align 1
  %361 = icmp eq i32 %345, 0
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %362, i8* %363, align 1
  %364 = lshr i32 %345, 31
  %365 = trunc i32 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %365, i8* %366, align 1
  %367 = lshr i32 %344, 31
  %368 = xor i32 %364, %367
  %369 = add i32 %368, %367
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %371, i8* %372, align 1
  store %struct.Memory* %loadMem_468912, %struct.Memory** %MEMORY
  %loadMem_468916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %PC.i594
  %377 = add i64 %376, 11
  %378 = load i64, i64* %PC.i594
  %379 = add i64 %378, 6
  %380 = load i64, i64* %PC.i594
  %381 = add i64 %380, 6
  store i64 %381, i64* %PC.i594
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %383 = load i8, i8* %382, align 1
  %384 = icmp eq i8 %383, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %BRANCH_TAKEN, align 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %387 = select i1 %384, i64 %377, i64 %379
  store i64 %387, i64* %386, align 8
  store %struct.Memory* %loadMem_468916, %struct.Memory** %MEMORY
  %loadBr_468916 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468916 = icmp eq i8 %loadBr_468916, 1
  br i1 %cmpBr_468916, label %block_.L_468921, label %block_.L_46891c

block_.L_46891c:                                  ; preds = %block_468912, %entry
  %loadMem_46891c = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %390 to i64*
  %391 = load i64, i64* %PC.i593
  %392 = add i64 %391, 94
  %393 = load i64, i64* %PC.i593
  %394 = add i64 %393, 5
  store i64 %394, i64* %PC.i593
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %392, i64* %395, align 8
  store %struct.Memory* %loadMem_46891c, %struct.Memory** %MEMORY
  br label %block_.L_46897a

block_.L_468921:                                  ; preds = %block_468912
  %loadMem_468921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 11
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RDI.i592 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %PC.i591
  %403 = add i64 %402, 10
  store i64 %403, i64* %PC.i591
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i592, align 8
  store %struct.Memory* %loadMem_468921, %struct.Memory** %MEMORY
  %loadMem_46892b = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 9
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RSI.i590 = bitcast %union.anon* %409 to i64*
  %410 = load i64, i64* %PC.i589
  %411 = add i64 %410, 5
  store i64 %411, i64* %PC.i589
  store i64 2016, i64* %RSI.i590, align 8
  store %struct.Memory* %loadMem_46892b, %struct.Memory** %MEMORY
  %loadMem_468930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 7
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RDX.i588 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %PC.i587
  %419 = add i64 %418, 10
  store i64 %419, i64* %PC.i587
  store i64 ptrtoint (%G__0x57fcd7_type* @G__0x57fcd7 to i64), i64* %RDX.i588, align 8
  store %struct.Memory* %loadMem_468930, %struct.Memory** %MEMORY
  %loadMem_46893a = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %PC.i585
  %427 = add i64 %426, 5
  store i64 %427, i64* %PC.i585
  store i64 20, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_46893a, %struct.Memory** %MEMORY
  %loadMem_46893f = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i584
  %438 = sub i64 %437, 4
  %439 = load i64, i64* %PC.i582
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC.i582
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX.i583, align 8
  store %struct.Memory* %loadMem_46893f, %struct.Memory** %MEMORY
  %loadMem_468942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %EAX.i580 = bitcast %union.anon* %449 to i32*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 15
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %RBP.i581
  %454 = sub i64 %453, 80
  %455 = load i32, i32* %EAX.i580
  %456 = zext i32 %455 to i64
  %457 = load i64, i64* %PC.i579
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC.i579
  %459 = inttoptr i64 %454 to i32*
  store i32 %455, i32* %459
  store %struct.Memory* %loadMem_468942, %struct.Memory** %MEMORY
  %loadMem_468945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 5
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %ECX.i577 = bitcast %union.anon* %465 to i32*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %468 to i64*
  %469 = load i32, i32* %ECX.i577
  %470 = zext i32 %469 to i64
  %471 = load i64, i64* %PC.i576
  %472 = add i64 %471, 2
  store i64 %472, i64* %PC.i576
  %473 = and i64 %470, 4294967295
  store i64 %473, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_468945, %struct.Memory** %MEMORY
  %loadMem_468947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 7
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RDX.i574 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %RBP.i575
  %484 = sub i64 %483, 88
  %485 = load i64, i64* %RDX.i574
  %486 = load i64, i64* %PC.i573
  %487 = add i64 %486, 4
  store i64 %487, i64* %PC.i573
  %488 = inttoptr i64 %484 to i64*
  store i64 %485, i64* %488
  store %struct.Memory* %loadMem_468947, %struct.Memory** %MEMORY
  %loadMem_46894b = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %PC.i572
  %493 = add i64 %492, 1
  store i64 %493, i64* %PC.i572
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %496 = bitcast %union.anon* %495 to i32*
  %497 = load i32, i32* %496, align 8
  %498 = sext i32 %497 to i64
  %499 = lshr i64 %498, 32
  store i64 %499, i64* %494, align 8
  store %struct.Memory* %loadMem_46894b, %struct.Memory** %MEMORY
  %loadMem_46894c = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 5
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i571
  %510 = sub i64 %509, 80
  %511 = load i64, i64* %PC.i569
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC.i569
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_46894c, %struct.Memory** %MEMORY
  %loadMem_46894f = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %ECX.i565 = bitcast %union.anon* %521 to i32*
  %522 = load i32, i32* %ECX.i565
  %523 = zext i32 %522 to i64
  %524 = load i64, i64* %PC.i564
  %525 = add i64 %524, 2
  store i64 %525, i64* %PC.i564
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %527 = bitcast %union.anon* %526 to i32*
  %528 = load i32, i32* %527, align 8
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %531 = bitcast %union.anon* %530 to i32*
  %532 = load i32, i32* %531, align 8
  %533 = zext i32 %532 to i64
  %534 = shl i64 %523, 32
  %535 = ashr exact i64 %534, 32
  %536 = shl i64 %533, 32
  %537 = or i64 %536, %529
  %538 = sdiv i64 %537, %535
  %539 = shl i64 %538, 32
  %540 = ashr exact i64 %539, 32
  %541 = icmp eq i64 %538, %540
  br i1 %541, label %546, label %542

; <label>:542:                                    ; preds = %block_.L_468921
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %544, %struct.Memory* %loadMem_46894f)
  br label %routine_idivl__ecx.exit566

; <label>:546:                                    ; preds = %block_.L_468921
  %547 = srem i64 %537, %535
  %548 = getelementptr inbounds %union.anon, %union.anon* %526, i64 0, i32 0
  %549 = and i64 %538, 4294967295
  store i64 %549, i64* %548, align 8
  %550 = getelementptr inbounds %union.anon, %union.anon* %530, i64 0, i32 0
  %551 = and i64 %547, 4294967295
  store i64 %551, i64* %550, align 8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %552, align 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %553, align 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %554, align 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %555, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %556, align 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %557, align 1
  br label %routine_idivl__ecx.exit566

routine_idivl__ecx.exit566:                       ; preds = %542, %546
  %558 = phi %struct.Memory* [ %545, %542 ], [ %loadMem_46894f, %546 ]
  store %struct.Memory* %558, %struct.Memory** %MEMORY
  %loadMem_468951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RAX.i563
  %566 = load i64, i64* %PC.i562
  %567 = add i64 %566, 3
  store i64 %567, i64* %PC.i562
  %568 = trunc i64 %565 to i32
  %569 = sub i32 %568, 1
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i563, align 8
  %571 = icmp ult i32 %568, 1
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %572, i8* %573, align 1
  %574 = and i32 %569, 255
  %575 = call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %578, i8* %579, align 1
  %580 = xor i64 1, %565
  %581 = trunc i64 %580 to i32
  %582 = xor i32 %581, %569
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %585, i8* %586, align 1
  %587 = icmp eq i32 %569, 0
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %588, i8* %589, align 1
  %590 = lshr i32 %569, 31
  %591 = trunc i32 %590 to i8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %591, i8* %592, align 1
  %593 = lshr i32 %568, 31
  %594 = xor i32 %590, %593
  %595 = add i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %597, i8* %598, align 1
  store %struct.Memory* %loadMem_468951, %struct.Memory** %MEMORY
  %loadMem_468954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 17
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %R8D.i560 = bitcast %union.anon* %604 to i32*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 15
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %607 to i64*
  %608 = bitcast i32* %R8D.i560 to i64*
  %609 = load i64, i64* %RBP.i561
  %610 = sub i64 %609, 4
  %611 = load i64, i64* %PC.i559
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i559
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %608, align 8
  store %struct.Memory* %loadMem_468954, %struct.Memory** %MEMORY
  %loadMem_468958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %621 to i32*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RBP.i558
  %626 = sub i64 %625, 92
  %627 = load i32, i32* %EAX.i557
  %628 = zext i32 %627 to i64
  %629 = load i64, i64* %PC.i556
  %630 = add i64 %629, 3
  store i64 %630, i64* %PC.i556
  %631 = inttoptr i64 %626 to i32*
  store i32 %627, i32* %631
  store %struct.Memory* %loadMem_468958, %struct.Memory** %MEMORY
  %loadMem_46895b = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 17
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %R8D.i554 = bitcast %union.anon* %637 to i32*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %640 to i64*
  %641 = load i32, i32* %R8D.i554
  %642 = zext i32 %641 to i64
  %643 = load i64, i64* %PC.i553
  %644 = add i64 %643, 3
  store i64 %644, i64* %PC.i553
  %645 = and i64 %642, 4294967295
  store i64 %645, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_46895b, %struct.Memory** %MEMORY
  %loadMem_46895e = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %PC.i552
  %650 = add i64 %649, 1
  store i64 %650, i64* %PC.i552
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %653 = bitcast %union.anon* %652 to i32*
  %654 = load i32, i32* %653, align 8
  %655 = sext i32 %654 to i64
  %656 = lshr i64 %655, 32
  store i64 %656, i64* %651, align 8
  store %struct.Memory* %loadMem_46895e, %struct.Memory** %MEMORY
  %loadMem_46895f = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 5
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %ECX.i548 = bitcast %union.anon* %662 to i32*
  %663 = load i32, i32* %ECX.i548
  %664 = zext i32 %663 to i64
  %665 = load i64, i64* %PC.i547
  %666 = add i64 %665, 2
  store i64 %666, i64* %PC.i547
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %668 = bitcast %union.anon* %667 to i32*
  %669 = load i32, i32* %668, align 8
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %672 = bitcast %union.anon* %671 to i32*
  %673 = load i32, i32* %672, align 8
  %674 = zext i32 %673 to i64
  %675 = shl i64 %664, 32
  %676 = ashr exact i64 %675, 32
  %677 = shl i64 %674, 32
  %678 = or i64 %677, %670
  %679 = sdiv i64 %678, %676
  %680 = shl i64 %679, 32
  %681 = ashr exact i64 %680, 32
  %682 = icmp eq i64 %679, %681
  br i1 %682, label %687, label %683

; <label>:683:                                    ; preds = %routine_idivl__ecx.exit566
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %685 = load i64, i64* %684, align 8
  %686 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %685, %struct.Memory* %loadMem_46895f)
  br label %routine_idivl__ecx.exit549

; <label>:687:                                    ; preds = %routine_idivl__ecx.exit566
  %688 = srem i64 %678, %676
  %689 = getelementptr inbounds %union.anon, %union.anon* %667, i64 0, i32 0
  %690 = and i64 %679, 4294967295
  store i64 %690, i64* %689, align 8
  %691 = getelementptr inbounds %union.anon, %union.anon* %671, i64 0, i32 0
  %692 = and i64 %688, 4294967295
  store i64 %692, i64* %691, align 8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %693, align 1
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %694, align 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %695, align 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %696, align 1
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %697, align 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %698, align 1
  br label %routine_idivl__ecx.exit549

routine_idivl__ecx.exit549:                       ; preds = %683, %687
  %699 = phi %struct.Memory* [ %686, %683 ], [ %loadMem_46895f, %687 ]
  store %struct.Memory* %699, %struct.Memory** %MEMORY
  %loadMem_468961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 7
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RDX.i546
  %707 = load i64, i64* %PC.i545
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i545
  %709 = trunc i64 %706 to i32
  %710 = sub i32 %709, 1
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX.i546, align 8
  %712 = icmp ult i32 %709, 1
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %713, i8* %714, align 1
  %715 = and i32 %710, 255
  %716 = call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %719, i8* %720, align 1
  %721 = xor i64 1, %706
  %722 = trunc i64 %721 to i32
  %723 = xor i32 %722, %710
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %726, i8* %727, align 1
  %728 = icmp eq i32 %710, 0
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %729, i8* %730, align 1
  %731 = lshr i32 %710, 31
  %732 = trunc i32 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %732, i8* %733, align 1
  %734 = lshr i32 %709, 31
  %735 = xor i32 %731, %734
  %736 = add i32 %735, %734
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %738, i8* %739, align 1
  store %struct.Memory* %loadMem_468961, %struct.Memory** %MEMORY
  %loadMem_468964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 15
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 19
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %R9.i544 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i543
  %750 = sub i64 %749, 88
  %751 = load i64, i64* %PC.i542
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC.i542
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753
  store i64 %754, i64* %R9.i544, align 8
  store %struct.Memory* %loadMem_468964, %struct.Memory** %MEMORY
  %loadMem_468968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 7
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %EDX.i540 = bitcast %union.anon* %760 to i32*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 15
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %763 to i64*
  %764 = load i64, i64* %RBP.i541
  %765 = sub i64 %764, 96
  %766 = load i32, i32* %EDX.i540
  %767 = zext i32 %766 to i64
  %768 = load i64, i64* %PC.i539
  %769 = add i64 %768, 3
  store i64 %769, i64* %PC.i539
  %770 = inttoptr i64 %765 to i32*
  store i32 %766, i32* %770
  store %struct.Memory* %loadMem_468968, %struct.Memory** %MEMORY
  %loadMem_46896b = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 7
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RDX.i538 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 19
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %R9.i = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %R9.i
  %781 = load i64, i64* %PC.i537
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i537
  store i64 %780, i64* %RDX.i538, align 8
  store %struct.Memory* %loadMem_46896b, %struct.Memory** %MEMORY
  %loadMem_46896e = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 5
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 15
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %791 to i64*
  %792 = load i64, i64* %RBP.i536
  %793 = sub i64 %792, 92
  %794 = load i64, i64* %PC.i534
  %795 = add i64 %794, 3
  store i64 %795, i64* %PC.i534
  %796 = inttoptr i64 %793 to i32*
  %797 = load i32, i32* %796
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_46896e, %struct.Memory** %MEMORY
  %loadMem_468971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 17
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %804 to i32*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 15
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %807 to i64*
  %808 = bitcast i32* %R8D.i to i64*
  %809 = load i64, i64* %RBP.i533
  %810 = sub i64 %809, 96
  %811 = load i64, i64* %PC.i532
  %812 = add i64 %811, 4
  store i64 %812, i64* %PC.i532
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %808, align 8
  store %struct.Memory* %loadMem_468971, %struct.Memory** %MEMORY
  %loadMem1_468975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %PC.i531
  %820 = add i64 %819, -92389
  %821 = load i64, i64* %PC.i531
  %822 = add i64 %821, 5
  %823 = load i64, i64* %PC.i531
  %824 = add i64 %823, 5
  store i64 %824, i64* %PC.i531
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %826 = load i64, i64* %825, align 8
  %827 = add i64 %826, -8
  %828 = inttoptr i64 %827 to i64*
  store i64 %822, i64* %828
  store i64 %827, i64* %825, align 8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %820, i64* %829, align 8
  store %struct.Memory* %loadMem1_468975, %struct.Memory** %MEMORY
  %loadMem2_468975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468975 = load i64, i64* %3
  %call2_468975 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_468975, %struct.Memory* %loadMem2_468975)
  store %struct.Memory* %call2_468975, %struct.Memory** %MEMORY
  br label %block_.L_46897a

block_.L_46897a:                                  ; preds = %routine_idivl__ecx.exit549, %block_.L_46891c
  %loadMem_46897a = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 15
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RBP.i530
  %837 = sub i64 %836, 64
  %838 = load i64, i64* %PC.i529
  %839 = add i64 %838, 7
  store i64 %839, i64* %PC.i529
  %840 = inttoptr i64 %837 to i32*
  store i32 0, i32* %840
  store %struct.Memory* %loadMem_46897a, %struct.Memory** %MEMORY
  br label %block_.L_468981

block_.L_468981:                                  ; preds = %block_.L_468d2f, %block_.L_46897a
  %loadMem_468981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 15
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RBP.i528
  %851 = sub i64 %850, 64
  %852 = load i64, i64* %PC.i526
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i526
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_468981, %struct.Memory** %MEMORY
  %loadMem_468984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 1
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %EAX.i524 = bitcast %union.anon* %862 to i32*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %865 to i64*
  %866 = load i32, i32* %EAX.i524
  %867 = zext i32 %866 to i64
  %868 = load i64, i64* %RBP.i525
  %869 = sub i64 %868, 68
  %870 = load i64, i64* %PC.i523
  %871 = add i64 %870, 3
  store i64 %871, i64* %PC.i523
  %872 = inttoptr i64 %869 to i32*
  %873 = load i32, i32* %872
  %874 = sub i32 %866, %873
  %875 = icmp ult i32 %866, %873
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %876, i8* %877, align 1
  %878 = and i32 %874, 255
  %879 = call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %882, i8* %883, align 1
  %884 = xor i32 %873, %866
  %885 = xor i32 %884, %874
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %888, i8* %889, align 1
  %890 = icmp eq i32 %874, 0
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %891, i8* %892, align 1
  %893 = lshr i32 %874, 31
  %894 = trunc i32 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %894, i8* %895, align 1
  %896 = lshr i32 %866, 31
  %897 = lshr i32 %873, 31
  %898 = xor i32 %897, %896
  %899 = xor i32 %893, %896
  %900 = add i32 %899, %898
  %901 = icmp eq i32 %900, 2
  %902 = zext i1 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %902, i8* %903, align 1
  store %struct.Memory* %loadMem_468984, %struct.Memory** %MEMORY
  %loadMem_468987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %PC.i522
  %908 = add i64 %907, 950
  %909 = load i64, i64* %PC.i522
  %910 = add i64 %909, 6
  %911 = load i64, i64* %PC.i522
  %912 = add i64 %911, 6
  store i64 %912, i64* %PC.i522
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %914 = load i8, i8* %913, align 1
  %915 = icmp ne i8 %914, 0
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %917 = load i8, i8* %916, align 1
  %918 = icmp ne i8 %917, 0
  %919 = xor i1 %915, %918
  %920 = xor i1 %919, true
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %BRANCH_TAKEN, align 1
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %923 = select i1 %919, i64 %910, i64 %908
  store i64 %923, i64* %922, align 8
  store %struct.Memory* %loadMem_468987, %struct.Memory** %MEMORY
  %loadBr_468987 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468987 = icmp eq i8 %loadBr_468987, 1
  br i1 %cmpBr_468987, label %block_.L_468d3d, label %block_46898d

block_46898d:                                     ; preds = %block_.L_468981
  %loadMem_46898d = load %struct.Memory*, %struct.Memory** %MEMORY
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 33
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 1
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 15
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %RBP.i521
  %934 = sub i64 %933, 16
  %935 = load i64, i64* %PC.i519
  %936 = add i64 %935, 4
  store i64 %936, i64* %PC.i519
  %937 = inttoptr i64 %934 to i64*
  %938 = load i64, i64* %937
  store i64 %938, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_46898d, %struct.Memory** %MEMORY
  %loadMem_468991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 5
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i518
  %949 = sub i64 %948, 64
  %950 = load i64, i64* %PC.i516
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC.i516
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952
  %954 = sext i32 %953 to i64
  store i64 %954, i64* %RCX.i517, align 8
  store %struct.Memory* %loadMem_468991, %struct.Memory** %MEMORY
  %loadMem_468995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 5
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 7
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RAX.i513
  %968 = load i64, i64* %RCX.i514
  %969 = mul i64 %968, 4
  %970 = add i64 %969, %967
  %971 = load i64, i64* %PC.i512
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i512
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RDX.i515, align 8
  store %struct.Memory* %loadMem_468995, %struct.Memory** %MEMORY
  %loadMem_468998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 7
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %EDX.i510 = bitcast %union.anon* %981 to i32*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RBP.i511
  %986 = sub i64 %985, 36
  %987 = load i32, i32* %EDX.i510
  %988 = zext i32 %987 to i64
  %989 = load i64, i64* %PC.i509
  %990 = add i64 %989, 3
  store i64 %990, i64* %PC.i509
  %991 = inttoptr i64 %986 to i32*
  store i32 %987, i32* %991
  store %struct.Memory* %loadMem_468998, %struct.Memory** %MEMORY
  %loadMem_46899b = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i508
  %999 = sub i64 %998, 56
  %1000 = load i64, i64* %PC.i507
  %1001 = add i64 %1000, 7
  store i64 %1001, i64* %PC.i507
  %1002 = inttoptr i64 %999 to i32*
  store i32 0, i32* %1002
  store %struct.Memory* %loadMem_46899b, %struct.Memory** %MEMORY
  br label %block_.L_4689a2

block_.L_4689a2:                                  ; preds = %block_.L_468d1c, %block_46898d
  %loadMem_4689a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 15
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RBP.i506
  %1010 = sub i64 %1009, 56
  %1011 = load i64, i64* %PC.i505
  %1012 = add i64 %1011, 4
  store i64 %1012, i64* %PC.i505
  %1013 = inttoptr i64 %1010 to i32*
  %1014 = load i32, i32* %1013
  %1015 = sub i32 %1014, 4
  %1016 = icmp ult i32 %1014, 4
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1017, i8* %1018, align 1
  %1019 = and i32 %1015, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1
  %1025 = xor i32 %1014, 4
  %1026 = xor i32 %1025, %1015
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1029, i8* %1030, align 1
  %1031 = icmp eq i32 %1015, 0
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1032, i8* %1033, align 1
  %1034 = lshr i32 %1015, 31
  %1035 = trunc i32 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i32 %1014, 31
  %1038 = xor i32 %1034, %1037
  %1039 = add i32 %1038, %1037
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1041, i8* %1042, align 1
  store %struct.Memory* %loadMem_4689a2, %struct.Memory** %MEMORY
  %loadMem_4689a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %PC.i504
  %1047 = add i64 %1046, 900
  %1048 = load i64, i64* %PC.i504
  %1049 = add i64 %1048, 6
  %1050 = load i64, i64* %PC.i504
  %1051 = add i64 %1050, 6
  store i64 %1051, i64* %PC.i504
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1053 = load i8, i8* %1052, align 1
  %1054 = icmp ne i8 %1053, 0
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1056 = load i8, i8* %1055, align 1
  %1057 = icmp ne i8 %1056, 0
  %1058 = xor i1 %1054, %1057
  %1059 = xor i1 %1058, true
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %BRANCH_TAKEN, align 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1062 = select i1 %1058, i64 %1049, i64 %1047
  store i64 %1062, i64* %1061, align 8
  store %struct.Memory* %loadMem_4689a6, %struct.Memory** %MEMORY
  %loadBr_4689a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4689a6 = icmp eq i8 %loadBr_4689a6, 1
  br i1 %cmpBr_4689a6, label %block_.L_468d2a, label %block_4689ac

block_4689ac:                                     ; preds = %block_.L_4689a2
  %loadMem_4689ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RBP.i503
  %1073 = sub i64 %1072, 56
  %1074 = load i64, i64* %PC.i501
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %PC.i501
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076
  %1078 = sext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_4689ac, %struct.Memory** %MEMORY
  %loadMem_4689b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 1
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 5
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RCX.i500 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %RAX.i499
  %1089 = mul i64 %1088, 4
  %1090 = add i64 %1089, 8053168
  %1091 = load i64, i64* %PC.i498
  %1092 = add i64 %1091, 7
  store i64 %1092, i64* %PC.i498
  %1093 = inttoptr i64 %1090 to i32*
  %1094 = load i32, i32* %1093
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RCX.i500, align 8
  store %struct.Memory* %loadMem_4689b0, %struct.Memory** %MEMORY
  %loadMem_4689b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 5
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %ECX.i496 = bitcast %union.anon* %1101 to i32*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 15
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RBP.i497
  %1106 = sub i64 %1105, 48
  %1107 = load i32, i32* %ECX.i496
  %1108 = zext i32 %1107 to i64
  %1109 = load i64, i64* %PC.i495
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC.i495
  %1111 = inttoptr i64 %1106 to i32*
  store i32 %1107, i32* %1111
  store %struct.Memory* %loadMem_4689b7, %struct.Memory** %MEMORY
  %loadMem_4689ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 5
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RCX.i493 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 15
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %1120 to i64*
  %1121 = load i64, i64* %RBP.i494
  %1122 = sub i64 %1121, 36
  %1123 = load i64, i64* %PC.i492
  %1124 = add i64 %1123, 3
  store i64 %1124, i64* %PC.i492
  %1125 = inttoptr i64 %1122 to i32*
  %1126 = load i32, i32* %1125
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RCX.i493, align 8
  store %struct.Memory* %loadMem_4689ba, %struct.Memory** %MEMORY
  %loadMem_4689bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 5
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 15
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %RCX.i490
  %1138 = load i64, i64* %RBP.i491
  %1139 = sub i64 %1138, 48
  %1140 = load i64, i64* %PC.i489
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %PC.i489
  %1142 = trunc i64 %1137 to i32
  %1143 = inttoptr i64 %1139 to i32*
  %1144 = load i32, i32* %1143
  %1145 = sub i32 %1142, %1144
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RCX.i490, align 8
  %1147 = icmp ult i32 %1142, %1144
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1148, i8* %1149, align 1
  %1150 = and i32 %1145, 255
  %1151 = call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1154, i8* %1155, align 1
  %1156 = xor i32 %1144, %1142
  %1157 = xor i32 %1156, %1145
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1160, i8* %1161, align 1
  %1162 = icmp eq i32 %1145, 0
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1163, i8* %1164, align 1
  %1165 = lshr i32 %1145, 31
  %1166 = trunc i32 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1166, i8* %1167, align 1
  %1168 = lshr i32 %1142, 31
  %1169 = lshr i32 %1144, 31
  %1170 = xor i32 %1169, %1168
  %1171 = xor i32 %1165, %1168
  %1172 = add i32 %1171, %1170
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1174, i8* %1175, align 1
  store %struct.Memory* %loadMem_4689bd, %struct.Memory** %MEMORY
  %loadMem_4689c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 5
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %ECX.i487 = bitcast %union.anon* %1181 to i32*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %1184 to i64*
  %1185 = load i32, i32* %ECX.i487
  %1186 = zext i32 %1185 to i64
  %1187 = load i64, i64* %PC.i486
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %PC.i486
  %1189 = shl i64 %1186, 32
  %1190 = ashr exact i64 %1189, 32
  store i64 %1190, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_4689c0, %struct.Memory** %MEMORY
  %loadMem_4689c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RAX.i484
  %1201 = add i64 %1200, 12099168
  %1202 = load i64, i64* %PC.i483
  %1203 = add i64 %1202, 8
  store i64 %1203, i64* %PC.i483
  %1204 = inttoptr i64 %1201 to i8*
  %1205 = load i8, i8* %1204
  %1206 = zext i8 %1205 to i64
  store i64 %1206, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_4689c3, %struct.Memory** %MEMORY
  %loadMem_4689cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 5
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %ECX.i482 = bitcast %union.anon* %1212 to i32*
  %1213 = load i32, i32* %ECX.i482
  %1214 = zext i32 %1213 to i64
  %1215 = load i64, i64* %PC.i481
  %1216 = add i64 %1215, 3
  store i64 %1216, i64* %PC.i481
  %1217 = sub i32 %1213, 3
  %1218 = icmp ult i32 %1213, 3
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1219, i8* %1220, align 1
  %1221 = and i32 %1217, 255
  %1222 = call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1225, i8* %1226, align 1
  %1227 = xor i64 3, %1214
  %1228 = trunc i64 %1227 to i32
  %1229 = xor i32 %1228, %1217
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1232, i8* %1233, align 1
  %1234 = icmp eq i32 %1217, 0
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1217, 31
  %1238 = trunc i32 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1213, 31
  %1241 = xor i32 %1237, %1240
  %1242 = add i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1244, i8* %1245, align 1
  store %struct.Memory* %loadMem_4689cb, %struct.Memory** %MEMORY
  %loadMem_4689ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1248 to i64*
  %1249 = load i64, i64* %PC.i480
  %1250 = add i64 %1249, 11
  %1251 = load i64, i64* %PC.i480
  %1252 = add i64 %1251, 6
  %1253 = load i64, i64* %PC.i480
  %1254 = add i64 %1253, 6
  store i64 %1254, i64* %PC.i480
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1256 = load i8, i8* %1255, align 1
  store i8 %1256, i8* %BRANCH_TAKEN, align 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1258 = icmp ne i8 %1256, 0
  %1259 = select i1 %1258, i64 %1250, i64 %1252
  store i64 %1259, i64* %1257, align 8
  store %struct.Memory* %loadMem_4689ce, %struct.Memory** %MEMORY
  %loadBr_4689ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4689ce = icmp eq i8 %loadBr_4689ce, 1
  br i1 %cmpBr_4689ce, label %block_.L_4689d9, label %block_4689d4

block_4689d4:                                     ; preds = %block_4689ac
  %loadMem_4689d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %PC.i479
  %1264 = add i64 %1263, 840
  %1265 = load i64, i64* %PC.i479
  %1266 = add i64 %1265, 5
  store i64 %1266, i64* %PC.i479
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1264, i64* %1267, align 8
  store %struct.Memory* %loadMem_4689d4, %struct.Memory** %MEMORY
  br label %block_.L_468d1c

block_.L_4689d9:                                  ; preds = %block_4689ac
  %loadMem_4689d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 15
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RBP.i478
  %1278 = sub i64 %1277, 36
  %1279 = load i64, i64* %PC.i476
  %1280 = add i64 %1279, 3
  store i64 %1280, i64* %PC.i476
  %1281 = inttoptr i64 %1278 to i32*
  %1282 = load i32, i32* %1281
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_4689d9, %struct.Memory** %MEMORY
  %loadMem_4689dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 1
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 15
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %1292 to i64*
  %1293 = load i64, i64* %RAX.i474
  %1294 = load i64, i64* %RBP.i475
  %1295 = sub i64 %1294, 48
  %1296 = load i64, i64* %PC.i473
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %PC.i473
  %1298 = trunc i64 %1293 to i32
  %1299 = inttoptr i64 %1295 to i32*
  %1300 = load i32, i32* %1299
  %1301 = add i32 %1300, %1298
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i474, align 8
  %1303 = icmp ult i32 %1301, %1298
  %1304 = icmp ult i32 %1301, %1300
  %1305 = or i1 %1303, %1304
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1306, i8* %1307, align 1
  %1308 = and i32 %1301, 255
  %1309 = call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1312, i8* %1313, align 1
  %1314 = xor i32 %1300, %1298
  %1315 = xor i32 %1314, %1301
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1318, i8* %1319, align 1
  %1320 = icmp eq i32 %1301, 0
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1321, i8* %1322, align 1
  %1323 = lshr i32 %1301, 31
  %1324 = trunc i32 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1324, i8* %1325, align 1
  %1326 = lshr i32 %1298, 31
  %1327 = lshr i32 %1300, 31
  %1328 = xor i32 %1323, %1326
  %1329 = xor i32 %1323, %1327
  %1330 = add i32 %1328, %1329
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1332, i8* %1333, align 1
  store %struct.Memory* %loadMem_4689dc, %struct.Memory** %MEMORY
  %loadMem_4689df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 33
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 1
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %EAX.i471 = bitcast %union.anon* %1339 to i32*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 15
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %RBP.i472
  %1344 = sub i64 %1343, 40
  %1345 = load i32, i32* %EAX.i471
  %1346 = zext i32 %1345 to i64
  %1347 = load i64, i64* %PC.i470
  %1348 = add i64 %1347, 3
  store i64 %1348, i64* %PC.i470
  %1349 = inttoptr i64 %1344 to i32*
  store i32 %1345, i32* %1349
  store %struct.Memory* %loadMem_4689df, %struct.Memory** %MEMORY
  %loadMem_4689e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 5
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 15
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %RBP.i469
  %1360 = sub i64 %1359, 40
  %1361 = load i64, i64* %PC.i467
  %1362 = add i64 %1361, 4
  store i64 %1362, i64* %PC.i467
  %1363 = inttoptr i64 %1360 to i32*
  %1364 = load i32, i32* %1363
  %1365 = sext i32 %1364 to i64
  store i64 %1365, i64* %RCX.i468, align 8
  store %struct.Memory* %loadMem_4689e2, %struct.Memory** %MEMORY
  %loadMem_4689e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 1
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 5
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RCX.i466
  %1376 = add i64 %1375, 12099168
  %1377 = load i64, i64* %PC.i464
  %1378 = add i64 %1377, 8
  store i64 %1378, i64* %PC.i464
  %1379 = inttoptr i64 %1376 to i8*
  %1380 = load i8, i8* %1379
  %1381 = zext i8 %1380 to i64
  store i64 %1381, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_4689e6, %struct.Memory** %MEMORY
  %loadMem_4689ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %1387 to i32*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 15
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %1390 to i64*
  %1391 = load i32, i32* %EAX.i462
  %1392 = zext i32 %1391 to i64
  %1393 = load i64, i64* %RBP.i463
  %1394 = sub i64 %1393, 28
  %1395 = load i64, i64* %PC.i461
  %1396 = add i64 %1395, 3
  store i64 %1396, i64* %PC.i461
  %1397 = inttoptr i64 %1394 to i32*
  %1398 = load i32, i32* %1397
  %1399 = sub i32 %1391, %1398
  %1400 = icmp ult i32 %1391, %1398
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1401, i8* %1402, align 1
  %1403 = and i32 %1399, 255
  %1404 = call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1407, i8* %1408, align 1
  %1409 = xor i32 %1398, %1391
  %1410 = xor i32 %1409, %1399
  %1411 = lshr i32 %1410, 4
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1413, i8* %1414, align 1
  %1415 = icmp eq i32 %1399, 0
  %1416 = zext i1 %1415 to i8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1416, i8* %1417, align 1
  %1418 = lshr i32 %1399, 31
  %1419 = trunc i32 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1419, i8* %1420, align 1
  %1421 = lshr i32 %1391, 31
  %1422 = lshr i32 %1398, 31
  %1423 = xor i32 %1422, %1421
  %1424 = xor i32 %1418, %1421
  %1425 = add i32 %1424, %1423
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1427, i8* %1428, align 1
  store %struct.Memory* %loadMem_4689ee, %struct.Memory** %MEMORY
  %loadMem_4689f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %PC.i460
  %1433 = add i64 %1432, 26
  %1434 = load i64, i64* %PC.i460
  %1435 = add i64 %1434, 6
  %1436 = load i64, i64* %PC.i460
  %1437 = add i64 %1436, 6
  store i64 %1437, i64* %PC.i460
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1439 = load i8, i8* %1438, align 1
  %1440 = icmp eq i8 %1439, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %BRANCH_TAKEN, align 1
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1443 = select i1 %1440, i64 %1433, i64 %1435
  store i64 %1443, i64* %1442, align 8
  store %struct.Memory* %loadMem_4689f1, %struct.Memory** %MEMORY
  %loadBr_4689f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4689f1 = icmp eq i8 %loadBr_4689f1, 1
  br i1 %cmpBr_4689f1, label %block_.L_468a0b, label %block_4689f7

block_4689f7:                                     ; preds = %block_.L_4689d9
  %loadMem_4689f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 11
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RDI.i458 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 15
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RBP.i459
  %1454 = sub i64 %1453, 4
  %1455 = load i64, i64* %PC.i457
  %1456 = add i64 %1455, 3
  store i64 %1456, i64* %PC.i457
  %1457 = inttoptr i64 %1454 to i32*
  %1458 = load i32, i32* %1457
  %1459 = zext i32 %1458 to i64
  store i64 %1459, i64* %RDI.i458, align 8
  store %struct.Memory* %loadMem_4689f7, %struct.Memory** %MEMORY
  %loadMem_4689fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 9
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RSI.i455 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 15
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1468 to i64*
  %1469 = load i64, i64* %RBP.i456
  %1470 = sub i64 %1469, 40
  %1471 = load i64, i64* %PC.i454
  %1472 = add i64 %1471, 3
  store i64 %1472, i64* %PC.i454
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RSI.i455, align 8
  store %struct.Memory* %loadMem_4689fa, %struct.Memory** %MEMORY
  %loadMem1_4689fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %PC.i453
  %1480 = add i64 %1479, -341533
  %1481 = load i64, i64* %PC.i453
  %1482 = add i64 %1481, 5
  %1483 = load i64, i64* %PC.i453
  %1484 = add i64 %1483, 5
  store i64 %1484, i64* %PC.i453
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1486 = load i64, i64* %1485, align 8
  %1487 = add i64 %1486, -8
  %1488 = inttoptr i64 %1487 to i64*
  store i64 %1482, i64* %1488
  store i64 %1487, i64* %1485, align 8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1480, i64* %1489, align 8
  store %struct.Memory* %loadMem1_4689fd, %struct.Memory** %MEMORY
  %loadMem2_4689fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4689fd = load i64, i64* %3
  %call2_4689fd = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_4689fd, %struct.Memory* %loadMem2_4689fd)
  store %struct.Memory* %call2_4689fd, %struct.Memory** %MEMORY
  %loadMem_468a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %EAX.i452 = bitcast %union.anon* %1495 to i32*
  %1496 = load i32, i32* %EAX.i452
  %1497 = zext i32 %1496 to i64
  %1498 = load i64, i64* %PC.i451
  %1499 = add i64 %1498, 3
  store i64 %1499, i64* %PC.i451
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1500, align 1
  %1501 = and i32 %1496, 255
  %1502 = call i32 @llvm.ctpop.i32(i32 %1501)
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = xor i8 %1504, 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1505, i8* %1506, align 1
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1507, align 1
  %1508 = icmp eq i32 %1496, 0
  %1509 = zext i1 %1508 to i8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1509, i8* %1510, align 1
  %1511 = lshr i32 %1496, 31
  %1512 = trunc i32 %1511 to i8
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1512, i8* %1513, align 1
  %1514 = lshr i32 %1496, 31
  %1515 = xor i32 %1511, %1514
  %1516 = add i32 %1515, %1514
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1518, i8* %1519, align 1
  store %struct.Memory* %loadMem_468a02, %struct.Memory** %MEMORY
  %loadMem_468a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %PC.i450
  %1524 = add i64 %1523, 11
  %1525 = load i64, i64* %PC.i450
  %1526 = add i64 %1525, 6
  %1527 = load i64, i64* %PC.i450
  %1528 = add i64 %1527, 6
  store i64 %1528, i64* %PC.i450
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1530 = load i8, i8* %1529, align 1
  %1531 = icmp eq i8 %1530, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %BRANCH_TAKEN, align 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1534 = select i1 %1531, i64 %1524, i64 %1526
  store i64 %1534, i64* %1533, align 8
  store %struct.Memory* %loadMem_468a05, %struct.Memory** %MEMORY
  %loadBr_468a05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468a05 = icmp eq i8 %loadBr_468a05, 1
  br i1 %cmpBr_468a05, label %block_.L_468a10, label %block_.L_468a0b

block_.L_468a0b:                                  ; preds = %block_4689f7, %block_.L_4689d9
  %loadMem_468a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %PC.i449
  %1539 = add i64 %1538, 785
  %1540 = load i64, i64* %PC.i449
  %1541 = add i64 %1540, 5
  store i64 %1541, i64* %PC.i449
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1539, i64* %1542, align 8
  store %struct.Memory* %loadMem_468a0b, %struct.Memory** %MEMORY
  br label %block_.L_468d1c

block_.L_468a10:                                  ; preds = %block_4689f7
  %loadMem_468a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i448
  %1550 = sub i64 %1549, 60
  %1551 = load i64, i64* %PC.i447
  %1552 = add i64 %1551, 7
  store i64 %1552, i64* %PC.i447
  %1553 = inttoptr i64 %1550 to i32*
  store i32 0, i32* %1553
  store %struct.Memory* %loadMem_468a10, %struct.Memory** %MEMORY
  br label %block_.L_468a17

block_.L_468a17:                                  ; preds = %block_.L_468d09, %block_.L_468a10
  %loadMem_468a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 15
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %RBP.i446
  %1561 = sub i64 %1560, 60
  %1562 = load i64, i64* %PC.i445
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %PC.i445
  %1564 = inttoptr i64 %1561 to i32*
  %1565 = load i32, i32* %1564
  %1566 = sub i32 %1565, 2
  %1567 = icmp ult i32 %1565, 2
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1568, i8* %1569, align 1
  %1570 = and i32 %1566, 255
  %1571 = call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1574, i8* %1575, align 1
  %1576 = xor i32 %1565, 2
  %1577 = xor i32 %1576, %1566
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1580, i8* %1581, align 1
  %1582 = icmp eq i32 %1566, 0
  %1583 = zext i1 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1583, i8* %1584, align 1
  %1585 = lshr i32 %1566, 31
  %1586 = trunc i32 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1586, i8* %1587, align 1
  %1588 = lshr i32 %1565, 31
  %1589 = xor i32 %1585, %1588
  %1590 = add i32 %1589, %1588
  %1591 = icmp eq i32 %1590, 2
  %1592 = zext i1 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1592, i8* %1593, align 1
  store %struct.Memory* %loadMem_468a17, %struct.Memory** %MEMORY
  %loadMem_468a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %PC.i444
  %1598 = add i64 %1597, 764
  %1599 = load i64, i64* %PC.i444
  %1600 = add i64 %1599, 6
  %1601 = load i64, i64* %PC.i444
  %1602 = add i64 %1601, 6
  store i64 %1602, i64* %PC.i444
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1604 = load i8, i8* %1603, align 1
  %1605 = icmp ne i8 %1604, 0
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1607 = load i8, i8* %1606, align 1
  %1608 = icmp ne i8 %1607, 0
  %1609 = xor i1 %1605, %1608
  %1610 = xor i1 %1609, true
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %BRANCH_TAKEN, align 1
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1613 = select i1 %1609, i64 %1600, i64 %1598
  store i64 %1613, i64* %1612, align 8
  store %struct.Memory* %loadMem_468a1b, %struct.Memory** %MEMORY
  %loadBr_468a1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468a1b = icmp eq i8 %loadBr_468a1b, 1
  br i1 %cmpBr_468a1b, label %block_.L_468d17, label %block_468a21

block_468a21:                                     ; preds = %block_.L_468a17
  %loadMem_468a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 1
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %PC.i442
  %1621 = add i64 %1620, 5
  store i64 %1621, i64* %PC.i442
  store i64 4, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_468a21, %struct.Memory** %MEMORY
  %loadMem_468a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 5
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RBP.i441
  %1632 = sub i64 %1631, 56
  %1633 = load i64, i64* %PC.i439
  %1634 = add i64 %1633, 3
  store i64 %1634, i64* %PC.i439
  %1635 = inttoptr i64 %1632 to i32*
  %1636 = load i32, i32* %1635
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_468a26, %struct.Memory** %MEMORY
  %loadMem_468a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 5
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %RCX.i438
  %1645 = load i64, i64* %PC.i437
  %1646 = add i64 %1645, 3
  store i64 %1646, i64* %PC.i437
  %1647 = trunc i64 %1644 to i32
  %1648 = add i32 1, %1647
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RCX.i438, align 8
  %1650 = icmp ult i32 %1648, %1647
  %1651 = icmp ult i32 %1648, 1
  %1652 = or i1 %1650, %1651
  %1653 = zext i1 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1653, i8* %1654, align 1
  %1655 = and i32 %1648, 255
  %1656 = call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1659, i8* %1660, align 1
  %1661 = xor i64 1, %1644
  %1662 = trunc i64 %1661 to i32
  %1663 = xor i32 %1662, %1648
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1666, i8* %1667, align 1
  %1668 = icmp eq i32 %1648, 0
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1669, i8* %1670, align 1
  %1671 = lshr i32 %1648, 31
  %1672 = trunc i32 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1672, i8* %1673, align 1
  %1674 = lshr i32 %1647, 31
  %1675 = xor i32 %1671, %1674
  %1676 = add i32 %1675, %1671
  %1677 = icmp eq i32 %1676, 2
  %1678 = zext i1 %1677 to i8
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1678, i8* %1679, align 1
  store %struct.Memory* %loadMem_468a29, %struct.Memory** %MEMORY
  %loadMem_468a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 1
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %EAX.i435 = bitcast %union.anon* %1685 to i32*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i436
  %1690 = sub i64 %1689, 100
  %1691 = load i32, i32* %EAX.i435
  %1692 = zext i32 %1691 to i64
  %1693 = load i64, i64* %PC.i434
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %PC.i434
  %1695 = inttoptr i64 %1690 to i32*
  store i32 %1691, i32* %1695
  store %struct.Memory* %loadMem_468a2c, %struct.Memory** %MEMORY
  %loadMem_468a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 5
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %ECX.i432 = bitcast %union.anon* %1701 to i32*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 1
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %1704 to i64*
  %1705 = load i32, i32* %ECX.i432
  %1706 = zext i32 %1705 to i64
  %1707 = load i64, i64* %PC.i431
  %1708 = add i64 %1707, 2
  store i64 %1708, i64* %PC.i431
  %1709 = and i64 %1706, 4294967295
  store i64 %1709, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_468a2f, %struct.Memory** %MEMORY
  %loadMem_468a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %PC.i430
  %1714 = add i64 %1713, 1
  store i64 %1714, i64* %PC.i430
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1717 = bitcast %union.anon* %1716 to i32*
  %1718 = load i32, i32* %1717, align 8
  %1719 = sext i32 %1718 to i64
  %1720 = lshr i64 %1719, 32
  store i64 %1720, i64* %1715, align 8
  store %struct.Memory* %loadMem_468a31, %struct.Memory** %MEMORY
  %loadMem_468a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 5
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 15
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %RBP.i429
  %1731 = sub i64 %1730, 100
  %1732 = load i64, i64* %PC.i427
  %1733 = add i64 %1732, 3
  store i64 %1733, i64* %PC.i427
  %1734 = inttoptr i64 %1731 to i32*
  %1735 = load i32, i32* %1734
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_468a32, %struct.Memory** %MEMORY
  %loadMem_468a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 5
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1742 to i32*
  %1743 = load i32, i32* %ECX.i
  %1744 = zext i32 %1743 to i64
  %1745 = load i64, i64* %PC.i423
  %1746 = add i64 %1745, 2
  store i64 %1746, i64* %PC.i423
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1748 = bitcast %union.anon* %1747 to i32*
  %1749 = load i32, i32* %1748, align 8
  %1750 = zext i32 %1749 to i64
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1752 = bitcast %union.anon* %1751 to i32*
  %1753 = load i32, i32* %1752, align 8
  %1754 = zext i32 %1753 to i64
  %1755 = shl i64 %1744, 32
  %1756 = ashr exact i64 %1755, 32
  %1757 = shl i64 %1754, 32
  %1758 = or i64 %1757, %1750
  %1759 = sdiv i64 %1758, %1756
  %1760 = shl i64 %1759, 32
  %1761 = ashr exact i64 %1760, 32
  %1762 = icmp eq i64 %1759, %1761
  br i1 %1762, label %1767, label %1763

; <label>:1763:                                   ; preds = %block_468a21
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1765 = load i64, i64* %1764, align 8
  %1766 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1765, %struct.Memory* %loadMem_468a35)
  br label %routine_idivl__ecx.exit

; <label>:1767:                                   ; preds = %block_468a21
  %1768 = srem i64 %1758, %1756
  %1769 = getelementptr inbounds %union.anon, %union.anon* %1747, i64 0, i32 0
  %1770 = and i64 %1759, 4294967295
  store i64 %1770, i64* %1769, align 8
  %1771 = getelementptr inbounds %union.anon, %union.anon* %1751, i64 0, i32 0
  %1772 = and i64 %1768, 4294967295
  store i64 %1772, i64* %1771, align 8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1773, align 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1774, align 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1775, align 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1776, align 1
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1777, align 1
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1778, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1763, %1767
  %1779 = phi %struct.Memory* [ %1766, %1763 ], [ %loadMem_468a35, %1767 ]
  store %struct.Memory* %1779, %struct.Memory** %MEMORY
  %loadMem_468a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 33
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 7
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %EDX.i421 = bitcast %union.anon* %1785 to i32*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 9
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RSI.i422 = bitcast %union.anon* %1788 to i64*
  %1789 = load i32, i32* %EDX.i421
  %1790 = zext i32 %1789 to i64
  %1791 = load i64, i64* %PC.i420
  %1792 = add i64 %1791, 3
  store i64 %1792, i64* %PC.i420
  %1793 = shl i64 %1790, 32
  %1794 = ashr exact i64 %1793, 32
  store i64 %1794, i64* %RSI.i422, align 8
  store %struct.Memory* %loadMem_468a37, %struct.Memory** %MEMORY
  %loadMem_468a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 7
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RDX.i418 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 9
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RSI.i419 = bitcast %union.anon* %1803 to i64*
  %1804 = load i64, i64* %RSI.i419
  %1805 = mul i64 %1804, 4
  %1806 = add i64 %1805, 8053168
  %1807 = load i64, i64* %PC.i417
  %1808 = add i64 %1807, 7
  store i64 %1808, i64* %PC.i417
  %1809 = inttoptr i64 %1806 to i32*
  %1810 = load i32, i32* %1809
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RDX.i418, align 8
  store %struct.Memory* %loadMem_468a3a, %struct.Memory** %MEMORY
  %loadMem_468a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 7
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %EDX.i415 = bitcast %union.anon* %1817 to i32*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i416
  %1822 = sub i64 %1821, 52
  %1823 = load i32, i32* %EDX.i415
  %1824 = zext i32 %1823 to i64
  %1825 = load i64, i64* %PC.i414
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %PC.i414
  %1827 = inttoptr i64 %1822 to i32*
  store i32 %1823, i32* %1827
  store %struct.Memory* %loadMem_468a41, %struct.Memory** %MEMORY
  %loadMem_468a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 15
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %RBP.i413
  %1835 = sub i64 %1834, 60
  %1836 = load i64, i64* %PC.i412
  %1837 = add i64 %1836, 4
  store i64 %1837, i64* %PC.i412
  %1838 = inttoptr i64 %1835 to i32*
  %1839 = load i32, i32* %1838
  %1840 = sub i32 %1839, 1
  %1841 = icmp ult i32 %1839, 1
  %1842 = zext i1 %1841 to i8
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1842, i8* %1843, align 1
  %1844 = and i32 %1840, 255
  %1845 = call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1848, i8* %1849, align 1
  %1850 = xor i32 %1839, 1
  %1851 = xor i32 %1850, %1840
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1854, i8* %1855, align 1
  %1856 = icmp eq i32 %1840, 0
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1857, i8* %1858, align 1
  %1859 = lshr i32 %1840, 31
  %1860 = trunc i32 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1860, i8* %1861, align 1
  %1862 = lshr i32 %1839, 31
  %1863 = xor i32 %1859, %1862
  %1864 = add i32 %1863, %1862
  %1865 = icmp eq i32 %1864, 2
  %1866 = zext i1 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1866, i8* %1867, align 1
  store %struct.Memory* %loadMem_468a44, %struct.Memory** %MEMORY
  %loadMem_468a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %PC.i411
  %1872 = add i64 %1871, 14
  %1873 = load i64, i64* %PC.i411
  %1874 = add i64 %1873, 6
  %1875 = load i64, i64* %PC.i411
  %1876 = add i64 %1875, 6
  store i64 %1876, i64* %PC.i411
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1878 = load i8, i8* %1877, align 1
  %1879 = icmp eq i8 %1878, 0
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %BRANCH_TAKEN, align 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1882 = select i1 %1879, i64 %1872, i64 %1874
  store i64 %1882, i64* %1881, align 8
  store %struct.Memory* %loadMem_468a48, %struct.Memory** %MEMORY
  %loadBr_468a48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468a48 = icmp eq i8 %loadBr_468a48, 1
  br i1 %cmpBr_468a48, label %block_.L_468a56, label %block_468a4e

block_468a4e:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_468a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 1
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %EAX.i409 = bitcast %union.anon* %1888 to i32*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RAX.i410
  %1893 = load i32, i32* %EAX.i409
  %1894 = zext i32 %1893 to i64
  %1895 = load i64, i64* %PC.i408
  %1896 = add i64 %1895, 2
  store i64 %1896, i64* %PC.i408
  %1897 = xor i64 %1894, %1892
  %1898 = trunc i64 %1897 to i32
  %1899 = and i64 %1897, 4294967295
  store i64 %1899, i64* %RAX.i410, align 8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1900, align 1
  %1901 = and i32 %1898, 255
  %1902 = call i32 @llvm.ctpop.i32(i32 %1901)
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  %1905 = xor i8 %1904, 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1905, i8* %1906, align 1
  %1907 = icmp eq i32 %1898, 0
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1908, i8* %1909, align 1
  %1910 = lshr i32 %1898, 31
  %1911 = trunc i32 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1911, i8* %1912, align 1
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1913, align 1
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1914, align 1
  store %struct.Memory* %loadMem_468a4e, %struct.Memory** %MEMORY
  %loadMem_468a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 1
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RAX.i406
  %1925 = load i64, i64* %RBP.i407
  %1926 = sub i64 %1925, 52
  %1927 = load i64, i64* %PC.i405
  %1928 = add i64 %1927, 3
  store i64 %1928, i64* %PC.i405
  %1929 = trunc i64 %1924 to i32
  %1930 = inttoptr i64 %1926 to i32*
  %1931 = load i32, i32* %1930
  %1932 = sub i32 %1929, %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i406, align 8
  %1934 = icmp ult i32 %1929, %1931
  %1935 = zext i1 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1935, i8* %1936, align 1
  %1937 = and i32 %1932, 255
  %1938 = call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1941, i8* %1942, align 1
  %1943 = xor i32 %1931, %1929
  %1944 = xor i32 %1943, %1932
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1947, i8* %1948, align 1
  %1949 = icmp eq i32 %1932, 0
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1932, 31
  %1953 = trunc i32 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1953, i8* %1954, align 1
  %1955 = lshr i32 %1929, 31
  %1956 = lshr i32 %1931, 31
  %1957 = xor i32 %1956, %1955
  %1958 = xor i32 %1952, %1955
  %1959 = add i32 %1958, %1957
  %1960 = icmp eq i32 %1959, 2
  %1961 = zext i1 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1961, i8* %1962, align 1
  store %struct.Memory* %loadMem_468a50, %struct.Memory** %MEMORY
  %loadMem_468a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 1
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %1968 to i32*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RBP.i404
  %1973 = sub i64 %1972, 52
  %1974 = load i32, i32* %EAX.i403
  %1975 = zext i32 %1974 to i64
  %1976 = load i64, i64* %PC.i402
  %1977 = add i64 %1976, 3
  store i64 %1977, i64* %PC.i402
  %1978 = inttoptr i64 %1973 to i32*
  store i32 %1974, i32* %1978
  store %struct.Memory* %loadMem_468a53, %struct.Memory** %MEMORY
  br label %block_.L_468a56

block_.L_468a56:                                  ; preds = %block_468a4e, %routine_idivl__ecx.exit
  %loadMem_468a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 15
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RBP.i401
  %1989 = sub i64 %1988, 40
  %1990 = load i64, i64* %PC.i399
  %1991 = add i64 %1990, 3
  store i64 %1991, i64* %PC.i399
  %1992 = inttoptr i64 %1989 to i32*
  %1993 = load i32, i32* %1992
  %1994 = zext i32 %1993 to i64
  store i64 %1994, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_468a56, %struct.Memory** %MEMORY
  %loadMem_468a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 1
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %RAX.i397
  %2005 = load i64, i64* %RBP.i398
  %2006 = sub i64 %2005, 52
  %2007 = load i64, i64* %PC.i396
  %2008 = add i64 %2007, 3
  store i64 %2008, i64* %PC.i396
  %2009 = trunc i64 %2004 to i32
  %2010 = inttoptr i64 %2006 to i32*
  %2011 = load i32, i32* %2010
  %2012 = add i32 %2011, %2009
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RAX.i397, align 8
  %2014 = icmp ult i32 %2012, %2009
  %2015 = icmp ult i32 %2012, %2011
  %2016 = or i1 %2014, %2015
  %2017 = zext i1 %2016 to i8
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2017, i8* %2018, align 1
  %2019 = and i32 %2012, 255
  %2020 = call i32 @llvm.ctpop.i32(i32 %2019)
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = xor i8 %2022, 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2023, i8* %2024, align 1
  %2025 = xor i32 %2011, %2009
  %2026 = xor i32 %2025, %2012
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2029, i8* %2030, align 1
  %2031 = icmp eq i32 %2012, 0
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2032, i8* %2033, align 1
  %2034 = lshr i32 %2012, 31
  %2035 = trunc i32 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2035, i8* %2036, align 1
  %2037 = lshr i32 %2009, 31
  %2038 = lshr i32 %2011, 31
  %2039 = xor i32 %2034, %2037
  %2040 = xor i32 %2034, %2038
  %2041 = add i32 %2039, %2040
  %2042 = icmp eq i32 %2041, 2
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2043, i8* %2044, align 1
  store %struct.Memory* %loadMem_468a59, %struct.Memory** %MEMORY
  %loadMem_468a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %2050 to i32*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RBP.i395
  %2055 = sub i64 %2054, 44
  %2056 = load i32, i32* %EAX.i394
  %2057 = zext i32 %2056 to i64
  %2058 = load i64, i64* %PC.i393
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i393
  %2060 = inttoptr i64 %2055 to i32*
  store i32 %2056, i32* %2060
  store %struct.Memory* %loadMem_468a5c, %struct.Memory** %MEMORY
  %loadMem_468a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 5
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 15
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %RBP.i392
  %2071 = sub i64 %2070, 44
  %2072 = load i64, i64* %PC.i390
  %2073 = add i64 %2072, 4
  store i64 %2073, i64* %PC.i390
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_468a5f, %struct.Memory** %MEMORY
  %loadMem_468a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 1
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 5
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %RCX.i389
  %2087 = add i64 %2086, 12099168
  %2088 = load i64, i64* %PC.i387
  %2089 = add i64 %2088, 8
  store i64 %2089, i64* %PC.i387
  %2090 = inttoptr i64 %2087 to i8*
  %2091 = load i8, i8* %2090
  %2092 = zext i8 %2091 to i64
  store i64 %2092, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_468a63, %struct.Memory** %MEMORY
  %loadMem_468a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 1
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %2098 to i32*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 15
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2101 to i64*
  %2102 = load i32, i32* %EAX.i385
  %2103 = zext i32 %2102 to i64
  %2104 = load i64, i64* %RBP.i386
  %2105 = sub i64 %2104, 32
  %2106 = load i64, i64* %PC.i384
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i384
  %2108 = inttoptr i64 %2105 to i32*
  %2109 = load i32, i32* %2108
  %2110 = sub i32 %2102, %2109
  %2111 = icmp ult i32 %2102, %2109
  %2112 = zext i1 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2112, i8* %2113, align 1
  %2114 = and i32 %2110, 255
  %2115 = call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2118, i8* %2119, align 1
  %2120 = xor i32 %2109, %2102
  %2121 = xor i32 %2120, %2110
  %2122 = lshr i32 %2121, 4
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2124, i8* %2125, align 1
  %2126 = icmp eq i32 %2110, 0
  %2127 = zext i1 %2126 to i8
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2127, i8* %2128, align 1
  %2129 = lshr i32 %2110, 31
  %2130 = trunc i32 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2130, i8* %2131, align 1
  %2132 = lshr i32 %2102, 31
  %2133 = lshr i32 %2109, 31
  %2134 = xor i32 %2133, %2132
  %2135 = xor i32 %2129, %2132
  %2136 = add i32 %2135, %2134
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2138, i8* %2139, align 1
  store %struct.Memory* %loadMem_468a6b, %struct.Memory** %MEMORY
  %loadMem_468a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2142 to i64*
  %2143 = load i64, i64* %PC.i383
  %2144 = add i64 %2143, 11
  %2145 = load i64, i64* %PC.i383
  %2146 = add i64 %2145, 6
  %2147 = load i64, i64* %PC.i383
  %2148 = add i64 %2147, 6
  store i64 %2148, i64* %PC.i383
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2150 = load i8, i8* %2149, align 1
  store i8 %2150, i8* %BRANCH_TAKEN, align 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2152 = icmp ne i8 %2150, 0
  %2153 = select i1 %2152, i64 %2144, i64 %2146
  store i64 %2153, i64* %2151, align 8
  store %struct.Memory* %loadMem_468a6e, %struct.Memory** %MEMORY
  %loadBr_468a6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468a6e = icmp eq i8 %loadBr_468a6e, 1
  br i1 %cmpBr_468a6e, label %block_.L_468a79, label %block_468a74

block_468a74:                                     ; preds = %block_.L_468a56
  %loadMem_468a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %PC.i382
  %2158 = add i64 %2157, 661
  %2159 = load i64, i64* %PC.i382
  %2160 = add i64 %2159, 5
  store i64 %2160, i64* %PC.i382
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2158, i64* %2161, align 8
  store %struct.Memory* %loadMem_468a74, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468a79:                                  ; preds = %block_.L_468a56
  %loadMem_468a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RBP.i381
  %2172 = sub i64 %2171, 36
  %2173 = load i64, i64* %PC.i379
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i379
  %2175 = inttoptr i64 %2172 to i32*
  %2176 = load i32, i32* %2175
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_468a79, %struct.Memory** %MEMORY
  %loadMem_468a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 1
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 15
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %2186 to i64*
  %2187 = load i64, i64* %RAX.i377
  %2188 = load i64, i64* %RBP.i378
  %2189 = sub i64 %2188, 52
  %2190 = load i64, i64* %PC.i376
  %2191 = add i64 %2190, 3
  store i64 %2191, i64* %PC.i376
  %2192 = trunc i64 %2187 to i32
  %2193 = inttoptr i64 %2189 to i32*
  %2194 = load i32, i32* %2193
  %2195 = add i32 %2194, %2192
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RAX.i377, align 8
  %2197 = icmp ult i32 %2195, %2192
  %2198 = icmp ult i32 %2195, %2194
  %2199 = or i1 %2197, %2198
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2200, i8* %2201, align 1
  %2202 = and i32 %2195, 255
  %2203 = call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2206, i8* %2207, align 1
  %2208 = xor i32 %2194, %2192
  %2209 = xor i32 %2208, %2195
  %2210 = lshr i32 %2209, 4
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2212, i8* %2213, align 1
  %2214 = icmp eq i32 %2195, 0
  %2215 = zext i1 %2214 to i8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2215, i8* %2216, align 1
  %2217 = lshr i32 %2195, 31
  %2218 = trunc i32 %2217 to i8
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2218, i8* %2219, align 1
  %2220 = lshr i32 %2192, 31
  %2221 = lshr i32 %2194, 31
  %2222 = xor i32 %2217, %2220
  %2223 = xor i32 %2217, %2221
  %2224 = add i32 %2222, %2223
  %2225 = icmp eq i32 %2224, 2
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2226, i8* %2227, align 1
  store %struct.Memory* %loadMem_468a7c, %struct.Memory** %MEMORY
  %loadMem_468a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 1
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %2233 to i32*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 5
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %2236 to i64*
  %2237 = load i32, i32* %EAX.i374
  %2238 = zext i32 %2237 to i64
  %2239 = load i64, i64* %PC.i373
  %2240 = add i64 %2239, 3
  store i64 %2240, i64* %PC.i373
  %2241 = shl i64 %2238, 32
  %2242 = ashr exact i64 %2241, 32
  store i64 %2242, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_468a7f, %struct.Memory** %MEMORY
  %loadMem_468a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 1
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 5
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RCX.i372
  %2253 = add i64 %2252, 12099168
  %2254 = load i64, i64* %PC.i370
  %2255 = add i64 %2254, 8
  store i64 %2255, i64* %PC.i370
  %2256 = inttoptr i64 %2253 to i8*
  %2257 = load i8, i8* %2256
  %2258 = zext i8 %2257 to i64
  store i64 %2258, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_468a82, %struct.Memory** %MEMORY
  %loadMem_468a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 1
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %EAX.i369 = bitcast %union.anon* %2264 to i32*
  %2265 = load i32, i32* %EAX.i369
  %2266 = zext i32 %2265 to i64
  %2267 = load i64, i64* %PC.i368
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %PC.i368
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2269, align 1
  %2270 = and i32 %2265, 255
  %2271 = call i32 @llvm.ctpop.i32(i32 %2270)
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = xor i8 %2273, 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2274, i8* %2275, align 1
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2276, align 1
  %2277 = icmp eq i32 %2265, 0
  %2278 = zext i1 %2277 to i8
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2278, i8* %2279, align 1
  %2280 = lshr i32 %2265, 31
  %2281 = trunc i32 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2281, i8* %2282, align 1
  %2283 = lshr i32 %2265, 31
  %2284 = xor i32 %2280, %2283
  %2285 = add i32 %2284, %2283
  %2286 = icmp eq i32 %2285, 2
  %2287 = zext i1 %2286 to i8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2287, i8* %2288, align 1
  store %struct.Memory* %loadMem_468a8a, %struct.Memory** %MEMORY
  %loadMem_468a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %PC.i367
  %2293 = add i64 %2292, 11
  %2294 = load i64, i64* %PC.i367
  %2295 = add i64 %2294, 6
  %2296 = load i64, i64* %PC.i367
  %2297 = add i64 %2296, 6
  store i64 %2297, i64* %PC.i367
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2299 = load i8, i8* %2298, align 1
  store i8 %2299, i8* %BRANCH_TAKEN, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2301 = icmp ne i8 %2299, 0
  %2302 = select i1 %2301, i64 %2293, i64 %2295
  store i64 %2302, i64* %2300, align 8
  store %struct.Memory* %loadMem_468a8d, %struct.Memory** %MEMORY
  %loadBr_468a8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468a8d = icmp eq i8 %loadBr_468a8d, 1
  br i1 %cmpBr_468a8d, label %block_.L_468a98, label %block_468a93

block_468a93:                                     ; preds = %block_.L_468a79
  %loadMem_468a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %PC.i366
  %2307 = add i64 %2306, 630
  %2308 = load i64, i64* %PC.i366
  %2309 = add i64 %2308, 5
  store i64 %2309, i64* %PC.i366
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2307, i64* %2310, align 8
  store %struct.Memory* %loadMem_468a93, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468a98:                                  ; preds = %block_.L_468a79
  %loadMem_468a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 1
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 15
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RBP.i365
  %2321 = sub i64 %2320, 44
  %2322 = load i64, i64* %PC.i363
  %2323 = add i64 %2322, 3
  store i64 %2323, i64* %PC.i363
  %2324 = inttoptr i64 %2321 to i32*
  %2325 = load i32, i32* %2324
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_468a98, %struct.Memory** %MEMORY
  %loadMem_468a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 1
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 15
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2335 to i64*
  %2336 = load i64, i64* %RAX.i361
  %2337 = load i64, i64* %RBP.i362
  %2338 = sub i64 %2337, 48
  %2339 = load i64, i64* %PC.i360
  %2340 = add i64 %2339, 3
  store i64 %2340, i64* %PC.i360
  %2341 = trunc i64 %2336 to i32
  %2342 = inttoptr i64 %2338 to i32*
  %2343 = load i32, i32* %2342
  %2344 = add i32 %2343, %2341
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RAX.i361, align 8
  %2346 = icmp ult i32 %2344, %2341
  %2347 = icmp ult i32 %2344, %2343
  %2348 = or i1 %2346, %2347
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2349, i8* %2350, align 1
  %2351 = and i32 %2344, 255
  %2352 = call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2355, i8* %2356, align 1
  %2357 = xor i32 %2343, %2341
  %2358 = xor i32 %2357, %2344
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2361, i8* %2362, align 1
  %2363 = icmp eq i32 %2344, 0
  %2364 = zext i1 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2364, i8* %2365, align 1
  %2366 = lshr i32 %2344, 31
  %2367 = trunc i32 %2366 to i8
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2367, i8* %2368, align 1
  %2369 = lshr i32 %2341, 31
  %2370 = lshr i32 %2343, 31
  %2371 = xor i32 %2366, %2369
  %2372 = xor i32 %2366, %2370
  %2373 = add i32 %2371, %2372
  %2374 = icmp eq i32 %2373, 2
  %2375 = zext i1 %2374 to i8
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2375, i8* %2376, align 1
  store %struct.Memory* %loadMem_468a9b, %struct.Memory** %MEMORY
  %loadMem_468a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %2382 to i32*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 5
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %2385 to i64*
  %2386 = load i32, i32* %EAX.i358
  %2387 = zext i32 %2386 to i64
  %2388 = load i64, i64* %PC.i357
  %2389 = add i64 %2388, 3
  store i64 %2389, i64* %PC.i357
  %2390 = shl i64 %2387, 32
  %2391 = ashr exact i64 %2390, 32
  store i64 %2391, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_468a9e, %struct.Memory** %MEMORY
  %loadMem_468aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 1
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 5
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %RCX.i356
  %2402 = add i64 %2401, 12099168
  %2403 = load i64, i64* %PC.i354
  %2404 = add i64 %2403, 8
  store i64 %2404, i64* %PC.i354
  %2405 = inttoptr i64 %2402 to i8*
  %2406 = load i8, i8* %2405
  %2407 = zext i8 %2406 to i64
  store i64 %2407, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_468aa1, %struct.Memory** %MEMORY
  %loadMem_468aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 1
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %2413 to i32*
  %2414 = load i32, i32* %EAX.i353
  %2415 = zext i32 %2414 to i64
  %2416 = load i64, i64* %PC.i352
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %PC.i352
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2418, align 1
  %2419 = and i32 %2414, 255
  %2420 = call i32 @llvm.ctpop.i32(i32 %2419)
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2423, i8* %2424, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2425, align 1
  %2426 = icmp eq i32 %2414, 0
  %2427 = zext i1 %2426 to i8
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2427, i8* %2428, align 1
  %2429 = lshr i32 %2414, 31
  %2430 = trunc i32 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2430, i8* %2431, align 1
  %2432 = lshr i32 %2414, 31
  %2433 = xor i32 %2429, %2432
  %2434 = add i32 %2433, %2432
  %2435 = icmp eq i32 %2434, 2
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2436, i8* %2437, align 1
  store %struct.Memory* %loadMem_468aa9, %struct.Memory** %MEMORY
  %loadMem_468aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %PC.i351
  %2442 = add i64 %2441, 11
  %2443 = load i64, i64* %PC.i351
  %2444 = add i64 %2443, 6
  %2445 = load i64, i64* %PC.i351
  %2446 = add i64 %2445, 6
  store i64 %2446, i64* %PC.i351
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2448 = load i8, i8* %2447, align 1
  store i8 %2448, i8* %BRANCH_TAKEN, align 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2450 = icmp ne i8 %2448, 0
  %2451 = select i1 %2450, i64 %2442, i64 %2444
  store i64 %2451, i64* %2449, align 8
  store %struct.Memory* %loadMem_468aac, %struct.Memory** %MEMORY
  %loadBr_468aac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468aac = icmp eq i8 %loadBr_468aac, 1
  br i1 %cmpBr_468aac, label %block_.L_468ab7, label %block_468ab2

block_468ab2:                                     ; preds = %block_.L_468a98
  %loadMem_468ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 33
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %PC.i350
  %2456 = add i64 %2455, 599
  %2457 = load i64, i64* %PC.i350
  %2458 = add i64 %2457, 5
  store i64 %2458, i64* %PC.i350
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2456, i64* %2459, align 8
  store %struct.Memory* %loadMem_468ab2, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468ab7:                                  ; preds = %block_.L_468a98
  %loadMem_468ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 15
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %RBP.i349
  %2470 = sub i64 %2469, 36
  %2471 = load i64, i64* %PC.i347
  %2472 = add i64 %2471, 3
  store i64 %2472, i64* %PC.i347
  %2473 = inttoptr i64 %2470 to i32*
  %2474 = load i32, i32* %2473
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_468ab7, %struct.Memory** %MEMORY
  %loadMem_468aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 15
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2484 to i64*
  %2485 = load i64, i64* %RAX.i345
  %2486 = load i64, i64* %RBP.i346
  %2487 = sub i64 %2486, 52
  %2488 = load i64, i64* %PC.i344
  %2489 = add i64 %2488, 3
  store i64 %2489, i64* %PC.i344
  %2490 = trunc i64 %2485 to i32
  %2491 = inttoptr i64 %2487 to i32*
  %2492 = load i32, i32* %2491
  %2493 = add i32 %2492, %2490
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RAX.i345, align 8
  %2495 = icmp ult i32 %2493, %2490
  %2496 = icmp ult i32 %2493, %2492
  %2497 = or i1 %2495, %2496
  %2498 = zext i1 %2497 to i8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2498, i8* %2499, align 1
  %2500 = and i32 %2493, 255
  %2501 = call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2504, i8* %2505, align 1
  %2506 = xor i32 %2492, %2490
  %2507 = xor i32 %2506, %2493
  %2508 = lshr i32 %2507, 4
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2510, i8* %2511, align 1
  %2512 = icmp eq i32 %2493, 0
  %2513 = zext i1 %2512 to i8
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2513, i8* %2514, align 1
  %2515 = lshr i32 %2493, 31
  %2516 = trunc i32 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2516, i8* %2517, align 1
  %2518 = lshr i32 %2490, 31
  %2519 = lshr i32 %2492, 31
  %2520 = xor i32 %2515, %2518
  %2521 = xor i32 %2515, %2519
  %2522 = add i32 %2520, %2521
  %2523 = icmp eq i32 %2522, 2
  %2524 = zext i1 %2523 to i8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2524, i8* %2525, align 1
  store %struct.Memory* %loadMem_468aba, %struct.Memory** %MEMORY
  %loadMem_468abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RAX.i342
  %2536 = load i64, i64* %RBP.i343
  %2537 = sub i64 %2536, 52
  %2538 = load i64, i64* %PC.i341
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %PC.i341
  %2540 = trunc i64 %2535 to i32
  %2541 = inttoptr i64 %2537 to i32*
  %2542 = load i32, i32* %2541
  %2543 = add i32 %2542, %2540
  %2544 = zext i32 %2543 to i64
  store i64 %2544, i64* %RAX.i342, align 8
  %2545 = icmp ult i32 %2543, %2540
  %2546 = icmp ult i32 %2543, %2542
  %2547 = or i1 %2545, %2546
  %2548 = zext i1 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2548, i8* %2549, align 1
  %2550 = and i32 %2543, 255
  %2551 = call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2554, i8* %2555, align 1
  %2556 = xor i32 %2542, %2540
  %2557 = xor i32 %2556, %2543
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2560, i8* %2561, align 1
  %2562 = icmp eq i32 %2543, 0
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2543, 31
  %2566 = trunc i32 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2566, i8* %2567, align 1
  %2568 = lshr i32 %2540, 31
  %2569 = lshr i32 %2542, 31
  %2570 = xor i32 %2565, %2568
  %2571 = xor i32 %2565, %2569
  %2572 = add i32 %2570, %2571
  %2573 = icmp eq i32 %2572, 2
  %2574 = zext i1 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2574, i8* %2575, align 1
  store %struct.Memory* %loadMem_468abd, %struct.Memory** %MEMORY
  %loadMem_468ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 1
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %EAX.i339 = bitcast %union.anon* %2581 to i32*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 5
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %2584 to i64*
  %2585 = load i32, i32* %EAX.i339
  %2586 = zext i32 %2585 to i64
  %2587 = load i64, i64* %PC.i338
  %2588 = add i64 %2587, 3
  store i64 %2588, i64* %PC.i338
  %2589 = shl i64 %2586, 32
  %2590 = ashr exact i64 %2589, 32
  store i64 %2590, i64* %RCX.i340, align 8
  store %struct.Memory* %loadMem_468ac0, %struct.Memory** %MEMORY
  %loadMem_468ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 1
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 5
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RCX.i337
  %2601 = add i64 %2600, 12099168
  %2602 = load i64, i64* %PC.i335
  %2603 = add i64 %2602, 8
  store i64 %2603, i64* %PC.i335
  %2604 = inttoptr i64 %2601 to i8*
  %2605 = load i8, i8* %2604
  %2606 = zext i8 %2605 to i64
  store i64 %2606, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_468ac3, %struct.Memory** %MEMORY
  %loadMem_468acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 1
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %2612 to i32*
  %2613 = load i32, i32* %EAX.i334
  %2614 = zext i32 %2613 to i64
  %2615 = load i64, i64* %PC.i333
  %2616 = add i64 %2615, 3
  store i64 %2616, i64* %PC.i333
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2617, align 1
  %2618 = and i32 %2613, 255
  %2619 = call i32 @llvm.ctpop.i32(i32 %2618)
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = xor i8 %2621, 1
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2622, i8* %2623, align 1
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2624, align 1
  %2625 = icmp eq i32 %2613, 0
  %2626 = zext i1 %2625 to i8
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2626, i8* %2627, align 1
  %2628 = lshr i32 %2613, 31
  %2629 = trunc i32 %2628 to i8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2629, i8* %2630, align 1
  %2631 = lshr i32 %2613, 31
  %2632 = xor i32 %2628, %2631
  %2633 = add i32 %2632, %2631
  %2634 = icmp eq i32 %2633, 2
  %2635 = zext i1 %2634 to i8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2635, i8* %2636, align 1
  store %struct.Memory* %loadMem_468acb, %struct.Memory** %MEMORY
  %loadMem_468ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %PC.i332
  %2641 = add i64 %2640, 11
  %2642 = load i64, i64* %PC.i332
  %2643 = add i64 %2642, 6
  %2644 = load i64, i64* %PC.i332
  %2645 = add i64 %2644, 6
  store i64 %2645, i64* %PC.i332
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2647 = load i8, i8* %2646, align 1
  store i8 %2647, i8* %BRANCH_TAKEN, align 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2649 = icmp ne i8 %2647, 0
  %2650 = select i1 %2649, i64 %2641, i64 %2643
  store i64 %2650, i64* %2648, align 8
  store %struct.Memory* %loadMem_468ace, %struct.Memory** %MEMORY
  %loadBr_468ace = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ace = icmp eq i8 %loadBr_468ace, 1
  br i1 %cmpBr_468ace, label %block_.L_468ad9, label %block_468ad4

block_468ad4:                                     ; preds = %block_.L_468ab7
  %loadMem_468ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %PC.i331
  %2655 = add i64 %2654, 565
  %2656 = load i64, i64* %PC.i331
  %2657 = add i64 %2656, 5
  store i64 %2657, i64* %PC.i331
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2655, i64* %2658, align 8
  store %struct.Memory* %loadMem_468ad4, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468ad9:                                  ; preds = %block_.L_468ab7
  %loadMem_468ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 15
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RBP.i330
  %2669 = sub i64 %2668, 44
  %2670 = load i64, i64* %PC.i328
  %2671 = add i64 %2670, 3
  store i64 %2671, i64* %PC.i328
  %2672 = inttoptr i64 %2669 to i32*
  %2673 = load i32, i32* %2672
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_468ad9, %struct.Memory** %MEMORY
  %loadMem_468adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RAX.i326
  %2685 = load i64, i64* %RBP.i327
  %2686 = sub i64 %2685, 52
  %2687 = load i64, i64* %PC.i325
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC.i325
  %2689 = trunc i64 %2684 to i32
  %2690 = inttoptr i64 %2686 to i32*
  %2691 = load i32, i32* %2690
  %2692 = add i32 %2691, %2689
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i326, align 8
  %2694 = icmp ult i32 %2692, %2689
  %2695 = icmp ult i32 %2692, %2691
  %2696 = or i1 %2694, %2695
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2697, i8* %2698, align 1
  %2699 = and i32 %2692, 255
  %2700 = call i32 @llvm.ctpop.i32(i32 %2699)
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = xor i8 %2702, 1
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2703, i8* %2704, align 1
  %2705 = xor i32 %2691, %2689
  %2706 = xor i32 %2705, %2692
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2709, i8* %2710, align 1
  %2711 = icmp eq i32 %2692, 0
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2712, i8* %2713, align 1
  %2714 = lshr i32 %2692, 31
  %2715 = trunc i32 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2715, i8* %2716, align 1
  %2717 = lshr i32 %2689, 31
  %2718 = lshr i32 %2691, 31
  %2719 = xor i32 %2714, %2717
  %2720 = xor i32 %2714, %2718
  %2721 = add i32 %2719, %2720
  %2722 = icmp eq i32 %2721, 2
  %2723 = zext i1 %2722 to i8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2723, i8* %2724, align 1
  store %struct.Memory* %loadMem_468adc, %struct.Memory** %MEMORY
  %loadMem_468adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 1
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %EAX.i323 = bitcast %union.anon* %2730 to i32*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 5
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %2733 to i64*
  %2734 = load i32, i32* %EAX.i323
  %2735 = zext i32 %2734 to i64
  %2736 = load i64, i64* %PC.i322
  %2737 = add i64 %2736, 3
  store i64 %2737, i64* %PC.i322
  %2738 = shl i64 %2735, 32
  %2739 = ashr exact i64 %2738, 32
  store i64 %2739, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_468adf, %struct.Memory** %MEMORY
  %loadMem_468ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 1
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 5
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RCX.i321
  %2750 = add i64 %2749, 12099168
  %2751 = load i64, i64* %PC.i319
  %2752 = add i64 %2751, 8
  store i64 %2752, i64* %PC.i319
  %2753 = inttoptr i64 %2750 to i8*
  %2754 = load i8, i8* %2753
  %2755 = zext i8 %2754 to i64
  store i64 %2755, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_468ae2, %struct.Memory** %MEMORY
  %loadMem_468aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 1
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %EAX.i318 = bitcast %union.anon* %2761 to i32*
  %2762 = load i32, i32* %EAX.i318
  %2763 = zext i32 %2762 to i64
  %2764 = load i64, i64* %PC.i317
  %2765 = add i64 %2764, 3
  store i64 %2765, i64* %PC.i317
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2766, align 1
  %2767 = and i32 %2762, 255
  %2768 = call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2771, i8* %2772, align 1
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2773, align 1
  %2774 = icmp eq i32 %2762, 0
  %2775 = zext i1 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2775, i8* %2776, align 1
  %2777 = lshr i32 %2762, 31
  %2778 = trunc i32 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2778, i8* %2779, align 1
  %2780 = lshr i32 %2762, 31
  %2781 = xor i32 %2777, %2780
  %2782 = add i32 %2781, %2780
  %2783 = icmp eq i32 %2782, 2
  %2784 = zext i1 %2783 to i8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2784, i8* %2785, align 1
  store %struct.Memory* %loadMem_468aea, %struct.Memory** %MEMORY
  %loadMem_468aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2788 to i64*
  %2789 = load i64, i64* %PC.i316
  %2790 = add i64 %2789, 11
  %2791 = load i64, i64* %PC.i316
  %2792 = add i64 %2791, 6
  %2793 = load i64, i64* %PC.i316
  %2794 = add i64 %2793, 6
  store i64 %2794, i64* %PC.i316
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2796 = load i8, i8* %2795, align 1
  store i8 %2796, i8* %BRANCH_TAKEN, align 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2798 = icmp ne i8 %2796, 0
  %2799 = select i1 %2798, i64 %2790, i64 %2792
  store i64 %2799, i64* %2797, align 8
  store %struct.Memory* %loadMem_468aed, %struct.Memory** %MEMORY
  %loadBr_468aed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468aed = icmp eq i8 %loadBr_468aed, 1
  br i1 %cmpBr_468aed, label %block_.L_468af8, label %block_468af3

block_468af3:                                     ; preds = %block_.L_468ad9
  %loadMem_468af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %PC.i315
  %2804 = add i64 %2803, 534
  %2805 = load i64, i64* %PC.i315
  %2806 = add i64 %2805, 5
  store i64 %2806, i64* %PC.i315
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2804, i64* %2807, align 8
  store %struct.Memory* %loadMem_468af3, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468af8:                                  ; preds = %block_.L_468ad9
  %loadMem_468af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 1
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 15
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2816 to i64*
  %2817 = load i64, i64* %RBP.i314
  %2818 = sub i64 %2817, 44
  %2819 = load i64, i64* %PC.i312
  %2820 = add i64 %2819, 3
  store i64 %2820, i64* %PC.i312
  %2821 = inttoptr i64 %2818 to i32*
  %2822 = load i32, i32* %2821
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_468af8, %struct.Memory** %MEMORY
  %loadMem_468afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 1
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 15
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %RAX.i310
  %2834 = load i64, i64* %RBP.i311
  %2835 = sub i64 %2834, 52
  %2836 = load i64, i64* %PC.i309
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i309
  %2838 = trunc i64 %2833 to i32
  %2839 = inttoptr i64 %2835 to i32*
  %2840 = load i32, i32* %2839
  %2841 = add i32 %2840, %2838
  %2842 = zext i32 %2841 to i64
  store i64 %2842, i64* %RAX.i310, align 8
  %2843 = icmp ult i32 %2841, %2838
  %2844 = icmp ult i32 %2841, %2840
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2846, i8* %2847, align 1
  %2848 = and i32 %2841, 255
  %2849 = call i32 @llvm.ctpop.i32(i32 %2848)
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  %2852 = xor i8 %2851, 1
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2852, i8* %2853, align 1
  %2854 = xor i32 %2840, %2838
  %2855 = xor i32 %2854, %2841
  %2856 = lshr i32 %2855, 4
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2858, i8* %2859, align 1
  %2860 = icmp eq i32 %2841, 0
  %2861 = zext i1 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2861, i8* %2862, align 1
  %2863 = lshr i32 %2841, 31
  %2864 = trunc i32 %2863 to i8
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2864, i8* %2865, align 1
  %2866 = lshr i32 %2838, 31
  %2867 = lshr i32 %2840, 31
  %2868 = xor i32 %2863, %2866
  %2869 = xor i32 %2863, %2867
  %2870 = add i32 %2868, %2869
  %2871 = icmp eq i32 %2870, 2
  %2872 = zext i1 %2871 to i8
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2872, i8* %2873, align 1
  store %struct.Memory* %loadMem_468afb, %struct.Memory** %MEMORY
  %loadMem_468afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 33
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 1
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 15
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %2882 to i64*
  %2883 = load i64, i64* %RAX.i307
  %2884 = load i64, i64* %RBP.i308
  %2885 = sub i64 %2884, 48
  %2886 = load i64, i64* %PC.i306
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC.i306
  %2888 = trunc i64 %2883 to i32
  %2889 = inttoptr i64 %2885 to i32*
  %2890 = load i32, i32* %2889
  %2891 = add i32 %2890, %2888
  %2892 = zext i32 %2891 to i64
  store i64 %2892, i64* %RAX.i307, align 8
  %2893 = icmp ult i32 %2891, %2888
  %2894 = icmp ult i32 %2891, %2890
  %2895 = or i1 %2893, %2894
  %2896 = zext i1 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2896, i8* %2897, align 1
  %2898 = and i32 %2891, 255
  %2899 = call i32 @llvm.ctpop.i32(i32 %2898)
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2902, i8* %2903, align 1
  %2904 = xor i32 %2890, %2888
  %2905 = xor i32 %2904, %2891
  %2906 = lshr i32 %2905, 4
  %2907 = trunc i32 %2906 to i8
  %2908 = and i8 %2907, 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2908, i8* %2909, align 1
  %2910 = icmp eq i32 %2891, 0
  %2911 = zext i1 %2910 to i8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2911, i8* %2912, align 1
  %2913 = lshr i32 %2891, 31
  %2914 = trunc i32 %2913 to i8
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2914, i8* %2915, align 1
  %2916 = lshr i32 %2888, 31
  %2917 = lshr i32 %2890, 31
  %2918 = xor i32 %2913, %2916
  %2919 = xor i32 %2913, %2917
  %2920 = add i32 %2918, %2919
  %2921 = icmp eq i32 %2920, 2
  %2922 = zext i1 %2921 to i8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2922, i8* %2923, align 1
  store %struct.Memory* %loadMem_468afe, %struct.Memory** %MEMORY
  %loadMem_468b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 1
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %EAX.i304 = bitcast %union.anon* %2929 to i32*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 5
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %2932 to i64*
  %2933 = load i32, i32* %EAX.i304
  %2934 = zext i32 %2933 to i64
  %2935 = load i64, i64* %PC.i303
  %2936 = add i64 %2935, 3
  store i64 %2936, i64* %PC.i303
  %2937 = shl i64 %2934, 32
  %2938 = ashr exact i64 %2937, 32
  store i64 %2938, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_468b01, %struct.Memory** %MEMORY
  %loadMem_468b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 1
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 5
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %RCX.i302
  %2949 = add i64 %2948, 12099168
  %2950 = load i64, i64* %PC.i300
  %2951 = add i64 %2950, 8
  store i64 %2951, i64* %PC.i300
  %2952 = inttoptr i64 %2949 to i8*
  %2953 = load i8, i8* %2952
  %2954 = zext i8 %2953 to i64
  store i64 %2954, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_468b04, %struct.Memory** %MEMORY
  %loadMem_468b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 1
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %2960 to i32*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2963 to i64*
  %2964 = load i32, i32* %EAX.i298
  %2965 = zext i32 %2964 to i64
  %2966 = load i64, i64* %RBP.i299
  %2967 = sub i64 %2966, 28
  %2968 = load i64, i64* %PC.i297
  %2969 = add i64 %2968, 3
  store i64 %2969, i64* %PC.i297
  %2970 = inttoptr i64 %2967 to i32*
  %2971 = load i32, i32* %2970
  %2972 = sub i32 %2964, %2971
  %2973 = icmp ult i32 %2964, %2971
  %2974 = zext i1 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2974, i8* %2975, align 1
  %2976 = and i32 %2972, 255
  %2977 = call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2980, i8* %2981, align 1
  %2982 = xor i32 %2971, %2964
  %2983 = xor i32 %2982, %2972
  %2984 = lshr i32 %2983, 4
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2986, i8* %2987, align 1
  %2988 = icmp eq i32 %2972, 0
  %2989 = zext i1 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2989, i8* %2990, align 1
  %2991 = lshr i32 %2972, 31
  %2992 = trunc i32 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2992, i8* %2993, align 1
  %2994 = lshr i32 %2964, 31
  %2995 = lshr i32 %2971, 31
  %2996 = xor i32 %2995, %2994
  %2997 = xor i32 %2991, %2994
  %2998 = add i32 %2997, %2996
  %2999 = icmp eq i32 %2998, 2
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3000, i8* %3001, align 1
  store %struct.Memory* %loadMem_468b0c, %struct.Memory** %MEMORY
  %loadMem_468b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %PC.i296
  %3006 = add i64 %3005, 11
  %3007 = load i64, i64* %PC.i296
  %3008 = add i64 %3007, 6
  %3009 = load i64, i64* %PC.i296
  %3010 = add i64 %3009, 6
  store i64 %3010, i64* %PC.i296
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3012 = load i8, i8* %3011, align 1
  store i8 %3012, i8* %BRANCH_TAKEN, align 1
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3014 = icmp ne i8 %3012, 0
  %3015 = select i1 %3014, i64 %3006, i64 %3008
  store i64 %3015, i64* %3013, align 8
  store %struct.Memory* %loadMem_468b0f, %struct.Memory** %MEMORY
  %loadBr_468b0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468b0f = icmp eq i8 %loadBr_468b0f, 1
  br i1 %cmpBr_468b0f, label %block_.L_468b1a, label %block_468b15

block_468b15:                                     ; preds = %block_.L_468af8
  %loadMem_468b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %PC.i295
  %3020 = add i64 %3019, 500
  %3021 = load i64, i64* %PC.i295
  %3022 = add i64 %3021, 5
  store i64 %3022, i64* %PC.i295
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3020, i64* %3023, align 8
  store %struct.Memory* %loadMem_468b15, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468b1a:                                  ; preds = %block_.L_468af8
  %loadMem_468b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 1
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 15
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %3032 to i64*
  %3033 = load i64, i64* %RBP.i294
  %3034 = sub i64 %3033, 44
  %3035 = load i64, i64* %PC.i292
  %3036 = add i64 %3035, 3
  store i64 %3036, i64* %PC.i292
  %3037 = inttoptr i64 %3034 to i32*
  %3038 = load i32, i32* %3037
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_468b1a, %struct.Memory** %MEMORY
  %loadMem_468b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 1
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 15
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %3048 to i64*
  %3049 = load i64, i64* %RAX.i290
  %3050 = load i64, i64* %RBP.i291
  %3051 = sub i64 %3050, 48
  %3052 = load i64, i64* %PC.i289
  %3053 = add i64 %3052, 3
  store i64 %3053, i64* %PC.i289
  %3054 = trunc i64 %3049 to i32
  %3055 = inttoptr i64 %3051 to i32*
  %3056 = load i32, i32* %3055
  %3057 = add i32 %3056, %3054
  %3058 = zext i32 %3057 to i64
  store i64 %3058, i64* %RAX.i290, align 8
  %3059 = icmp ult i32 %3057, %3054
  %3060 = icmp ult i32 %3057, %3056
  %3061 = or i1 %3059, %3060
  %3062 = zext i1 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3062, i8* %3063, align 1
  %3064 = and i32 %3057, 255
  %3065 = call i32 @llvm.ctpop.i32(i32 %3064)
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = xor i8 %3067, 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3068, i8* %3069, align 1
  %3070 = xor i32 %3056, %3054
  %3071 = xor i32 %3070, %3057
  %3072 = lshr i32 %3071, 4
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3074, i8* %3075, align 1
  %3076 = icmp eq i32 %3057, 0
  %3077 = zext i1 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3077, i8* %3078, align 1
  %3079 = lshr i32 %3057, 31
  %3080 = trunc i32 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3080, i8* %3081, align 1
  %3082 = lshr i32 %3054, 31
  %3083 = lshr i32 %3056, 31
  %3084 = xor i32 %3079, %3082
  %3085 = xor i32 %3079, %3083
  %3086 = add i32 %3084, %3085
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3088, i8* %3089, align 1
  store %struct.Memory* %loadMem_468b1d, %struct.Memory** %MEMORY
  %loadMem_468b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 9
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RSI.i287 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 15
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RBP.i288
  %3100 = sub i64 %3099, 28
  %3101 = load i64, i64* %PC.i286
  %3102 = add i64 %3101, 3
  store i64 %3102, i64* %PC.i286
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RSI.i287, align 8
  store %struct.Memory* %loadMem_468b20, %struct.Memory** %MEMORY
  %loadMem_468b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %EAX.i284 = bitcast %union.anon* %3111 to i32*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 11
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %3114 to i64*
  %3115 = load i32, i32* %EAX.i284
  %3116 = zext i32 %3115 to i64
  %3117 = load i64, i64* %PC.i283
  %3118 = add i64 %3117, 2
  store i64 %3118, i64* %PC.i283
  %3119 = and i64 %3116, 4294967295
  store i64 %3119, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_468b23, %struct.Memory** %MEMORY
  %loadMem1_468b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3122 to i64*
  %3123 = load i64, i64* %PC.i282
  %3124 = add i64 %3123, -346245
  %3125 = load i64, i64* %PC.i282
  %3126 = add i64 %3125, 5
  %3127 = load i64, i64* %PC.i282
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC.i282
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3130 = load i64, i64* %3129, align 8
  %3131 = add i64 %3130, -8
  %3132 = inttoptr i64 %3131 to i64*
  store i64 %3126, i64* %3132
  store i64 %3131, i64* %3129, align 8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3124, i64* %3133, align 8
  store %struct.Memory* %loadMem1_468b25, %struct.Memory** %MEMORY
  %loadMem2_468b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468b25 = load i64, i64* %3
  %call2_468b25 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_468b25, %struct.Memory* %loadMem2_468b25)
  store %struct.Memory* %call2_468b25, %struct.Memory** %MEMORY
  %loadMem_468b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 33
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 1
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %3139 to i32*
  %3140 = load i32, i32* %EAX.i281
  %3141 = zext i32 %3140 to i64
  %3142 = load i64, i64* %PC.i280
  %3143 = add i64 %3142, 3
  store i64 %3143, i64* %PC.i280
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3144, align 1
  %3145 = and i32 %3140, 255
  %3146 = call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3149, i8* %3150, align 1
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3151, align 1
  %3152 = icmp eq i32 %3140, 0
  %3153 = zext i1 %3152 to i8
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3153, i8* %3154, align 1
  %3155 = lshr i32 %3140, 31
  %3156 = trunc i32 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3156, i8* %3157, align 1
  %3158 = lshr i32 %3140, 31
  %3159 = xor i32 %3155, %3158
  %3160 = add i32 %3159, %3158
  %3161 = icmp eq i32 %3160, 2
  %3162 = zext i1 %3161 to i8
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3162, i8* %3163, align 1
  store %struct.Memory* %loadMem_468b2a, %struct.Memory** %MEMORY
  %loadMem_468b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %PC.i279
  %3168 = add i64 %3167, 226
  %3169 = load i64, i64* %PC.i279
  %3170 = add i64 %3169, 6
  %3171 = load i64, i64* %PC.i279
  %3172 = add i64 %3171, 6
  store i64 %3172, i64* %PC.i279
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3174 = load i8, i8* %3173, align 1
  %3175 = icmp eq i8 %3174, 0
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %BRANCH_TAKEN, align 1
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3178 = select i1 %3175, i64 %3168, i64 %3170
  store i64 %3178, i64* %3177, align 8
  store %struct.Memory* %loadMem_468b2d, %struct.Memory** %MEMORY
  %loadBr_468b2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468b2d = icmp eq i8 %loadBr_468b2d, 1
  br i1 %cmpBr_468b2d, label %block_.L_468c0f, label %block_468b33

block_468b33:                                     ; preds = %block_.L_468b1a
  %loadMem_468b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %3181 to i64*
  %3182 = load i64, i64* %PC.i278
  %3183 = add i64 %3182, 5
  %3184 = load i64, i64* %PC.i278
  %3185 = add i64 %3184, 5
  store i64 %3185, i64* %PC.i278
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3183, i64* %3186, align 8
  store %struct.Memory* %loadMem_468b33, %struct.Memory** %MEMORY
  br label %block_.L_468b38

block_.L_468b38:                                  ; preds = %block_468b33
  %loadMem_468b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 15
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %RBP.i277
  %3194 = sub i64 %3193, 72
  %3195 = load i64, i64* %PC.i276
  %3196 = add i64 %3195, 7
  store i64 %3196, i64* %PC.i276
  %3197 = inttoptr i64 %3194 to i32*
  store i32 0, i32* %3197
  store %struct.Memory* %loadMem_468b38, %struct.Memory** %MEMORY
  br label %block_.L_468b3f

block_.L_468b3f:                                  ; preds = %block_.L_468b8e, %block_.L_468b38
  %loadMem_468b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 15
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %RBP.i275
  %3208 = sub i64 %3207, 72
  %3209 = load i64, i64* %PC.i273
  %3210 = add i64 %3209, 3
  store i64 %3210, i64* %PC.i273
  %3211 = inttoptr i64 %3208 to i32*
  %3212 = load i32, i32* %3211
  %3213 = zext i32 %3212 to i64
  store i64 %3213, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_468b3f, %struct.Memory** %MEMORY
  %loadMem_468b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 5
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 15
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %RBP.i272
  %3224 = sub i64 %3223, 24
  %3225 = load i64, i64* %PC.i270
  %3226 = add i64 %3225, 4
  store i64 %3226, i64* %PC.i270
  %3227 = inttoptr i64 %3224 to i64*
  %3228 = load i64, i64* %3227
  store i64 %3228, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_468b42, %struct.Memory** %MEMORY
  %loadMem_468b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 1
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %EAX.i268 = bitcast %union.anon* %3234 to i32*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 5
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %3237 to i64*
  %3238 = load i32, i32* %EAX.i268
  %3239 = zext i32 %3238 to i64
  %3240 = load i64, i64* %RCX.i269
  %3241 = add i64 %3240, 400
  %3242 = load i64, i64* %PC.i267
  %3243 = add i64 %3242, 6
  store i64 %3243, i64* %PC.i267
  %3244 = inttoptr i64 %3241 to i32*
  %3245 = load i32, i32* %3244
  %3246 = sub i32 %3238, %3245
  %3247 = icmp ult i32 %3238, %3245
  %3248 = zext i1 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3248, i8* %3249, align 1
  %3250 = and i32 %3246, 255
  %3251 = call i32 @llvm.ctpop.i32(i32 %3250)
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  %3254 = xor i8 %3253, 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3254, i8* %3255, align 1
  %3256 = xor i32 %3245, %3238
  %3257 = xor i32 %3256, %3246
  %3258 = lshr i32 %3257, 4
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3260, i8* %3261, align 1
  %3262 = icmp eq i32 %3246, 0
  %3263 = zext i1 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3263, i8* %3264, align 1
  %3265 = lshr i32 %3246, 31
  %3266 = trunc i32 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3266, i8* %3267, align 1
  %3268 = lshr i32 %3238, 31
  %3269 = lshr i32 %3245, 31
  %3270 = xor i32 %3269, %3268
  %3271 = xor i32 %3265, %3268
  %3272 = add i32 %3271, %3270
  %3273 = icmp eq i32 %3272, 2
  %3274 = zext i1 %3273 to i8
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3274, i8* %3275, align 1
  store %struct.Memory* %loadMem_468b46, %struct.Memory** %MEMORY
  %loadMem_468b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %PC.i266
  %3280 = add i64 %3279, 80
  %3281 = load i64, i64* %PC.i266
  %3282 = add i64 %3281, 6
  %3283 = load i64, i64* %PC.i266
  %3284 = add i64 %3283, 6
  store i64 %3284, i64* %PC.i266
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3286 = load i8, i8* %3285, align 1
  %3287 = icmp ne i8 %3286, 0
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3289 = load i8, i8* %3288, align 1
  %3290 = icmp ne i8 %3289, 0
  %3291 = xor i1 %3287, %3290
  %3292 = xor i1 %3291, true
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %BRANCH_TAKEN, align 1
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3295 = select i1 %3291, i64 %3282, i64 %3280
  store i64 %3295, i64* %3294, align 8
  store %struct.Memory* %loadMem_468b4c, %struct.Memory** %MEMORY
  %loadBr_468b4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468b4c = icmp eq i8 %loadBr_468b4c, 1
  br i1 %cmpBr_468b4c, label %block_.L_468b9c, label %block_468b52

block_468b52:                                     ; preds = %block_.L_468b3f
  %loadMem_468b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 1
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 15
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RBP.i265
  %3306 = sub i64 %3305, 24
  %3307 = load i64, i64* %PC.i263
  %3308 = add i64 %3307, 4
  store i64 %3308, i64* %PC.i263
  %3309 = inttoptr i64 %3306 to i64*
  %3310 = load i64, i64* %3309
  store i64 %3310, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_468b52, %struct.Memory** %MEMORY
  %loadMem_468b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 5
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 15
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3319 to i64*
  %3320 = load i64, i64* %RBP.i262
  %3321 = sub i64 %3320, 72
  %3322 = load i64, i64* %PC.i260
  %3323 = add i64 %3322, 4
  store i64 %3323, i64* %PC.i260
  %3324 = inttoptr i64 %3321 to i32*
  %3325 = load i32, i32* %3324
  %3326 = sext i32 %3325 to i64
  store i64 %3326, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_468b56, %struct.Memory** %MEMORY
  %loadMem_468b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 1
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 5
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 7
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %RAX.i257
  %3340 = load i64, i64* %RCX.i258
  %3341 = mul i64 %3340, 4
  %3342 = add i64 %3341, %3339
  %3343 = load i64, i64* %PC.i256
  %3344 = add i64 %3343, 3
  store i64 %3344, i64* %PC.i256
  %3345 = inttoptr i64 %3342 to i32*
  %3346 = load i32, i32* %3345
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_468b5a, %struct.Memory** %MEMORY
  %loadMem_468b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 9
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RSI.i254 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RBP.i255
  %3358 = sub i64 %3357, 44
  %3359 = load i64, i64* %PC.i253
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i253
  %3361 = inttoptr i64 %3358 to i32*
  %3362 = load i32, i32* %3361
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RSI.i254, align 8
  store %struct.Memory* %loadMem_468b5d, %struct.Memory** %MEMORY
  %loadMem_468b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 9
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 15
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %RSI.i251
  %3374 = load i64, i64* %RBP.i252
  %3375 = sub i64 %3374, 48
  %3376 = load i64, i64* %PC.i250
  %3377 = add i64 %3376, 3
  store i64 %3377, i64* %PC.i250
  %3378 = trunc i64 %3373 to i32
  %3379 = inttoptr i64 %3375 to i32*
  %3380 = load i32, i32* %3379
  %3381 = add i32 %3380, %3378
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RSI.i251, align 8
  %3383 = icmp ult i32 %3381, %3378
  %3384 = icmp ult i32 %3381, %3380
  %3385 = or i1 %3383, %3384
  %3386 = zext i1 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3386, i8* %3387, align 1
  %3388 = and i32 %3381, 255
  %3389 = call i32 @llvm.ctpop.i32(i32 %3388)
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = xor i8 %3391, 1
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3392, i8* %3393, align 1
  %3394 = xor i32 %3380, %3378
  %3395 = xor i32 %3394, %3381
  %3396 = lshr i32 %3395, 4
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3398, i8* %3399, align 1
  %3400 = icmp eq i32 %3381, 0
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3401, i8* %3402, align 1
  %3403 = lshr i32 %3381, 31
  %3404 = trunc i32 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3404, i8* %3405, align 1
  %3406 = lshr i32 %3378, 31
  %3407 = lshr i32 %3380, 31
  %3408 = xor i32 %3403, %3406
  %3409 = xor i32 %3403, %3407
  %3410 = add i32 %3408, %3409
  %3411 = icmp eq i32 %3410, 2
  %3412 = zext i1 %3411 to i8
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3412, i8* %3413, align 1
  store %struct.Memory* %loadMem_468b60, %struct.Memory** %MEMORY
  %loadMem_468b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 7
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %EDX.i248 = bitcast %union.anon* %3419 to i32*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 9
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %ESI.i249 = bitcast %union.anon* %3422 to i32*
  %3423 = load i32, i32* %EDX.i248
  %3424 = zext i32 %3423 to i64
  %3425 = load i32, i32* %ESI.i249
  %3426 = zext i32 %3425 to i64
  %3427 = load i64, i64* %PC.i247
  %3428 = add i64 %3427, 2
  store i64 %3428, i64* %PC.i247
  %3429 = sub i32 %3423, %3425
  %3430 = icmp ult i32 %3423, %3425
  %3431 = zext i1 %3430 to i8
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3431, i8* %3432, align 1
  %3433 = and i32 %3429, 255
  %3434 = call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3437, i8* %3438, align 1
  %3439 = xor i64 %3426, %3424
  %3440 = trunc i64 %3439 to i32
  %3441 = xor i32 %3440, %3429
  %3442 = lshr i32 %3441, 4
  %3443 = trunc i32 %3442 to i8
  %3444 = and i8 %3443, 1
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3444, i8* %3445, align 1
  %3446 = icmp eq i32 %3429, 0
  %3447 = zext i1 %3446 to i8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3447, i8* %3448, align 1
  %3449 = lshr i32 %3429, 31
  %3450 = trunc i32 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i32 %3423, 31
  %3453 = lshr i32 %3425, 31
  %3454 = xor i32 %3453, %3452
  %3455 = xor i32 %3449, %3452
  %3456 = add i32 %3455, %3454
  %3457 = icmp eq i32 %3456, 2
  %3458 = zext i1 %3457 to i8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3458, i8* %3459, align 1
  store %struct.Memory* %loadMem_468b63, %struct.Memory** %MEMORY
  %loadMem_468b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3462 to i64*
  %3463 = load i64, i64* %PC.i246
  %3464 = add i64 %3463, 36
  %3465 = load i64, i64* %PC.i246
  %3466 = add i64 %3465, 6
  %3467 = load i64, i64* %PC.i246
  %3468 = add i64 %3467, 6
  store i64 %3468, i64* %PC.i246
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3470 = load i8, i8* %3469, align 1
  %3471 = icmp eq i8 %3470, 0
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %BRANCH_TAKEN, align 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3474 = select i1 %3471, i64 %3464, i64 %3466
  store i64 %3474, i64* %3473, align 8
  store %struct.Memory* %loadMem_468b65, %struct.Memory** %MEMORY
  %loadBr_468b65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468b65 = icmp eq i8 %loadBr_468b65, 1
  br i1 %cmpBr_468b65, label %block_.L_468b89, label %block_468b6b

block_468b6b:                                     ; preds = %block_468b52
  %loadMem_468b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i245
  %3485 = sub i64 %3484, 24
  %3486 = load i64, i64* %PC.i243
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i243
  %3488 = inttoptr i64 %3485 to i64*
  %3489 = load i64, i64* %3488
  store i64 %3489, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_468b6b, %struct.Memory** %MEMORY
  %loadMem_468b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 5
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i242
  %3500 = sub i64 %3499, 72
  %3501 = load i64, i64* %PC.i240
  %3502 = add i64 %3501, 4
  store i64 %3502, i64* %PC.i240
  %3503 = inttoptr i64 %3500 to i32*
  %3504 = load i32, i32* %3503
  %3505 = sext i32 %3504 to i64
  store i64 %3505, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_468b6f, %struct.Memory** %MEMORY
  %loadMem_468b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 7
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RAX.i237
  %3519 = load i64, i64* %RCX.i238
  %3520 = mul i64 %3519, 4
  %3521 = add i64 %3518, 200
  %3522 = add i64 %3521, %3520
  %3523 = load i64, i64* %PC.i236
  %3524 = add i64 %3523, 7
  store i64 %3524, i64* %PC.i236
  %3525 = inttoptr i64 %3522 to i32*
  %3526 = load i32, i32* %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %RDX.i239, align 8
  store %struct.Memory* %loadMem_468b73, %struct.Memory** %MEMORY
  %loadMem_468b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 7
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %RDX.i235
  %3535 = load i64, i64* %PC.i234
  %3536 = add i64 %3535, 3
  store i64 %3536, i64* %PC.i234
  %3537 = trunc i64 %3534 to i32
  %3538 = zext i32 %3537 to i64
  store i64 %3538, i64* %RDX.i235, align 8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3539, align 1
  %3540 = and i32 %3537, 255
  %3541 = call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3544, i8* %3545, align 1
  %3546 = trunc i64 %3534 to i32
  %3547 = xor i32 %3546, %3537
  %3548 = lshr i32 %3547, 4
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3550, i8* %3551, align 1
  %3552 = icmp eq i32 %3537, 0
  %3553 = zext i1 %3552 to i8
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3553, i8* %3554, align 1
  %3555 = lshr i32 %3537, 31
  %3556 = trunc i32 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3556, i8* %3557, align 1
  %3558 = lshr i32 %3537, 31
  %3559 = xor i32 %3555, %3558
  %3560 = add i32 %3559, %3555
  %3561 = icmp eq i32 %3560, 2
  %3562 = zext i1 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3562, i8* %3563, align 1
  store %struct.Memory* %loadMem_468b7a, %struct.Memory** %MEMORY
  %loadMem_468b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 7
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %EDX.i231 = bitcast %union.anon* %3569 to i32*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 1
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 5
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %RAX.i232
  %3577 = load i64, i64* %RCX.i233
  %3578 = mul i64 %3577, 4
  %3579 = add i64 %3576, 200
  %3580 = add i64 %3579, %3578
  %3581 = load i32, i32* %EDX.i231
  %3582 = zext i32 %3581 to i64
  %3583 = load i64, i64* %PC.i230
  %3584 = add i64 %3583, 7
  store i64 %3584, i64* %PC.i230
  %3585 = inttoptr i64 %3580 to i32*
  store i32 %3581, i32* %3585
  store %struct.Memory* %loadMem_468b7d, %struct.Memory** %MEMORY
  %loadMem_468b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %PC.i229
  %3590 = add i64 %3589, 24
  %3591 = load i64, i64* %PC.i229
  %3592 = add i64 %3591, 5
  store i64 %3592, i64* %PC.i229
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3590, i64* %3593, align 8
  store %struct.Memory* %loadMem_468b84, %struct.Memory** %MEMORY
  br label %block_.L_468b9c

block_.L_468b89:                                  ; preds = %block_468b52
  %loadMem_468b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %PC.i228
  %3598 = add i64 %3597, 5
  %3599 = load i64, i64* %PC.i228
  %3600 = add i64 %3599, 5
  store i64 %3600, i64* %PC.i228
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3598, i64* %3601, align 8
  store %struct.Memory* %loadMem_468b89, %struct.Memory** %MEMORY
  br label %block_.L_468b8e

block_.L_468b8e:                                  ; preds = %block_.L_468b89
  %loadMem_468b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 33
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3604 to i64*
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 1
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %3607 to i64*
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 15
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3610 to i64*
  %3611 = load i64, i64* %RBP.i227
  %3612 = sub i64 %3611, 72
  %3613 = load i64, i64* %PC.i225
  %3614 = add i64 %3613, 3
  store i64 %3614, i64* %PC.i225
  %3615 = inttoptr i64 %3612 to i32*
  %3616 = load i32, i32* %3615
  %3617 = zext i32 %3616 to i64
  store i64 %3617, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_468b8e, %struct.Memory** %MEMORY
  %loadMem_468b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 33
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 1
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RAX.i224
  %3625 = load i64, i64* %PC.i223
  %3626 = add i64 %3625, 3
  store i64 %3626, i64* %PC.i223
  %3627 = trunc i64 %3624 to i32
  %3628 = add i32 1, %3627
  %3629 = zext i32 %3628 to i64
  store i64 %3629, i64* %RAX.i224, align 8
  %3630 = icmp ult i32 %3628, %3627
  %3631 = icmp ult i32 %3628, 1
  %3632 = or i1 %3630, %3631
  %3633 = zext i1 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3633, i8* %3634, align 1
  %3635 = and i32 %3628, 255
  %3636 = call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3639, i8* %3640, align 1
  %3641 = xor i64 1, %3624
  %3642 = trunc i64 %3641 to i32
  %3643 = xor i32 %3642, %3628
  %3644 = lshr i32 %3643, 4
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3646, i8* %3647, align 1
  %3648 = icmp eq i32 %3628, 0
  %3649 = zext i1 %3648 to i8
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3649, i8* %3650, align 1
  %3651 = lshr i32 %3628, 31
  %3652 = trunc i32 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3652, i8* %3653, align 1
  %3654 = lshr i32 %3627, 31
  %3655 = xor i32 %3651, %3654
  %3656 = add i32 %3655, %3651
  %3657 = icmp eq i32 %3656, 2
  %3658 = zext i1 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3658, i8* %3659, align 1
  store %struct.Memory* %loadMem_468b91, %struct.Memory** %MEMORY
  %loadMem_468b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 33
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 1
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %3665 to i32*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 15
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3668 to i64*
  %3669 = load i64, i64* %RBP.i222
  %3670 = sub i64 %3669, 72
  %3671 = load i32, i32* %EAX.i221
  %3672 = zext i32 %3671 to i64
  %3673 = load i64, i64* %PC.i220
  %3674 = add i64 %3673, 3
  store i64 %3674, i64* %PC.i220
  %3675 = inttoptr i64 %3670 to i32*
  store i32 %3671, i32* %3675
  store %struct.Memory* %loadMem_468b94, %struct.Memory** %MEMORY
  %loadMem_468b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %PC.i219
  %3680 = add i64 %3679, -88
  %3681 = load i64, i64* %PC.i219
  %3682 = add i64 %3681, 5
  store i64 %3682, i64* %PC.i219
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3680, i64* %3683, align 8
  store %struct.Memory* %loadMem_468b97, %struct.Memory** %MEMORY
  br label %block_.L_468b3f

block_.L_468b9c:                                  ; preds = %block_468b6b, %block_.L_468b3f
  %loadMem_468b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 1
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 15
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RBP.i218
  %3694 = sub i64 %3693, 72
  %3695 = load i64, i64* %PC.i216
  %3696 = add i64 %3695, 3
  store i64 %3696, i64* %PC.i216
  %3697 = inttoptr i64 %3694 to i32*
  %3698 = load i32, i32* %3697
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_468b9c, %struct.Memory** %MEMORY
  %loadMem_468b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 5
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i215
  %3710 = sub i64 %3709, 24
  %3711 = load i64, i64* %PC.i213
  %3712 = add i64 %3711, 4
  store i64 %3712, i64* %PC.i213
  %3713 = inttoptr i64 %3710 to i64*
  %3714 = load i64, i64* %3713
  store i64 %3714, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_468b9f, %struct.Memory** %MEMORY
  %loadMem_468ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 1
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %EAX.i211 = bitcast %union.anon* %3720 to i32*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 5
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %3723 to i64*
  %3724 = load i32, i32* %EAX.i211
  %3725 = zext i32 %3724 to i64
  %3726 = load i64, i64* %RCX.i212
  %3727 = add i64 %3726, 400
  %3728 = load i64, i64* %PC.i210
  %3729 = add i64 %3728, 6
  store i64 %3729, i64* %PC.i210
  %3730 = inttoptr i64 %3727 to i32*
  %3731 = load i32, i32* %3730
  %3732 = sub i32 %3724, %3731
  %3733 = icmp ult i32 %3724, %3731
  %3734 = zext i1 %3733 to i8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3734, i8* %3735, align 1
  %3736 = and i32 %3732, 255
  %3737 = call i32 @llvm.ctpop.i32(i32 %3736)
  %3738 = trunc i32 %3737 to i8
  %3739 = and i8 %3738, 1
  %3740 = xor i8 %3739, 1
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3740, i8* %3741, align 1
  %3742 = xor i32 %3731, %3724
  %3743 = xor i32 %3742, %3732
  %3744 = lshr i32 %3743, 4
  %3745 = trunc i32 %3744 to i8
  %3746 = and i8 %3745, 1
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3746, i8* %3747, align 1
  %3748 = icmp eq i32 %3732, 0
  %3749 = zext i1 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3749, i8* %3750, align 1
  %3751 = lshr i32 %3732, 31
  %3752 = trunc i32 %3751 to i8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3752, i8* %3753, align 1
  %3754 = lshr i32 %3724, 31
  %3755 = lshr i32 %3731, 31
  %3756 = xor i32 %3755, %3754
  %3757 = xor i32 %3751, %3754
  %3758 = add i32 %3757, %3756
  %3759 = icmp eq i32 %3758, 2
  %3760 = zext i1 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3760, i8* %3761, align 1
  store %struct.Memory* %loadMem_468ba3, %struct.Memory** %MEMORY
  %loadMem_468ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 33
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3764 to i64*
  %3765 = load i64, i64* %PC.i209
  %3766 = add i64 %3765, 92
  %3767 = load i64, i64* %PC.i209
  %3768 = add i64 %3767, 6
  %3769 = load i64, i64* %PC.i209
  %3770 = add i64 %3769, 6
  store i64 %3770, i64* %PC.i209
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3772 = load i8, i8* %3771, align 1
  %3773 = icmp eq i8 %3772, 0
  %3774 = zext i1 %3773 to i8
  store i8 %3774, i8* %BRANCH_TAKEN, align 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3776 = select i1 %3773, i64 %3766, i64 %3768
  store i64 %3776, i64* %3775, align 8
  store %struct.Memory* %loadMem_468ba9, %struct.Memory** %MEMORY
  %loadBr_468ba9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ba9 = icmp eq i8 %loadBr_468ba9, 1
  br i1 %cmpBr_468ba9, label %block_.L_468c05, label %block_468baf

block_468baf:                                     ; preds = %block_.L_468b9c
  %loadMem_468baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 33
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 1
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 15
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %RBP.i208
  %3787 = sub i64 %3786, 24
  %3788 = load i64, i64* %PC.i206
  %3789 = add i64 %3788, 4
  store i64 %3789, i64* %PC.i206
  %3790 = inttoptr i64 %3787 to i64*
  %3791 = load i64, i64* %3790
  store i64 %3791, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_468baf, %struct.Memory** %MEMORY
  %loadMem_468bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 1
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %RAX.i205
  %3799 = add i64 %3798, 400
  %3800 = load i64, i64* %PC.i204
  %3801 = add i64 %3800, 7
  store i64 %3801, i64* %PC.i204
  %3802 = inttoptr i64 %3799 to i32*
  %3803 = load i32, i32* %3802
  %3804 = sub i32 %3803, 50
  %3805 = icmp ult i32 %3803, 50
  %3806 = zext i1 %3805 to i8
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3806, i8* %3807, align 1
  %3808 = and i32 %3804, 255
  %3809 = call i32 @llvm.ctpop.i32(i32 %3808)
  %3810 = trunc i32 %3809 to i8
  %3811 = and i8 %3810, 1
  %3812 = xor i8 %3811, 1
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3812, i8* %3813, align 1
  %3814 = xor i32 %3803, 50
  %3815 = xor i32 %3814, %3804
  %3816 = lshr i32 %3815, 4
  %3817 = trunc i32 %3816 to i8
  %3818 = and i8 %3817, 1
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3818, i8* %3819, align 1
  %3820 = icmp eq i32 %3804, 0
  %3821 = zext i1 %3820 to i8
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3821, i8* %3822, align 1
  %3823 = lshr i32 %3804, 31
  %3824 = trunc i32 %3823 to i8
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3824, i8* %3825, align 1
  %3826 = lshr i32 %3803, 31
  %3827 = xor i32 %3823, %3826
  %3828 = add i32 %3827, %3826
  %3829 = icmp eq i32 %3828, 2
  %3830 = zext i1 %3829 to i8
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3830, i8* %3831, align 1
  store %struct.Memory* %loadMem_468bb3, %struct.Memory** %MEMORY
  %loadMem_468bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3834 to i64*
  %3835 = load i64, i64* %PC.i203
  %3836 = add i64 %3835, 75
  %3837 = load i64, i64* %PC.i203
  %3838 = add i64 %3837, 6
  %3839 = load i64, i64* %PC.i203
  %3840 = add i64 %3839, 6
  store i64 %3840, i64* %PC.i203
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3842 = load i8, i8* %3841, align 1
  %3843 = icmp ne i8 %3842, 0
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3845 = load i8, i8* %3844, align 1
  %3846 = icmp ne i8 %3845, 0
  %3847 = xor i1 %3843, %3846
  %3848 = xor i1 %3847, true
  %3849 = zext i1 %3848 to i8
  store i8 %3849, i8* %BRANCH_TAKEN, align 1
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3851 = select i1 %3847, i64 %3838, i64 %3836
  store i64 %3851, i64* %3850, align 8
  store %struct.Memory* %loadMem_468bba, %struct.Memory** %MEMORY
  %loadBr_468bba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468bba = icmp eq i8 %loadBr_468bba, 1
  br i1 %cmpBr_468bba, label %block_.L_468c05, label %block_468bc0

block_468bc0:                                     ; preds = %block_468baf
  %loadMem_468bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 1
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 15
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %3860 to i64*
  %3861 = load i64, i64* %RBP.i202
  %3862 = sub i64 %3861, 44
  %3863 = load i64, i64* %PC.i200
  %3864 = add i64 %3863, 3
  store i64 %3864, i64* %PC.i200
  %3865 = inttoptr i64 %3862 to i32*
  %3866 = load i32, i32* %3865
  %3867 = zext i32 %3866 to i64
  store i64 %3867, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_468bc0, %struct.Memory** %MEMORY
  %loadMem_468bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 1
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 15
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %RAX.i198
  %3878 = load i64, i64* %RBP.i199
  %3879 = sub i64 %3878, 48
  %3880 = load i64, i64* %PC.i197
  %3881 = add i64 %3880, 3
  store i64 %3881, i64* %PC.i197
  %3882 = trunc i64 %3877 to i32
  %3883 = inttoptr i64 %3879 to i32*
  %3884 = load i32, i32* %3883
  %3885 = add i32 %3884, %3882
  %3886 = zext i32 %3885 to i64
  store i64 %3886, i64* %RAX.i198, align 8
  %3887 = icmp ult i32 %3885, %3882
  %3888 = icmp ult i32 %3885, %3884
  %3889 = or i1 %3887, %3888
  %3890 = zext i1 %3889 to i8
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3890, i8* %3891, align 1
  %3892 = and i32 %3885, 255
  %3893 = call i32 @llvm.ctpop.i32(i32 %3892)
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = xor i8 %3895, 1
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3896, i8* %3897, align 1
  %3898 = xor i32 %3884, %3882
  %3899 = xor i32 %3898, %3885
  %3900 = lshr i32 %3899, 4
  %3901 = trunc i32 %3900 to i8
  %3902 = and i8 %3901, 1
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3902, i8* %3903, align 1
  %3904 = icmp eq i32 %3885, 0
  %3905 = zext i1 %3904 to i8
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3905, i8* %3906, align 1
  %3907 = lshr i32 %3885, 31
  %3908 = trunc i32 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3908, i8* %3909, align 1
  %3910 = lshr i32 %3882, 31
  %3911 = lshr i32 %3884, 31
  %3912 = xor i32 %3907, %3910
  %3913 = xor i32 %3907, %3911
  %3914 = add i32 %3912, %3913
  %3915 = icmp eq i32 %3914, 2
  %3916 = zext i1 %3915 to i8
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3916, i8* %3917, align 1
  store %struct.Memory* %loadMem_468bc3, %struct.Memory** %MEMORY
  %loadMem_468bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3920 to i64*
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 5
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 15
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %3926 to i64*
  %3927 = load i64, i64* %RBP.i196
  %3928 = sub i64 %3927, 24
  %3929 = load i64, i64* %PC.i194
  %3930 = add i64 %3929, 4
  store i64 %3930, i64* %PC.i194
  %3931 = inttoptr i64 %3928 to i64*
  %3932 = load i64, i64* %3931
  store i64 %3932, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_468bc6, %struct.Memory** %MEMORY
  %loadMem_468bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 7
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 15
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3941 to i64*
  %3942 = load i64, i64* %RBP.i193
  %3943 = sub i64 %3942, 24
  %3944 = load i64, i64* %PC.i191
  %3945 = add i64 %3944, 4
  store i64 %3945, i64* %PC.i191
  %3946 = inttoptr i64 %3943 to i64*
  %3947 = load i64, i64* %3946
  store i64 %3947, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_468bca, %struct.Memory** %MEMORY
  %loadMem_468bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 7
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %RDX.i190
  %3955 = add i64 %3954, 400
  %3956 = load i64, i64* %PC.i189
  %3957 = add i64 %3956, 7
  store i64 %3957, i64* %PC.i189
  %3958 = inttoptr i64 %3955 to i32*
  %3959 = load i32, i32* %3958
  %3960 = sext i32 %3959 to i64
  store i64 %3960, i64* %RDX.i190, align 8
  store %struct.Memory* %loadMem_468bce, %struct.Memory** %MEMORY
  %loadMem_468bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 1
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %EAX.i186 = bitcast %union.anon* %3966 to i32*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 5
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 7
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RCX.i187
  %3974 = load i64, i64* %RDX.i188
  %3975 = mul i64 %3974, 4
  %3976 = add i64 %3975, %3973
  %3977 = load i32, i32* %EAX.i186
  %3978 = zext i32 %3977 to i64
  %3979 = load i64, i64* %PC.i185
  %3980 = add i64 %3979, 3
  store i64 %3980, i64* %PC.i185
  %3981 = inttoptr i64 %3976 to i32*
  store i32 %3977, i32* %3981
  store %struct.Memory* %loadMem_468bd5, %struct.Memory** %MEMORY
  %loadMem_468bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 5
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 15
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %3990 to i64*
  %3991 = load i64, i64* %RBP.i184
  %3992 = sub i64 %3991, 24
  %3993 = load i64, i64* %PC.i182
  %3994 = add i64 %3993, 4
  store i64 %3994, i64* %PC.i182
  %3995 = inttoptr i64 %3992 to i64*
  %3996 = load i64, i64* %3995
  store i64 %3996, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_468bd8, %struct.Memory** %MEMORY
  %loadMem_468bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 7
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 15
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %4005 to i64*
  %4006 = load i64, i64* %RBP.i181
  %4007 = sub i64 %4006, 24
  %4008 = load i64, i64* %PC.i179
  %4009 = add i64 %4008, 4
  store i64 %4009, i64* %PC.i179
  %4010 = inttoptr i64 %4007 to i64*
  %4011 = load i64, i64* %4010
  store i64 %4011, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_468bdc, %struct.Memory** %MEMORY
  %loadMem_468be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 7
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %4017 to i64*
  %4018 = load i64, i64* %RDX.i178
  %4019 = add i64 %4018, 400
  %4020 = load i64, i64* %PC.i177
  %4021 = add i64 %4020, 7
  store i64 %4021, i64* %PC.i177
  %4022 = inttoptr i64 %4019 to i32*
  %4023 = load i32, i32* %4022
  %4024 = sext i32 %4023 to i64
  store i64 %4024, i64* %RDX.i178, align 8
  store %struct.Memory* %loadMem_468be0, %struct.Memory** %MEMORY
  %loadMem_468be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 5
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 7
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %4033 to i64*
  %4034 = load i64, i64* %RCX.i175
  %4035 = load i64, i64* %RDX.i176
  %4036 = mul i64 %4035, 4
  %4037 = add i64 %4034, 200
  %4038 = add i64 %4037, %4036
  %4039 = load i64, i64* %PC.i174
  %4040 = add i64 %4039, 11
  store i64 %4040, i64* %PC.i174
  %4041 = inttoptr i64 %4038 to i32*
  store i32 0, i32* %4041
  store %struct.Memory* %loadMem_468be7, %struct.Memory** %MEMORY
  %loadMem_468bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 5
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i173
  %4052 = sub i64 %4051, 24
  %4053 = load i64, i64* %PC.i171
  %4054 = add i64 %4053, 4
  store i64 %4054, i64* %PC.i171
  %4055 = inttoptr i64 %4052 to i64*
  %4056 = load i64, i64* %4055
  store i64 %4056, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_468bf2, %struct.Memory** %MEMORY
  %loadMem_468bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 1
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 5
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %4065 to i64*
  %4066 = load i64, i64* %RCX.i170
  %4067 = add i64 %4066, 400
  %4068 = load i64, i64* %PC.i168
  %4069 = add i64 %4068, 6
  store i64 %4069, i64* %PC.i168
  %4070 = inttoptr i64 %4067 to i32*
  %4071 = load i32, i32* %4070
  %4072 = zext i32 %4071 to i64
  store i64 %4072, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_468bf6, %struct.Memory** %MEMORY
  %loadMem_468bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 1
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RAX.i167
  %4080 = load i64, i64* %PC.i166
  %4081 = add i64 %4080, 3
  store i64 %4081, i64* %PC.i166
  %4082 = trunc i64 %4079 to i32
  %4083 = add i32 1, %4082
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RAX.i167, align 8
  %4085 = icmp ult i32 %4083, %4082
  %4086 = icmp ult i32 %4083, 1
  %4087 = or i1 %4085, %4086
  %4088 = zext i1 %4087 to i8
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4088, i8* %4089, align 1
  %4090 = and i32 %4083, 255
  %4091 = call i32 @llvm.ctpop.i32(i32 %4090)
  %4092 = trunc i32 %4091 to i8
  %4093 = and i8 %4092, 1
  %4094 = xor i8 %4093, 1
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4094, i8* %4095, align 1
  %4096 = xor i64 1, %4079
  %4097 = trunc i64 %4096 to i32
  %4098 = xor i32 %4097, %4083
  %4099 = lshr i32 %4098, 4
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4101, i8* %4102, align 1
  %4103 = icmp eq i32 %4083, 0
  %4104 = zext i1 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4104, i8* %4105, align 1
  %4106 = lshr i32 %4083, 31
  %4107 = trunc i32 %4106 to i8
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4107, i8* %4108, align 1
  %4109 = lshr i32 %4082, 31
  %4110 = xor i32 %4106, %4109
  %4111 = add i32 %4110, %4106
  %4112 = icmp eq i32 %4111, 2
  %4113 = zext i1 %4112 to i8
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4113, i8* %4114, align 1
  store %struct.Memory* %loadMem_468bfc, %struct.Memory** %MEMORY
  %loadMem_468bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 33
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4117 to i64*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 1
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %4120 to i32*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 5
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %4123 to i64*
  %4124 = load i64, i64* %RCX.i165
  %4125 = add i64 %4124, 400
  %4126 = load i32, i32* %EAX.i164
  %4127 = zext i32 %4126 to i64
  %4128 = load i64, i64* %PC.i163
  %4129 = add i64 %4128, 6
  store i64 %4129, i64* %PC.i163
  %4130 = inttoptr i64 %4125 to i32*
  store i32 %4126, i32* %4130
  store %struct.Memory* %loadMem_468bff, %struct.Memory** %MEMORY
  br label %block_.L_468c05

block_.L_468c05:                                  ; preds = %block_468bc0, %block_468baf, %block_.L_468b9c
  %loadMem_468c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %PC.i162
  %4135 = add i64 %4134, 5
  %4136 = load i64, i64* %PC.i162
  %4137 = add i64 %4136, 5
  store i64 %4137, i64* %PC.i162
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4135, i64* %4138, align 8
  store %struct.Memory* %loadMem_468c05, %struct.Memory** %MEMORY
  br label %block_.L_468c0a

block_.L_468c0a:                                  ; preds = %block_.L_468c05
  %loadMem_468c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %PC.i161
  %4143 = add i64 %4142, 5
  %4144 = load i64, i64* %PC.i161
  %4145 = add i64 %4144, 5
  store i64 %4145, i64* %PC.i161
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4143, i64* %4146, align 8
  store %struct.Memory* %loadMem_468c0a, %struct.Memory** %MEMORY
  br label %block_.L_468c0f

block_.L_468c0f:                                  ; preds = %block_.L_468c0a, %block_.L_468b1a
  %loadMem_468c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 15
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RBP.i160
  %4157 = sub i64 %4156, 44
  %4158 = load i64, i64* %PC.i158
  %4159 = add i64 %4158, 3
  store i64 %4159, i64* %PC.i158
  %4160 = inttoptr i64 %4157 to i32*
  %4161 = load i32, i32* %4160
  %4162 = zext i32 %4161 to i64
  store i64 %4162, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_468c0f, %struct.Memory** %MEMORY
  %loadMem_468c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 15
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RAX.i156
  %4173 = load i64, i64* %RBP.i157
  %4174 = sub i64 %4173, 52
  %4175 = load i64, i64* %PC.i155
  %4176 = add i64 %4175, 3
  store i64 %4176, i64* %PC.i155
  %4177 = trunc i64 %4172 to i32
  %4178 = inttoptr i64 %4174 to i32*
  %4179 = load i32, i32* %4178
  %4180 = add i32 %4179, %4177
  %4181 = zext i32 %4180 to i64
  store i64 %4181, i64* %RAX.i156, align 8
  %4182 = icmp ult i32 %4180, %4177
  %4183 = icmp ult i32 %4180, %4179
  %4184 = or i1 %4182, %4183
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4185, i8* %4186, align 1
  %4187 = and i32 %4180, 255
  %4188 = call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4191, i8* %4192, align 1
  %4193 = xor i32 %4179, %4177
  %4194 = xor i32 %4193, %4180
  %4195 = lshr i32 %4194, 4
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4197, i8* %4198, align 1
  %4199 = icmp eq i32 %4180, 0
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4200, i8* %4201, align 1
  %4202 = lshr i32 %4180, 31
  %4203 = trunc i32 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4203, i8* %4204, align 1
  %4205 = lshr i32 %4177, 31
  %4206 = lshr i32 %4179, 31
  %4207 = xor i32 %4202, %4205
  %4208 = xor i32 %4202, %4206
  %4209 = add i32 %4207, %4208
  %4210 = icmp eq i32 %4209, 2
  %4211 = zext i1 %4210 to i8
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4211, i8* %4212, align 1
  store %struct.Memory* %loadMem_468c12, %struct.Memory** %MEMORY
  %loadMem_468c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 9
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RSI.i153 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 15
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %RBP.i154
  %4223 = sub i64 %4222, 28
  %4224 = load i64, i64* %PC.i152
  %4225 = add i64 %4224, 3
  store i64 %4225, i64* %PC.i152
  %4226 = inttoptr i64 %4223 to i32*
  %4227 = load i32, i32* %4226
  %4228 = zext i32 %4227 to i64
  store i64 %4228, i64* %RSI.i153, align 8
  store %struct.Memory* %loadMem_468c15, %struct.Memory** %MEMORY
  %loadMem_468c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 33
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4231 to i64*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 1
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %EAX.i151 = bitcast %union.anon* %4234 to i32*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 11
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4237 to i64*
  %4238 = load i32, i32* %EAX.i151
  %4239 = zext i32 %4238 to i64
  %4240 = load i64, i64* %PC.i150
  %4241 = add i64 %4240, 2
  store i64 %4241, i64* %PC.i150
  %4242 = and i64 %4239, 4294967295
  store i64 %4242, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_468c18, %struct.Memory** %MEMORY
  %loadMem1_468c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4245 to i64*
  %4246 = load i64, i64* %PC.i149
  %4247 = add i64 %4246, -346490
  %4248 = load i64, i64* %PC.i149
  %4249 = add i64 %4248, 5
  %4250 = load i64, i64* %PC.i149
  %4251 = add i64 %4250, 5
  store i64 %4251, i64* %PC.i149
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4253 = load i64, i64* %4252, align 8
  %4254 = add i64 %4253, -8
  %4255 = inttoptr i64 %4254 to i64*
  store i64 %4249, i64* %4255
  store i64 %4254, i64* %4252, align 8
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4247, i64* %4256, align 8
  store %struct.Memory* %loadMem1_468c1a, %struct.Memory** %MEMORY
  %loadMem2_468c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468c1a = load i64, i64* %3
  %call2_468c1a = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_468c1a, %struct.Memory* %loadMem2_468c1a)
  store %struct.Memory* %call2_468c1a, %struct.Memory** %MEMORY
  %loadMem_468c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 1
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %4262 to i32*
  %4263 = load i32, i32* %EAX.i148
  %4264 = zext i32 %4263 to i64
  %4265 = load i64, i64* %PC.i147
  %4266 = add i64 %4265, 3
  store i64 %4266, i64* %PC.i147
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4267, align 1
  %4268 = and i32 %4263, 255
  %4269 = call i32 @llvm.ctpop.i32(i32 %4268)
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = xor i8 %4271, 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4272, i8* %4273, align 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4274, align 1
  %4275 = icmp eq i32 %4263, 0
  %4276 = zext i1 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4276, i8* %4277, align 1
  %4278 = lshr i32 %4263, 31
  %4279 = trunc i32 %4278 to i8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4279, i8* %4280, align 1
  %4281 = lshr i32 %4263, 31
  %4282 = xor i32 %4278, %4281
  %4283 = add i32 %4282, %4281
  %4284 = icmp eq i32 %4283, 2
  %4285 = zext i1 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4285, i8* %4286, align 1
  store %struct.Memory* %loadMem_468c1f, %struct.Memory** %MEMORY
  %loadMem_468c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 33
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %PC.i146
  %4291 = add i64 %4290, 226
  %4292 = load i64, i64* %PC.i146
  %4293 = add i64 %4292, 6
  %4294 = load i64, i64* %PC.i146
  %4295 = add i64 %4294, 6
  store i64 %4295, i64* %PC.i146
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4297 = load i8, i8* %4296, align 1
  %4298 = icmp eq i8 %4297, 0
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %BRANCH_TAKEN, align 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4301 = select i1 %4298, i64 %4291, i64 %4293
  store i64 %4301, i64* %4300, align 8
  store %struct.Memory* %loadMem_468c22, %struct.Memory** %MEMORY
  %loadBr_468c22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468c22 = icmp eq i8 %loadBr_468c22, 1
  br i1 %cmpBr_468c22, label %block_.L_468d04, label %block_468c28

block_468c28:                                     ; preds = %block_.L_468c0f
  %loadMem_468c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %PC.i145
  %4306 = add i64 %4305, 5
  %4307 = load i64, i64* %PC.i145
  %4308 = add i64 %4307, 5
  store i64 %4308, i64* %PC.i145
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4306, i64* %4309, align 8
  store %struct.Memory* %loadMem_468c28, %struct.Memory** %MEMORY
  br label %block_.L_468c2d

block_.L_468c2d:                                  ; preds = %block_468c28
  %loadMem_468c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 15
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %4315 to i64*
  %4316 = load i64, i64* %RBP.i144
  %4317 = sub i64 %4316, 76
  %4318 = load i64, i64* %PC.i143
  %4319 = add i64 %4318, 7
  store i64 %4319, i64* %PC.i143
  %4320 = inttoptr i64 %4317 to i32*
  store i32 0, i32* %4320
  store %struct.Memory* %loadMem_468c2d, %struct.Memory** %MEMORY
  br label %block_.L_468c34

block_.L_468c34:                                  ; preds = %block_.L_468c83, %block_.L_468c2d
  %loadMem_468c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 33
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 1
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 15
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %4329 to i64*
  %4330 = load i64, i64* %RBP.i142
  %4331 = sub i64 %4330, 76
  %4332 = load i64, i64* %PC.i140
  %4333 = add i64 %4332, 3
  store i64 %4333, i64* %PC.i140
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_468c34, %struct.Memory** %MEMORY
  %loadMem_468c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 33
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 5
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %4342 to i64*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 15
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %4345 to i64*
  %4346 = load i64, i64* %RBP.i139
  %4347 = sub i64 %4346, 24
  %4348 = load i64, i64* %PC.i137
  %4349 = add i64 %4348, 4
  store i64 %4349, i64* %PC.i137
  %4350 = inttoptr i64 %4347 to i64*
  %4351 = load i64, i64* %4350
  store i64 %4351, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_468c37, %struct.Memory** %MEMORY
  %loadMem_468c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 1
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %EAX.i135 = bitcast %union.anon* %4357 to i32*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 5
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %4360 to i64*
  %4361 = load i32, i32* %EAX.i135
  %4362 = zext i32 %4361 to i64
  %4363 = load i64, i64* %RCX.i136
  %4364 = add i64 %4363, 400
  %4365 = load i64, i64* %PC.i134
  %4366 = add i64 %4365, 6
  store i64 %4366, i64* %PC.i134
  %4367 = inttoptr i64 %4364 to i32*
  %4368 = load i32, i32* %4367
  %4369 = sub i32 %4361, %4368
  %4370 = icmp ult i32 %4361, %4368
  %4371 = zext i1 %4370 to i8
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4371, i8* %4372, align 1
  %4373 = and i32 %4369, 255
  %4374 = call i32 @llvm.ctpop.i32(i32 %4373)
  %4375 = trunc i32 %4374 to i8
  %4376 = and i8 %4375, 1
  %4377 = xor i8 %4376, 1
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4377, i8* %4378, align 1
  %4379 = xor i32 %4368, %4361
  %4380 = xor i32 %4379, %4369
  %4381 = lshr i32 %4380, 4
  %4382 = trunc i32 %4381 to i8
  %4383 = and i8 %4382, 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4383, i8* %4384, align 1
  %4385 = icmp eq i32 %4369, 0
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4386, i8* %4387, align 1
  %4388 = lshr i32 %4369, 31
  %4389 = trunc i32 %4388 to i8
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4389, i8* %4390, align 1
  %4391 = lshr i32 %4361, 31
  %4392 = lshr i32 %4368, 31
  %4393 = xor i32 %4392, %4391
  %4394 = xor i32 %4388, %4391
  %4395 = add i32 %4394, %4393
  %4396 = icmp eq i32 %4395, 2
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4397, i8* %4398, align 1
  store %struct.Memory* %loadMem_468c3b, %struct.Memory** %MEMORY
  %loadMem_468c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4401 to i64*
  %4402 = load i64, i64* %PC.i133
  %4403 = add i64 %4402, 80
  %4404 = load i64, i64* %PC.i133
  %4405 = add i64 %4404, 6
  %4406 = load i64, i64* %PC.i133
  %4407 = add i64 %4406, 6
  store i64 %4407, i64* %PC.i133
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4409 = load i8, i8* %4408, align 1
  %4410 = icmp ne i8 %4409, 0
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4412 = load i8, i8* %4411, align 1
  %4413 = icmp ne i8 %4412, 0
  %4414 = xor i1 %4410, %4413
  %4415 = xor i1 %4414, true
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %BRANCH_TAKEN, align 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4418 = select i1 %4414, i64 %4405, i64 %4403
  store i64 %4418, i64* %4417, align 8
  store %struct.Memory* %loadMem_468c41, %struct.Memory** %MEMORY
  %loadBr_468c41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468c41 = icmp eq i8 %loadBr_468c41, 1
  br i1 %cmpBr_468c41, label %block_.L_468c91, label %block_468c47

block_468c47:                                     ; preds = %block_.L_468c34
  %loadMem_468c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 1
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %4424 to i64*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 15
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %4427 to i64*
  %4428 = load i64, i64* %RBP.i132
  %4429 = sub i64 %4428, 24
  %4430 = load i64, i64* %PC.i130
  %4431 = add i64 %4430, 4
  store i64 %4431, i64* %PC.i130
  %4432 = inttoptr i64 %4429 to i64*
  %4433 = load i64, i64* %4432
  store i64 %4433, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_468c47, %struct.Memory** %MEMORY
  %loadMem_468c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4436 to i64*
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 5
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %4439 to i64*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 15
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4442 to i64*
  %4443 = load i64, i64* %RBP.i129
  %4444 = sub i64 %4443, 76
  %4445 = load i64, i64* %PC.i127
  %4446 = add i64 %4445, 4
  store i64 %4446, i64* %PC.i127
  %4447 = inttoptr i64 %4444 to i32*
  %4448 = load i32, i32* %4447
  %4449 = sext i32 %4448 to i64
  store i64 %4449, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_468c4b, %struct.Memory** %MEMORY
  %loadMem_468c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 5
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 7
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RDX.i126 = bitcast %union.anon* %4461 to i64*
  %4462 = load i64, i64* %RAX.i124
  %4463 = load i64, i64* %RCX.i125
  %4464 = mul i64 %4463, 4
  %4465 = add i64 %4464, %4462
  %4466 = load i64, i64* %PC.i123
  %4467 = add i64 %4466, 3
  store i64 %4467, i64* %PC.i123
  %4468 = inttoptr i64 %4465 to i32*
  %4469 = load i32, i32* %4468
  %4470 = zext i32 %4469 to i64
  store i64 %4470, i64* %RDX.i126, align 8
  store %struct.Memory* %loadMem_468c4f, %struct.Memory** %MEMORY
  %loadMem_468c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 9
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 15
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RBP.i122
  %4481 = sub i64 %4480, 44
  %4482 = load i64, i64* %PC.i120
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %PC.i120
  %4484 = inttoptr i64 %4481 to i32*
  %4485 = load i32, i32* %4484
  %4486 = zext i32 %4485 to i64
  store i64 %4486, i64* %RSI.i121, align 8
  store %struct.Memory* %loadMem_468c52, %struct.Memory** %MEMORY
  %loadMem_468c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 9
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RSI.i
  %4497 = load i64, i64* %RBP.i119
  %4498 = sub i64 %4497, 52
  %4499 = load i64, i64* %PC.i118
  %4500 = add i64 %4499, 3
  store i64 %4500, i64* %PC.i118
  %4501 = trunc i64 %4496 to i32
  %4502 = inttoptr i64 %4498 to i32*
  %4503 = load i32, i32* %4502
  %4504 = add i32 %4503, %4501
  %4505 = zext i32 %4504 to i64
  store i64 %4505, i64* %RSI.i, align 8
  %4506 = icmp ult i32 %4504, %4501
  %4507 = icmp ult i32 %4504, %4503
  %4508 = or i1 %4506, %4507
  %4509 = zext i1 %4508 to i8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4509, i8* %4510, align 1
  %4511 = and i32 %4504, 255
  %4512 = call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4515, i8* %4516, align 1
  %4517 = xor i32 %4503, %4501
  %4518 = xor i32 %4517, %4504
  %4519 = lshr i32 %4518, 4
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4521, i8* %4522, align 1
  %4523 = icmp eq i32 %4504, 0
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4524, i8* %4525, align 1
  %4526 = lshr i32 %4504, 31
  %4527 = trunc i32 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4527, i8* %4528, align 1
  %4529 = lshr i32 %4501, 31
  %4530 = lshr i32 %4503, 31
  %4531 = xor i32 %4526, %4529
  %4532 = xor i32 %4526, %4530
  %4533 = add i32 %4531, %4532
  %4534 = icmp eq i32 %4533, 2
  %4535 = zext i1 %4534 to i8
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4535, i8* %4536, align 1
  store %struct.Memory* %loadMem_468c55, %struct.Memory** %MEMORY
  %loadMem_468c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 7
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %EDX.i117 = bitcast %union.anon* %4542 to i32*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 9
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4545 to i32*
  %4546 = load i32, i32* %EDX.i117
  %4547 = zext i32 %4546 to i64
  %4548 = load i32, i32* %ESI.i
  %4549 = zext i32 %4548 to i64
  %4550 = load i64, i64* %PC.i116
  %4551 = add i64 %4550, 2
  store i64 %4551, i64* %PC.i116
  %4552 = sub i32 %4546, %4548
  %4553 = icmp ult i32 %4546, %4548
  %4554 = zext i1 %4553 to i8
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4554, i8* %4555, align 1
  %4556 = and i32 %4552, 255
  %4557 = call i32 @llvm.ctpop.i32(i32 %4556)
  %4558 = trunc i32 %4557 to i8
  %4559 = and i8 %4558, 1
  %4560 = xor i8 %4559, 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4560, i8* %4561, align 1
  %4562 = xor i64 %4549, %4547
  %4563 = trunc i64 %4562 to i32
  %4564 = xor i32 %4563, %4552
  %4565 = lshr i32 %4564, 4
  %4566 = trunc i32 %4565 to i8
  %4567 = and i8 %4566, 1
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4567, i8* %4568, align 1
  %4569 = icmp eq i32 %4552, 0
  %4570 = zext i1 %4569 to i8
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4570, i8* %4571, align 1
  %4572 = lshr i32 %4552, 31
  %4573 = trunc i32 %4572 to i8
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4573, i8* %4574, align 1
  %4575 = lshr i32 %4546, 31
  %4576 = lshr i32 %4548, 31
  %4577 = xor i32 %4576, %4575
  %4578 = xor i32 %4572, %4575
  %4579 = add i32 %4578, %4577
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4581, i8* %4582, align 1
  store %struct.Memory* %loadMem_468c58, %struct.Memory** %MEMORY
  %loadMem_468c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %PC.i115
  %4587 = add i64 %4586, 36
  %4588 = load i64, i64* %PC.i115
  %4589 = add i64 %4588, 6
  %4590 = load i64, i64* %PC.i115
  %4591 = add i64 %4590, 6
  store i64 %4591, i64* %PC.i115
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4593 = load i8, i8* %4592, align 1
  %4594 = icmp eq i8 %4593, 0
  %4595 = zext i1 %4594 to i8
  store i8 %4595, i8* %BRANCH_TAKEN, align 1
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4597 = select i1 %4594, i64 %4587, i64 %4589
  store i64 %4597, i64* %4596, align 8
  store %struct.Memory* %loadMem_468c5a, %struct.Memory** %MEMORY
  %loadBr_468c5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468c5a = icmp eq i8 %loadBr_468c5a, 1
  br i1 %cmpBr_468c5a, label %block_.L_468c7e, label %block_468c60

block_468c60:                                     ; preds = %block_468c47
  %loadMem_468c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 33
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 1
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 15
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %4606 to i64*
  %4607 = load i64, i64* %RBP.i114
  %4608 = sub i64 %4607, 24
  %4609 = load i64, i64* %PC.i112
  %4610 = add i64 %4609, 4
  store i64 %4610, i64* %PC.i112
  %4611 = inttoptr i64 %4608 to i64*
  %4612 = load i64, i64* %4611
  store i64 %4612, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_468c60, %struct.Memory** %MEMORY
  %loadMem_468c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 33
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4615 to i64*
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 5
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 15
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %4621 to i64*
  %4622 = load i64, i64* %RBP.i111
  %4623 = sub i64 %4622, 76
  %4624 = load i64, i64* %PC.i109
  %4625 = add i64 %4624, 4
  store i64 %4625, i64* %PC.i109
  %4626 = inttoptr i64 %4623 to i32*
  %4627 = load i32, i32* %4626
  %4628 = sext i32 %4627 to i64
  store i64 %4628, i64* %RCX.i110, align 8
  store %struct.Memory* %loadMem_468c64, %struct.Memory** %MEMORY
  %loadMem_468c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 1
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 5
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 7
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RAX.i106
  %4642 = load i64, i64* %RCX.i107
  %4643 = mul i64 %4642, 4
  %4644 = add i64 %4641, 200
  %4645 = add i64 %4644, %4643
  %4646 = load i64, i64* %PC.i105
  %4647 = add i64 %4646, 7
  store i64 %4647, i64* %PC.i105
  %4648 = inttoptr i64 %4645 to i32*
  %4649 = load i32, i32* %4648
  %4650 = zext i32 %4649 to i64
  store i64 %4650, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_468c68, %struct.Memory** %MEMORY
  %loadMem_468c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 7
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %4656 to i64*
  %4657 = load i64, i64* %RDX.i104
  %4658 = load i64, i64* %PC.i103
  %4659 = add i64 %4658, 3
  store i64 %4659, i64* %PC.i103
  %4660 = trunc i64 %4657 to i32
  %4661 = zext i32 %4660 to i64
  store i64 %4661, i64* %RDX.i104, align 8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4662, align 1
  %4663 = and i32 %4660, 255
  %4664 = call i32 @llvm.ctpop.i32(i32 %4663)
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  %4667 = xor i8 %4666, 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4667, i8* %4668, align 1
  %4669 = trunc i64 %4657 to i32
  %4670 = xor i32 %4669, %4660
  %4671 = lshr i32 %4670, 4
  %4672 = trunc i32 %4671 to i8
  %4673 = and i8 %4672, 1
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4673, i8* %4674, align 1
  %4675 = icmp eq i32 %4660, 0
  %4676 = zext i1 %4675 to i8
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4676, i8* %4677, align 1
  %4678 = lshr i32 %4660, 31
  %4679 = trunc i32 %4678 to i8
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4679, i8* %4680, align 1
  %4681 = lshr i32 %4660, 31
  %4682 = xor i32 %4678, %4681
  %4683 = add i32 %4682, %4678
  %4684 = icmp eq i32 %4683, 2
  %4685 = zext i1 %4684 to i8
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4685, i8* %4686, align 1
  store %struct.Memory* %loadMem_468c6f, %struct.Memory** %MEMORY
  %loadMem_468c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 7
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4692 to i32*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 1
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 5
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %RAX.i101
  %4700 = load i64, i64* %RCX.i102
  %4701 = mul i64 %4700, 4
  %4702 = add i64 %4699, 200
  %4703 = add i64 %4702, %4701
  %4704 = load i32, i32* %EDX.i
  %4705 = zext i32 %4704 to i64
  %4706 = load i64, i64* %PC.i100
  %4707 = add i64 %4706, 7
  store i64 %4707, i64* %PC.i100
  %4708 = inttoptr i64 %4703 to i32*
  store i32 %4704, i32* %4708
  store %struct.Memory* %loadMem_468c72, %struct.Memory** %MEMORY
  %loadMem_468c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 33
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4711 to i64*
  %4712 = load i64, i64* %PC.i99
  %4713 = add i64 %4712, 24
  %4714 = load i64, i64* %PC.i99
  %4715 = add i64 %4714, 5
  store i64 %4715, i64* %PC.i99
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4713, i64* %4716, align 8
  store %struct.Memory* %loadMem_468c79, %struct.Memory** %MEMORY
  br label %block_.L_468c91

block_.L_468c7e:                                  ; preds = %block_468c47
  %loadMem_468c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %PC.i98
  %4721 = add i64 %4720, 5
  %4722 = load i64, i64* %PC.i98
  %4723 = add i64 %4722, 5
  store i64 %4723, i64* %PC.i98
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4721, i64* %4724, align 8
  store %struct.Memory* %loadMem_468c7e, %struct.Memory** %MEMORY
  br label %block_.L_468c83

block_.L_468c83:                                  ; preds = %block_.L_468c7e
  %loadMem_468c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 1
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 15
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %RBP.i97
  %4735 = sub i64 %4734, 76
  %4736 = load i64, i64* %PC.i95
  %4737 = add i64 %4736, 3
  store i64 %4737, i64* %PC.i95
  %4738 = inttoptr i64 %4735 to i32*
  %4739 = load i32, i32* %4738
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_468c83, %struct.Memory** %MEMORY
  %loadMem_468c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 1
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %4746 to i64*
  %4747 = load i64, i64* %RAX.i94
  %4748 = load i64, i64* %PC.i93
  %4749 = add i64 %4748, 3
  store i64 %4749, i64* %PC.i93
  %4750 = trunc i64 %4747 to i32
  %4751 = add i32 1, %4750
  %4752 = zext i32 %4751 to i64
  store i64 %4752, i64* %RAX.i94, align 8
  %4753 = icmp ult i32 %4751, %4750
  %4754 = icmp ult i32 %4751, 1
  %4755 = or i1 %4753, %4754
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4756, i8* %4757, align 1
  %4758 = and i32 %4751, 255
  %4759 = call i32 @llvm.ctpop.i32(i32 %4758)
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  %4762 = xor i8 %4761, 1
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4762, i8* %4763, align 1
  %4764 = xor i64 1, %4747
  %4765 = trunc i64 %4764 to i32
  %4766 = xor i32 %4765, %4751
  %4767 = lshr i32 %4766, 4
  %4768 = trunc i32 %4767 to i8
  %4769 = and i8 %4768, 1
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4769, i8* %4770, align 1
  %4771 = icmp eq i32 %4751, 0
  %4772 = zext i1 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4772, i8* %4773, align 1
  %4774 = lshr i32 %4751, 31
  %4775 = trunc i32 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4775, i8* %4776, align 1
  %4777 = lshr i32 %4750, 31
  %4778 = xor i32 %4774, %4777
  %4779 = add i32 %4778, %4774
  %4780 = icmp eq i32 %4779, 2
  %4781 = zext i1 %4780 to i8
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4781, i8* %4782, align 1
  store %struct.Memory* %loadMem_468c86, %struct.Memory** %MEMORY
  %loadMem_468c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %4788 to i32*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 15
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RBP.i92
  %4793 = sub i64 %4792, 76
  %4794 = load i32, i32* %EAX.i91
  %4795 = zext i32 %4794 to i64
  %4796 = load i64, i64* %PC.i90
  %4797 = add i64 %4796, 3
  store i64 %4797, i64* %PC.i90
  %4798 = inttoptr i64 %4793 to i32*
  store i32 %4794, i32* %4798
  store %struct.Memory* %loadMem_468c89, %struct.Memory** %MEMORY
  %loadMem_468c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4801 to i64*
  %4802 = load i64, i64* %PC.i89
  %4803 = add i64 %4802, -88
  %4804 = load i64, i64* %PC.i89
  %4805 = add i64 %4804, 5
  store i64 %4805, i64* %PC.i89
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4803, i64* %4806, align 8
  store %struct.Memory* %loadMem_468c8c, %struct.Memory** %MEMORY
  br label %block_.L_468c34

block_.L_468c91:                                  ; preds = %block_468c60, %block_.L_468c34
  %loadMem_468c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 1
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i88
  %4817 = sub i64 %4816, 76
  %4818 = load i64, i64* %PC.i86
  %4819 = add i64 %4818, 3
  store i64 %4819, i64* %PC.i86
  %4820 = inttoptr i64 %4817 to i32*
  %4821 = load i32, i32* %4820
  %4822 = zext i32 %4821 to i64
  store i64 %4822, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_468c91, %struct.Memory** %MEMORY
  %loadMem_468c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 5
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 15
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %4831 to i64*
  %4832 = load i64, i64* %RBP.i85
  %4833 = sub i64 %4832, 24
  %4834 = load i64, i64* %PC.i83
  %4835 = add i64 %4834, 4
  store i64 %4835, i64* %PC.i83
  %4836 = inttoptr i64 %4833 to i64*
  %4837 = load i64, i64* %4836
  store i64 %4837, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_468c94, %struct.Memory** %MEMORY
  %loadMem_468c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 33
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 1
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %4843 to i32*
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 5
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4846 to i64*
  %4847 = load i32, i32* %EAX.i81
  %4848 = zext i32 %4847 to i64
  %4849 = load i64, i64* %RCX.i82
  %4850 = add i64 %4849, 400
  %4851 = load i64, i64* %PC.i80
  %4852 = add i64 %4851, 6
  store i64 %4852, i64* %PC.i80
  %4853 = inttoptr i64 %4850 to i32*
  %4854 = load i32, i32* %4853
  %4855 = sub i32 %4847, %4854
  %4856 = icmp ult i32 %4847, %4854
  %4857 = zext i1 %4856 to i8
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4857, i8* %4858, align 1
  %4859 = and i32 %4855, 255
  %4860 = call i32 @llvm.ctpop.i32(i32 %4859)
  %4861 = trunc i32 %4860 to i8
  %4862 = and i8 %4861, 1
  %4863 = xor i8 %4862, 1
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4863, i8* %4864, align 1
  %4865 = xor i32 %4854, %4847
  %4866 = xor i32 %4865, %4855
  %4867 = lshr i32 %4866, 4
  %4868 = trunc i32 %4867 to i8
  %4869 = and i8 %4868, 1
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4869, i8* %4870, align 1
  %4871 = icmp eq i32 %4855, 0
  %4872 = zext i1 %4871 to i8
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4872, i8* %4873, align 1
  %4874 = lshr i32 %4855, 31
  %4875 = trunc i32 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4875, i8* %4876, align 1
  %4877 = lshr i32 %4847, 31
  %4878 = lshr i32 %4854, 31
  %4879 = xor i32 %4878, %4877
  %4880 = xor i32 %4874, %4877
  %4881 = add i32 %4880, %4879
  %4882 = icmp eq i32 %4881, 2
  %4883 = zext i1 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4883, i8* %4884, align 1
  store %struct.Memory* %loadMem_468c98, %struct.Memory** %MEMORY
  %loadMem_468c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 33
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4887 to i64*
  %4888 = load i64, i64* %PC.i79
  %4889 = add i64 %4888, 92
  %4890 = load i64, i64* %PC.i79
  %4891 = add i64 %4890, 6
  %4892 = load i64, i64* %PC.i79
  %4893 = add i64 %4892, 6
  store i64 %4893, i64* %PC.i79
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4895 = load i8, i8* %4894, align 1
  %4896 = icmp eq i8 %4895, 0
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %BRANCH_TAKEN, align 1
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4899 = select i1 %4896, i64 %4889, i64 %4891
  store i64 %4899, i64* %4898, align 8
  store %struct.Memory* %loadMem_468c9e, %struct.Memory** %MEMORY
  %loadBr_468c9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468c9e = icmp eq i8 %loadBr_468c9e, 1
  br i1 %cmpBr_468c9e, label %block_.L_468cfa, label %block_468ca4

block_468ca4:                                     ; preds = %block_.L_468c91
  %loadMem_468ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 1
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 15
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %4908 to i64*
  %4909 = load i64, i64* %RBP.i78
  %4910 = sub i64 %4909, 24
  %4911 = load i64, i64* %PC.i76
  %4912 = add i64 %4911, 4
  store i64 %4912, i64* %PC.i76
  %4913 = inttoptr i64 %4910 to i64*
  %4914 = load i64, i64* %4913
  store i64 %4914, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_468ca4, %struct.Memory** %MEMORY
  %loadMem_468ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 33
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 1
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %4920 to i64*
  %4921 = load i64, i64* %RAX.i75
  %4922 = add i64 %4921, 400
  %4923 = load i64, i64* %PC.i74
  %4924 = add i64 %4923, 7
  store i64 %4924, i64* %PC.i74
  %4925 = inttoptr i64 %4922 to i32*
  %4926 = load i32, i32* %4925
  %4927 = sub i32 %4926, 50
  %4928 = icmp ult i32 %4926, 50
  %4929 = zext i1 %4928 to i8
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4929, i8* %4930, align 1
  %4931 = and i32 %4927, 255
  %4932 = call i32 @llvm.ctpop.i32(i32 %4931)
  %4933 = trunc i32 %4932 to i8
  %4934 = and i8 %4933, 1
  %4935 = xor i8 %4934, 1
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4935, i8* %4936, align 1
  %4937 = xor i32 %4926, 50
  %4938 = xor i32 %4937, %4927
  %4939 = lshr i32 %4938, 4
  %4940 = trunc i32 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4941, i8* %4942, align 1
  %4943 = icmp eq i32 %4927, 0
  %4944 = zext i1 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i32 %4927, 31
  %4947 = trunc i32 %4946 to i8
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4947, i8* %4948, align 1
  %4949 = lshr i32 %4926, 31
  %4950 = xor i32 %4946, %4949
  %4951 = add i32 %4950, %4949
  %4952 = icmp eq i32 %4951, 2
  %4953 = zext i1 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4953, i8* %4954, align 1
  store %struct.Memory* %loadMem_468ca8, %struct.Memory** %MEMORY
  %loadMem_468caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4957 to i64*
  %4958 = load i64, i64* %PC.i73
  %4959 = add i64 %4958, 75
  %4960 = load i64, i64* %PC.i73
  %4961 = add i64 %4960, 6
  %4962 = load i64, i64* %PC.i73
  %4963 = add i64 %4962, 6
  store i64 %4963, i64* %PC.i73
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4965 = load i8, i8* %4964, align 1
  %4966 = icmp ne i8 %4965, 0
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4968 = load i8, i8* %4967, align 1
  %4969 = icmp ne i8 %4968, 0
  %4970 = xor i1 %4966, %4969
  %4971 = xor i1 %4970, true
  %4972 = zext i1 %4971 to i8
  store i8 %4972, i8* %BRANCH_TAKEN, align 1
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4974 = select i1 %4970, i64 %4961, i64 %4959
  store i64 %4974, i64* %4973, align 8
  store %struct.Memory* %loadMem_468caf, %struct.Memory** %MEMORY
  %loadBr_468caf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468caf = icmp eq i8 %loadBr_468caf, 1
  br i1 %cmpBr_468caf, label %block_.L_468cfa, label %block_468cb5

block_468cb5:                                     ; preds = %block_468ca4
  %loadMem_468cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 1
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 15
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %RBP.i72
  %4985 = sub i64 %4984, 44
  %4986 = load i64, i64* %PC.i70
  %4987 = add i64 %4986, 3
  store i64 %4987, i64* %PC.i70
  %4988 = inttoptr i64 %4985 to i32*
  %4989 = load i32, i32* %4988
  %4990 = zext i32 %4989 to i64
  store i64 %4990, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_468cb5, %struct.Memory** %MEMORY
  %loadMem_468cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 1
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 15
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RAX.i68
  %5001 = load i64, i64* %RBP.i69
  %5002 = sub i64 %5001, 52
  %5003 = load i64, i64* %PC.i67
  %5004 = add i64 %5003, 3
  store i64 %5004, i64* %PC.i67
  %5005 = trunc i64 %5000 to i32
  %5006 = inttoptr i64 %5002 to i32*
  %5007 = load i32, i32* %5006
  %5008 = add i32 %5007, %5005
  %5009 = zext i32 %5008 to i64
  store i64 %5009, i64* %RAX.i68, align 8
  %5010 = icmp ult i32 %5008, %5005
  %5011 = icmp ult i32 %5008, %5007
  %5012 = or i1 %5010, %5011
  %5013 = zext i1 %5012 to i8
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5013, i8* %5014, align 1
  %5015 = and i32 %5008, 255
  %5016 = call i32 @llvm.ctpop.i32(i32 %5015)
  %5017 = trunc i32 %5016 to i8
  %5018 = and i8 %5017, 1
  %5019 = xor i8 %5018, 1
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5019, i8* %5020, align 1
  %5021 = xor i32 %5007, %5005
  %5022 = xor i32 %5021, %5008
  %5023 = lshr i32 %5022, 4
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5025, i8* %5026, align 1
  %5027 = icmp eq i32 %5008, 0
  %5028 = zext i1 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5028, i8* %5029, align 1
  %5030 = lshr i32 %5008, 31
  %5031 = trunc i32 %5030 to i8
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5031, i8* %5032, align 1
  %5033 = lshr i32 %5005, 31
  %5034 = lshr i32 %5007, 31
  %5035 = xor i32 %5030, %5033
  %5036 = xor i32 %5030, %5034
  %5037 = add i32 %5035, %5036
  %5038 = icmp eq i32 %5037, 2
  %5039 = zext i1 %5038 to i8
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5039, i8* %5040, align 1
  store %struct.Memory* %loadMem_468cb8, %struct.Memory** %MEMORY
  %loadMem_468cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 33
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5043 to i64*
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 5
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %5046 to i64*
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 15
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %5049 to i64*
  %5050 = load i64, i64* %RBP.i66
  %5051 = sub i64 %5050, 24
  %5052 = load i64, i64* %PC.i64
  %5053 = add i64 %5052, 4
  store i64 %5053, i64* %PC.i64
  %5054 = inttoptr i64 %5051 to i64*
  %5055 = load i64, i64* %5054
  store i64 %5055, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_468cbb, %struct.Memory** %MEMORY
  %loadMem_468cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 7
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 15
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %5064 to i64*
  %5065 = load i64, i64* %RBP.i63
  %5066 = sub i64 %5065, 24
  %5067 = load i64, i64* %PC.i61
  %5068 = add i64 %5067, 4
  store i64 %5068, i64* %PC.i61
  %5069 = inttoptr i64 %5066 to i64*
  %5070 = load i64, i64* %5069
  store i64 %5070, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_468cbf, %struct.Memory** %MEMORY
  %loadMem_468cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 7
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RDX.i60
  %5078 = add i64 %5077, 400
  %5079 = load i64, i64* %PC.i59
  %5080 = add i64 %5079, 7
  store i64 %5080, i64* %PC.i59
  %5081 = inttoptr i64 %5078 to i32*
  %5082 = load i32, i32* %5081
  %5083 = sext i32 %5082 to i64
  store i64 %5083, i64* %RDX.i60, align 8
  store %struct.Memory* %loadMem_468cc3, %struct.Memory** %MEMORY
  %loadMem_468cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %5089 to i32*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 5
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 7
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RCX.i57
  %5097 = load i64, i64* %RDX.i58
  %5098 = mul i64 %5097, 4
  %5099 = add i64 %5098, %5096
  %5100 = load i32, i32* %EAX.i56
  %5101 = zext i32 %5100 to i64
  %5102 = load i64, i64* %PC.i55
  %5103 = add i64 %5102, 3
  store i64 %5103, i64* %PC.i55
  %5104 = inttoptr i64 %5099 to i32*
  store i32 %5100, i32* %5104
  store %struct.Memory* %loadMem_468cca, %struct.Memory** %MEMORY
  %loadMem_468ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 5
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %5110 to i64*
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 15
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %5113 to i64*
  %5114 = load i64, i64* %RBP.i54
  %5115 = sub i64 %5114, 24
  %5116 = load i64, i64* %PC.i52
  %5117 = add i64 %5116, 4
  store i64 %5117, i64* %PC.i52
  %5118 = inttoptr i64 %5115 to i64*
  %5119 = load i64, i64* %5118
  store i64 %5119, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_468ccd, %struct.Memory** %MEMORY
  %loadMem_468cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 33
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5122 to i64*
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 7
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 15
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5128 to i64*
  %5129 = load i64, i64* %RBP.i51
  %5130 = sub i64 %5129, 24
  %5131 = load i64, i64* %PC.i49
  %5132 = add i64 %5131, 4
  store i64 %5132, i64* %PC.i49
  %5133 = inttoptr i64 %5130 to i64*
  %5134 = load i64, i64* %5133
  store i64 %5134, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_468cd1, %struct.Memory** %MEMORY
  %loadMem_468cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 33
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5137 to i64*
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5139 = getelementptr inbounds %struct.GPR, %struct.GPR* %5138, i32 0, i32 7
  %5140 = getelementptr inbounds %struct.Reg, %struct.Reg* %5139, i32 0, i32 0
  %RDX.i48 = bitcast %union.anon* %5140 to i64*
  %5141 = load i64, i64* %RDX.i48
  %5142 = add i64 %5141, 400
  %5143 = load i64, i64* %PC.i47
  %5144 = add i64 %5143, 7
  store i64 %5144, i64* %PC.i47
  %5145 = inttoptr i64 %5142 to i32*
  %5146 = load i32, i32* %5145
  %5147 = sext i32 %5146 to i64
  store i64 %5147, i64* %RDX.i48, align 8
  store %struct.Memory* %loadMem_468cd5, %struct.Memory** %MEMORY
  %loadMem_468cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 5
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 7
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5156 to i64*
  %5157 = load i64, i64* %RCX.i46
  %5158 = load i64, i64* %RDX.i
  %5159 = mul i64 %5158, 4
  %5160 = add i64 %5157, 200
  %5161 = add i64 %5160, %5159
  %5162 = load i64, i64* %PC.i45
  %5163 = add i64 %5162, 11
  store i64 %5163, i64* %PC.i45
  %5164 = inttoptr i64 %5161 to i32*
  store i32 0, i32* %5164
  store %struct.Memory* %loadMem_468cdc, %struct.Memory** %MEMORY
  %loadMem_468ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 5
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 15
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5173 to i64*
  %5174 = load i64, i64* %RBP.i44
  %5175 = sub i64 %5174, 24
  %5176 = load i64, i64* %PC.i42
  %5177 = add i64 %5176, 4
  store i64 %5177, i64* %PC.i42
  %5178 = inttoptr i64 %5175 to i64*
  %5179 = load i64, i64* %5178
  store i64 %5179, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_468ce7, %struct.Memory** %MEMORY
  %loadMem_468ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 33
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5182 to i64*
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 1
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 5
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %5188 to i64*
  %5189 = load i64, i64* %RCX.i41
  %5190 = add i64 %5189, 400
  %5191 = load i64, i64* %PC.i39
  %5192 = add i64 %5191, 6
  store i64 %5192, i64* %PC.i39
  %5193 = inttoptr i64 %5190 to i32*
  %5194 = load i32, i32* %5193
  %5195 = zext i32 %5194 to i64
  store i64 %5195, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_468ceb, %struct.Memory** %MEMORY
  %loadMem_468cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 1
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RAX.i38
  %5203 = load i64, i64* %PC.i37
  %5204 = add i64 %5203, 3
  store i64 %5204, i64* %PC.i37
  %5205 = trunc i64 %5202 to i32
  %5206 = add i32 1, %5205
  %5207 = zext i32 %5206 to i64
  store i64 %5207, i64* %RAX.i38, align 8
  %5208 = icmp ult i32 %5206, %5205
  %5209 = icmp ult i32 %5206, 1
  %5210 = or i1 %5208, %5209
  %5211 = zext i1 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5211, i8* %5212, align 1
  %5213 = and i32 %5206, 255
  %5214 = call i32 @llvm.ctpop.i32(i32 %5213)
  %5215 = trunc i32 %5214 to i8
  %5216 = and i8 %5215, 1
  %5217 = xor i8 %5216, 1
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5217, i8* %5218, align 1
  %5219 = xor i64 1, %5202
  %5220 = trunc i64 %5219 to i32
  %5221 = xor i32 %5220, %5206
  %5222 = lshr i32 %5221, 4
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5224, i8* %5225, align 1
  %5226 = icmp eq i32 %5206, 0
  %5227 = zext i1 %5226 to i8
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5227, i8* %5228, align 1
  %5229 = lshr i32 %5206, 31
  %5230 = trunc i32 %5229 to i8
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5230, i8* %5231, align 1
  %5232 = lshr i32 %5205, 31
  %5233 = xor i32 %5229, %5232
  %5234 = add i32 %5233, %5229
  %5235 = icmp eq i32 %5234, 2
  %5236 = zext i1 %5235 to i8
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5236, i8* %5237, align 1
  store %struct.Memory* %loadMem_468cf1, %struct.Memory** %MEMORY
  %loadMem_468cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 33
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 1
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %5243 to i32*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 5
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5246 to i64*
  %5247 = load i64, i64* %RCX.i
  %5248 = add i64 %5247, 400
  %5249 = load i32, i32* %EAX.i36
  %5250 = zext i32 %5249 to i64
  %5251 = load i64, i64* %PC.i35
  %5252 = add i64 %5251, 6
  store i64 %5252, i64* %PC.i35
  %5253 = inttoptr i64 %5248 to i32*
  store i32 %5249, i32* %5253
  store %struct.Memory* %loadMem_468cf4, %struct.Memory** %MEMORY
  br label %block_.L_468cfa

block_.L_468cfa:                                  ; preds = %block_468cb5, %block_468ca4, %block_.L_468c91
  %loadMem_468cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 33
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5256 to i64*
  %5257 = load i64, i64* %PC.i34
  %5258 = add i64 %5257, 5
  %5259 = load i64, i64* %PC.i34
  %5260 = add i64 %5259, 5
  store i64 %5260, i64* %PC.i34
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5258, i64* %5261, align 8
  store %struct.Memory* %loadMem_468cfa, %struct.Memory** %MEMORY
  br label %block_.L_468cff

block_.L_468cff:                                  ; preds = %block_.L_468cfa
  %loadMem_468cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %PC.i33
  %5266 = add i64 %5265, 5
  %5267 = load i64, i64* %PC.i33
  %5268 = add i64 %5267, 5
  store i64 %5268, i64* %PC.i33
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5266, i64* %5269, align 8
  store %struct.Memory* %loadMem_468cff, %struct.Memory** %MEMORY
  br label %block_.L_468d04

block_.L_468d04:                                  ; preds = %block_.L_468cff, %block_.L_468c0f
  %loadMem_468d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %PC.i32
  %5274 = add i64 %5273, 5
  %5275 = load i64, i64* %PC.i32
  %5276 = add i64 %5275, 5
  store i64 %5276, i64* %PC.i32
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5274, i64* %5277, align 8
  store %struct.Memory* %loadMem_468d04, %struct.Memory** %MEMORY
  br label %block_.L_468d09

block_.L_468d09:                                  ; preds = %block_.L_468d04, %block_468b15, %block_468af3, %block_468ad4, %block_468ab2, %block_468a93, %block_468a74
  %loadMem_468d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 33
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5280 to i64*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 1
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 15
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %5286 to i64*
  %5287 = load i64, i64* %RBP.i31
  %5288 = sub i64 %5287, 60
  %5289 = load i64, i64* %PC.i29
  %5290 = add i64 %5289, 3
  store i64 %5290, i64* %PC.i29
  %5291 = inttoptr i64 %5288 to i32*
  %5292 = load i32, i32* %5291
  %5293 = zext i32 %5292 to i64
  store i64 %5293, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_468d09, %struct.Memory** %MEMORY
  %loadMem_468d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 33
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5296 to i64*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 1
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %RAX.i28
  %5301 = load i64, i64* %PC.i27
  %5302 = add i64 %5301, 3
  store i64 %5302, i64* %PC.i27
  %5303 = trunc i64 %5300 to i32
  %5304 = add i32 1, %5303
  %5305 = zext i32 %5304 to i64
  store i64 %5305, i64* %RAX.i28, align 8
  %5306 = icmp ult i32 %5304, %5303
  %5307 = icmp ult i32 %5304, 1
  %5308 = or i1 %5306, %5307
  %5309 = zext i1 %5308 to i8
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5309, i8* %5310, align 1
  %5311 = and i32 %5304, 255
  %5312 = call i32 @llvm.ctpop.i32(i32 %5311)
  %5313 = trunc i32 %5312 to i8
  %5314 = and i8 %5313, 1
  %5315 = xor i8 %5314, 1
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5315, i8* %5316, align 1
  %5317 = xor i64 1, %5300
  %5318 = trunc i64 %5317 to i32
  %5319 = xor i32 %5318, %5304
  %5320 = lshr i32 %5319, 4
  %5321 = trunc i32 %5320 to i8
  %5322 = and i8 %5321, 1
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5322, i8* %5323, align 1
  %5324 = icmp eq i32 %5304, 0
  %5325 = zext i1 %5324 to i8
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5325, i8* %5326, align 1
  %5327 = lshr i32 %5304, 31
  %5328 = trunc i32 %5327 to i8
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5328, i8* %5329, align 1
  %5330 = lshr i32 %5303, 31
  %5331 = xor i32 %5327, %5330
  %5332 = add i32 %5331, %5327
  %5333 = icmp eq i32 %5332, 2
  %5334 = zext i1 %5333 to i8
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5334, i8* %5335, align 1
  store %struct.Memory* %loadMem_468d0c, %struct.Memory** %MEMORY
  %loadMem_468d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %5341 to i32*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 15
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RBP.i26
  %5346 = sub i64 %5345, 60
  %5347 = load i32, i32* %EAX.i25
  %5348 = zext i32 %5347 to i64
  %5349 = load i64, i64* %PC.i24
  %5350 = add i64 %5349, 3
  store i64 %5350, i64* %PC.i24
  %5351 = inttoptr i64 %5346 to i32*
  store i32 %5347, i32* %5351
  store %struct.Memory* %loadMem_468d0f, %struct.Memory** %MEMORY
  %loadMem_468d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5354 to i64*
  %5355 = load i64, i64* %PC.i23
  %5356 = add i64 %5355, -763
  %5357 = load i64, i64* %PC.i23
  %5358 = add i64 %5357, 5
  store i64 %5358, i64* %PC.i23
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5356, i64* %5359, align 8
  store %struct.Memory* %loadMem_468d12, %struct.Memory** %MEMORY
  br label %block_.L_468a17

block_.L_468d17:                                  ; preds = %block_.L_468a17
  %loadMem_468d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 33
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5362 to i64*
  %5363 = load i64, i64* %PC.i22
  %5364 = add i64 %5363, 5
  %5365 = load i64, i64* %PC.i22
  %5366 = add i64 %5365, 5
  store i64 %5366, i64* %PC.i22
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5364, i64* %5367, align 8
  store %struct.Memory* %loadMem_468d17, %struct.Memory** %MEMORY
  br label %block_.L_468d1c

block_.L_468d1c:                                  ; preds = %block_.L_468d17, %block_.L_468a0b, %block_4689d4
  %loadMem_468d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 1
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 15
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5376 to i64*
  %5377 = load i64, i64* %RBP.i21
  %5378 = sub i64 %5377, 56
  %5379 = load i64, i64* %PC.i19
  %5380 = add i64 %5379, 3
  store i64 %5380, i64* %PC.i19
  %5381 = inttoptr i64 %5378 to i32*
  %5382 = load i32, i32* %5381
  %5383 = zext i32 %5382 to i64
  store i64 %5383, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_468d1c, %struct.Memory** %MEMORY
  %loadMem_468d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5386 to i64*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 1
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %RAX.i18
  %5391 = load i64, i64* %PC.i17
  %5392 = add i64 %5391, 3
  store i64 %5392, i64* %PC.i17
  %5393 = trunc i64 %5390 to i32
  %5394 = add i32 1, %5393
  %5395 = zext i32 %5394 to i64
  store i64 %5395, i64* %RAX.i18, align 8
  %5396 = icmp ult i32 %5394, %5393
  %5397 = icmp ult i32 %5394, 1
  %5398 = or i1 %5396, %5397
  %5399 = zext i1 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5399, i8* %5400, align 1
  %5401 = and i32 %5394, 255
  %5402 = call i32 @llvm.ctpop.i32(i32 %5401)
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  %5405 = xor i8 %5404, 1
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5405, i8* %5406, align 1
  %5407 = xor i64 1, %5390
  %5408 = trunc i64 %5407 to i32
  %5409 = xor i32 %5408, %5394
  %5410 = lshr i32 %5409, 4
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5412, i8* %5413, align 1
  %5414 = icmp eq i32 %5394, 0
  %5415 = zext i1 %5414 to i8
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5415, i8* %5416, align 1
  %5417 = lshr i32 %5394, 31
  %5418 = trunc i32 %5417 to i8
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5418, i8* %5419, align 1
  %5420 = lshr i32 %5393, 31
  %5421 = xor i32 %5417, %5420
  %5422 = add i32 %5421, %5417
  %5423 = icmp eq i32 %5422, 2
  %5424 = zext i1 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5424, i8* %5425, align 1
  store %struct.Memory* %loadMem_468d1f, %struct.Memory** %MEMORY
  %loadMem_468d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 33
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5428 to i64*
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 1
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %5431 to i32*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 15
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5434 to i64*
  %5435 = load i64, i64* %RBP.i16
  %5436 = sub i64 %5435, 56
  %5437 = load i32, i32* %EAX.i15
  %5438 = zext i32 %5437 to i64
  %5439 = load i64, i64* %PC.i14
  %5440 = add i64 %5439, 3
  store i64 %5440, i64* %PC.i14
  %5441 = inttoptr i64 %5436 to i32*
  store i32 %5437, i32* %5441
  store %struct.Memory* %loadMem_468d22, %struct.Memory** %MEMORY
  %loadMem_468d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 33
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5444 to i64*
  %5445 = load i64, i64* %PC.i13
  %5446 = add i64 %5445, -899
  %5447 = load i64, i64* %PC.i13
  %5448 = add i64 %5447, 5
  store i64 %5448, i64* %PC.i13
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5446, i64* %5449, align 8
  store %struct.Memory* %loadMem_468d25, %struct.Memory** %MEMORY
  br label %block_.L_4689a2

block_.L_468d2a:                                  ; preds = %block_.L_4689a2
  %loadMem_468d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 33
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5452 to i64*
  %5453 = load i64, i64* %PC.i12
  %5454 = add i64 %5453, 5
  %5455 = load i64, i64* %PC.i12
  %5456 = add i64 %5455, 5
  store i64 %5456, i64* %PC.i12
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5454, i64* %5457, align 8
  store %struct.Memory* %loadMem_468d2a, %struct.Memory** %MEMORY
  br label %block_.L_468d2f

block_.L_468d2f:                                  ; preds = %block_.L_468d2a
  %loadMem_468d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 33
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 1
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5463 to i64*
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 15
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5466 to i64*
  %5467 = load i64, i64* %RBP.i11
  %5468 = sub i64 %5467, 64
  %5469 = load i64, i64* %PC.i9
  %5470 = add i64 %5469, 3
  store i64 %5470, i64* %PC.i9
  %5471 = inttoptr i64 %5468 to i32*
  %5472 = load i32, i32* %5471
  %5473 = zext i32 %5472 to i64
  store i64 %5473, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_468d2f, %struct.Memory** %MEMORY
  %loadMem_468d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 33
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5476 to i64*
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 1
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5479 to i64*
  %5480 = load i64, i64* %RAX.i
  %5481 = load i64, i64* %PC.i8
  %5482 = add i64 %5481, 3
  store i64 %5482, i64* %PC.i8
  %5483 = trunc i64 %5480 to i32
  %5484 = add i32 1, %5483
  %5485 = zext i32 %5484 to i64
  store i64 %5485, i64* %RAX.i, align 8
  %5486 = icmp ult i32 %5484, %5483
  %5487 = icmp ult i32 %5484, 1
  %5488 = or i1 %5486, %5487
  %5489 = zext i1 %5488 to i8
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5489, i8* %5490, align 1
  %5491 = and i32 %5484, 255
  %5492 = call i32 @llvm.ctpop.i32(i32 %5491)
  %5493 = trunc i32 %5492 to i8
  %5494 = and i8 %5493, 1
  %5495 = xor i8 %5494, 1
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5495, i8* %5496, align 1
  %5497 = xor i64 1, %5480
  %5498 = trunc i64 %5497 to i32
  %5499 = xor i32 %5498, %5484
  %5500 = lshr i32 %5499, 4
  %5501 = trunc i32 %5500 to i8
  %5502 = and i8 %5501, 1
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5502, i8* %5503, align 1
  %5504 = icmp eq i32 %5484, 0
  %5505 = zext i1 %5504 to i8
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5505, i8* %5506, align 1
  %5507 = lshr i32 %5484, 31
  %5508 = trunc i32 %5507 to i8
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5508, i8* %5509, align 1
  %5510 = lshr i32 %5483, 31
  %5511 = xor i32 %5507, %5510
  %5512 = add i32 %5511, %5507
  %5513 = icmp eq i32 %5512, 2
  %5514 = zext i1 %5513 to i8
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5514, i8* %5515, align 1
  store %struct.Memory* %loadMem_468d32, %struct.Memory** %MEMORY
  %loadMem_468d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 33
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 1
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5521 to i32*
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 15
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %5524 to i64*
  %5525 = load i64, i64* %RBP.i7
  %5526 = sub i64 %5525, 64
  %5527 = load i32, i32* %EAX.i
  %5528 = zext i32 %5527 to i64
  %5529 = load i64, i64* %PC.i6
  %5530 = add i64 %5529, 3
  store i64 %5530, i64* %PC.i6
  %5531 = inttoptr i64 %5526 to i32*
  store i32 %5527, i32* %5531
  store %struct.Memory* %loadMem_468d35, %struct.Memory** %MEMORY
  %loadMem_468d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5534 to i64*
  %5535 = load i64, i64* %PC.i5
  %5536 = add i64 %5535, -951
  %5537 = load i64, i64* %PC.i5
  %5538 = add i64 %5537, 5
  store i64 %5538, i64* %PC.i5
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5536, i64* %5539, align 8
  store %struct.Memory* %loadMem_468d38, %struct.Memory** %MEMORY
  br label %block_.L_468981

block_.L_468d3d:                                  ; preds = %block_.L_468981
  %loadMem_468d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5542 to i64*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 13
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5545 to i64*
  %5546 = load i64, i64* %RSP.i
  %5547 = load i64, i64* %PC.i4
  %5548 = add i64 %5547, 4
  store i64 %5548, i64* %PC.i4
  %5549 = add i64 112, %5546
  store i64 %5549, i64* %RSP.i, align 8
  %5550 = icmp ult i64 %5549, %5546
  %5551 = icmp ult i64 %5549, 112
  %5552 = or i1 %5550, %5551
  %5553 = zext i1 %5552 to i8
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5553, i8* %5554, align 1
  %5555 = trunc i64 %5549 to i32
  %5556 = and i32 %5555, 255
  %5557 = call i32 @llvm.ctpop.i32(i32 %5556)
  %5558 = trunc i32 %5557 to i8
  %5559 = and i8 %5558, 1
  %5560 = xor i8 %5559, 1
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5560, i8* %5561, align 1
  %5562 = xor i64 112, %5546
  %5563 = xor i64 %5562, %5549
  %5564 = lshr i64 %5563, 4
  %5565 = trunc i64 %5564 to i8
  %5566 = and i8 %5565, 1
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5566, i8* %5567, align 1
  %5568 = icmp eq i64 %5549, 0
  %5569 = zext i1 %5568 to i8
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5569, i8* %5570, align 1
  %5571 = lshr i64 %5549, 63
  %5572 = trunc i64 %5571 to i8
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5572, i8* %5573, align 1
  %5574 = lshr i64 %5546, 63
  %5575 = xor i64 %5571, %5574
  %5576 = add i64 %5575, %5571
  %5577 = icmp eq i64 %5576, 2
  %5578 = zext i1 %5577 to i8
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5578, i8* %5579, align 1
  store %struct.Memory* %loadMem_468d3d, %struct.Memory** %MEMORY
  %loadMem_468d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 33
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 15
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5585 to i64*
  %5586 = load i64, i64* %PC.i2
  %5587 = add i64 %5586, 1
  store i64 %5587, i64* %PC.i2
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5589 = load i64, i64* %5588, align 8
  %5590 = add i64 %5589, 8
  %5591 = inttoptr i64 %5589 to i64*
  %5592 = load i64, i64* %5591
  store i64 %5592, i64* %RBP.i3, align 8
  store i64 %5590, i64* %5588, align 8
  store %struct.Memory* %loadMem_468d41, %struct.Memory** %MEMORY
  %loadMem_468d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5595 to i64*
  %5596 = load i64, i64* %PC.i1
  %5597 = add i64 %5596, 1
  store i64 %5597, i64* %PC.i1
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5600 = load i64, i64* %5599, align 8
  %5601 = inttoptr i64 %5600 to i64*
  %5602 = load i64, i64* %5601
  store i64 %5602, i64* %5598, align 8
  %5603 = add i64 %5600, 8
  store i64 %5603, i64* %5599, align 8
  store %struct.Memory* %loadMem_468d42, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_468d42
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.countlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46891c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jne_.L_468921(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46897a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7e0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2016, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fcd7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fcd7_type* @G__0x57fcd7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 68
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

define %struct.Memory* @routine_jge_.L_468d3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_468d2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_je_.L_4689d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_468d1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jne_.L_468a0b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.same_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_468a10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_468d17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x7ae1b0___rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_468a56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 32
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

define %struct.Memory* @routine_je_.L_468a79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_468d09(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_468a98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_468ab7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_468ad9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_468af8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_468b1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_468c0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_468b38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 400
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_468b9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jne_.L_468b89(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %30
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0xc8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_468b9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468b8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468b3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_468c05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x32__0x190__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 50
  %16 = icmp ult i32 %14, 50
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
  %25 = xor i32 %14, 50
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

define %struct.Memory* @routine_jge_.L_468c05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x190__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0x0__0xc8__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 200
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x190__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_468c0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468c0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_468d04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_468c2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_468c91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_468c7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_468c91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468c83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468c34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_468cfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_468cfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_468cff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468d04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468a17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4689a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468d2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468981(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
