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
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
%G__0x57a4be_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @is_suicide(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_409590 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_409590, %struct.Memory** %MEMORY
  %loadMem_409591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i356 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i356
  %27 = load i64, i64* %PC.i355
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i355
  store i64 %26, i64* %RBP.i357, align 8
  store %struct.Memory* %loadMem_409591, %struct.Memory** %MEMORY
  %loadMem_409594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i374 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i374
  %36 = load i64, i64* %PC.i373
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i373
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i374, align 8
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
  store %struct.Memory* %loadMem_409594, %struct.Memory** %MEMORY
  %loadMem_409598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i430 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i431
  %77 = sub i64 %76, 8
  %78 = load i32, i32* %EDI.i430
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i429
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i429
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_409598, %struct.Memory** %MEMORY
  %loadMem_40959b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i448
  %93 = sub i64 %92, 12
  %94 = load i32, i32* %ESI.i
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i447
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i447
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_40959b, %struct.Memory** %MEMORY
  %loadMem_40959e = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %RBP.i485
  %106 = sub i64 %105, 8
  %107 = load i64, i64* %PC.i484
  %108 = add i64 %107, 7
  store i64 %108, i64* %PC.i484
  %109 = inttoptr i64 %106 to i32*
  %110 = load i32, i32* %109
  %111 = sub i32 %110, 421
  %112 = icmp ult i32 %110, 421
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %113, i8* %114, align 1
  %115 = and i32 %111, 255
  %116 = call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %119, i8* %120, align 1
  %121 = xor i32 %110, 421
  %122 = xor i32 %121, %111
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %125, i8* %126, align 1
  %127 = icmp eq i32 %111, 0
  %128 = zext i1 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %128, i8* %129, align 1
  %130 = lshr i32 %111, 31
  %131 = trunc i32 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %131, i8* %132, align 1
  %133 = lshr i32 %110, 31
  %134 = xor i32 %130, %133
  %135 = add i32 %134, %133
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %137, i8* %138, align 1
  store %struct.Memory* %loadMem_40959e, %struct.Memory** %MEMORY
  %loadMem_4095a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %PC.i483
  %143 = add i64 %142, 32
  %144 = load i64, i64* %PC.i483
  %145 = add i64 %144, 6
  %146 = load i64, i64* %PC.i483
  %147 = add i64 %146, 6
  store i64 %147, i64* %PC.i483
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %149 = load i8, i8* %148, align 1
  %150 = icmp eq i8 %149, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %BRANCH_TAKEN, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %153 = select i1 %150, i64 %143, i64 %145
  store i64 %153, i64* %152, align 8
  store %struct.Memory* %loadMem_4095a5, %struct.Memory** %MEMORY
  %loadBr_4095a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4095a5 = icmp eq i8 %loadBr_4095a5, 1
  br i1 %cmpBr_4095a5, label %block_.L_4095c5, label %block_4095ab

block_4095ab:                                     ; preds = %entry
  %loadMem_4095ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i482
  %164 = sub i64 %163, 8
  %165 = load i64, i64* %PC.i480
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC.i480
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_4095ab, %struct.Memory** %MEMORY
  %loadMem_4095af = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RAX.i478
  %180 = add i64 %179, 12099168
  %181 = load i64, i64* %PC.i477
  %182 = add i64 %181, 8
  store i64 %182, i64* %PC.i477
  %183 = inttoptr i64 %180 to i8*
  %184 = load i8, i8* %183
  %185 = zext i8 %184 to i64
  store i64 %185, i64* %RCX.i479, align 8
  store %struct.Memory* %loadMem_4095af, %struct.Memory** %MEMORY
  %loadMem_4095b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %ECX.i476 = bitcast %union.anon* %191 to i32*
  %192 = load i32, i32* %ECX.i476
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %PC.i475
  %195 = add i64 %194, 3
  store i64 %195, i64* %PC.i475
  %196 = sub i32 %192, 3
  %197 = icmp ult i32 %192, 3
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %198, i8* %199, align 1
  %200 = and i32 %196, 255
  %201 = call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %204, i8* %205, align 1
  %206 = xor i64 3, %193
  %207 = trunc i64 %206 to i32
  %208 = xor i32 %207, %196
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %211, i8* %212, align 1
  %213 = icmp eq i32 %196, 0
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %214, i8* %215, align 1
  %216 = lshr i32 %196, 31
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %217, i8* %218, align 1
  %219 = lshr i32 %192, 31
  %220 = xor i32 %216, %219
  %221 = add i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %223, i8* %224, align 1
  store %struct.Memory* %loadMem_4095b7, %struct.Memory** %MEMORY
  %loadMem_4095ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %PC.i474
  %229 = add i64 %228, 11
  %230 = load i64, i64* %PC.i474
  %231 = add i64 %230, 6
  %232 = load i64, i64* %PC.i474
  %233 = add i64 %232, 6
  store i64 %233, i64* %PC.i474
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %235 = load i8, i8* %234, align 1
  store i8 %235, i8* %BRANCH_TAKEN, align 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %237 = icmp ne i8 %235, 0
  %238 = select i1 %237, i64 %229, i64 %231
  store i64 %238, i64* %236, align 8
  store %struct.Memory* %loadMem_4095ba, %struct.Memory** %MEMORY
  %loadBr_4095ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4095ba = icmp eq i8 %loadBr_4095ba, 1
  br i1 %cmpBr_4095ba, label %block_.L_4095c5, label %block_4095c0

block_4095c0:                                     ; preds = %block_4095ab
  %loadMem_4095c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %PC.i473
  %243 = add i64 %242, 94
  %244 = load i64, i64* %PC.i473
  %245 = add i64 %244, 5
  store i64 %245, i64* %PC.i473
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %243, i64* %246, align 8
  store %struct.Memory* %loadMem_4095c0, %struct.Memory** %MEMORY
  br label %block_.L_40961e

block_.L_4095c5:                                  ; preds = %block_4095ab, %entry
  %loadMem_4095c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 11
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RDI.i472 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %PC.i471
  %254 = add i64 %253, 10
  store i64 %254, i64* %PC.i471
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i472, align 8
  store %struct.Memory* %loadMem_4095c5, %struct.Memory** %MEMORY
  %loadMem_4095cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 9
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %PC.i469
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC.i469
  store i64 1104, i64* %RSI.i470, align 8
  store %struct.Memory* %loadMem_4095cf, %struct.Memory** %MEMORY
  %loadMem_4095d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 7
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %268 to i64*
  %269 = load i64, i64* %PC.i467
  %270 = add i64 %269, 10
  store i64 %270, i64* %PC.i467
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_4095d4, %struct.Memory** %MEMORY
  %loadMem_4095de = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %PC.i465
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC.i465
  store i64 20, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_4095de, %struct.Memory** %MEMORY
  %loadMem_4095e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %RBP.i464
  %289 = sub i64 %288, 8
  %290 = load i64, i64* %PC.i462
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC.i462
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_4095e3, %struct.Memory** %MEMORY
  %loadMem_4095e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %300 to i32*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i461
  %305 = sub i64 %304, 16
  %306 = load i32, i32* %EAX.i460
  %307 = zext i32 %306 to i64
  %308 = load i64, i64* %PC.i459
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC.i459
  %310 = inttoptr i64 %305 to i32*
  store i32 %306, i32* %310
  store %struct.Memory* %loadMem_4095e6, %struct.Memory** %MEMORY
  %loadMem_4095e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %ECX.i457 = bitcast %union.anon* %316 to i32*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %319 to i64*
  %320 = load i32, i32* %ECX.i457
  %321 = zext i32 %320 to i64
  %322 = load i64, i64* %PC.i456
  %323 = add i64 %322, 2
  store i64 %323, i64* %PC.i456
  %324 = and i64 %321, 4294967295
  store i64 %324, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_4095e9, %struct.Memory** %MEMORY
  %loadMem_4095eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i455
  %335 = sub i64 %334, 24
  %336 = load i64, i64* %RDX.i454
  %337 = load i64, i64* %PC.i453
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC.i453
  %339 = inttoptr i64 %335 to i64*
  store i64 %336, i64* %339
  store %struct.Memory* %loadMem_4095eb, %struct.Memory** %MEMORY
  %loadMem_4095ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %PC.i452
  %344 = add i64 %343, 1
  store i64 %344, i64* %PC.i452
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %347 = bitcast %union.anon* %346 to i32*
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = lshr i64 %349, 32
  store i64 %350, i64* %345, align 8
  store %struct.Memory* %loadMem_4095ef, %struct.Memory** %MEMORY
  %loadMem_4095f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 15
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RBP.i451
  %361 = sub i64 %360, 16
  %362 = load i64, i64* %PC.i449
  %363 = add i64 %362, 3
  store i64 %363, i64* %PC.i449
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_4095f0, %struct.Memory** %MEMORY
  %loadMem_4095f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %ECX.i445 = bitcast %union.anon* %372 to i32*
  %373 = load i32, i32* %ECX.i445
  %374 = zext i32 %373 to i64
  %375 = load i64, i64* %PC.i444
  %376 = add i64 %375, 2
  store i64 %376, i64* %PC.i444
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %378 = bitcast %union.anon* %377 to i32*
  %379 = load i32, i32* %378, align 8
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %382 = bitcast %union.anon* %381 to i32*
  %383 = load i32, i32* %382, align 8
  %384 = zext i32 %383 to i64
  %385 = shl i64 %374, 32
  %386 = ashr exact i64 %385, 32
  %387 = shl i64 %384, 32
  %388 = or i64 %387, %380
  %389 = sdiv i64 %388, %386
  %390 = shl i64 %389, 32
  %391 = ashr exact i64 %390, 32
  %392 = icmp eq i64 %389, %391
  br i1 %392, label %397, label %393

; <label>:393:                                    ; preds = %block_.L_4095c5
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %395, %struct.Memory* %loadMem_4095f3)
  br label %routine_idivl__ecx.exit446

; <label>:397:                                    ; preds = %block_.L_4095c5
  %398 = srem i64 %388, %386
  %399 = getelementptr inbounds %union.anon, %union.anon* %377, i64 0, i32 0
  %400 = and i64 %389, 4294967295
  store i64 %400, i64* %399, align 8
  %401 = getelementptr inbounds %union.anon, %union.anon* %381, i64 0, i32 0
  %402 = and i64 %398, 4294967295
  store i64 %402, i64* %401, align 8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %403, align 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %404, align 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %405, align 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %406, align 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %407, align 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %408, align 1
  br label %routine_idivl__ecx.exit446

routine_idivl__ecx.exit446:                       ; preds = %393, %397
  %409 = phi %struct.Memory* [ %396, %393 ], [ %loadMem_4095f3, %397 ]
  store %struct.Memory* %409, %struct.Memory** %MEMORY
  %loadMem_4095f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %RAX.i443
  %417 = load i64, i64* %PC.i442
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC.i442
  %419 = trunc i64 %416 to i32
  %420 = sub i32 %419, 1
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX.i443, align 8
  %422 = icmp ult i32 %419, 1
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %423, i8* %424, align 1
  %425 = and i32 %420, 255
  %426 = call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %429, i8* %430, align 1
  %431 = xor i64 1, %416
  %432 = trunc i64 %431 to i32
  %433 = xor i32 %432, %420
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %436, i8* %437, align 1
  %438 = icmp eq i32 %420, 0
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %439, i8* %440, align 1
  %441 = lshr i32 %420, 31
  %442 = trunc i32 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %442, i8* %443, align 1
  %444 = lshr i32 %419, 31
  %445 = xor i32 %441, %444
  %446 = add i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %449, align 1
  store %struct.Memory* %loadMem_4095f5, %struct.Memory** %MEMORY
  %loadMem_4095f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 17
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %R8D.i440 = bitcast %union.anon* %455 to i32*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %458 to i64*
  %459 = bitcast i32* %R8D.i440 to i64*
  %460 = load i64, i64* %RBP.i441
  %461 = sub i64 %460, 8
  %462 = load i64, i64* %PC.i439
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC.i439
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %459, align 8
  store %struct.Memory* %loadMem_4095f8, %struct.Memory** %MEMORY
  %loadMem_4095fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %472 to i32*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 15
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %RBP.i438
  %477 = sub i64 %476, 28
  %478 = load i32, i32* %EAX.i437
  %479 = zext i32 %478 to i64
  %480 = load i64, i64* %PC.i436
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC.i436
  %482 = inttoptr i64 %477 to i32*
  store i32 %478, i32* %482
  store %struct.Memory* %loadMem_4095fc, %struct.Memory** %MEMORY
  %loadMem_4095ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 17
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %R8D.i434 = bitcast %union.anon* %488 to i32*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %491 to i64*
  %492 = load i32, i32* %R8D.i434
  %493 = zext i32 %492 to i64
  %494 = load i64, i64* %PC.i433
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC.i433
  %496 = and i64 %493, 4294967295
  store i64 %496, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_4095ff, %struct.Memory** %MEMORY
  %loadMem_409602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %PC.i432
  %501 = add i64 %500, 1
  store i64 %501, i64* %PC.i432
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %504 = bitcast %union.anon* %503 to i32*
  %505 = load i32, i32* %504, align 8
  %506 = sext i32 %505 to i64
  %507 = lshr i64 %506, 32
  store i64 %507, i64* %502, align 8
  store %struct.Memory* %loadMem_409602, %struct.Memory** %MEMORY
  %loadMem_409603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 5
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %ECX.i427 = bitcast %union.anon* %513 to i32*
  %514 = load i32, i32* %ECX.i427
  %515 = zext i32 %514 to i64
  %516 = load i64, i64* %PC.i426
  %517 = add i64 %516, 2
  store i64 %517, i64* %PC.i426
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %519 = bitcast %union.anon* %518 to i32*
  %520 = load i32, i32* %519, align 8
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %523 = bitcast %union.anon* %522 to i32*
  %524 = load i32, i32* %523, align 8
  %525 = zext i32 %524 to i64
  %526 = shl i64 %515, 32
  %527 = ashr exact i64 %526, 32
  %528 = shl i64 %525, 32
  %529 = or i64 %528, %521
  %530 = sdiv i64 %529, %527
  %531 = shl i64 %530, 32
  %532 = ashr exact i64 %531, 32
  %533 = icmp eq i64 %530, %532
  br i1 %533, label %538, label %534

; <label>:534:                                    ; preds = %routine_idivl__ecx.exit446
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %536, %struct.Memory* %loadMem_409603)
  br label %routine_idivl__ecx.exit428

; <label>:538:                                    ; preds = %routine_idivl__ecx.exit446
  %539 = srem i64 %529, %527
  %540 = getelementptr inbounds %union.anon, %union.anon* %518, i64 0, i32 0
  %541 = and i64 %530, 4294967295
  store i64 %541, i64* %540, align 8
  %542 = getelementptr inbounds %union.anon, %union.anon* %522, i64 0, i32 0
  %543 = and i64 %539, 4294967295
  store i64 %543, i64* %542, align 8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %544, align 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %545, align 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %546, align 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %547, align 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %548, align 1
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %549, align 1
  br label %routine_idivl__ecx.exit428

routine_idivl__ecx.exit428:                       ; preds = %534, %538
  %550 = phi %struct.Memory* [ %537, %534 ], [ %loadMem_409603, %538 ]
  store %struct.Memory* %550, %struct.Memory** %MEMORY
  %loadMem_409605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 7
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RDX.i425 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RDX.i425
  %558 = load i64, i64* %PC.i424
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC.i424
  %560 = trunc i64 %557 to i32
  %561 = sub i32 %560, 1
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RDX.i425, align 8
  %563 = icmp ult i32 %560, 1
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %564, i8* %565, align 1
  %566 = and i32 %561, 255
  %567 = call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %570, i8* %571, align 1
  %572 = xor i64 1, %557
  %573 = trunc i64 %572 to i32
  %574 = xor i32 %573, %561
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %577, i8* %578, align 1
  %579 = icmp eq i32 %561, 0
  %580 = zext i1 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %580, i8* %581, align 1
  %582 = lshr i32 %561, 31
  %583 = trunc i32 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %583, i8* %584, align 1
  %585 = lshr i32 %560, 31
  %586 = xor i32 %582, %585
  %587 = add i32 %586, %585
  %588 = icmp eq i32 %587, 2
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %589, i8* %590, align 1
  store %struct.Memory* %loadMem_409605, %struct.Memory** %MEMORY
  %loadMem_409608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 19
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %R9.i423 = bitcast %union.anon* %599 to i64*
  %600 = load i64, i64* %RBP.i422
  %601 = sub i64 %600, 24
  %602 = load i64, i64* %PC.i421
  %603 = add i64 %602, 4
  store i64 %603, i64* %PC.i421
  %604 = inttoptr i64 %601 to i64*
  %605 = load i64, i64* %604
  store i64 %605, i64* %R9.i423, align 8
  store %struct.Memory* %loadMem_409608, %struct.Memory** %MEMORY
  %loadMem_40960c = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 7
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %EDX.i419 = bitcast %union.anon* %611 to i32*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RBP.i420
  %616 = sub i64 %615, 32
  %617 = load i32, i32* %EDX.i419
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %PC.i418
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC.i418
  %621 = inttoptr i64 %616 to i32*
  store i32 %617, i32* %621
  store %struct.Memory* %loadMem_40960c, %struct.Memory** %MEMORY
  %loadMem_40960f = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 7
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RDX.i416 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 19
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %R9.i417 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %R9.i417
  %632 = load i64, i64* %PC.i415
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC.i415
  store i64 %631, i64* %RDX.i416, align 8
  store %struct.Memory* %loadMem_40960f, %struct.Memory** %MEMORY
  %loadMem_409612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 5
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 15
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %642 to i64*
  %643 = load i64, i64* %RBP.i414
  %644 = sub i64 %643, 28
  %645 = load i64, i64* %PC.i412
  %646 = add i64 %645, 3
  store i64 %646, i64* %PC.i412
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_409612, %struct.Memory** %MEMORY
  %loadMem_409615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 17
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %R8D.i410 = bitcast %union.anon* %655 to i32*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 15
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %658 to i64*
  %659 = bitcast i32* %R8D.i410 to i64*
  %660 = load i64, i64* %RBP.i411
  %661 = sub i64 %660, 32
  %662 = load i64, i64* %PC.i409
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC.i409
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %659, align 8
  store %struct.Memory* %loadMem_409615, %struct.Memory** %MEMORY
  %loadMem1_409619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %PC.i408
  %671 = add i64 %670, 297591
  %672 = load i64, i64* %PC.i408
  %673 = add i64 %672, 5
  %674 = load i64, i64* %PC.i408
  %675 = add i64 %674, 5
  store i64 %675, i64* %PC.i408
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %673, i64* %679
  store i64 %678, i64* %676, align 8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %671, i64* %680, align 8
  store %struct.Memory* %loadMem1_409619, %struct.Memory** %MEMORY
  %loadMem2_409619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409619 = load i64, i64* %3
  %call2_409619 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_409619, %struct.Memory* %loadMem2_409619)
  store %struct.Memory* %call2_409619, %struct.Memory** %MEMORY
  br label %block_.L_40961e

block_.L_40961e:                                  ; preds = %routine_idivl__ecx.exit428, %block_4095c0
  %loadMem_40961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 15
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RBP.i407
  %691 = sub i64 %690, 8
  %692 = load i64, i64* %PC.i405
  %693 = add i64 %692, 4
  store i64 %693, i64* %PC.i405
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_40961e, %struct.Memory** %MEMORY
  %loadMem_409622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 5
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RAX.i403
  %707 = add i64 %706, 12099168
  %708 = load i64, i64* %PC.i402
  %709 = add i64 %708, 8
  store i64 %709, i64* %PC.i402
  %710 = inttoptr i64 %707 to i8*
  %711 = load i8, i8* %710
  %712 = zext i8 %711 to i64
  store i64 %712, i64* %RCX.i404, align 8
  store %struct.Memory* %loadMem_409622, %struct.Memory** %MEMORY
  %loadMem_40962a = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 5
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %ECX.i401 = bitcast %union.anon* %718 to i32*
  %719 = load i32, i32* %ECX.i401
  %720 = zext i32 %719 to i64
  %721 = load i64, i64* %PC.i400
  %722 = add i64 %721, 3
  store i64 %722, i64* %PC.i400
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %723, align 1
  %724 = and i32 %719, 255
  %725 = call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %728, i8* %729, align 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %730, align 1
  %731 = icmp eq i32 %719, 0
  %732 = zext i1 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %732, i8* %733, align 1
  %734 = lshr i32 %719, 31
  %735 = trunc i32 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %735, i8* %736, align 1
  %737 = lshr i32 %719, 31
  %738 = xor i32 %734, %737
  %739 = add i32 %738, %737
  %740 = icmp eq i32 %739, 2
  %741 = zext i1 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %741, i8* %742, align 1
  store %struct.Memory* %loadMem_40962a, %struct.Memory** %MEMORY
  %loadMem_40962d = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %PC.i399
  %747 = add i64 %746, 11
  %748 = load i64, i64* %PC.i399
  %749 = add i64 %748, 6
  %750 = load i64, i64* %PC.i399
  %751 = add i64 %750, 6
  store i64 %751, i64* %PC.i399
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %753 = load i8, i8* %752, align 1
  %754 = icmp eq i8 %753, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %BRANCH_TAKEN, align 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %757 = select i1 %754, i64 %747, i64 %749
  store i64 %757, i64* %756, align 8
  store %struct.Memory* %loadMem_40962d, %struct.Memory** %MEMORY
  %loadBr_40962d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40962d = icmp eq i8 %loadBr_40962d, 1
  br i1 %cmpBr_40962d, label %block_.L_409638, label %block_409633

block_409633:                                     ; preds = %block_.L_40961e
  %loadMem_409633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %PC.i398
  %762 = add i64 %761, 94
  %763 = load i64, i64* %PC.i398
  %764 = add i64 %763, 5
  store i64 %764, i64* %PC.i398
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %762, i64* %765, align 8
  store %struct.Memory* %loadMem_409633, %struct.Memory** %MEMORY
  br label %block_.L_409691

block_.L_409638:                                  ; preds = %block_.L_40961e
  %loadMem_409638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 11
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RDI.i397 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %PC.i396
  %773 = add i64 %772, 10
  store i64 %773, i64* %PC.i396
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i397, align 8
  store %struct.Memory* %loadMem_409638, %struct.Memory** %MEMORY
  %loadMem_409642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 9
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %PC.i395
  %781 = add i64 %780, 5
  store i64 %781, i64* %PC.i395
  store i64 1105, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_409642, %struct.Memory** %MEMORY
  %loadMem_409647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 7
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RDX.i394 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %PC.i393
  %789 = add i64 %788, 10
  store i64 %789, i64* %PC.i393
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i394, align 8
  store %struct.Memory* %loadMem_409647, %struct.Memory** %MEMORY
  %loadMem_409651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %PC.i391
  %797 = add i64 %796, 5
  store i64 %797, i64* %PC.i391
  store i64 20, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_409651, %struct.Memory** %MEMORY
  %loadMem_409656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 5
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 15
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RBP.i390
  %808 = sub i64 %807, 8
  %809 = load i64, i64* %PC.i388
  %810 = add i64 %809, 3
  store i64 %810, i64* %PC.i388
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_409656, %struct.Memory** %MEMORY
  %loadMem_409659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 1
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %819 to i32*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 15
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %RBP.i387
  %824 = sub i64 %823, 36
  %825 = load i32, i32* %EAX.i386
  %826 = zext i32 %825 to i64
  %827 = load i64, i64* %PC.i385
  %828 = add i64 %827, 3
  store i64 %828, i64* %PC.i385
  %829 = inttoptr i64 %824 to i32*
  store i32 %825, i32* %829
  store %struct.Memory* %loadMem_409659, %struct.Memory** %MEMORY
  %loadMem_40965c = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 5
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %ECX.i383 = bitcast %union.anon* %835 to i32*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %838 to i64*
  %839 = load i32, i32* %ECX.i383
  %840 = zext i32 %839 to i64
  %841 = load i64, i64* %PC.i382
  %842 = add i64 %841, 2
  store i64 %842, i64* %PC.i382
  %843 = and i64 %840, 4294967295
  store i64 %843, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_40965c, %struct.Memory** %MEMORY
  %loadMem_40965e = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 7
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i381
  %854 = sub i64 %853, 48
  %855 = load i64, i64* %RDX.i380
  %856 = load i64, i64* %PC.i379
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC.i379
  %858 = inttoptr i64 %854 to i64*
  store i64 %855, i64* %858
  store %struct.Memory* %loadMem_40965e, %struct.Memory** %MEMORY
  %loadMem_409662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %PC.i378
  %863 = add i64 %862, 1
  store i64 %863, i64* %PC.i378
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %866 = bitcast %union.anon* %865 to i32*
  %867 = load i32, i32* %866, align 8
  %868 = sext i32 %867 to i64
  %869 = lshr i64 %868, 32
  store i64 %869, i64* %864, align 8
  store %struct.Memory* %loadMem_409662, %struct.Memory** %MEMORY
  %loadMem_409663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 5
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i377
  %880 = sub i64 %879, 36
  %881 = load i64, i64* %PC.i375
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i375
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_409663, %struct.Memory** %MEMORY
  %loadMem_409666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 5
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %ECX.i371 = bitcast %union.anon* %891 to i32*
  %892 = load i32, i32* %ECX.i371
  %893 = zext i32 %892 to i64
  %894 = load i64, i64* %PC.i370
  %895 = add i64 %894, 2
  store i64 %895, i64* %PC.i370
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %897 = bitcast %union.anon* %896 to i32*
  %898 = load i32, i32* %897, align 8
  %899 = zext i32 %898 to i64
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %901 = bitcast %union.anon* %900 to i32*
  %902 = load i32, i32* %901, align 8
  %903 = zext i32 %902 to i64
  %904 = shl i64 %893, 32
  %905 = ashr exact i64 %904, 32
  %906 = shl i64 %903, 32
  %907 = or i64 %906, %899
  %908 = sdiv i64 %907, %905
  %909 = shl i64 %908, 32
  %910 = ashr exact i64 %909, 32
  %911 = icmp eq i64 %908, %910
  br i1 %911, label %916, label %912

; <label>:912:                                    ; preds = %block_.L_409638
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %914 = load i64, i64* %913, align 8
  %915 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %914, %struct.Memory* %loadMem_409666)
  br label %routine_idivl__ecx.exit372

; <label>:916:                                    ; preds = %block_.L_409638
  %917 = srem i64 %907, %905
  %918 = getelementptr inbounds %union.anon, %union.anon* %896, i64 0, i32 0
  %919 = and i64 %908, 4294967295
  store i64 %919, i64* %918, align 8
  %920 = getelementptr inbounds %union.anon, %union.anon* %900, i64 0, i32 0
  %921 = and i64 %917, 4294967295
  store i64 %921, i64* %920, align 8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %922, align 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %923, align 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %924, align 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %925, align 1
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %926, align 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %927, align 1
  br label %routine_idivl__ecx.exit372

routine_idivl__ecx.exit372:                       ; preds = %912, %916
  %928 = phi %struct.Memory* [ %915, %912 ], [ %loadMem_409666, %916 ]
  store %struct.Memory* %928, %struct.Memory** %MEMORY
  %loadMem_409668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RAX.i369
  %936 = load i64, i64* %PC.i368
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC.i368
  %938 = trunc i64 %935 to i32
  %939 = sub i32 %938, 1
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX.i369, align 8
  %941 = icmp ult i32 %938, 1
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = and i32 %939, 255
  %945 = call i32 @llvm.ctpop.i32(i32 %944)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %948, i8* %949, align 1
  %950 = xor i64 1, %935
  %951 = trunc i64 %950 to i32
  %952 = xor i32 %951, %939
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i32 %939, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %939, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %938, 31
  %964 = xor i32 %960, %963
  %965 = add i32 %964, %963
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %967, i8* %968, align 1
  store %struct.Memory* %loadMem_409668, %struct.Memory** %MEMORY
  %loadMem_40966b = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 17
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %R8D.i366 = bitcast %union.anon* %974 to i32*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %977 to i64*
  %978 = bitcast i32* %R8D.i366 to i64*
  %979 = load i64, i64* %RBP.i367
  %980 = sub i64 %979, 8
  %981 = load i64, i64* %PC.i365
  %982 = add i64 %981, 4
  store i64 %982, i64* %PC.i365
  %983 = inttoptr i64 %980 to i32*
  %984 = load i32, i32* %983
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %978, align 8
  store %struct.Memory* %loadMem_40966b, %struct.Memory** %MEMORY
  %loadMem_40966f = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %991 to i32*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 15
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RBP.i364
  %996 = sub i64 %995, 52
  %997 = load i32, i32* %EAX.i363
  %998 = zext i32 %997 to i64
  %999 = load i64, i64* %PC.i362
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %PC.i362
  %1001 = inttoptr i64 %996 to i32*
  store i32 %997, i32* %1001
  store %struct.Memory* %loadMem_40966f, %struct.Memory** %MEMORY
  %loadMem_409672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 17
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %R8D.i360 = bitcast %union.anon* %1007 to i32*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %1010 to i64*
  %1011 = load i32, i32* %R8D.i360
  %1012 = zext i32 %1011 to i64
  %1013 = load i64, i64* %PC.i359
  %1014 = add i64 %1013, 3
  store i64 %1014, i64* %PC.i359
  %1015 = and i64 %1012, 4294967295
  store i64 %1015, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_409672, %struct.Memory** %MEMORY
  %loadMem_409675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %PC.i358
  %1020 = add i64 %1019, 1
  store i64 %1020, i64* %PC.i358
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1023 = bitcast %union.anon* %1022 to i32*
  %1024 = load i32, i32* %1023, align 8
  %1025 = sext i32 %1024 to i64
  %1026 = lshr i64 %1025, 32
  store i64 %1026, i64* %1021, align 8
  store %struct.Memory* %loadMem_409675, %struct.Memory** %MEMORY
  %loadMem_409676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 5
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %ECX.i354 = bitcast %union.anon* %1032 to i32*
  %1033 = load i32, i32* %ECX.i354
  %1034 = zext i32 %1033 to i64
  %1035 = load i64, i64* %PC.i353
  %1036 = add i64 %1035, 2
  store i64 %1036, i64* %PC.i353
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1038 = bitcast %union.anon* %1037 to i32*
  %1039 = load i32, i32* %1038, align 8
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1042 = bitcast %union.anon* %1041 to i32*
  %1043 = load i32, i32* %1042, align 8
  %1044 = zext i32 %1043 to i64
  %1045 = shl i64 %1034, 32
  %1046 = ashr exact i64 %1045, 32
  %1047 = shl i64 %1044, 32
  %1048 = or i64 %1047, %1040
  %1049 = sdiv i64 %1048, %1046
  %1050 = shl i64 %1049, 32
  %1051 = ashr exact i64 %1050, 32
  %1052 = icmp eq i64 %1049, %1051
  br i1 %1052, label %1057, label %1053

; <label>:1053:                                   ; preds = %routine_idivl__ecx.exit372
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1055 = load i64, i64* %1054, align 8
  %1056 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1055, %struct.Memory* %loadMem_409676)
  br label %routine_idivl__ecx.exit

; <label>:1057:                                   ; preds = %routine_idivl__ecx.exit372
  %1058 = srem i64 %1048, %1046
  %1059 = getelementptr inbounds %union.anon, %union.anon* %1037, i64 0, i32 0
  %1060 = and i64 %1049, 4294967295
  store i64 %1060, i64* %1059, align 8
  %1061 = getelementptr inbounds %union.anon, %union.anon* %1041, i64 0, i32 0
  %1062 = and i64 %1058, 4294967295
  store i64 %1062, i64* %1061, align 8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1063, align 1
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1064, align 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1065, align 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1066, align 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1067, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1068, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1053, %1057
  %1069 = phi %struct.Memory* [ %1056, %1053 ], [ %loadMem_409676, %1057 ]
  store %struct.Memory* %1069, %struct.Memory** %MEMORY
  %loadMem_409678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 7
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %RDX.i352
  %1077 = load i64, i64* %PC.i351
  %1078 = add i64 %1077, 3
  store i64 %1078, i64* %PC.i351
  %1079 = trunc i64 %1076 to i32
  %1080 = sub i32 %1079, 1
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RDX.i352, align 8
  %1082 = icmp ult i32 %1079, 1
  %1083 = zext i1 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1083, i8* %1084, align 1
  %1085 = and i32 %1080, 255
  %1086 = call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1089, i8* %1090, align 1
  %1091 = xor i64 1, %1076
  %1092 = trunc i64 %1091 to i32
  %1093 = xor i32 %1092, %1080
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1096, i8* %1097, align 1
  %1098 = icmp eq i32 %1080, 0
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1099, i8* %1100, align 1
  %1101 = lshr i32 %1080, 31
  %1102 = trunc i32 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1102, i8* %1103, align 1
  %1104 = lshr i32 %1079, 31
  %1105 = xor i32 %1101, %1104
  %1106 = add i32 %1105, %1104
  %1107 = icmp eq i32 %1106, 2
  %1108 = zext i1 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1108, i8* %1109, align 1
  store %struct.Memory* %loadMem_409678, %struct.Memory** %MEMORY
  %loadMem_40967b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 15
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 19
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %R9.i350 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %RBP.i349
  %1120 = sub i64 %1119, 48
  %1121 = load i64, i64* %PC.i348
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %PC.i348
  %1123 = inttoptr i64 %1120 to i64*
  %1124 = load i64, i64* %1123
  store i64 %1124, i64* %R9.i350, align 8
  store %struct.Memory* %loadMem_40967b, %struct.Memory** %MEMORY
  %loadMem_40967f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 7
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1130 to i32*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 15
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RBP.i347
  %1135 = sub i64 %1134, 56
  %1136 = load i32, i32* %EDX.i
  %1137 = zext i32 %1136 to i64
  %1138 = load i64, i64* %PC.i346
  %1139 = add i64 %1138, 3
  store i64 %1139, i64* %PC.i346
  %1140 = inttoptr i64 %1135 to i32*
  store i32 %1136, i32* %1140
  store %struct.Memory* %loadMem_40967f, %struct.Memory** %MEMORY
  %loadMem_409682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 7
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RDX.i345 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 19
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %R9.i
  %1151 = load i64, i64* %PC.i344
  %1152 = add i64 %1151, 3
  store i64 %1152, i64* %PC.i344
  store i64 %1150, i64* %RDX.i345, align 8
  store %struct.Memory* %loadMem_409682, %struct.Memory** %MEMORY
  %loadMem_409685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 5
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i343
  %1163 = sub i64 %1162, 52
  %1164 = load i64, i64* %PC.i341
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC.i341
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_409685, %struct.Memory** %MEMORY
  %loadMem_409688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 17
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1174 to i32*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 15
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1177 to i64*
  %1178 = bitcast i32* %R8D.i to i64*
  %1179 = load i64, i64* %RBP.i340
  %1180 = sub i64 %1179, 56
  %1181 = load i64, i64* %PC.i339
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i339
  %1183 = inttoptr i64 %1180 to i32*
  %1184 = load i32, i32* %1183
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %1178, align 8
  store %struct.Memory* %loadMem_409688, %struct.Memory** %MEMORY
  %loadMem1_40968c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1188 to i64*
  %1189 = load i64, i64* %PC.i338
  %1190 = add i64 %1189, 297476
  %1191 = load i64, i64* %PC.i338
  %1192 = add i64 %1191, 5
  %1193 = load i64, i64* %PC.i338
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %PC.i338
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1196 = load i64, i64* %1195, align 8
  %1197 = add i64 %1196, -8
  %1198 = inttoptr i64 %1197 to i64*
  store i64 %1192, i64* %1198
  store i64 %1197, i64* %1195, align 8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1190, i64* %1199, align 8
  store %struct.Memory* %loadMem1_40968c, %struct.Memory** %MEMORY
  %loadMem2_40968c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40968c = load i64, i64* %3
  %call2_40968c = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40968c, %struct.Memory* %loadMem2_40968c)
  store %struct.Memory* %call2_40968c, %struct.Memory** %MEMORY
  br label %block_.L_409691

block_.L_409691:                                  ; preds = %routine_idivl__ecx.exit, %block_409633
  %loadMem_409691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 1
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 15
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %RBP.i337
  %1210 = sub i64 %1209, 8
  %1211 = load i64, i64* %PC.i335
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC.i335
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_409691, %struct.Memory** %MEMORY
  %loadMem_409694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 1
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %RAX.i334
  %1223 = load i64, i64* %PC.i333
  %1224 = add i64 %1223, 3
  store i64 %1224, i64* %PC.i333
  %1225 = trunc i64 %1222 to i32
  %1226 = add i32 20, %1225
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RAX.i334, align 8
  %1228 = icmp ult i32 %1226, %1225
  %1229 = icmp ult i32 %1226, 20
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1231, i8* %1232, align 1
  %1233 = and i32 %1226, 255
  %1234 = call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1237, i8* %1238, align 1
  %1239 = xor i64 20, %1222
  %1240 = trunc i64 %1239 to i32
  %1241 = xor i32 %1240, %1226
  %1242 = lshr i32 %1241, 4
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1244, i8* %1245, align 1
  %1246 = icmp eq i32 %1226, 0
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1247, i8* %1248, align 1
  %1249 = lshr i32 %1226, 31
  %1250 = trunc i32 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1250, i8* %1251, align 1
  %1252 = lshr i32 %1225, 31
  %1253 = xor i32 %1249, %1252
  %1254 = add i32 %1253, %1249
  %1255 = icmp eq i32 %1254, 2
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1256, i8* %1257, align 1
  store %struct.Memory* %loadMem_409694, %struct.Memory** %MEMORY
  %loadMem_409697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 1
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %EAX.i331 = bitcast %union.anon* %1263 to i32*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 5
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %1266 to i64*
  %1267 = load i32, i32* %EAX.i331
  %1268 = zext i32 %1267 to i64
  %1269 = load i64, i64* %PC.i330
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %PC.i330
  %1271 = shl i64 %1268, 32
  %1272 = ashr exact i64 %1271, 32
  store i64 %1272, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_409697, %struct.Memory** %MEMORY
  %loadMem_40969a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 1
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 5
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %RCX.i329
  %1283 = add i64 %1282, 12099168
  %1284 = load i64, i64* %PC.i327
  %1285 = add i64 %1284, 8
  store i64 %1285, i64* %PC.i327
  %1286 = inttoptr i64 %1283 to i8*
  %1287 = load i8, i8* %1286
  %1288 = zext i8 %1287 to i64
  store i64 %1288, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_40969a, %struct.Memory** %MEMORY
  %loadMem_4096a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 1
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %EAX.i326 = bitcast %union.anon* %1294 to i32*
  %1295 = load i32, i32* %EAX.i326
  %1296 = zext i32 %1295 to i64
  %1297 = load i64, i64* %PC.i325
  %1298 = add i64 %1297, 3
  store i64 %1298, i64* %PC.i325
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1299, align 1
  %1300 = and i32 %1295, 255
  %1301 = call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1304, i8* %1305, align 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1306, align 1
  %1307 = icmp eq i32 %1295, 0
  %1308 = zext i1 %1307 to i8
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1308, i8* %1309, align 1
  %1310 = lshr i32 %1295, 31
  %1311 = trunc i32 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1311, i8* %1312, align 1
  %1313 = lshr i32 %1295, 31
  %1314 = xor i32 %1310, %1313
  %1315 = add i32 %1314, %1313
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1317, i8* %1318, align 1
  store %struct.Memory* %loadMem_4096a2, %struct.Memory** %MEMORY
  %loadMem_4096a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 33
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1321 to i64*
  %1322 = load i64, i64* %PC.i324
  %1323 = add i64 %1322, 128
  %1324 = load i64, i64* %PC.i324
  %1325 = add i64 %1324, 6
  %1326 = load i64, i64* %PC.i324
  %1327 = add i64 %1326, 6
  store i64 %1327, i64* %PC.i324
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1329 = load i8, i8* %1328, align 1
  store i8 %1329, i8* %BRANCH_TAKEN, align 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1331 = icmp ne i8 %1329, 0
  %1332 = select i1 %1331, i64 %1323, i64 %1325
  store i64 %1332, i64* %1330, align 8
  store %struct.Memory* %loadMem_4096a5, %struct.Memory** %MEMORY
  %loadBr_4096a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4096a5 = icmp eq i8 %loadBr_4096a5, 1
  br i1 %cmpBr_4096a5, label %block_.L_409725, label %block_4096ab

block_4096ab:                                     ; preds = %block_.L_409691
  %loadMem_4096ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 1
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 15
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %RBP.i323
  %1343 = sub i64 %1342, 8
  %1344 = load i64, i64* %PC.i321
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i321
  %1346 = inttoptr i64 %1343 to i32*
  %1347 = load i32, i32* %1346
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_4096ab, %struct.Memory** %MEMORY
  %loadMem_4096ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 1
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RAX.i320
  %1356 = load i64, i64* %PC.i319
  %1357 = add i64 %1356, 3
  store i64 %1357, i64* %PC.i319
  %1358 = trunc i64 %1355 to i32
  %1359 = add i32 20, %1358
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i320, align 8
  %1361 = icmp ult i32 %1359, %1358
  %1362 = icmp ult i32 %1359, 20
  %1363 = or i1 %1361, %1362
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1364, i8* %1365, align 1
  %1366 = and i32 %1359, 255
  %1367 = call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1370, i8* %1371, align 1
  %1372 = xor i64 20, %1355
  %1373 = trunc i64 %1372 to i32
  %1374 = xor i32 %1373, %1359
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1377, i8* %1378, align 1
  %1379 = icmp eq i32 %1359, 0
  %1380 = zext i1 %1379 to i8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1380, i8* %1381, align 1
  %1382 = lshr i32 %1359, 31
  %1383 = trunc i32 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1383, i8* %1384, align 1
  %1385 = lshr i32 %1358, 31
  %1386 = xor i32 %1382, %1385
  %1387 = add i32 %1386, %1382
  %1388 = icmp eq i32 %1387, 2
  %1389 = zext i1 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1389, i8* %1390, align 1
  store %struct.Memory* %loadMem_4096ae, %struct.Memory** %MEMORY
  %loadMem_4096b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 1
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %1396 to i32*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 5
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %1399 to i64*
  %1400 = load i32, i32* %EAX.i317
  %1401 = zext i32 %1400 to i64
  %1402 = load i64, i64* %PC.i316
  %1403 = add i64 %1402, 3
  store i64 %1403, i64* %PC.i316
  %1404 = shl i64 %1401, 32
  %1405 = ashr exact i64 %1404, 32
  store i64 %1405, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_4096b1, %struct.Memory** %MEMORY
  %loadMem_4096b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 5
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RCX.i315
  %1416 = add i64 %1415, 12099168
  %1417 = load i64, i64* %PC.i313
  %1418 = add i64 %1417, 8
  store i64 %1418, i64* %PC.i313
  %1419 = inttoptr i64 %1416 to i8*
  %1420 = load i8, i8* %1419
  %1421 = zext i8 %1420 to i64
  store i64 %1421, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_4096b4, %struct.Memory** %MEMORY
  %loadMem_4096bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 1
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %EAX.i312 = bitcast %union.anon* %1427 to i32*
  %1428 = load i32, i32* %EAX.i312
  %1429 = zext i32 %1428 to i64
  %1430 = load i64, i64* %PC.i311
  %1431 = add i64 %1430, 3
  store i64 %1431, i64* %PC.i311
  %1432 = sub i32 %1428, 3
  %1433 = icmp ult i32 %1428, 3
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1434, i8* %1435, align 1
  %1436 = and i32 %1432, 255
  %1437 = call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1440, i8* %1441, align 1
  %1442 = xor i64 3, %1429
  %1443 = trunc i64 %1442 to i32
  %1444 = xor i32 %1443, %1432
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1447, i8* %1448, align 1
  %1449 = icmp eq i32 %1432, 0
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1450, i8* %1451, align 1
  %1452 = lshr i32 %1432, 31
  %1453 = trunc i32 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1453, i8* %1454, align 1
  %1455 = lshr i32 %1428, 31
  %1456 = xor i32 %1452, %1455
  %1457 = add i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1459, i8* %1460, align 1
  store %struct.Memory* %loadMem_4096bc, %struct.Memory** %MEMORY
  %loadMem_4096bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i310
  %1465 = add i64 %1464, 114
  %1466 = load i64, i64* %PC.i310
  %1467 = add i64 %1466, 6
  %1468 = load i64, i64* %PC.i310
  %1469 = add i64 %1468, 6
  store i64 %1469, i64* %PC.i310
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1471 = load i8, i8* %1470, align 1
  store i8 %1471, i8* %BRANCH_TAKEN, align 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1473 = icmp ne i8 %1471, 0
  %1474 = select i1 %1473, i64 %1465, i64 %1467
  store i64 %1474, i64* %1472, align 8
  store %struct.Memory* %loadMem_4096bf, %struct.Memory** %MEMORY
  %loadBr_4096bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4096bf = icmp eq i8 %loadBr_4096bf, 1
  br i1 %cmpBr_4096bf, label %block_.L_409731, label %block_4096c5

block_4096c5:                                     ; preds = %block_4096ab
  %loadMem_4096c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 1
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %PC.i308
  %1482 = add i64 %1481, 10
  store i64 %1482, i64* %PC.i308
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_4096c5, %struct.Memory** %MEMORY
  %loadMem_4096cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 5
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i307
  %1493 = sub i64 %1492, 8
  %1494 = load i64, i64* %PC.i305
  %1495 = add i64 %1494, 3
  store i64 %1495, i64* %PC.i305
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RCX.i306, align 8
  store %struct.Memory* %loadMem_4096cf, %struct.Memory** %MEMORY
  %loadMem_4096d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 5
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RCX.i304
  %1506 = load i64, i64* %PC.i303
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i303
  %1508 = trunc i64 %1505 to i32
  %1509 = add i32 20, %1508
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i304, align 8
  %1511 = icmp ult i32 %1509, %1508
  %1512 = icmp ult i32 %1509, 20
  %1513 = or i1 %1511, %1512
  %1514 = zext i1 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1514, i8* %1515, align 1
  %1516 = and i32 %1509, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1
  %1522 = xor i64 20, %1505
  %1523 = trunc i64 %1522 to i32
  %1524 = xor i32 %1523, %1509
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1527, i8* %1528, align 1
  %1529 = icmp eq i32 %1509, 0
  %1530 = zext i1 %1529 to i8
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1530, i8* %1531, align 1
  %1532 = lshr i32 %1509, 31
  %1533 = trunc i32 %1532 to i8
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1533, i8* %1534, align 1
  %1535 = lshr i32 %1508, 31
  %1536 = xor i32 %1532, %1535
  %1537 = add i32 %1536, %1532
  %1538 = icmp eq i32 %1537, 2
  %1539 = zext i1 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1539, i8* %1540, align 1
  store %struct.Memory* %loadMem_4096d2, %struct.Memory** %MEMORY
  %loadMem_4096d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 5
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %ECX.i301 = bitcast %union.anon* %1546 to i32*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 7
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %1549 to i64*
  %1550 = load i32, i32* %ECX.i301
  %1551 = zext i32 %1550 to i64
  %1552 = load i64, i64* %PC.i300
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i300
  %1554 = shl i64 %1551, 32
  %1555 = ashr exact i64 %1554, 32
  store i64 %1555, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_4096d5, %struct.Memory** %MEMORY
  %loadMem_4096d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 5
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 7
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RDX.i299
  %1566 = add i64 %1565, 12099168
  %1567 = load i64, i64* %PC.i297
  %1568 = add i64 %1567, 8
  store i64 %1568, i64* %PC.i297
  %1569 = inttoptr i64 %1566 to i8*
  %1570 = load i8, i8* %1569
  %1571 = zext i8 %1570 to i64
  store i64 %1571, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_4096d8, %struct.Memory** %MEMORY
  %loadMem_4096e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 5
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %ECX.i295 = bitcast %union.anon* %1577 to i32*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %1580 to i64*
  %1581 = load i32, i32* %ECX.i295
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %RBP.i296
  %1584 = sub i64 %1583, 12
  %1585 = load i64, i64* %PC.i294
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %PC.i294
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587
  %1589 = sub i32 %1581, %1588
  %1590 = icmp ult i32 %1581, %1588
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1591, i8* %1592, align 1
  %1593 = and i32 %1589, 255
  %1594 = call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1597, i8* %1598, align 1
  %1599 = xor i32 %1588, %1581
  %1600 = xor i32 %1599, %1589
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1603, i8* %1604, align 1
  %1605 = icmp eq i32 %1589, 0
  %1606 = zext i1 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i32 %1589, 31
  %1609 = trunc i32 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1609, i8* %1610, align 1
  %1611 = lshr i32 %1581, 31
  %1612 = lshr i32 %1588, 31
  %1613 = xor i32 %1612, %1611
  %1614 = xor i32 %1608, %1611
  %1615 = add i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1617, i8* %1618, align 1
  store %struct.Memory* %loadMem_4096e0, %struct.Memory** %MEMORY
  %loadMem_4096e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 9
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %1625 = bitcast %union.anon* %1624 to %struct.anon.2*
  %SIL.i293 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1625, i32 0, i32 0
  %1626 = load i64, i64* %PC.i292
  %1627 = add i64 %1626, 4
  store i64 %1627, i64* %PC.i292
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1629 = load i8, i8* %1628, align 1
  store i8 %1629, i8* %SIL.i293, align 1
  store %struct.Memory* %loadMem_4096e3, %struct.Memory** %MEMORY
  %loadMem_4096e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 9
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %1636 = bitcast %union.anon* %1635 to %struct.anon.2*
  %SIL.i291 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1636, i32 0, i32 0
  %1637 = load i8, i8* %SIL.i291
  %1638 = zext i8 %1637 to i64
  %1639 = load i64, i64* %PC.i290
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %PC.i290
  %1641 = and i64 1, %1638
  %1642 = trunc i64 %1641 to i8
  store i8 %1642, i8* %SIL.i291, align 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1643, align 1
  %1644 = trunc i64 %1641 to i32
  %1645 = and i32 %1644, 255
  %1646 = call i32 @llvm.ctpop.i32(i32 %1645)
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1649, i8* %1650, align 1
  %1651 = icmp eq i8 %1642, 0
  %1652 = zext i1 %1651 to i8
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1652, i8* %1653, align 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1654, align 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1655, align 1
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1656, align 1
  store %struct.Memory* %loadMem_4096e7, %struct.Memory** %MEMORY
  %loadMem_4096eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 9
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %1663 = bitcast %union.anon* %1662 to %struct.anon.2*
  %SIL.i288 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1663, i32 0, i32 0
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 5
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %1666 to i64*
  %1667 = load i8, i8* %SIL.i288
  %1668 = zext i8 %1667 to i64
  %1669 = load i64, i64* %PC.i287
  %1670 = add i64 %1669, 4
  store i64 %1670, i64* %PC.i287
  %1671 = and i64 %1668, 255
  store i64 %1671, i64* %RCX.i289, align 8
  store %struct.Memory* %loadMem_4096eb, %struct.Memory** %MEMORY
  %loadMem_4096ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 11
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 15
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %RBP.i286
  %1682 = sub i64 %1681, 8
  %1683 = load i64, i64* %PC.i284
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC.i284
  %1685 = inttoptr i64 %1682 to i32*
  %1686 = load i32, i32* %1685
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_4096ef, %struct.Memory** %MEMORY
  %loadMem_4096f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 11
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RDI.i283 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %RDI.i283
  %1695 = load i64, i64* %PC.i282
  %1696 = add i64 %1695, 3
  store i64 %1696, i64* %PC.i282
  %1697 = trunc i64 %1694 to i32
  %1698 = add i32 20, %1697
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RDI.i283, align 8
  %1700 = icmp ult i32 %1698, %1697
  %1701 = icmp ult i32 %1698, 20
  %1702 = or i1 %1700, %1701
  %1703 = zext i1 %1702 to i8
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1703, i8* %1704, align 1
  %1705 = and i32 %1698, 255
  %1706 = call i32 @llvm.ctpop.i32(i32 %1705)
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  %1709 = xor i8 %1708, 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1709, i8* %1710, align 1
  %1711 = xor i64 20, %1694
  %1712 = trunc i64 %1711 to i32
  %1713 = xor i32 %1712, %1698
  %1714 = lshr i32 %1713, 4
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1716, i8* %1717, align 1
  %1718 = icmp eq i32 %1698, 0
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1719, i8* %1720, align 1
  %1721 = lshr i32 %1698, 31
  %1722 = trunc i32 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1722, i8* %1723, align 1
  %1724 = lshr i32 %1697, 31
  %1725 = xor i32 %1721, %1724
  %1726 = add i32 %1725, %1721
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1728, i8* %1729, align 1
  store %struct.Memory* %loadMem_4096f2, %struct.Memory** %MEMORY
  %loadMem_4096f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 11
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %EDI.i280 = bitcast %union.anon* %1735 to i32*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 7
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %1738 to i64*
  %1739 = load i32, i32* %EDI.i280
  %1740 = zext i32 %1739 to i64
  %1741 = load i64, i64* %PC.i279
  %1742 = add i64 %1741, 3
  store i64 %1742, i64* %PC.i279
  %1743 = shl i64 %1740, 32
  %1744 = ashr exact i64 %1743, 32
  store i64 %1744, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_4096f5, %struct.Memory** %MEMORY
  %loadMem_4096f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 7
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %1750 to i64*
  %1751 = load i64, i64* %RDX.i278
  %1752 = mul i64 %1751, 4
  %1753 = add i64 %1752, 11187184
  %1754 = load i64, i64* %PC.i277
  %1755 = add i64 %1754, 8
  store i64 %1755, i64* %PC.i277
  %1756 = inttoptr i64 %1753 to i32*
  %1757 = load i32, i32* %1756
  %1758 = sext i32 %1757 to i64
  store i64 %1758, i64* %RDX.i278, align 8
  store %struct.Memory* %loadMem_4096f8, %struct.Memory** %MEMORY
  %loadMem_409700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 7
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RDX.i276
  %1766 = load i64, i64* %PC.i275
  %1767 = add i64 %1766, 7
  store i64 %1767, i64* %PC.i275
  %1768 = sext i64 %1765 to i128
  %1769 = and i128 %1768, -18446744073709551616
  %1770 = zext i64 %1765 to i128
  %1771 = or i128 %1769, %1770
  %1772 = mul i128 744, %1771
  %1773 = trunc i128 %1772 to i64
  store i64 %1773, i64* %RDX.i276, align 8
  %1774 = sext i64 %1773 to i128
  %1775 = icmp ne i128 %1774, %1772
  %1776 = zext i1 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1776, i8* %1777, align 1
  %1778 = trunc i128 %1772 to i32
  %1779 = and i32 %1778, 255
  %1780 = call i32 @llvm.ctpop.i32(i32 %1779)
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1783, i8* %1784, align 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1785, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1786, align 1
  %1787 = lshr i64 %1773, 63
  %1788 = trunc i64 %1787 to i8
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1788, i8* %1789, align 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1776, i8* %1790, align 1
  store %struct.Memory* %loadMem_409700, %struct.Memory** %MEMORY
  %loadMem_409707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 1
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 7
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RDX.i274 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %RAX.i273
  %1801 = load i64, i64* %RDX.i274
  %1802 = load i64, i64* %PC.i272
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i272
  %1804 = add i64 %1801, %1800
  store i64 %1804, i64* %RAX.i273, align 8
  %1805 = icmp ult i64 %1804, %1800
  %1806 = icmp ult i64 %1804, %1801
  %1807 = or i1 %1805, %1806
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1808, i8* %1809, align 1
  %1810 = trunc i64 %1804 to i32
  %1811 = and i32 %1810, 255
  %1812 = call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1815, i8* %1816, align 1
  %1817 = xor i64 %1801, %1800
  %1818 = xor i64 %1817, %1804
  %1819 = lshr i64 %1818, 4
  %1820 = trunc i64 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1821, i8* %1822, align 1
  %1823 = icmp eq i64 %1804, 0
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1824, i8* %1825, align 1
  %1826 = lshr i64 %1804, 63
  %1827 = trunc i64 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1827, i8* %1828, align 1
  %1829 = lshr i64 %1800, 63
  %1830 = lshr i64 %1801, 63
  %1831 = xor i64 %1826, %1829
  %1832 = xor i64 %1826, %1830
  %1833 = add i64 %1831, %1832
  %1834 = icmp eq i64 %1833, 2
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1835, i8* %1836, align 1
  store %struct.Memory* %loadMem_409707, %struct.Memory** %MEMORY
  %loadMem_40970a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %RAX.i271
  %1844 = add i64 %1843, 12
  %1845 = load i64, i64* %PC.i270
  %1846 = add i64 %1845, 4
  store i64 %1846, i64* %PC.i270
  %1847 = inttoptr i64 %1844 to i32*
  %1848 = load i32, i32* %1847
  %1849 = sub i32 %1848, 1
  %1850 = icmp ult i32 %1848, 1
  %1851 = zext i1 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1851, i8* %1852, align 1
  %1853 = and i32 %1849, 255
  %1854 = call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1857, i8* %1858, align 1
  %1859 = xor i32 %1848, 1
  %1860 = xor i32 %1859, %1849
  %1861 = lshr i32 %1860, 4
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1863, i8* %1864, align 1
  %1865 = icmp eq i32 %1849, 0
  %1866 = zext i1 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1866, i8* %1867, align 1
  %1868 = lshr i32 %1849, 31
  %1869 = trunc i32 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1869, i8* %1870, align 1
  %1871 = lshr i32 %1848, 31
  %1872 = xor i32 %1868, %1871
  %1873 = add i32 %1872, %1871
  %1874 = icmp eq i32 %1873, 2
  %1875 = zext i1 %1874 to i8
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1875, i8* %1876, align 1
  store %struct.Memory* %loadMem_40970a, %struct.Memory** %MEMORY
  %loadMem_40970e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 9
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %1883 = bitcast %union.anon* %1882 to %struct.anon.2*
  %SIL.i269 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1883, i32 0, i32 0
  %1884 = load i64, i64* %PC.i268
  %1885 = add i64 %1884, 4
  store i64 %1885, i64* %PC.i268
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1887 = load i8, i8* %1886, align 1
  store i8 %1887, i8* %SIL.i269, align 1
  store %struct.Memory* %loadMem_40970e, %struct.Memory** %MEMORY
  %loadMem_409712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 9
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %1894 = bitcast %union.anon* %1893 to %struct.anon.2*
  %SIL.i267 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1894, i32 0, i32 0
  %1895 = load i8, i8* %SIL.i267
  %1896 = zext i8 %1895 to i64
  %1897 = load i64, i64* %PC.i266
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %PC.i266
  %1899 = and i64 1, %1896
  %1900 = trunc i64 %1899 to i8
  store i8 %1900, i8* %SIL.i267, align 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1901, align 1
  %1902 = trunc i64 %1899 to i32
  %1903 = and i32 %1902, 255
  %1904 = call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1907, i8* %1908, align 1
  %1909 = icmp eq i8 %1900, 0
  %1910 = zext i1 %1909 to i8
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1910, i8* %1911, align 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1912, align 1
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1913, align 1
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1914, align 1
  store %struct.Memory* %loadMem_409712, %struct.Memory** %MEMORY
  %loadMem_409716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 9
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %1921 = bitcast %union.anon* %1920 to %struct.anon.2*
  %SIL.i264 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1921, i32 0, i32 0
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 11
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RDI.i265 = bitcast %union.anon* %1924 to i64*
  %1925 = load i8, i8* %SIL.i264
  %1926 = zext i8 %1925 to i64
  %1927 = load i64, i64* %PC.i263
  %1928 = add i64 %1927, 4
  store i64 %1928, i64* %PC.i263
  %1929 = and i64 %1926, 255
  store i64 %1929, i64* %RDI.i265, align 8
  store %struct.Memory* %loadMem_409716, %struct.Memory** %MEMORY
  %loadMem_40971a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 11
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %EDI.i261 = bitcast %union.anon* %1935 to i32*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 5
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %1938 to i64*
  %1939 = load i64, i64* %RCX.i262
  %1940 = load i32, i32* %EDI.i261
  %1941 = zext i32 %1940 to i64
  %1942 = load i64, i64* %PC.i260
  %1943 = add i64 %1942, 2
  store i64 %1943, i64* %PC.i260
  %1944 = xor i64 %1941, %1939
  %1945 = trunc i64 %1944 to i32
  %1946 = and i64 %1944, 4294967295
  store i64 %1946, i64* %RCX.i262, align 8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1947, align 1
  %1948 = and i32 %1945, 255
  %1949 = call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1952, i8* %1953, align 1
  %1954 = icmp eq i32 %1945, 0
  %1955 = zext i1 %1954 to i8
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1955, i8* %1956, align 1
  %1957 = lshr i32 %1945, 31
  %1958 = trunc i32 %1957 to i8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1958, i8* %1959, align 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1960, align 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1961, align 1
  store %struct.Memory* %loadMem_40971a, %struct.Memory** %MEMORY
  %loadMem_40971c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 5
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %ECX.i259 = bitcast %union.anon* %1967 to i32*
  %1968 = load i32, i32* %ECX.i259
  %1969 = zext i32 %1968 to i64
  %1970 = load i64, i64* %PC.i258
  %1971 = add i64 %1970, 3
  store i64 %1971, i64* %PC.i258
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1972, align 1
  %1973 = and i32 %1968, 255
  %1974 = call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1977, i8* %1978, align 1
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1979, align 1
  %1980 = icmp eq i32 %1968, 0
  %1981 = zext i1 %1980 to i8
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1981, i8* %1982, align 1
  %1983 = lshr i32 %1968, 31
  %1984 = trunc i32 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1984, i8* %1985, align 1
  %1986 = lshr i32 %1968, 31
  %1987 = xor i32 %1983, %1986
  %1988 = add i32 %1987, %1986
  %1989 = icmp eq i32 %1988, 2
  %1990 = zext i1 %1989 to i8
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1990, i8* %1991, align 1
  store %struct.Memory* %loadMem_40971c, %struct.Memory** %MEMORY
  %loadMem_40971f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %PC.i257
  %1996 = add i64 %1995, 18
  %1997 = load i64, i64* %PC.i257
  %1998 = add i64 %1997, 6
  %1999 = load i64, i64* %PC.i257
  %2000 = add i64 %1999, 6
  store i64 %2000, i64* %PC.i257
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2002 = load i8, i8* %2001, align 1
  store i8 %2002, i8* %BRANCH_TAKEN, align 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2004 = icmp ne i8 %2002, 0
  %2005 = select i1 %2004, i64 %1996, i64 %1998
  store i64 %2005, i64* %2003, align 8
  store %struct.Memory* %loadMem_40971f, %struct.Memory** %MEMORY
  %loadBr_40971f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40971f = icmp eq i8 %loadBr_40971f, 1
  br i1 %cmpBr_40971f, label %block_.L_409731, label %block_.L_409725

block_.L_409725:                                  ; preds = %block_4096c5, %block_.L_409691
  %loadMem_409725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 15
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RBP.i256
  %2013 = sub i64 %2012, 4
  %2014 = load i64, i64* %PC.i255
  %2015 = add i64 %2014, 7
  store i64 %2015, i64* %PC.i255
  %2016 = inttoptr i64 %2013 to i32*
  store i32 0, i32* %2016
  store %struct.Memory* %loadMem_409725, %struct.Memory** %MEMORY
  %loadMem_40972c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %PC.i254
  %2021 = add i64 %2020, 492
  %2022 = load i64, i64* %PC.i254
  %2023 = add i64 %2022, 5
  store i64 %2023, i64* %PC.i254
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2021, i64* %2024, align 8
  store %struct.Memory* %loadMem_40972c, %struct.Memory** %MEMORY
  br label %block_.L_409918

block_.L_409731:                                  ; preds = %block_4096c5, %block_4096ab
  %loadMem_409731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 33
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 15
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %RBP.i253
  %2035 = sub i64 %2034, 8
  %2036 = load i64, i64* %PC.i251
  %2037 = add i64 %2036, 3
  store i64 %2037, i64* %PC.i251
  %2038 = inttoptr i64 %2035 to i32*
  %2039 = load i32, i32* %2038
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_409731, %struct.Memory** %MEMORY
  %loadMem_409734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %RAX.i250
  %2048 = load i64, i64* %PC.i249
  %2049 = add i64 %2048, 3
  store i64 %2049, i64* %PC.i249
  %2050 = trunc i64 %2047 to i32
  %2051 = sub i32 %2050, 1
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RAX.i250, align 8
  %2053 = icmp ult i32 %2050, 1
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2054, i8* %2055, align 1
  %2056 = and i32 %2051, 255
  %2057 = call i32 @llvm.ctpop.i32(i32 %2056)
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2060, i8* %2061, align 1
  %2062 = xor i64 1, %2047
  %2063 = trunc i64 %2062 to i32
  %2064 = xor i32 %2063, %2051
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2067, i8* %2068, align 1
  %2069 = icmp eq i32 %2051, 0
  %2070 = zext i1 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2070, i8* %2071, align 1
  %2072 = lshr i32 %2051, 31
  %2073 = trunc i32 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2073, i8* %2074, align 1
  %2075 = lshr i32 %2050, 31
  %2076 = xor i32 %2072, %2075
  %2077 = add i32 %2076, %2075
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2079, i8* %2080, align 1
  store %struct.Memory* %loadMem_409734, %struct.Memory** %MEMORY
  %loadMem_409737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 1
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %2086 to i32*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 5
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %2089 to i64*
  %2090 = load i32, i32* %EAX.i247
  %2091 = zext i32 %2090 to i64
  %2092 = load i64, i64* %PC.i246
  %2093 = add i64 %2092, 3
  store i64 %2093, i64* %PC.i246
  %2094 = shl i64 %2091, 32
  %2095 = ashr exact i64 %2094, 32
  store i64 %2095, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_409737, %struct.Memory** %MEMORY
  %loadMem_40973a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 1
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 5
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RCX.i245
  %2106 = add i64 %2105, 12099168
  %2107 = load i64, i64* %PC.i243
  %2108 = add i64 %2107, 8
  store i64 %2108, i64* %PC.i243
  %2109 = inttoptr i64 %2106 to i8*
  %2110 = load i8, i8* %2109
  %2111 = zext i8 %2110 to i64
  store i64 %2111, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_40973a, %struct.Memory** %MEMORY
  %loadMem_409742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %EAX.i242 = bitcast %union.anon* %2117 to i32*
  %2118 = load i32, i32* %EAX.i242
  %2119 = zext i32 %2118 to i64
  %2120 = load i64, i64* %PC.i241
  %2121 = add i64 %2120, 3
  store i64 %2121, i64* %PC.i241
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2122, align 1
  %2123 = and i32 %2118, 255
  %2124 = call i32 @llvm.ctpop.i32(i32 %2123)
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = xor i8 %2126, 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2127, i8* %2128, align 1
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2129, align 1
  %2130 = icmp eq i32 %2118, 0
  %2131 = zext i1 %2130 to i8
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2131, i8* %2132, align 1
  %2133 = lshr i32 %2118, 31
  %2134 = trunc i32 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2134, i8* %2135, align 1
  %2136 = lshr i32 %2118, 31
  %2137 = xor i32 %2133, %2136
  %2138 = add i32 %2137, %2136
  %2139 = icmp eq i32 %2138, 2
  %2140 = zext i1 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2140, i8* %2141, align 1
  store %struct.Memory* %loadMem_409742, %struct.Memory** %MEMORY
  %loadMem_409745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2144 to i64*
  %2145 = load i64, i64* %PC.i240
  %2146 = add i64 %2145, 128
  %2147 = load i64, i64* %PC.i240
  %2148 = add i64 %2147, 6
  %2149 = load i64, i64* %PC.i240
  %2150 = add i64 %2149, 6
  store i64 %2150, i64* %PC.i240
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2152 = load i8, i8* %2151, align 1
  store i8 %2152, i8* %BRANCH_TAKEN, align 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2154 = icmp ne i8 %2152, 0
  %2155 = select i1 %2154, i64 %2146, i64 %2148
  store i64 %2155, i64* %2153, align 8
  store %struct.Memory* %loadMem_409745, %struct.Memory** %MEMORY
  %loadBr_409745 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409745 = icmp eq i8 %loadBr_409745, 1
  br i1 %cmpBr_409745, label %block_.L_4097c5, label %block_40974b

block_40974b:                                     ; preds = %block_.L_409731
  %loadMem_40974b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 1
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 15
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %RBP.i239
  %2166 = sub i64 %2165, 8
  %2167 = load i64, i64* %PC.i237
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i237
  %2169 = inttoptr i64 %2166 to i32*
  %2170 = load i32, i32* %2169
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_40974b, %struct.Memory** %MEMORY
  %loadMem_40974e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 1
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %RAX.i236
  %2179 = load i64, i64* %PC.i235
  %2180 = add i64 %2179, 3
  store i64 %2180, i64* %PC.i235
  %2181 = trunc i64 %2178 to i32
  %2182 = sub i32 %2181, 1
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i236, align 8
  %2184 = icmp ult i32 %2181, 1
  %2185 = zext i1 %2184 to i8
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2185, i8* %2186, align 1
  %2187 = and i32 %2182, 255
  %2188 = call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2191, i8* %2192, align 1
  %2193 = xor i64 1, %2178
  %2194 = trunc i64 %2193 to i32
  %2195 = xor i32 %2194, %2182
  %2196 = lshr i32 %2195, 4
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2198, i8* %2199, align 1
  %2200 = icmp eq i32 %2182, 0
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2201, i8* %2202, align 1
  %2203 = lshr i32 %2182, 31
  %2204 = trunc i32 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2204, i8* %2205, align 1
  %2206 = lshr i32 %2181, 31
  %2207 = xor i32 %2203, %2206
  %2208 = add i32 %2207, %2206
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2210, i8* %2211, align 1
  store %struct.Memory* %loadMem_40974e, %struct.Memory** %MEMORY
  %loadMem_409751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %2217 to i32*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 5
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %2220 to i64*
  %2221 = load i32, i32* %EAX.i233
  %2222 = zext i32 %2221 to i64
  %2223 = load i64, i64* %PC.i232
  %2224 = add i64 %2223, 3
  store i64 %2224, i64* %PC.i232
  %2225 = shl i64 %2222, 32
  %2226 = ashr exact i64 %2225, 32
  store i64 %2226, i64* %RCX.i234, align 8
  store %struct.Memory* %loadMem_409751, %struct.Memory** %MEMORY
  %loadMem_409754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 1
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 5
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %2235 to i64*
  %2236 = load i64, i64* %RCX.i231
  %2237 = add i64 %2236, 12099168
  %2238 = load i64, i64* %PC.i229
  %2239 = add i64 %2238, 8
  store i64 %2239, i64* %PC.i229
  %2240 = inttoptr i64 %2237 to i8*
  %2241 = load i8, i8* %2240
  %2242 = zext i8 %2241 to i64
  store i64 %2242, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_409754, %struct.Memory** %MEMORY
  %loadMem_40975c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 1
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %2248 to i32*
  %2249 = load i32, i32* %EAX.i228
  %2250 = zext i32 %2249 to i64
  %2251 = load i64, i64* %PC.i227
  %2252 = add i64 %2251, 3
  store i64 %2252, i64* %PC.i227
  %2253 = sub i32 %2249, 3
  %2254 = icmp ult i32 %2249, 3
  %2255 = zext i1 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2255, i8* %2256, align 1
  %2257 = and i32 %2253, 255
  %2258 = call i32 @llvm.ctpop.i32(i32 %2257)
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  %2261 = xor i8 %2260, 1
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2261, i8* %2262, align 1
  %2263 = xor i64 3, %2250
  %2264 = trunc i64 %2263 to i32
  %2265 = xor i32 %2264, %2253
  %2266 = lshr i32 %2265, 4
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2268, i8* %2269, align 1
  %2270 = icmp eq i32 %2253, 0
  %2271 = zext i1 %2270 to i8
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2271, i8* %2272, align 1
  %2273 = lshr i32 %2253, 31
  %2274 = trunc i32 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2274, i8* %2275, align 1
  %2276 = lshr i32 %2249, 31
  %2277 = xor i32 %2273, %2276
  %2278 = add i32 %2277, %2276
  %2279 = icmp eq i32 %2278, 2
  %2280 = zext i1 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2280, i8* %2281, align 1
  store %struct.Memory* %loadMem_40975c, %struct.Memory** %MEMORY
  %loadMem_40975f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2284 to i64*
  %2285 = load i64, i64* %PC.i226
  %2286 = add i64 %2285, 114
  %2287 = load i64, i64* %PC.i226
  %2288 = add i64 %2287, 6
  %2289 = load i64, i64* %PC.i226
  %2290 = add i64 %2289, 6
  store i64 %2290, i64* %PC.i226
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2292 = load i8, i8* %2291, align 1
  store i8 %2292, i8* %BRANCH_TAKEN, align 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2294 = icmp ne i8 %2292, 0
  %2295 = select i1 %2294, i64 %2286, i64 %2288
  store i64 %2295, i64* %2293, align 8
  store %struct.Memory* %loadMem_40975f, %struct.Memory** %MEMORY
  %loadBr_40975f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40975f = icmp eq i8 %loadBr_40975f, 1
  br i1 %cmpBr_40975f, label %block_.L_4097d1, label %block_409765

block_409765:                                     ; preds = %block_40974b
  %loadMem_409765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 1
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %PC.i224
  %2303 = add i64 %2302, 10
  store i64 %2303, i64* %PC.i224
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_409765, %struct.Memory** %MEMORY
  %loadMem_40976f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 5
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 15
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RBP.i223
  %2314 = sub i64 %2313, 8
  %2315 = load i64, i64* %PC.i221
  %2316 = add i64 %2315, 3
  store i64 %2316, i64* %PC.i221
  %2317 = inttoptr i64 %2314 to i32*
  %2318 = load i32, i32* %2317
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_40976f, %struct.Memory** %MEMORY
  %loadMem_409772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RCX.i220
  %2327 = load i64, i64* %PC.i219
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC.i219
  %2329 = trunc i64 %2326 to i32
  %2330 = sub i32 %2329, 1
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RCX.i220, align 8
  %2332 = icmp ult i32 %2329, 1
  %2333 = zext i1 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2333, i8* %2334, align 1
  %2335 = and i32 %2330, 255
  %2336 = call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2339, i8* %2340, align 1
  %2341 = xor i64 1, %2326
  %2342 = trunc i64 %2341 to i32
  %2343 = xor i32 %2342, %2330
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2346, i8* %2347, align 1
  %2348 = icmp eq i32 %2330, 0
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2349, i8* %2350, align 1
  %2351 = lshr i32 %2330, 31
  %2352 = trunc i32 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2329, 31
  %2355 = xor i32 %2351, %2354
  %2356 = add i32 %2355, %2354
  %2357 = icmp eq i32 %2356, 2
  %2358 = zext i1 %2357 to i8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2358, i8* %2359, align 1
  store %struct.Memory* %loadMem_409772, %struct.Memory** %MEMORY
  %loadMem_409775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 5
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %ECX.i217 = bitcast %union.anon* %2365 to i32*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 7
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %2368 to i64*
  %2369 = load i32, i32* %ECX.i217
  %2370 = zext i32 %2369 to i64
  %2371 = load i64, i64* %PC.i216
  %2372 = add i64 %2371, 3
  store i64 %2372, i64* %PC.i216
  %2373 = shl i64 %2370, 32
  %2374 = ashr exact i64 %2373, 32
  store i64 %2374, i64* %RDX.i218, align 8
  store %struct.Memory* %loadMem_409775, %struct.Memory** %MEMORY
  %loadMem_409778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 5
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 7
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RDX.i215 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RDX.i215
  %2385 = add i64 %2384, 12099168
  %2386 = load i64, i64* %PC.i213
  %2387 = add i64 %2386, 8
  store i64 %2387, i64* %PC.i213
  %2388 = inttoptr i64 %2385 to i8*
  %2389 = load i8, i8* %2388
  %2390 = zext i8 %2389 to i64
  store i64 %2390, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_409778, %struct.Memory** %MEMORY
  %loadMem_409780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 5
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %ECX.i211 = bitcast %union.anon* %2396 to i32*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2399 to i64*
  %2400 = load i32, i32* %ECX.i211
  %2401 = zext i32 %2400 to i64
  %2402 = load i64, i64* %RBP.i212
  %2403 = sub i64 %2402, 12
  %2404 = load i64, i64* %PC.i210
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i210
  %2406 = inttoptr i64 %2403 to i32*
  %2407 = load i32, i32* %2406
  %2408 = sub i32 %2400, %2407
  %2409 = icmp ult i32 %2400, %2407
  %2410 = zext i1 %2409 to i8
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2410, i8* %2411, align 1
  %2412 = and i32 %2408, 255
  %2413 = call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2416, i8* %2417, align 1
  %2418 = xor i32 %2407, %2400
  %2419 = xor i32 %2418, %2408
  %2420 = lshr i32 %2419, 4
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2422, i8* %2423, align 1
  %2424 = icmp eq i32 %2408, 0
  %2425 = zext i1 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2425, i8* %2426, align 1
  %2427 = lshr i32 %2408, 31
  %2428 = trunc i32 %2427 to i8
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2428, i8* %2429, align 1
  %2430 = lshr i32 %2400, 31
  %2431 = lshr i32 %2407, 31
  %2432 = xor i32 %2431, %2430
  %2433 = xor i32 %2427, %2430
  %2434 = add i32 %2433, %2432
  %2435 = icmp eq i32 %2434, 2
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2436, i8* %2437, align 1
  store %struct.Memory* %loadMem_409780, %struct.Memory** %MEMORY
  %loadMem_409783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 9
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %2444 = bitcast %union.anon* %2443 to %struct.anon.2*
  %SIL.i209 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2444, i32 0, i32 0
  %2445 = load i64, i64* %PC.i208
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i208
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2448 = load i8, i8* %2447, align 1
  store i8 %2448, i8* %SIL.i209, align 1
  store %struct.Memory* %loadMem_409783, %struct.Memory** %MEMORY
  %loadMem_409787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 9
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %2455 = bitcast %union.anon* %2454 to %struct.anon.2*
  %SIL.i207 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2455, i32 0, i32 0
  %2456 = load i8, i8* %SIL.i207
  %2457 = zext i8 %2456 to i64
  %2458 = load i64, i64* %PC.i206
  %2459 = add i64 %2458, 4
  store i64 %2459, i64* %PC.i206
  %2460 = and i64 1, %2457
  %2461 = trunc i64 %2460 to i8
  store i8 %2461, i8* %SIL.i207, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2462, align 1
  %2463 = trunc i64 %2460 to i32
  %2464 = and i32 %2463, 255
  %2465 = call i32 @llvm.ctpop.i32(i32 %2464)
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2468, i8* %2469, align 1
  %2470 = icmp eq i8 %2461, 0
  %2471 = zext i1 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2471, i8* %2472, align 1
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2473, align 1
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2474, align 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2475, align 1
  store %struct.Memory* %loadMem_409787, %struct.Memory** %MEMORY
  %loadMem_40978b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 9
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %2482 = bitcast %union.anon* %2481 to %struct.anon.2*
  %SIL.i204 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2482, i32 0, i32 0
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 5
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %2485 to i64*
  %2486 = load i8, i8* %SIL.i204
  %2487 = zext i8 %2486 to i64
  %2488 = load i64, i64* %PC.i203
  %2489 = add i64 %2488, 4
  store i64 %2489, i64* %PC.i203
  %2490 = and i64 %2487, 255
  store i64 %2490, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_40978b, %struct.Memory** %MEMORY
  %loadMem_40978f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 11
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %RDI.i201 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 15
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %RBP.i202
  %2501 = sub i64 %2500, 8
  %2502 = load i64, i64* %PC.i200
  %2503 = add i64 %2502, 3
  store i64 %2503, i64* %PC.i200
  %2504 = inttoptr i64 %2501 to i32*
  %2505 = load i32, i32* %2504
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RDI.i201, align 8
  store %struct.Memory* %loadMem_40978f, %struct.Memory** %MEMORY
  %loadMem_409792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 11
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RDI.i199 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RDI.i199
  %2514 = load i64, i64* %PC.i198
  %2515 = add i64 %2514, 3
  store i64 %2515, i64* %PC.i198
  %2516 = trunc i64 %2513 to i32
  %2517 = sub i32 %2516, 1
  %2518 = zext i32 %2517 to i64
  store i64 %2518, i64* %RDI.i199, align 8
  %2519 = icmp ult i32 %2516, 1
  %2520 = zext i1 %2519 to i8
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2520, i8* %2521, align 1
  %2522 = and i32 %2517, 255
  %2523 = call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2526, i8* %2527, align 1
  %2528 = xor i64 1, %2513
  %2529 = trunc i64 %2528 to i32
  %2530 = xor i32 %2529, %2517
  %2531 = lshr i32 %2530, 4
  %2532 = trunc i32 %2531 to i8
  %2533 = and i8 %2532, 1
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2533, i8* %2534, align 1
  %2535 = icmp eq i32 %2517, 0
  %2536 = zext i1 %2535 to i8
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2536, i8* %2537, align 1
  %2538 = lshr i32 %2517, 31
  %2539 = trunc i32 %2538 to i8
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2539, i8* %2540, align 1
  %2541 = lshr i32 %2516, 31
  %2542 = xor i32 %2538, %2541
  %2543 = add i32 %2542, %2541
  %2544 = icmp eq i32 %2543, 2
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2545, i8* %2546, align 1
  store %struct.Memory* %loadMem_409792, %struct.Memory** %MEMORY
  %loadMem_409795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 11
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %EDI.i196 = bitcast %union.anon* %2552 to i32*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 7
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %2555 to i64*
  %2556 = load i32, i32* %EDI.i196
  %2557 = zext i32 %2556 to i64
  %2558 = load i64, i64* %PC.i195
  %2559 = add i64 %2558, 3
  store i64 %2559, i64* %PC.i195
  %2560 = shl i64 %2557, 32
  %2561 = ashr exact i64 %2560, 32
  store i64 %2561, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_409795, %struct.Memory** %MEMORY
  %loadMem_409798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 7
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RDX.i194 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RDX.i194
  %2569 = mul i64 %2568, 4
  %2570 = add i64 %2569, 11187184
  %2571 = load i64, i64* %PC.i193
  %2572 = add i64 %2571, 8
  store i64 %2572, i64* %PC.i193
  %2573 = inttoptr i64 %2570 to i32*
  %2574 = load i32, i32* %2573
  %2575 = sext i32 %2574 to i64
  store i64 %2575, i64* %RDX.i194, align 8
  store %struct.Memory* %loadMem_409798, %struct.Memory** %MEMORY
  %loadMem_4097a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 7
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %2581 to i64*
  %2582 = load i64, i64* %RDX.i192
  %2583 = load i64, i64* %PC.i191
  %2584 = add i64 %2583, 7
  store i64 %2584, i64* %PC.i191
  %2585 = sext i64 %2582 to i128
  %2586 = and i128 %2585, -18446744073709551616
  %2587 = zext i64 %2582 to i128
  %2588 = or i128 %2586, %2587
  %2589 = mul i128 744, %2588
  %2590 = trunc i128 %2589 to i64
  store i64 %2590, i64* %RDX.i192, align 8
  %2591 = sext i64 %2590 to i128
  %2592 = icmp ne i128 %2591, %2589
  %2593 = zext i1 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2593, i8* %2594, align 1
  %2595 = trunc i128 %2589 to i32
  %2596 = and i32 %2595, 255
  %2597 = call i32 @llvm.ctpop.i32(i32 %2596)
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = xor i8 %2599, 1
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2600, i8* %2601, align 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2602, align 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2603, align 1
  %2604 = lshr i64 %2590, 63
  %2605 = trunc i64 %2604 to i8
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2605, i8* %2606, align 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2593, i8* %2607, align 1
  store %struct.Memory* %loadMem_4097a0, %struct.Memory** %MEMORY
  %loadMem_4097a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 1
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 7
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %RAX.i189
  %2618 = load i64, i64* %RDX.i190
  %2619 = load i64, i64* %PC.i188
  %2620 = add i64 %2619, 3
  store i64 %2620, i64* %PC.i188
  %2621 = add i64 %2618, %2617
  store i64 %2621, i64* %RAX.i189, align 8
  %2622 = icmp ult i64 %2621, %2617
  %2623 = icmp ult i64 %2621, %2618
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2625, i8* %2626, align 1
  %2627 = trunc i64 %2621 to i32
  %2628 = and i32 %2627, 255
  %2629 = call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2632, i8* %2633, align 1
  %2634 = xor i64 %2618, %2617
  %2635 = xor i64 %2634, %2621
  %2636 = lshr i64 %2635, 4
  %2637 = trunc i64 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2638, i8* %2639, align 1
  %2640 = icmp eq i64 %2621, 0
  %2641 = zext i1 %2640 to i8
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2641, i8* %2642, align 1
  %2643 = lshr i64 %2621, 63
  %2644 = trunc i64 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2644, i8* %2645, align 1
  %2646 = lshr i64 %2617, 63
  %2647 = lshr i64 %2618, 63
  %2648 = xor i64 %2643, %2646
  %2649 = xor i64 %2643, %2647
  %2650 = add i64 %2648, %2649
  %2651 = icmp eq i64 %2650, 2
  %2652 = zext i1 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2652, i8* %2653, align 1
  store %struct.Memory* %loadMem_4097a7, %struct.Memory** %MEMORY
  %loadMem_4097aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 1
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %2659 to i64*
  %2660 = load i64, i64* %RAX.i187
  %2661 = add i64 %2660, 12
  %2662 = load i64, i64* %PC.i186
  %2663 = add i64 %2662, 4
  store i64 %2663, i64* %PC.i186
  %2664 = inttoptr i64 %2661 to i32*
  %2665 = load i32, i32* %2664
  %2666 = sub i32 %2665, 1
  %2667 = icmp ult i32 %2665, 1
  %2668 = zext i1 %2667 to i8
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2668, i8* %2669, align 1
  %2670 = and i32 %2666, 255
  %2671 = call i32 @llvm.ctpop.i32(i32 %2670)
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = xor i8 %2673, 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2674, i8* %2675, align 1
  %2676 = xor i32 %2665, 1
  %2677 = xor i32 %2676, %2666
  %2678 = lshr i32 %2677, 4
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2680, i8* %2681, align 1
  %2682 = icmp eq i32 %2666, 0
  %2683 = zext i1 %2682 to i8
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2683, i8* %2684, align 1
  %2685 = lshr i32 %2666, 31
  %2686 = trunc i32 %2685 to i8
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2686, i8* %2687, align 1
  %2688 = lshr i32 %2665, 31
  %2689 = xor i32 %2685, %2688
  %2690 = add i32 %2689, %2688
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2692, i8* %2693, align 1
  store %struct.Memory* %loadMem_4097aa, %struct.Memory** %MEMORY
  %loadMem_4097ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 9
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %2700 = bitcast %union.anon* %2699 to %struct.anon.2*
  %SIL.i185 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2700, i32 0, i32 0
  %2701 = load i64, i64* %PC.i184
  %2702 = add i64 %2701, 4
  store i64 %2702, i64* %PC.i184
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2704 = load i8, i8* %2703, align 1
  store i8 %2704, i8* %SIL.i185, align 1
  store %struct.Memory* %loadMem_4097ae, %struct.Memory** %MEMORY
  %loadMem_4097b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 33
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 9
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %2711 = bitcast %union.anon* %2710 to %struct.anon.2*
  %SIL.i183 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2711, i32 0, i32 0
  %2712 = load i8, i8* %SIL.i183
  %2713 = zext i8 %2712 to i64
  %2714 = load i64, i64* %PC.i182
  %2715 = add i64 %2714, 4
  store i64 %2715, i64* %PC.i182
  %2716 = and i64 1, %2713
  %2717 = trunc i64 %2716 to i8
  store i8 %2717, i8* %SIL.i183, align 1
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2718, align 1
  %2719 = trunc i64 %2716 to i32
  %2720 = and i32 %2719, 255
  %2721 = call i32 @llvm.ctpop.i32(i32 %2720)
  %2722 = trunc i32 %2721 to i8
  %2723 = and i8 %2722, 1
  %2724 = xor i8 %2723, 1
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2724, i8* %2725, align 1
  %2726 = icmp eq i8 %2717, 0
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2727, i8* %2728, align 1
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2729, align 1
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2730, align 1
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2731, align 1
  store %struct.Memory* %loadMem_4097b2, %struct.Memory** %MEMORY
  %loadMem_4097b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 9
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %2738 = bitcast %union.anon* %2737 to %struct.anon.2*
  %SIL.i180 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2738, i32 0, i32 0
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 11
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RDI.i181 = bitcast %union.anon* %2741 to i64*
  %2742 = load i8, i8* %SIL.i180
  %2743 = zext i8 %2742 to i64
  %2744 = load i64, i64* %PC.i179
  %2745 = add i64 %2744, 4
  store i64 %2745, i64* %PC.i179
  %2746 = and i64 %2743, 255
  store i64 %2746, i64* %RDI.i181, align 8
  store %struct.Memory* %loadMem_4097b6, %struct.Memory** %MEMORY
  %loadMem_4097ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 11
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %EDI.i177 = bitcast %union.anon* %2752 to i32*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 5
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %RCX.i178
  %2757 = load i32, i32* %EDI.i177
  %2758 = zext i32 %2757 to i64
  %2759 = load i64, i64* %PC.i176
  %2760 = add i64 %2759, 2
  store i64 %2760, i64* %PC.i176
  %2761 = xor i64 %2758, %2756
  %2762 = trunc i64 %2761 to i32
  %2763 = and i64 %2761, 4294967295
  store i64 %2763, i64* %RCX.i178, align 8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2764, align 1
  %2765 = and i32 %2762, 255
  %2766 = call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2769, i8* %2770, align 1
  %2771 = icmp eq i32 %2762, 0
  %2772 = zext i1 %2771 to i8
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2772, i8* %2773, align 1
  %2774 = lshr i32 %2762, 31
  %2775 = trunc i32 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2775, i8* %2776, align 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2777, align 1
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2778, align 1
  store %struct.Memory* %loadMem_4097ba, %struct.Memory** %MEMORY
  %loadMem_4097bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 5
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %ECX.i175 = bitcast %union.anon* %2784 to i32*
  %2785 = load i32, i32* %ECX.i175
  %2786 = zext i32 %2785 to i64
  %2787 = load i64, i64* %PC.i174
  %2788 = add i64 %2787, 3
  store i64 %2788, i64* %PC.i174
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2789, align 1
  %2790 = and i32 %2785, 255
  %2791 = call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2795, align 1
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2796, align 1
  %2797 = icmp eq i32 %2785, 0
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2798, i8* %2799, align 1
  %2800 = lshr i32 %2785, 31
  %2801 = trunc i32 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2801, i8* %2802, align 1
  %2803 = lshr i32 %2785, 31
  %2804 = xor i32 %2800, %2803
  %2805 = add i32 %2804, %2803
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2807, i8* %2808, align 1
  store %struct.Memory* %loadMem_4097bc, %struct.Memory** %MEMORY
  %loadMem_4097bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %PC.i173
  %2813 = add i64 %2812, 18
  %2814 = load i64, i64* %PC.i173
  %2815 = add i64 %2814, 6
  %2816 = load i64, i64* %PC.i173
  %2817 = add i64 %2816, 6
  store i64 %2817, i64* %PC.i173
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2819 = load i8, i8* %2818, align 1
  store i8 %2819, i8* %BRANCH_TAKEN, align 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2821 = icmp ne i8 %2819, 0
  %2822 = select i1 %2821, i64 %2813, i64 %2815
  store i64 %2822, i64* %2820, align 8
  store %struct.Memory* %loadMem_4097bf, %struct.Memory** %MEMORY
  %loadBr_4097bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4097bf = icmp eq i8 %loadBr_4097bf, 1
  br i1 %cmpBr_4097bf, label %block_.L_4097d1, label %block_.L_4097c5

block_.L_4097c5:                                  ; preds = %block_409765, %block_.L_409731
  %loadMem_4097c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RBP.i172
  %2830 = sub i64 %2829, 4
  %2831 = load i64, i64* %PC.i171
  %2832 = add i64 %2831, 7
  store i64 %2832, i64* %PC.i171
  %2833 = inttoptr i64 %2830 to i32*
  store i32 0, i32* %2833
  store %struct.Memory* %loadMem_4097c5, %struct.Memory** %MEMORY
  %loadMem_4097cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %PC.i170
  %2838 = add i64 %2837, 332
  %2839 = load i64, i64* %PC.i170
  %2840 = add i64 %2839, 5
  store i64 %2840, i64* %PC.i170
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2838, i64* %2841, align 8
  store %struct.Memory* %loadMem_4097cc, %struct.Memory** %MEMORY
  br label %block_.L_409918

block_.L_4097d1:                                  ; preds = %block_409765, %block_40974b
  %loadMem_4097d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 1
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 15
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %RBP.i169
  %2852 = sub i64 %2851, 8
  %2853 = load i64, i64* %PC.i167
  %2854 = add i64 %2853, 3
  store i64 %2854, i64* %PC.i167
  %2855 = inttoptr i64 %2852 to i32*
  %2856 = load i32, i32* %2855
  %2857 = zext i32 %2856 to i64
  store i64 %2857, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_4097d1, %struct.Memory** %MEMORY
  %loadMem_4097d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 1
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RAX.i166
  %2865 = load i64, i64* %PC.i165
  %2866 = add i64 %2865, 3
  store i64 %2866, i64* %PC.i165
  %2867 = trunc i64 %2864 to i32
  %2868 = sub i32 %2867, 20
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RAX.i166, align 8
  %2870 = icmp ult i32 %2867, 20
  %2871 = zext i1 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2871, i8* %2872, align 1
  %2873 = and i32 %2868, 255
  %2874 = call i32 @llvm.ctpop.i32(i32 %2873)
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2877, i8* %2878, align 1
  %2879 = xor i64 20, %2864
  %2880 = trunc i64 %2879 to i32
  %2881 = xor i32 %2880, %2868
  %2882 = lshr i32 %2881, 4
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2884, i8* %2885, align 1
  %2886 = icmp eq i32 %2868, 0
  %2887 = zext i1 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2887, i8* %2888, align 1
  %2889 = lshr i32 %2868, 31
  %2890 = trunc i32 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2890, i8* %2891, align 1
  %2892 = lshr i32 %2867, 31
  %2893 = xor i32 %2889, %2892
  %2894 = add i32 %2893, %2892
  %2895 = icmp eq i32 %2894, 2
  %2896 = zext i1 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2896, i8* %2897, align 1
  store %struct.Memory* %loadMem_4097d4, %struct.Memory** %MEMORY
  %loadMem_4097d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 1
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %2903 to i32*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 5
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %2906 to i64*
  %2907 = load i32, i32* %EAX.i163
  %2908 = zext i32 %2907 to i64
  %2909 = load i64, i64* %PC.i162
  %2910 = add i64 %2909, 3
  store i64 %2910, i64* %PC.i162
  %2911 = shl i64 %2908, 32
  %2912 = ashr exact i64 %2911, 32
  store i64 %2912, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_4097d7, %struct.Memory** %MEMORY
  %loadMem_4097da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 5
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RCX.i161
  %2923 = add i64 %2922, 12099168
  %2924 = load i64, i64* %PC.i159
  %2925 = add i64 %2924, 8
  store i64 %2925, i64* %PC.i159
  %2926 = inttoptr i64 %2923 to i8*
  %2927 = load i8, i8* %2926
  %2928 = zext i8 %2927 to i64
  store i64 %2928, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_4097da, %struct.Memory** %MEMORY
  %loadMem_4097e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 1
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %2934 to i32*
  %2935 = load i32, i32* %EAX.i158
  %2936 = zext i32 %2935 to i64
  %2937 = load i64, i64* %PC.i157
  %2938 = add i64 %2937, 3
  store i64 %2938, i64* %PC.i157
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2939, align 1
  %2940 = and i32 %2935, 255
  %2941 = call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2944, i8* %2945, align 1
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2946, align 1
  %2947 = icmp eq i32 %2935, 0
  %2948 = zext i1 %2947 to i8
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2948, i8* %2949, align 1
  %2950 = lshr i32 %2935, 31
  %2951 = trunc i32 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2951, i8* %2952, align 1
  %2953 = lshr i32 %2935, 31
  %2954 = xor i32 %2950, %2953
  %2955 = add i32 %2954, %2953
  %2956 = icmp eq i32 %2955, 2
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2957, i8* %2958, align 1
  store %struct.Memory* %loadMem_4097e2, %struct.Memory** %MEMORY
  %loadMem_4097e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2961 to i64*
  %2962 = load i64, i64* %PC.i156
  %2963 = add i64 %2962, 128
  %2964 = load i64, i64* %PC.i156
  %2965 = add i64 %2964, 6
  %2966 = load i64, i64* %PC.i156
  %2967 = add i64 %2966, 6
  store i64 %2967, i64* %PC.i156
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2969 = load i8, i8* %2968, align 1
  store i8 %2969, i8* %BRANCH_TAKEN, align 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2971 = icmp ne i8 %2969, 0
  %2972 = select i1 %2971, i64 %2963, i64 %2965
  store i64 %2972, i64* %2970, align 8
  store %struct.Memory* %loadMem_4097e5, %struct.Memory** %MEMORY
  %loadBr_4097e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4097e5 = icmp eq i8 %loadBr_4097e5, 1
  br i1 %cmpBr_4097e5, label %block_.L_409865, label %block_4097eb

block_4097eb:                                     ; preds = %block_.L_4097d1
  %loadMem_4097eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 1
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 15
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %RBP.i155
  %2983 = sub i64 %2982, 8
  %2984 = load i64, i64* %PC.i153
  %2985 = add i64 %2984, 3
  store i64 %2985, i64* %PC.i153
  %2986 = inttoptr i64 %2983 to i32*
  %2987 = load i32, i32* %2986
  %2988 = zext i32 %2987 to i64
  store i64 %2988, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_4097eb, %struct.Memory** %MEMORY
  %loadMem_4097ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 1
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RAX.i152
  %2996 = load i64, i64* %PC.i151
  %2997 = add i64 %2996, 3
  store i64 %2997, i64* %PC.i151
  %2998 = trunc i64 %2995 to i32
  %2999 = sub i32 %2998, 20
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i152, align 8
  %3001 = icmp ult i32 %2998, 20
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3002, i8* %3003, align 1
  %3004 = and i32 %2999, 255
  %3005 = call i32 @llvm.ctpop.i32(i32 %3004)
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = xor i8 %3007, 1
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3008, i8* %3009, align 1
  %3010 = xor i64 20, %2995
  %3011 = trunc i64 %3010 to i32
  %3012 = xor i32 %3011, %2999
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3015, i8* %3016, align 1
  %3017 = icmp eq i32 %2999, 0
  %3018 = zext i1 %3017 to i8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3018, i8* %3019, align 1
  %3020 = lshr i32 %2999, 31
  %3021 = trunc i32 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3021, i8* %3022, align 1
  %3023 = lshr i32 %2998, 31
  %3024 = xor i32 %3020, %3023
  %3025 = add i32 %3024, %3023
  %3026 = icmp eq i32 %3025, 2
  %3027 = zext i1 %3026 to i8
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3027, i8* %3028, align 1
  store %struct.Memory* %loadMem_4097ee, %struct.Memory** %MEMORY
  %loadMem_4097f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %3034 to i32*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 5
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %3037 to i64*
  %3038 = load i32, i32* %EAX.i149
  %3039 = zext i32 %3038 to i64
  %3040 = load i64, i64* %PC.i148
  %3041 = add i64 %3040, 3
  store i64 %3041, i64* %PC.i148
  %3042 = shl i64 %3039, 32
  %3043 = ashr exact i64 %3042, 32
  store i64 %3043, i64* %RCX.i150, align 8
  store %struct.Memory* %loadMem_4097f1, %struct.Memory** %MEMORY
  %loadMem_4097f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 1
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 5
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RCX.i147
  %3054 = add i64 %3053, 12099168
  %3055 = load i64, i64* %PC.i145
  %3056 = add i64 %3055, 8
  store i64 %3056, i64* %PC.i145
  %3057 = inttoptr i64 %3054 to i8*
  %3058 = load i8, i8* %3057
  %3059 = zext i8 %3058 to i64
  store i64 %3059, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_4097f4, %struct.Memory** %MEMORY
  %loadMem_4097fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 1
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %3065 to i32*
  %3066 = load i32, i32* %EAX.i144
  %3067 = zext i32 %3066 to i64
  %3068 = load i64, i64* %PC.i143
  %3069 = add i64 %3068, 3
  store i64 %3069, i64* %PC.i143
  %3070 = sub i32 %3066, 3
  %3071 = icmp ult i32 %3066, 3
  %3072 = zext i1 %3071 to i8
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3072, i8* %3073, align 1
  %3074 = and i32 %3070, 255
  %3075 = call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3078, i8* %3079, align 1
  %3080 = xor i64 3, %3067
  %3081 = trunc i64 %3080 to i32
  %3082 = xor i32 %3081, %3070
  %3083 = lshr i32 %3082, 4
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3085, i8* %3086, align 1
  %3087 = icmp eq i32 %3070, 0
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3088, i8* %3089, align 1
  %3090 = lshr i32 %3070, 31
  %3091 = trunc i32 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3091, i8* %3092, align 1
  %3093 = lshr i32 %3066, 31
  %3094 = xor i32 %3090, %3093
  %3095 = add i32 %3094, %3093
  %3096 = icmp eq i32 %3095, 2
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3097, i8* %3098, align 1
  store %struct.Memory* %loadMem_4097fc, %struct.Memory** %MEMORY
  %loadMem_4097ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %PC.i142
  %3103 = add i64 %3102, 114
  %3104 = load i64, i64* %PC.i142
  %3105 = add i64 %3104, 6
  %3106 = load i64, i64* %PC.i142
  %3107 = add i64 %3106, 6
  store i64 %3107, i64* %PC.i142
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3109 = load i8, i8* %3108, align 1
  store i8 %3109, i8* %BRANCH_TAKEN, align 1
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3111 = icmp ne i8 %3109, 0
  %3112 = select i1 %3111, i64 %3103, i64 %3105
  store i64 %3112, i64* %3110, align 8
  store %struct.Memory* %loadMem_4097ff, %struct.Memory** %MEMORY
  %loadBr_4097ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4097ff = icmp eq i8 %loadBr_4097ff, 1
  br i1 %cmpBr_4097ff, label %block_.L_409871, label %block_409805

block_409805:                                     ; preds = %block_4097eb
  %loadMem_409805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 1
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %PC.i140
  %3120 = add i64 %3119, 10
  store i64 %3120, i64* %PC.i140
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_409805, %struct.Memory** %MEMORY
  %loadMem_40980f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 5
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 15
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3129 to i64*
  %3130 = load i64, i64* %RBP.i139
  %3131 = sub i64 %3130, 8
  %3132 = load i64, i64* %PC.i137
  %3133 = add i64 %3132, 3
  store i64 %3133, i64* %PC.i137
  %3134 = inttoptr i64 %3131 to i32*
  %3135 = load i32, i32* %3134
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_40980f, %struct.Memory** %MEMORY
  %loadMem_409812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 5
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %RCX.i136
  %3144 = load i64, i64* %PC.i135
  %3145 = add i64 %3144, 3
  store i64 %3145, i64* %PC.i135
  %3146 = trunc i64 %3143 to i32
  %3147 = sub i32 %3146, 20
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RCX.i136, align 8
  %3149 = icmp ult i32 %3146, 20
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3150, i8* %3151, align 1
  %3152 = and i32 %3147, 255
  %3153 = call i32 @llvm.ctpop.i32(i32 %3152)
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  %3156 = xor i8 %3155, 1
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3156, i8* %3157, align 1
  %3158 = xor i64 20, %3143
  %3159 = trunc i64 %3158 to i32
  %3160 = xor i32 %3159, %3147
  %3161 = lshr i32 %3160, 4
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3163, i8* %3164, align 1
  %3165 = icmp eq i32 %3147, 0
  %3166 = zext i1 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3166, i8* %3167, align 1
  %3168 = lshr i32 %3147, 31
  %3169 = trunc i32 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3169, i8* %3170, align 1
  %3171 = lshr i32 %3146, 31
  %3172 = xor i32 %3168, %3171
  %3173 = add i32 %3172, %3171
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3175, i8* %3176, align 1
  store %struct.Memory* %loadMem_409812, %struct.Memory** %MEMORY
  %loadMem_409815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %ECX.i133 = bitcast %union.anon* %3182 to i32*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 7
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %3185 to i64*
  %3186 = load i32, i32* %ECX.i133
  %3187 = zext i32 %3186 to i64
  %3188 = load i64, i64* %PC.i132
  %3189 = add i64 %3188, 3
  store i64 %3189, i64* %PC.i132
  %3190 = shl i64 %3187, 32
  %3191 = ashr exact i64 %3190, 32
  store i64 %3191, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_409815, %struct.Memory** %MEMORY
  %loadMem_409818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 5
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 7
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RDX.i131
  %3202 = add i64 %3201, 12099168
  %3203 = load i64, i64* %PC.i129
  %3204 = add i64 %3203, 8
  store i64 %3204, i64* %PC.i129
  %3205 = inttoptr i64 %3202 to i8*
  %3206 = load i8, i8* %3205
  %3207 = zext i8 %3206 to i64
  store i64 %3207, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_409818, %struct.Memory** %MEMORY
  %loadMem_409820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %ECX.i127 = bitcast %union.anon* %3213 to i32*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %3216 to i64*
  %3217 = load i32, i32* %ECX.i127
  %3218 = zext i32 %3217 to i64
  %3219 = load i64, i64* %RBP.i128
  %3220 = sub i64 %3219, 12
  %3221 = load i64, i64* %PC.i126
  %3222 = add i64 %3221, 3
  store i64 %3222, i64* %PC.i126
  %3223 = inttoptr i64 %3220 to i32*
  %3224 = load i32, i32* %3223
  %3225 = sub i32 %3217, %3224
  %3226 = icmp ult i32 %3217, %3224
  %3227 = zext i1 %3226 to i8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3227, i8* %3228, align 1
  %3229 = and i32 %3225, 255
  %3230 = call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3233, i8* %3234, align 1
  %3235 = xor i32 %3224, %3217
  %3236 = xor i32 %3235, %3225
  %3237 = lshr i32 %3236, 4
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3239, i8* %3240, align 1
  %3241 = icmp eq i32 %3225, 0
  %3242 = zext i1 %3241 to i8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3242, i8* %3243, align 1
  %3244 = lshr i32 %3225, 31
  %3245 = trunc i32 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3245, i8* %3246, align 1
  %3247 = lshr i32 %3217, 31
  %3248 = lshr i32 %3224, 31
  %3249 = xor i32 %3248, %3247
  %3250 = xor i32 %3244, %3247
  %3251 = add i32 %3250, %3249
  %3252 = icmp eq i32 %3251, 2
  %3253 = zext i1 %3252 to i8
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3253, i8* %3254, align 1
  store %struct.Memory* %loadMem_409820, %struct.Memory** %MEMORY
  %loadMem_409823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 9
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %3261 = bitcast %union.anon* %3260 to %struct.anon.2*
  %SIL.i125 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3261, i32 0, i32 0
  %3262 = load i64, i64* %PC.i124
  %3263 = add i64 %3262, 4
  store i64 %3263, i64* %PC.i124
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3265 = load i8, i8* %3264, align 1
  store i8 %3265, i8* %SIL.i125, align 1
  store %struct.Memory* %loadMem_409823, %struct.Memory** %MEMORY
  %loadMem_409827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 33
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 9
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %3272 = bitcast %union.anon* %3271 to %struct.anon.2*
  %SIL.i123 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3272, i32 0, i32 0
  %3273 = load i8, i8* %SIL.i123
  %3274 = zext i8 %3273 to i64
  %3275 = load i64, i64* %PC.i122
  %3276 = add i64 %3275, 4
  store i64 %3276, i64* %PC.i122
  %3277 = and i64 1, %3274
  %3278 = trunc i64 %3277 to i8
  store i8 %3278, i8* %SIL.i123, align 1
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3279, align 1
  %3280 = trunc i64 %3277 to i32
  %3281 = and i32 %3280, 255
  %3282 = call i32 @llvm.ctpop.i32(i32 %3281)
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = xor i8 %3284, 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3285, i8* %3286, align 1
  %3287 = icmp eq i8 %3278, 0
  %3288 = zext i1 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3288, i8* %3289, align 1
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3290, align 1
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3291, align 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3292, align 1
  store %struct.Memory* %loadMem_409827, %struct.Memory** %MEMORY
  %loadMem_40982b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 9
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %3299 = bitcast %union.anon* %3298 to %struct.anon.2*
  %SIL.i120 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3299, i32 0, i32 0
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 5
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %3302 to i64*
  %3303 = load i8, i8* %SIL.i120
  %3304 = zext i8 %3303 to i64
  %3305 = load i64, i64* %PC.i119
  %3306 = add i64 %3305, 4
  store i64 %3306, i64* %PC.i119
  %3307 = and i64 %3304, 255
  store i64 %3307, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_40982b, %struct.Memory** %MEMORY
  %loadMem_40982f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 11
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RDI.i117 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 15
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %RBP.i118
  %3318 = sub i64 %3317, 8
  %3319 = load i64, i64* %PC.i116
  %3320 = add i64 %3319, 3
  store i64 %3320, i64* %PC.i116
  %3321 = inttoptr i64 %3318 to i32*
  %3322 = load i32, i32* %3321
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RDI.i117, align 8
  store %struct.Memory* %loadMem_40982f, %struct.Memory** %MEMORY
  %loadMem_409832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 11
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RDI.i115 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RDI.i115
  %3331 = load i64, i64* %PC.i114
  %3332 = add i64 %3331, 3
  store i64 %3332, i64* %PC.i114
  %3333 = trunc i64 %3330 to i32
  %3334 = sub i32 %3333, 20
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RDI.i115, align 8
  %3336 = icmp ult i32 %3333, 20
  %3337 = zext i1 %3336 to i8
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3337, i8* %3338, align 1
  %3339 = and i32 %3334, 255
  %3340 = call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3343, i8* %3344, align 1
  %3345 = xor i64 20, %3330
  %3346 = trunc i64 %3345 to i32
  %3347 = xor i32 %3346, %3334
  %3348 = lshr i32 %3347, 4
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3350, i8* %3351, align 1
  %3352 = icmp eq i32 %3334, 0
  %3353 = zext i1 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3353, i8* %3354, align 1
  %3355 = lshr i32 %3334, 31
  %3356 = trunc i32 %3355 to i8
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3356, i8* %3357, align 1
  %3358 = lshr i32 %3333, 31
  %3359 = xor i32 %3355, %3358
  %3360 = add i32 %3359, %3358
  %3361 = icmp eq i32 %3360, 2
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3362, i8* %3363, align 1
  store %struct.Memory* %loadMem_409832, %struct.Memory** %MEMORY
  %loadMem_409835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 11
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %EDI.i112 = bitcast %union.anon* %3369 to i32*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 7
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %3372 to i64*
  %3373 = load i32, i32* %EDI.i112
  %3374 = zext i32 %3373 to i64
  %3375 = load i64, i64* %PC.i111
  %3376 = add i64 %3375, 3
  store i64 %3376, i64* %PC.i111
  %3377 = shl i64 %3374, 32
  %3378 = ashr exact i64 %3377, 32
  store i64 %3378, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_409835, %struct.Memory** %MEMORY
  %loadMem_409838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 7
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %RDX.i110
  %3386 = mul i64 %3385, 4
  %3387 = add i64 %3386, 11187184
  %3388 = load i64, i64* %PC.i109
  %3389 = add i64 %3388, 8
  store i64 %3389, i64* %PC.i109
  %3390 = inttoptr i64 %3387 to i32*
  %3391 = load i32, i32* %3390
  %3392 = sext i32 %3391 to i64
  store i64 %3392, i64* %RDX.i110, align 8
  store %struct.Memory* %loadMem_409838, %struct.Memory** %MEMORY
  %loadMem_409840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 7
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %RDX.i108
  %3400 = load i64, i64* %PC.i107
  %3401 = add i64 %3400, 7
  store i64 %3401, i64* %PC.i107
  %3402 = sext i64 %3399 to i128
  %3403 = and i128 %3402, -18446744073709551616
  %3404 = zext i64 %3399 to i128
  %3405 = or i128 %3403, %3404
  %3406 = mul i128 744, %3405
  %3407 = trunc i128 %3406 to i64
  store i64 %3407, i64* %RDX.i108, align 8
  %3408 = sext i64 %3407 to i128
  %3409 = icmp ne i128 %3408, %3406
  %3410 = zext i1 %3409 to i8
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3410, i8* %3411, align 1
  %3412 = trunc i128 %3406 to i32
  %3413 = and i32 %3412, 255
  %3414 = call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3417, i8* %3418, align 1
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3419, align 1
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3420, align 1
  %3421 = lshr i64 %3407, 63
  %3422 = trunc i64 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3422, i8* %3423, align 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3410, i8* %3424, align 1
  store %struct.Memory* %loadMem_409840, %struct.Memory** %MEMORY
  %loadMem_409847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 1
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 7
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %RAX.i105
  %3435 = load i64, i64* %RDX.i106
  %3436 = load i64, i64* %PC.i104
  %3437 = add i64 %3436, 3
  store i64 %3437, i64* %PC.i104
  %3438 = add i64 %3435, %3434
  store i64 %3438, i64* %RAX.i105, align 8
  %3439 = icmp ult i64 %3438, %3434
  %3440 = icmp ult i64 %3438, %3435
  %3441 = or i1 %3439, %3440
  %3442 = zext i1 %3441 to i8
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3442, i8* %3443, align 1
  %3444 = trunc i64 %3438 to i32
  %3445 = and i32 %3444, 255
  %3446 = call i32 @llvm.ctpop.i32(i32 %3445)
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  %3449 = xor i8 %3448, 1
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3449, i8* %3450, align 1
  %3451 = xor i64 %3435, %3434
  %3452 = xor i64 %3451, %3438
  %3453 = lshr i64 %3452, 4
  %3454 = trunc i64 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3455, i8* %3456, align 1
  %3457 = icmp eq i64 %3438, 0
  %3458 = zext i1 %3457 to i8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3458, i8* %3459, align 1
  %3460 = lshr i64 %3438, 63
  %3461 = trunc i64 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3461, i8* %3462, align 1
  %3463 = lshr i64 %3434, 63
  %3464 = lshr i64 %3435, 63
  %3465 = xor i64 %3460, %3463
  %3466 = xor i64 %3460, %3464
  %3467 = add i64 %3465, %3466
  %3468 = icmp eq i64 %3467, 2
  %3469 = zext i1 %3468 to i8
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3469, i8* %3470, align 1
  store %struct.Memory* %loadMem_409847, %struct.Memory** %MEMORY
  %loadMem_40984a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 33
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 1
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %3476 to i64*
  %3477 = load i64, i64* %RAX.i103
  %3478 = add i64 %3477, 12
  %3479 = load i64, i64* %PC.i102
  %3480 = add i64 %3479, 4
  store i64 %3480, i64* %PC.i102
  %3481 = inttoptr i64 %3478 to i32*
  %3482 = load i32, i32* %3481
  %3483 = sub i32 %3482, 1
  %3484 = icmp ult i32 %3482, 1
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3485, i8* %3486, align 1
  %3487 = and i32 %3483, 255
  %3488 = call i32 @llvm.ctpop.i32(i32 %3487)
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  %3491 = xor i8 %3490, 1
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3491, i8* %3492, align 1
  %3493 = xor i32 %3482, 1
  %3494 = xor i32 %3493, %3483
  %3495 = lshr i32 %3494, 4
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3497, i8* %3498, align 1
  %3499 = icmp eq i32 %3483, 0
  %3500 = zext i1 %3499 to i8
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3500, i8* %3501, align 1
  %3502 = lshr i32 %3483, 31
  %3503 = trunc i32 %3502 to i8
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3503, i8* %3504, align 1
  %3505 = lshr i32 %3482, 31
  %3506 = xor i32 %3502, %3505
  %3507 = add i32 %3506, %3505
  %3508 = icmp eq i32 %3507, 2
  %3509 = zext i1 %3508 to i8
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3509, i8* %3510, align 1
  store %struct.Memory* %loadMem_40984a, %struct.Memory** %MEMORY
  %loadMem_40984e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 9
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %3517 = bitcast %union.anon* %3516 to %struct.anon.2*
  %SIL.i101 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3517, i32 0, i32 0
  %3518 = load i64, i64* %PC.i100
  %3519 = add i64 %3518, 4
  store i64 %3519, i64* %PC.i100
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3521 = load i8, i8* %3520, align 1
  store i8 %3521, i8* %SIL.i101, align 1
  store %struct.Memory* %loadMem_40984e, %struct.Memory** %MEMORY
  %loadMem_409852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 9
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %3528 = bitcast %union.anon* %3527 to %struct.anon.2*
  %SIL.i99 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3528, i32 0, i32 0
  %3529 = load i8, i8* %SIL.i99
  %3530 = zext i8 %3529 to i64
  %3531 = load i64, i64* %PC.i98
  %3532 = add i64 %3531, 4
  store i64 %3532, i64* %PC.i98
  %3533 = and i64 1, %3530
  %3534 = trunc i64 %3533 to i8
  store i8 %3534, i8* %SIL.i99, align 1
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3535, align 1
  %3536 = trunc i64 %3533 to i32
  %3537 = and i32 %3536, 255
  %3538 = call i32 @llvm.ctpop.i32(i32 %3537)
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  %3541 = xor i8 %3540, 1
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3541, i8* %3542, align 1
  %3543 = icmp eq i8 %3534, 0
  %3544 = zext i1 %3543 to i8
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3544, i8* %3545, align 1
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3546, align 1
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3547, align 1
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3548, align 1
  store %struct.Memory* %loadMem_409852, %struct.Memory** %MEMORY
  %loadMem_409856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 9
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %3555 = bitcast %union.anon* %3554 to %struct.anon.2*
  %SIL.i96 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3555, i32 0, i32 0
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 11
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %3558 to i64*
  %3559 = load i8, i8* %SIL.i96
  %3560 = zext i8 %3559 to i64
  %3561 = load i64, i64* %PC.i95
  %3562 = add i64 %3561, 4
  store i64 %3562, i64* %PC.i95
  %3563 = and i64 %3560, 255
  store i64 %3563, i64* %RDI.i97, align 8
  store %struct.Memory* %loadMem_409856, %struct.Memory** %MEMORY
  %loadMem_40985a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 11
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %EDI.i93 = bitcast %union.anon* %3569 to i32*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 5
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %3572 to i64*
  %3573 = load i64, i64* %RCX.i94
  %3574 = load i32, i32* %EDI.i93
  %3575 = zext i32 %3574 to i64
  %3576 = load i64, i64* %PC.i92
  %3577 = add i64 %3576, 2
  store i64 %3577, i64* %PC.i92
  %3578 = xor i64 %3575, %3573
  %3579 = trunc i64 %3578 to i32
  %3580 = and i64 %3578, 4294967295
  store i64 %3580, i64* %RCX.i94, align 8
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3581, align 1
  %3582 = and i32 %3579, 255
  %3583 = call i32 @llvm.ctpop.i32(i32 %3582)
  %3584 = trunc i32 %3583 to i8
  %3585 = and i8 %3584, 1
  %3586 = xor i8 %3585, 1
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3586, i8* %3587, align 1
  %3588 = icmp eq i32 %3579, 0
  %3589 = zext i1 %3588 to i8
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3589, i8* %3590, align 1
  %3591 = lshr i32 %3579, 31
  %3592 = trunc i32 %3591 to i8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3592, i8* %3593, align 1
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3594, align 1
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3595, align 1
  store %struct.Memory* %loadMem_40985a, %struct.Memory** %MEMORY
  %loadMem_40985c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 33
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 5
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %ECX.i91 = bitcast %union.anon* %3601 to i32*
  %3602 = load i32, i32* %ECX.i91
  %3603 = zext i32 %3602 to i64
  %3604 = load i64, i64* %PC.i90
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC.i90
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3606, align 1
  %3607 = and i32 %3602, 255
  %3608 = call i32 @llvm.ctpop.i32(i32 %3607)
  %3609 = trunc i32 %3608 to i8
  %3610 = and i8 %3609, 1
  %3611 = xor i8 %3610, 1
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3611, i8* %3612, align 1
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3613, align 1
  %3614 = icmp eq i32 %3602, 0
  %3615 = zext i1 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3602, 31
  %3618 = trunc i32 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3618, i8* %3619, align 1
  %3620 = lshr i32 %3602, 31
  %3621 = xor i32 %3617, %3620
  %3622 = add i32 %3621, %3620
  %3623 = icmp eq i32 %3622, 2
  %3624 = zext i1 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3624, i8* %3625, align 1
  store %struct.Memory* %loadMem_40985c, %struct.Memory** %MEMORY
  %loadMem_40985f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %PC.i89
  %3630 = add i64 %3629, 18
  %3631 = load i64, i64* %PC.i89
  %3632 = add i64 %3631, 6
  %3633 = load i64, i64* %PC.i89
  %3634 = add i64 %3633, 6
  store i64 %3634, i64* %PC.i89
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3636 = load i8, i8* %3635, align 1
  store i8 %3636, i8* %BRANCH_TAKEN, align 1
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3638 = icmp ne i8 %3636, 0
  %3639 = select i1 %3638, i64 %3630, i64 %3632
  store i64 %3639, i64* %3637, align 8
  store %struct.Memory* %loadMem_40985f, %struct.Memory** %MEMORY
  %loadBr_40985f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40985f = icmp eq i8 %loadBr_40985f, 1
  br i1 %cmpBr_40985f, label %block_.L_409871, label %block_.L_409865

block_.L_409865:                                  ; preds = %block_409805, %block_.L_4097d1
  %loadMem_409865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 33
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 15
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3645 to i64*
  %3646 = load i64, i64* %RBP.i88
  %3647 = sub i64 %3646, 4
  %3648 = load i64, i64* %PC.i87
  %3649 = add i64 %3648, 7
  store i64 %3649, i64* %PC.i87
  %3650 = inttoptr i64 %3647 to i32*
  store i32 0, i32* %3650
  store %struct.Memory* %loadMem_409865, %struct.Memory** %MEMORY
  %loadMem_40986c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3653 to i64*
  %3654 = load i64, i64* %PC.i86
  %3655 = add i64 %3654, 172
  %3656 = load i64, i64* %PC.i86
  %3657 = add i64 %3656, 5
  store i64 %3657, i64* %PC.i86
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3655, i64* %3658, align 8
  store %struct.Memory* %loadMem_40986c, %struct.Memory** %MEMORY
  br label %block_.L_409918

block_.L_409871:                                  ; preds = %block_409805, %block_4097eb
  %loadMem_409871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 1
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 15
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RBP.i85
  %3669 = sub i64 %3668, 8
  %3670 = load i64, i64* %PC.i83
  %3671 = add i64 %3670, 3
  store i64 %3671, i64* %PC.i83
  %3672 = inttoptr i64 %3669 to i32*
  %3673 = load i32, i32* %3672
  %3674 = zext i32 %3673 to i64
  store i64 %3674, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_409871, %struct.Memory** %MEMORY
  %loadMem_409874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 1
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %RAX.i82
  %3682 = load i64, i64* %PC.i81
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC.i81
  %3684 = trunc i64 %3681 to i32
  %3685 = add i32 1, %3684
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RAX.i82, align 8
  %3687 = icmp ult i32 %3685, %3684
  %3688 = icmp ult i32 %3685, 1
  %3689 = or i1 %3687, %3688
  %3690 = zext i1 %3689 to i8
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3690, i8* %3691, align 1
  %3692 = and i32 %3685, 255
  %3693 = call i32 @llvm.ctpop.i32(i32 %3692)
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = xor i8 %3695, 1
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3696, i8* %3697, align 1
  %3698 = xor i64 1, %3681
  %3699 = trunc i64 %3698 to i32
  %3700 = xor i32 %3699, %3685
  %3701 = lshr i32 %3700, 4
  %3702 = trunc i32 %3701 to i8
  %3703 = and i8 %3702, 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3703, i8* %3704, align 1
  %3705 = icmp eq i32 %3685, 0
  %3706 = zext i1 %3705 to i8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3706, i8* %3707, align 1
  %3708 = lshr i32 %3685, 31
  %3709 = trunc i32 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3709, i8* %3710, align 1
  %3711 = lshr i32 %3684, 31
  %3712 = xor i32 %3708, %3711
  %3713 = add i32 %3712, %3708
  %3714 = icmp eq i32 %3713, 2
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3715, i8* %3716, align 1
  store %struct.Memory* %loadMem_409874, %struct.Memory** %MEMORY
  %loadMem_409877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 33
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3719 to i64*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 1
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %EAX.i79 = bitcast %union.anon* %3722 to i32*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 5
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3725 to i64*
  %3726 = load i32, i32* %EAX.i79
  %3727 = zext i32 %3726 to i64
  %3728 = load i64, i64* %PC.i78
  %3729 = add i64 %3728, 3
  store i64 %3729, i64* %PC.i78
  %3730 = shl i64 %3727, 32
  %3731 = ashr exact i64 %3730, 32
  store i64 %3731, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_409877, %struct.Memory** %MEMORY
  %loadMem_40987a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 1
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 5
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %RCX.i77
  %3742 = add i64 %3741, 12099168
  %3743 = load i64, i64* %PC.i75
  %3744 = add i64 %3743, 8
  store i64 %3744, i64* %PC.i75
  %3745 = inttoptr i64 %3742 to i8*
  %3746 = load i8, i8* %3745
  %3747 = zext i8 %3746 to i64
  store i64 %3747, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_40987a, %struct.Memory** %MEMORY
  %loadMem_409882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 33
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 1
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %3753 to i32*
  %3754 = load i32, i32* %EAX.i74
  %3755 = zext i32 %3754 to i64
  %3756 = load i64, i64* %PC.i73
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %PC.i73
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3758, align 1
  %3759 = and i32 %3754, 255
  %3760 = call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3763, i8* %3764, align 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3765, align 1
  %3766 = icmp eq i32 %3754, 0
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3767, i8* %3768, align 1
  %3769 = lshr i32 %3754, 31
  %3770 = trunc i32 %3769 to i8
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3770, i8* %3771, align 1
  %3772 = lshr i32 %3754, 31
  %3773 = xor i32 %3769, %3772
  %3774 = add i32 %3773, %3772
  %3775 = icmp eq i32 %3774, 2
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3776, i8* %3777, align 1
  store %struct.Memory* %loadMem_409882, %struct.Memory** %MEMORY
  %loadMem_409885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %PC.i72
  %3782 = add i64 %3781, 128
  %3783 = load i64, i64* %PC.i72
  %3784 = add i64 %3783, 6
  %3785 = load i64, i64* %PC.i72
  %3786 = add i64 %3785, 6
  store i64 %3786, i64* %PC.i72
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3788 = load i8, i8* %3787, align 1
  store i8 %3788, i8* %BRANCH_TAKEN, align 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3790 = icmp ne i8 %3788, 0
  %3791 = select i1 %3790, i64 %3782, i64 %3784
  store i64 %3791, i64* %3789, align 8
  store %struct.Memory* %loadMem_409885, %struct.Memory** %MEMORY
  %loadBr_409885 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409885 = icmp eq i8 %loadBr_409885, 1
  br i1 %cmpBr_409885, label %block_.L_409905, label %block_40988b

block_40988b:                                     ; preds = %block_.L_409871
  %loadMem_40988b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 1
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 15
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3800 to i64*
  %3801 = load i64, i64* %RBP.i71
  %3802 = sub i64 %3801, 8
  %3803 = load i64, i64* %PC.i69
  %3804 = add i64 %3803, 3
  store i64 %3804, i64* %PC.i69
  %3805 = inttoptr i64 %3802 to i32*
  %3806 = load i32, i32* %3805
  %3807 = zext i32 %3806 to i64
  store i64 %3807, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_40988b, %struct.Memory** %MEMORY
  %loadMem_40988e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 1
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %RAX.i68
  %3815 = load i64, i64* %PC.i67
  %3816 = add i64 %3815, 3
  store i64 %3816, i64* %PC.i67
  %3817 = trunc i64 %3814 to i32
  %3818 = add i32 1, %3817
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RAX.i68, align 8
  %3820 = icmp ult i32 %3818, %3817
  %3821 = icmp ult i32 %3818, 1
  %3822 = or i1 %3820, %3821
  %3823 = zext i1 %3822 to i8
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3823, i8* %3824, align 1
  %3825 = and i32 %3818, 255
  %3826 = call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3829, i8* %3830, align 1
  %3831 = xor i64 1, %3814
  %3832 = trunc i64 %3831 to i32
  %3833 = xor i32 %3832, %3818
  %3834 = lshr i32 %3833, 4
  %3835 = trunc i32 %3834 to i8
  %3836 = and i8 %3835, 1
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3836, i8* %3837, align 1
  %3838 = icmp eq i32 %3818, 0
  %3839 = zext i1 %3838 to i8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3839, i8* %3840, align 1
  %3841 = lshr i32 %3818, 31
  %3842 = trunc i32 %3841 to i8
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3842, i8* %3843, align 1
  %3844 = lshr i32 %3817, 31
  %3845 = xor i32 %3841, %3844
  %3846 = add i32 %3845, %3841
  %3847 = icmp eq i32 %3846, 2
  %3848 = zext i1 %3847 to i8
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3848, i8* %3849, align 1
  store %struct.Memory* %loadMem_40988e, %struct.Memory** %MEMORY
  %loadMem_409891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 1
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %3855 to i32*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 5
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %3858 to i64*
  %3859 = load i32, i32* %EAX.i65
  %3860 = zext i32 %3859 to i64
  %3861 = load i64, i64* %PC.i64
  %3862 = add i64 %3861, 3
  store i64 %3862, i64* %PC.i64
  %3863 = shl i64 %3860, 32
  %3864 = ashr exact i64 %3863, 32
  store i64 %3864, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_409891, %struct.Memory** %MEMORY
  %loadMem_409894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 1
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 5
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %RCX.i63
  %3875 = add i64 %3874, 12099168
  %3876 = load i64, i64* %PC.i61
  %3877 = add i64 %3876, 8
  store i64 %3877, i64* %PC.i61
  %3878 = inttoptr i64 %3875 to i8*
  %3879 = load i8, i8* %3878
  %3880 = zext i8 %3879 to i64
  store i64 %3880, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_409894, %struct.Memory** %MEMORY
  %loadMem_40989c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 1
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3886 to i32*
  %3887 = load i32, i32* %EAX.i
  %3888 = zext i32 %3887 to i64
  %3889 = load i64, i64* %PC.i60
  %3890 = add i64 %3889, 3
  store i64 %3890, i64* %PC.i60
  %3891 = sub i32 %3887, 3
  %3892 = icmp ult i32 %3887, 3
  %3893 = zext i1 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3893, i8* %3894, align 1
  %3895 = and i32 %3891, 255
  %3896 = call i32 @llvm.ctpop.i32(i32 %3895)
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3899, i8* %3900, align 1
  %3901 = xor i64 3, %3888
  %3902 = trunc i64 %3901 to i32
  %3903 = xor i32 %3902, %3891
  %3904 = lshr i32 %3903, 4
  %3905 = trunc i32 %3904 to i8
  %3906 = and i8 %3905, 1
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3906, i8* %3907, align 1
  %3908 = icmp eq i32 %3891, 0
  %3909 = zext i1 %3908 to i8
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3909, i8* %3910, align 1
  %3911 = lshr i32 %3891, 31
  %3912 = trunc i32 %3911 to i8
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3912, i8* %3913, align 1
  %3914 = lshr i32 %3887, 31
  %3915 = xor i32 %3911, %3914
  %3916 = add i32 %3915, %3914
  %3917 = icmp eq i32 %3916, 2
  %3918 = zext i1 %3917 to i8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3918, i8* %3919, align 1
  store %struct.Memory* %loadMem_40989c, %struct.Memory** %MEMORY
  %loadMem_40989f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3922 to i64*
  %3923 = load i64, i64* %PC.i59
  %3924 = add i64 %3923, 114
  %3925 = load i64, i64* %PC.i59
  %3926 = add i64 %3925, 6
  %3927 = load i64, i64* %PC.i59
  %3928 = add i64 %3927, 6
  store i64 %3928, i64* %PC.i59
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3930 = load i8, i8* %3929, align 1
  store i8 %3930, i8* %BRANCH_TAKEN, align 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3932 = icmp ne i8 %3930, 0
  %3933 = select i1 %3932, i64 %3924, i64 %3926
  store i64 %3933, i64* %3931, align 8
  store %struct.Memory* %loadMem_40989f, %struct.Memory** %MEMORY
  %loadBr_40989f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40989f = icmp eq i8 %loadBr_40989f, 1
  br i1 %cmpBr_40989f, label %block_.L_409911, label %block_4098a5

block_4098a5:                                     ; preds = %block_40988b
  %loadMem_4098a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 1
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %PC.i57
  %3941 = add i64 %3940, 10
  store i64 %3941, i64* %PC.i57
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_4098a5, %struct.Memory** %MEMORY
  %loadMem_4098af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 5
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 15
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %RBP.i56
  %3952 = sub i64 %3951, 8
  %3953 = load i64, i64* %PC.i54
  %3954 = add i64 %3953, 3
  store i64 %3954, i64* %PC.i54
  %3955 = inttoptr i64 %3952 to i32*
  %3956 = load i32, i32* %3955
  %3957 = zext i32 %3956 to i64
  store i64 %3957, i64* %RCX.i55, align 8
  store %struct.Memory* %loadMem_4098af, %struct.Memory** %MEMORY
  %loadMem_4098b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 5
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %RCX.i53
  %3965 = load i64, i64* %PC.i52
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %PC.i52
  %3967 = trunc i64 %3964 to i32
  %3968 = add i32 1, %3967
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RCX.i53, align 8
  %3970 = icmp ult i32 %3968, %3967
  %3971 = icmp ult i32 %3968, 1
  %3972 = or i1 %3970, %3971
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3973, i8* %3974, align 1
  %3975 = and i32 %3968, 255
  %3976 = call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3979, i8* %3980, align 1
  %3981 = xor i64 1, %3964
  %3982 = trunc i64 %3981 to i32
  %3983 = xor i32 %3982, %3968
  %3984 = lshr i32 %3983, 4
  %3985 = trunc i32 %3984 to i8
  %3986 = and i8 %3985, 1
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3986, i8* %3987, align 1
  %3988 = icmp eq i32 %3968, 0
  %3989 = zext i1 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3989, i8* %3990, align 1
  %3991 = lshr i32 %3968, 31
  %3992 = trunc i32 %3991 to i8
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3992, i8* %3993, align 1
  %3994 = lshr i32 %3967, 31
  %3995 = xor i32 %3991, %3994
  %3996 = add i32 %3995, %3991
  %3997 = icmp eq i32 %3996, 2
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3998, i8* %3999, align 1
  store %struct.Memory* %loadMem_4098b2, %struct.Memory** %MEMORY
  %loadMem_4098b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 33
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 5
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %ECX.i50 = bitcast %union.anon* %4005 to i32*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 7
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %4008 to i64*
  %4009 = load i32, i32* %ECX.i50
  %4010 = zext i32 %4009 to i64
  %4011 = load i64, i64* %PC.i49
  %4012 = add i64 %4011, 3
  store i64 %4012, i64* %PC.i49
  %4013 = shl i64 %4010, 32
  %4014 = ashr exact i64 %4013, 32
  store i64 %4014, i64* %RDX.i51, align 8
  store %struct.Memory* %loadMem_4098b5, %struct.Memory** %MEMORY
  %loadMem_4098b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 5
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 7
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RDX.i48 = bitcast %union.anon* %4023 to i64*
  %4024 = load i64, i64* %RDX.i48
  %4025 = add i64 %4024, 12099168
  %4026 = load i64, i64* %PC.i46
  %4027 = add i64 %4026, 8
  store i64 %4027, i64* %PC.i46
  %4028 = inttoptr i64 %4025 to i8*
  %4029 = load i8, i8* %4028
  %4030 = zext i8 %4029 to i64
  store i64 %4030, i64* %RCX.i47, align 8
  store %struct.Memory* %loadMem_4098b8, %struct.Memory** %MEMORY
  %loadMem_4098c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 33
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 5
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %ECX.i44 = bitcast %union.anon* %4036 to i32*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 15
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %4039 to i64*
  %4040 = load i32, i32* %ECX.i44
  %4041 = zext i32 %4040 to i64
  %4042 = load i64, i64* %RBP.i45
  %4043 = sub i64 %4042, 12
  %4044 = load i64, i64* %PC.i43
  %4045 = add i64 %4044, 3
  store i64 %4045, i64* %PC.i43
  %4046 = inttoptr i64 %4043 to i32*
  %4047 = load i32, i32* %4046
  %4048 = sub i32 %4040, %4047
  %4049 = icmp ult i32 %4040, %4047
  %4050 = zext i1 %4049 to i8
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4050, i8* %4051, align 1
  %4052 = and i32 %4048, 255
  %4053 = call i32 @llvm.ctpop.i32(i32 %4052)
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = xor i8 %4055, 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4056, i8* %4057, align 1
  %4058 = xor i32 %4047, %4040
  %4059 = xor i32 %4058, %4048
  %4060 = lshr i32 %4059, 4
  %4061 = trunc i32 %4060 to i8
  %4062 = and i8 %4061, 1
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4062, i8* %4063, align 1
  %4064 = icmp eq i32 %4048, 0
  %4065 = zext i1 %4064 to i8
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4065, i8* %4066, align 1
  %4067 = lshr i32 %4048, 31
  %4068 = trunc i32 %4067 to i8
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4068, i8* %4069, align 1
  %4070 = lshr i32 %4040, 31
  %4071 = lshr i32 %4047, 31
  %4072 = xor i32 %4071, %4070
  %4073 = xor i32 %4067, %4070
  %4074 = add i32 %4073, %4072
  %4075 = icmp eq i32 %4074, 2
  %4076 = zext i1 %4075 to i8
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4076, i8* %4077, align 1
  store %struct.Memory* %loadMem_4098c0, %struct.Memory** %MEMORY
  %loadMem_4098c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 33
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4080 to i64*
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 9
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %4084 = bitcast %union.anon* %4083 to %struct.anon.2*
  %SIL.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4084, i32 0, i32 0
  %4085 = load i64, i64* %PC.i41
  %4086 = add i64 %4085, 4
  store i64 %4086, i64* %PC.i41
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4088 = load i8, i8* %4087, align 1
  store i8 %4088, i8* %SIL.i42, align 1
  store %struct.Memory* %loadMem_4098c3, %struct.Memory** %MEMORY
  %loadMem_4098c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 9
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %4095 = bitcast %union.anon* %4094 to %struct.anon.2*
  %SIL.i40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4095, i32 0, i32 0
  %4096 = load i8, i8* %SIL.i40
  %4097 = zext i8 %4096 to i64
  %4098 = load i64, i64* %PC.i39
  %4099 = add i64 %4098, 4
  store i64 %4099, i64* %PC.i39
  %4100 = and i64 1, %4097
  %4101 = trunc i64 %4100 to i8
  store i8 %4101, i8* %SIL.i40, align 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4102, align 1
  %4103 = trunc i64 %4100 to i32
  %4104 = and i32 %4103, 255
  %4105 = call i32 @llvm.ctpop.i32(i32 %4104)
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = xor i8 %4107, 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4108, i8* %4109, align 1
  %4110 = icmp eq i8 %4101, 0
  %4111 = zext i1 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4111, i8* %4112, align 1
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4113, align 1
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4114, align 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4115, align 1
  store %struct.Memory* %loadMem_4098c7, %struct.Memory** %MEMORY
  %loadMem_4098cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 9
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %4122 = bitcast %union.anon* %4121 to %struct.anon.2*
  %SIL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4122, i32 0, i32 0
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 5
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %4125 to i64*
  %4126 = load i8, i8* %SIL.i37
  %4127 = zext i8 %4126 to i64
  %4128 = load i64, i64* %PC.i36
  %4129 = add i64 %4128, 4
  store i64 %4129, i64* %PC.i36
  %4130 = and i64 %4127, 255
  store i64 %4130, i64* %RCX.i38, align 8
  store %struct.Memory* %loadMem_4098cb, %struct.Memory** %MEMORY
  %loadMem_4098cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 11
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %RDI.i34 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 15
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4139 to i64*
  %4140 = load i64, i64* %RBP.i35
  %4141 = sub i64 %4140, 8
  %4142 = load i64, i64* %PC.i33
  %4143 = add i64 %4142, 3
  store i64 %4143, i64* %PC.i33
  %4144 = inttoptr i64 %4141 to i32*
  %4145 = load i32, i32* %4144
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RDI.i34, align 8
  store %struct.Memory* %loadMem_4098cf, %struct.Memory** %MEMORY
  %loadMem_4098d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 11
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RDI.i32
  %4154 = load i64, i64* %PC.i31
  %4155 = add i64 %4154, 3
  store i64 %4155, i64* %PC.i31
  %4156 = trunc i64 %4153 to i32
  %4157 = add i32 1, %4156
  %4158 = zext i32 %4157 to i64
  store i64 %4158, i64* %RDI.i32, align 8
  %4159 = icmp ult i32 %4157, %4156
  %4160 = icmp ult i32 %4157, 1
  %4161 = or i1 %4159, %4160
  %4162 = zext i1 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4162, i8* %4163, align 1
  %4164 = and i32 %4157, 255
  %4165 = call i32 @llvm.ctpop.i32(i32 %4164)
  %4166 = trunc i32 %4165 to i8
  %4167 = and i8 %4166, 1
  %4168 = xor i8 %4167, 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4168, i8* %4169, align 1
  %4170 = xor i64 1, %4153
  %4171 = trunc i64 %4170 to i32
  %4172 = xor i32 %4171, %4157
  %4173 = lshr i32 %4172, 4
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4175, i8* %4176, align 1
  %4177 = icmp eq i32 %4157, 0
  %4178 = zext i1 %4177 to i8
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4178, i8* %4179, align 1
  %4180 = lshr i32 %4157, 31
  %4181 = trunc i32 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4181, i8* %4182, align 1
  %4183 = lshr i32 %4156, 31
  %4184 = xor i32 %4180, %4183
  %4185 = add i32 %4184, %4180
  %4186 = icmp eq i32 %4185, 2
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4187, i8* %4188, align 1
  store %struct.Memory* %loadMem_4098d2, %struct.Memory** %MEMORY
  %loadMem_4098d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 33
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 11
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %EDI.i29 = bitcast %union.anon* %4194 to i32*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 7
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RDX.i30 = bitcast %union.anon* %4197 to i64*
  %4198 = load i32, i32* %EDI.i29
  %4199 = zext i32 %4198 to i64
  %4200 = load i64, i64* %PC.i28
  %4201 = add i64 %4200, 3
  store i64 %4201, i64* %PC.i28
  %4202 = shl i64 %4199, 32
  %4203 = ashr exact i64 %4202, 32
  store i64 %4203, i64* %RDX.i30, align 8
  store %struct.Memory* %loadMem_4098d5, %struct.Memory** %MEMORY
  %loadMem_4098d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 7
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RDX.i27 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %RDX.i27
  %4211 = mul i64 %4210, 4
  %4212 = add i64 %4211, 11187184
  %4213 = load i64, i64* %PC.i26
  %4214 = add i64 %4213, 8
  store i64 %4214, i64* %PC.i26
  %4215 = inttoptr i64 %4212 to i32*
  %4216 = load i32, i32* %4215
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %RDX.i27, align 8
  store %struct.Memory* %loadMem_4098d8, %struct.Memory** %MEMORY
  %loadMem_4098e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 7
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RDX.i25 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RDX.i25
  %4225 = load i64, i64* %PC.i24
  %4226 = add i64 %4225, 7
  store i64 %4226, i64* %PC.i24
  %4227 = sext i64 %4224 to i128
  %4228 = and i128 %4227, -18446744073709551616
  %4229 = zext i64 %4224 to i128
  %4230 = or i128 %4228, %4229
  %4231 = mul i128 744, %4230
  %4232 = trunc i128 %4231 to i64
  store i64 %4232, i64* %RDX.i25, align 8
  %4233 = sext i64 %4232 to i128
  %4234 = icmp ne i128 %4233, %4231
  %4235 = zext i1 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4235, i8* %4236, align 1
  %4237 = trunc i128 %4231 to i32
  %4238 = and i32 %4237, 255
  %4239 = call i32 @llvm.ctpop.i32(i32 %4238)
  %4240 = trunc i32 %4239 to i8
  %4241 = and i8 %4240, 1
  %4242 = xor i8 %4241, 1
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4242, i8* %4243, align 1
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4244, align 1
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4245, align 1
  %4246 = lshr i64 %4232, 63
  %4247 = trunc i64 %4246 to i8
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4247, i8* %4248, align 1
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4235, i8* %4249, align 1
  store %struct.Memory* %loadMem_4098e0, %struct.Memory** %MEMORY
  %loadMem_4098e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 7
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %RAX.i23
  %4260 = load i64, i64* %RDX.i
  %4261 = load i64, i64* %PC.i22
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i22
  %4263 = add i64 %4260, %4259
  store i64 %4263, i64* %RAX.i23, align 8
  %4264 = icmp ult i64 %4263, %4259
  %4265 = icmp ult i64 %4263, %4260
  %4266 = or i1 %4264, %4265
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4267, i8* %4268, align 1
  %4269 = trunc i64 %4263 to i32
  %4270 = and i32 %4269, 255
  %4271 = call i32 @llvm.ctpop.i32(i32 %4270)
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = xor i8 %4273, 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4274, i8* %4275, align 1
  %4276 = xor i64 %4260, %4259
  %4277 = xor i64 %4276, %4263
  %4278 = lshr i64 %4277, 4
  %4279 = trunc i64 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4280, i8* %4281, align 1
  %4282 = icmp eq i64 %4263, 0
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4283, i8* %4284, align 1
  %4285 = lshr i64 %4263, 63
  %4286 = trunc i64 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4286, i8* %4287, align 1
  %4288 = lshr i64 %4259, 63
  %4289 = lshr i64 %4260, 63
  %4290 = xor i64 %4285, %4288
  %4291 = xor i64 %4285, %4289
  %4292 = add i64 %4290, %4291
  %4293 = icmp eq i64 %4292, 2
  %4294 = zext i1 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4294, i8* %4295, align 1
  store %struct.Memory* %loadMem_4098e7, %struct.Memory** %MEMORY
  %loadMem_4098ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 1
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %4301 to i64*
  %4302 = load i64, i64* %RAX.i21
  %4303 = add i64 %4302, 12
  %4304 = load i64, i64* %PC.i20
  %4305 = add i64 %4304, 4
  store i64 %4305, i64* %PC.i20
  %4306 = inttoptr i64 %4303 to i32*
  %4307 = load i32, i32* %4306
  %4308 = sub i32 %4307, 1
  %4309 = icmp ult i32 %4307, 1
  %4310 = zext i1 %4309 to i8
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4310, i8* %4311, align 1
  %4312 = and i32 %4308, 255
  %4313 = call i32 @llvm.ctpop.i32(i32 %4312)
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = xor i8 %4315, 1
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4316, i8* %4317, align 1
  %4318 = xor i32 %4307, 1
  %4319 = xor i32 %4318, %4308
  %4320 = lshr i32 %4319, 4
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4322, i8* %4323, align 1
  %4324 = icmp eq i32 %4308, 0
  %4325 = zext i1 %4324 to i8
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4325, i8* %4326, align 1
  %4327 = lshr i32 %4308, 31
  %4328 = trunc i32 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4328, i8* %4329, align 1
  %4330 = lshr i32 %4307, 31
  %4331 = xor i32 %4327, %4330
  %4332 = add i32 %4331, %4330
  %4333 = icmp eq i32 %4332, 2
  %4334 = zext i1 %4333 to i8
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4334, i8* %4335, align 1
  store %struct.Memory* %loadMem_4098ea, %struct.Memory** %MEMORY
  %loadMem_4098ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 9
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %4342 = bitcast %union.anon* %4341 to %struct.anon.2*
  %SIL.i19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4342, i32 0, i32 0
  %4343 = load i64, i64* %PC.i18
  %4344 = add i64 %4343, 4
  store i64 %4344, i64* %PC.i18
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4346 = load i8, i8* %4345, align 1
  store i8 %4346, i8* %SIL.i19, align 1
  store %struct.Memory* %loadMem_4098ee, %struct.Memory** %MEMORY
  %loadMem_4098f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 33
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 9
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %4353 = bitcast %union.anon* %4352 to %struct.anon.2*
  %SIL.i17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4353, i32 0, i32 0
  %4354 = load i8, i8* %SIL.i17
  %4355 = zext i8 %4354 to i64
  %4356 = load i64, i64* %PC.i16
  %4357 = add i64 %4356, 4
  store i64 %4357, i64* %PC.i16
  %4358 = and i64 1, %4355
  %4359 = trunc i64 %4358 to i8
  store i8 %4359, i8* %SIL.i17, align 1
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4360, align 1
  %4361 = trunc i64 %4358 to i32
  %4362 = and i32 %4361, 255
  %4363 = call i32 @llvm.ctpop.i32(i32 %4362)
  %4364 = trunc i32 %4363 to i8
  %4365 = and i8 %4364, 1
  %4366 = xor i8 %4365, 1
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4366, i8* %4367, align 1
  %4368 = icmp eq i8 %4359, 0
  %4369 = zext i1 %4368 to i8
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4369, i8* %4370, align 1
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4371, align 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4372, align 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4373, align 1
  store %struct.Memory* %loadMem_4098f2, %struct.Memory** %MEMORY
  %loadMem_4098f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 33
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 9
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %4380 = bitcast %union.anon* %4379 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4380, i32 0, i32 0
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 11
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4383 to i64*
  %4384 = load i8, i8* %SIL.i
  %4385 = zext i8 %4384 to i64
  %4386 = load i64, i64* %PC.i15
  %4387 = add i64 %4386, 4
  store i64 %4387, i64* %PC.i15
  %4388 = and i64 %4385, 255
  store i64 %4388, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4098f6, %struct.Memory** %MEMORY
  %loadMem_4098fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 11
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4394 to i32*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 5
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4397 to i64*
  %4398 = load i64, i64* %RCX.i
  %4399 = load i32, i32* %EDI.i
  %4400 = zext i32 %4399 to i64
  %4401 = load i64, i64* %PC.i14
  %4402 = add i64 %4401, 2
  store i64 %4402, i64* %PC.i14
  %4403 = xor i64 %4400, %4398
  %4404 = trunc i64 %4403 to i32
  %4405 = and i64 %4403, 4294967295
  store i64 %4405, i64* %RCX.i, align 8
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4406, align 1
  %4407 = and i32 %4404, 255
  %4408 = call i32 @llvm.ctpop.i32(i32 %4407)
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4411, i8* %4412, align 1
  %4413 = icmp eq i32 %4404, 0
  %4414 = zext i1 %4413 to i8
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4414, i8* %4415, align 1
  %4416 = lshr i32 %4404, 31
  %4417 = trunc i32 %4416 to i8
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4417, i8* %4418, align 1
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4419, align 1
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4420, align 1
  store %struct.Memory* %loadMem_4098fa, %struct.Memory** %MEMORY
  %loadMem_4098fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 5
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4426 to i32*
  %4427 = load i32, i32* %ECX.i
  %4428 = zext i32 %4427 to i64
  %4429 = load i64, i64* %PC.i13
  %4430 = add i64 %4429, 3
  store i64 %4430, i64* %PC.i13
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4431, align 1
  %4432 = and i32 %4427, 255
  %4433 = call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4436, i8* %4437, align 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4438, align 1
  %4439 = icmp eq i32 %4427, 0
  %4440 = zext i1 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4440, i8* %4441, align 1
  %4442 = lshr i32 %4427, 31
  %4443 = trunc i32 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4443, i8* %4444, align 1
  %4445 = lshr i32 %4427, 31
  %4446 = xor i32 %4442, %4445
  %4447 = add i32 %4446, %4445
  %4448 = icmp eq i32 %4447, 2
  %4449 = zext i1 %4448 to i8
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4449, i8* %4450, align 1
  store %struct.Memory* %loadMem_4098fc, %struct.Memory** %MEMORY
  %loadMem_4098ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 33
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %PC.i12
  %4455 = add i64 %4454, 18
  %4456 = load i64, i64* %PC.i12
  %4457 = add i64 %4456, 6
  %4458 = load i64, i64* %PC.i12
  %4459 = add i64 %4458, 6
  store i64 %4459, i64* %PC.i12
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4461 = load i8, i8* %4460, align 1
  store i8 %4461, i8* %BRANCH_TAKEN, align 1
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4463 = icmp ne i8 %4461, 0
  %4464 = select i1 %4463, i64 %4455, i64 %4457
  store i64 %4464, i64* %4462, align 8
  store %struct.Memory* %loadMem_4098ff, %struct.Memory** %MEMORY
  %loadBr_4098ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4098ff = icmp eq i8 %loadBr_4098ff, 1
  br i1 %cmpBr_4098ff, label %block_.L_409911, label %block_.L_409905

block_.L_409905:                                  ; preds = %block_4098a5, %block_.L_409871
  %loadMem_409905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 33
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 15
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %RBP.i11
  %4472 = sub i64 %4471, 4
  %4473 = load i64, i64* %PC.i10
  %4474 = add i64 %4473, 7
  store i64 %4474, i64* %PC.i10
  %4475 = inttoptr i64 %4472 to i32*
  store i32 0, i32* %4475
  store %struct.Memory* %loadMem_409905, %struct.Memory** %MEMORY
  %loadMem_40990c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 33
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %PC.i9
  %4480 = add i64 %4479, 12
  %4481 = load i64, i64* %PC.i9
  %4482 = add i64 %4481, 5
  store i64 %4482, i64* %PC.i9
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4480, i64* %4483, align 8
  store %struct.Memory* %loadMem_40990c, %struct.Memory** %MEMORY
  br label %block_.L_409918

block_.L_409911:                                  ; preds = %block_4098a5, %block_40988b
  %loadMem_409911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 15
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4489 to i64*
  %4490 = load i64, i64* %RBP.i8
  %4491 = sub i64 %4490, 4
  %4492 = load i64, i64* %PC.i7
  %4493 = add i64 %4492, 7
  store i64 %4493, i64* %PC.i7
  %4494 = inttoptr i64 %4491 to i32*
  store i32 1, i32* %4494
  store %struct.Memory* %loadMem_409911, %struct.Memory** %MEMORY
  br label %block_.L_409918

block_.L_409918:                                  ; preds = %block_.L_409911, %block_.L_409905, %block_.L_409865, %block_.L_4097c5, %block_.L_409725
  %loadMem_409918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 33
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 1
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 15
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RBP.i6
  %4505 = sub i64 %4504, 4
  %4506 = load i64, i64* %PC.i5
  %4507 = add i64 %4506, 3
  store i64 %4507, i64* %PC.i5
  %4508 = inttoptr i64 %4505 to i32*
  %4509 = load i32, i32* %4508
  %4510 = zext i32 %4509 to i64
  store i64 %4510, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_409918, %struct.Memory** %MEMORY
  %loadMem_40991b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 13
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4516 to i64*
  %4517 = load i64, i64* %RSP.i
  %4518 = load i64, i64* %PC.i4
  %4519 = add i64 %4518, 4
  store i64 %4519, i64* %PC.i4
  %4520 = add i64 64, %4517
  store i64 %4520, i64* %RSP.i, align 8
  %4521 = icmp ult i64 %4520, %4517
  %4522 = icmp ult i64 %4520, 64
  %4523 = or i1 %4521, %4522
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4524, i8* %4525, align 1
  %4526 = trunc i64 %4520 to i32
  %4527 = and i32 %4526, 255
  %4528 = call i32 @llvm.ctpop.i32(i32 %4527)
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = xor i8 %4530, 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4531, i8* %4532, align 1
  %4533 = xor i64 64, %4517
  %4534 = xor i64 %4533, %4520
  %4535 = lshr i64 %4534, 4
  %4536 = trunc i64 %4535 to i8
  %4537 = and i8 %4536, 1
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4537, i8* %4538, align 1
  %4539 = icmp eq i64 %4520, 0
  %4540 = zext i1 %4539 to i8
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4540, i8* %4541, align 1
  %4542 = lshr i64 %4520, 63
  %4543 = trunc i64 %4542 to i8
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4543, i8* %4544, align 1
  %4545 = lshr i64 %4517, 63
  %4546 = xor i64 %4542, %4545
  %4547 = add i64 %4546, %4542
  %4548 = icmp eq i64 %4547, 2
  %4549 = zext i1 %4548 to i8
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4549, i8* %4550, align 1
  store %struct.Memory* %loadMem_40991b, %struct.Memory** %MEMORY
  %loadMem_40991f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 15
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %PC.i2
  %4558 = add i64 %4557, 1
  store i64 %4558, i64* %PC.i2
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4560 = load i64, i64* %4559, align 8
  %4561 = add i64 %4560, 8
  %4562 = inttoptr i64 %4560 to i64*
  %4563 = load i64, i64* %4562
  store i64 %4563, i64* %RBP.i3, align 8
  store i64 %4561, i64* %4559, align 8
  store %struct.Memory* %loadMem_40991f, %struct.Memory** %MEMORY
  %loadMem_409920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 33
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4566 to i64*
  %4567 = load i64, i64* %PC.i1
  %4568 = add i64 %4567, 1
  store i64 %4568, i64* %PC.i1
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4571 = load i64, i64* %4570, align 8
  %4572 = inttoptr i64 %4571 to i64*
  %4573 = load i64, i64* %4572
  store i64 %4573, i64* %4569, align 8
  %4574 = add i64 %4571, 8
  store i64 %4574, i64* %4570, align 8
  store %struct.Memory* %loadMem_409920, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_409920
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 421
  %16 = icmp ult i32 %14, 421
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
  %25 = xor i32 %14, 421
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

define %struct.Memory* @routine_jae_.L_4095c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_4095c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40961e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x450___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1104, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a49b___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_jne_.L_409638(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_409691(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x451___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1105, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_addl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_409725(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_409731(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_sete__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %SIL, align 1
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

define %struct.Memory* @routine_movzbl__sil___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x14___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_movzbl__sil___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_409918(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4097c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4097d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_subl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_409865(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_409871(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_subl__0x14___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_409905(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_409911(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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
