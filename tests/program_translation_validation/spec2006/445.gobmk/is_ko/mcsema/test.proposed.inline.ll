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
%G__0x57a466_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
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
@G__0x57a466 = global %G__0x57a466_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
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
define %struct.Memory* @is_ko(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_40f200 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40f200, %struct.Memory** %MEMORY
  %loadMem_40f201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i421 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i421
  %27 = load i64, i64* %PC.i420
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i420
  store i64 %26, i64* %RBP.i422, align 8
  store %struct.Memory* %loadMem_40f201, %struct.Memory** %MEMORY
  %loadMem_40f204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i439 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i439
  %36 = load i64, i64* %PC.i438
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i438
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i439, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_40f204, %struct.Memory** %MEMORY
  %loadMem_40f208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i490
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i490
  store i64 3, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_40f208, %struct.Memory** %MEMORY
  %loadMem_40f20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i508
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i507
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i507
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_40f20d, %struct.Memory** %MEMORY
  %loadMem_40f210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i560
  %101 = sub i64 %100, 12
  %102 = load i32, i32* %ESI.i
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i559
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i559
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_40f210, %struct.Memory** %MEMORY
  %loadMem_40f213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i558
  %117 = sub i64 %116, 24
  %118 = load i64, i64* %RDX.i557
  %119 = load i64, i64* %PC.i556
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i556
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  store %struct.Memory* %loadMem_40f213, %struct.Memory** %MEMORY
  %loadMem_40f217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RAX.i554
  %132 = load i64, i64* %RBP.i555
  %133 = sub i64 %132, 12
  %134 = load i64, i64* %PC.i553
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC.i553
  %136 = trunc i64 %131 to i32
  %137 = inttoptr i64 %133 to i32*
  %138 = load i32, i32* %137
  %139 = sub i32 %136, %138
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX.i554, align 8
  %141 = icmp ult i32 %136, %138
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %142, i8* %143, align 1
  %144 = and i32 %139, 255
  %145 = call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %148, i8* %149, align 1
  %150 = xor i32 %138, %136
  %151 = xor i32 %150, %139
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %154, i8* %155, align 1
  %156 = icmp eq i32 %139, 0
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %157, i8* %158, align 1
  %159 = lshr i32 %139, 31
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %160, i8* %161, align 1
  %162 = lshr i32 %136, 31
  %163 = lshr i32 %138, 31
  %164 = xor i32 %163, %162
  %165 = xor i32 %159, %162
  %166 = add i32 %165, %164
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %168, i8* %169, align 1
  store %struct.Memory* %loadMem_40f217, %struct.Memory** %MEMORY
  %loadMem_40f21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %EAX.i551 = bitcast %union.anon* %175 to i32*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RBP.i552
  %180 = sub i64 %179, 28
  %181 = load i32, i32* %EAX.i551
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %PC.i550
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC.i550
  %185 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %185
  store %struct.Memory* %loadMem_40f21a, %struct.Memory** %MEMORY
  %loadMem_40f21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %RBP.i549
  %193 = sub i64 %192, 32
  %194 = load i64, i64* %PC.i548
  %195 = add i64 %194, 7
  store i64 %195, i64* %PC.i548
  %196 = inttoptr i64 %193 to i32*
  store i32 0, i32* %196
  store %struct.Memory* %loadMem_40f21d, %struct.Memory** %MEMORY
  %loadMem_40f224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RBP.i547
  %204 = sub i64 %203, 36
  %205 = load i64, i64* %PC.i546
  %206 = add i64 %205, 7
  store i64 %206, i64* %PC.i546
  %207 = inttoptr i64 %204 to i32*
  store i32 0, i32* %207
  store %struct.Memory* %loadMem_40f224, %struct.Memory** %MEMORY
  %loadMem_40f22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 15
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %RBP.i545
  %215 = sub i64 %214, 8
  %216 = load i64, i64* %PC.i544
  %217 = add i64 %216, 7
  store i64 %217, i64* %PC.i544
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = sub i32 %219, 421
  %221 = icmp ult i32 %219, 421
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %222, i8* %223, align 1
  %224 = and i32 %220, 255
  %225 = call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %228, i8* %229, align 1
  %230 = xor i32 %219, 421
  %231 = xor i32 %230, %220
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1
  %236 = icmp eq i32 %220, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1
  %239 = lshr i32 %220, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1
  %242 = lshr i32 %219, 31
  %243 = xor i32 %239, %242
  %244 = add i32 %243, %242
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %246, i8* %247, align 1
  store %struct.Memory* %loadMem_40f22b, %struct.Memory** %MEMORY
  %loadMem_40f232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %PC.i543
  %252 = add i64 %251, 32
  %253 = load i64, i64* %PC.i543
  %254 = add i64 %253, 6
  %255 = load i64, i64* %PC.i543
  %256 = add i64 %255, 6
  store i64 %256, i64* %PC.i543
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %258 = load i8, i8* %257, align 1
  %259 = icmp eq i8 %258, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %BRANCH_TAKEN, align 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %262 = select i1 %259, i64 %252, i64 %254
  store i64 %262, i64* %261, align 8
  store %struct.Memory* %loadMem_40f232, %struct.Memory** %MEMORY
  %loadBr_40f232 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f232 = icmp eq i8 %loadBr_40f232, 1
  br i1 %cmpBr_40f232, label %block_.L_40f252, label %block_40f238

block_40f238:                                     ; preds = %entry
  %loadMem_40f238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i542
  %273 = sub i64 %272, 8
  %274 = load i64, i64* %PC.i540
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i540
  %276 = inttoptr i64 %273 to i32*
  %277 = load i32, i32* %276
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_40f238, %struct.Memory** %MEMORY
  %loadMem_40f23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %RAX.i538
  %289 = add i64 %288, 12099168
  %290 = load i64, i64* %PC.i537
  %291 = add i64 %290, 8
  store i64 %291, i64* %PC.i537
  %292 = inttoptr i64 %289 to i8*
  %293 = load i8, i8* %292
  %294 = zext i8 %293 to i64
  store i64 %294, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_40f23c, %struct.Memory** %MEMORY
  %loadMem_40f244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %ECX.i536 = bitcast %union.anon* %300 to i32*
  %301 = load i32, i32* %ECX.i536
  %302 = zext i32 %301 to i64
  %303 = load i64, i64* %PC.i535
  %304 = add i64 %303, 3
  store i64 %304, i64* %PC.i535
  %305 = sub i32 %301, 3
  %306 = icmp ult i32 %301, 3
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %307, i8* %308, align 1
  %309 = and i32 %305, 255
  %310 = call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %313, i8* %314, align 1
  %315 = xor i64 3, %302
  %316 = trunc i64 %315 to i32
  %317 = xor i32 %316, %305
  %318 = lshr i32 %317, 4
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %320, i8* %321, align 1
  %322 = icmp eq i32 %305, 0
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %323, i8* %324, align 1
  %325 = lshr i32 %305, 31
  %326 = trunc i32 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %326, i8* %327, align 1
  %328 = lshr i32 %301, 31
  %329 = xor i32 %325, %328
  %330 = add i32 %329, %328
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %332, i8* %333, align 1
  store %struct.Memory* %loadMem_40f244, %struct.Memory** %MEMORY
  %loadMem_40f247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %PC.i534
  %338 = add i64 %337, 11
  %339 = load i64, i64* %PC.i534
  %340 = add i64 %339, 6
  %341 = load i64, i64* %PC.i534
  %342 = add i64 %341, 6
  store i64 %342, i64* %PC.i534
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %344 = load i8, i8* %343, align 1
  store i8 %344, i8* %BRANCH_TAKEN, align 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %346 = icmp ne i8 %344, 0
  %347 = select i1 %346, i64 %338, i64 %340
  store i64 %347, i64* %345, align 8
  store %struct.Memory* %loadMem_40f247, %struct.Memory** %MEMORY
  %loadBr_40f247 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f247 = icmp eq i8 %loadBr_40f247, 1
  br i1 %cmpBr_40f247, label %block_.L_40f252, label %block_40f24d

block_40f24d:                                     ; preds = %block_40f238
  %loadMem_40f24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %PC.i533
  %352 = add i64 %351, 94
  %353 = load i64, i64* %PC.i533
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC.i533
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %352, i64* %355, align 8
  store %struct.Memory* %loadMem_40f24d, %struct.Memory** %MEMORY
  br label %block_.L_40f2ab

block_.L_40f252:                                  ; preds = %block_40f238, %entry
  %loadMem_40f252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 11
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RDI.i532 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %PC.i531
  %363 = add i64 %362, 10
  store i64 %363, i64* %PC.i531
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i532, align 8
  store %struct.Memory* %loadMem_40f252, %struct.Memory** %MEMORY
  %loadMem_40f25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 9
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RSI.i530 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %PC.i529
  %371 = add i64 %370, 5
  store i64 %371, i64* %PC.i529
  store i64 2501, i64* %RSI.i530, align 8
  store %struct.Memory* %loadMem_40f25c, %struct.Memory** %MEMORY
  %loadMem_40f261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 7
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RDX.i528 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %PC.i527
  %379 = add i64 %378, 10
  store i64 %379, i64* %PC.i527
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i528, align 8
  store %struct.Memory* %loadMem_40f261, %struct.Memory** %MEMORY
  %loadMem_40f26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %PC.i525
  %387 = add i64 %386, 5
  store i64 %387, i64* %PC.i525
  store i64 20, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_40f26b, %struct.Memory** %MEMORY
  %loadMem_40f270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i524
  %398 = sub i64 %397, 8
  %399 = load i64, i64* %PC.i522
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC.i522
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_40f270, %struct.Memory** %MEMORY
  %loadMem_40f273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %EAX.i520 = bitcast %union.anon* %409 to i32*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RBP.i521
  %414 = sub i64 %413, 40
  %415 = load i32, i32* %EAX.i520
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %PC.i519
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC.i519
  %419 = inttoptr i64 %414 to i32*
  store i32 %415, i32* %419
  store %struct.Memory* %loadMem_40f273, %struct.Memory** %MEMORY
  %loadMem_40f276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %ECX.i517 = bitcast %union.anon* %425 to i32*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %428 to i64*
  %429 = load i32, i32* %ECX.i517
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC.i516
  %432 = add i64 %431, 2
  store i64 %432, i64* %PC.i516
  %433 = and i64 %430, 4294967295
  store i64 %433, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_40f276, %struct.Memory** %MEMORY
  %loadMem_40f278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 7
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RDX.i514 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 15
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RBP.i515
  %444 = sub i64 %443, 48
  %445 = load i64, i64* %RDX.i514
  %446 = load i64, i64* %PC.i513
  %447 = add i64 %446, 4
  store i64 %447, i64* %PC.i513
  %448 = inttoptr i64 %444 to i64*
  store i64 %445, i64* %448
  store %struct.Memory* %loadMem_40f278, %struct.Memory** %MEMORY
  %loadMem_40f27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i512
  %453 = add i64 %452, 1
  store i64 %453, i64* %PC.i512
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %456 = bitcast %union.anon* %455 to i32*
  %457 = load i32, i32* %456, align 8
  %458 = sext i32 %457 to i64
  %459 = lshr i64 %458, 32
  store i64 %459, i64* %454, align 8
  store %struct.Memory* %loadMem_40f27c, %struct.Memory** %MEMORY
  %loadMem_40f27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 5
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 15
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %RBP.i511
  %470 = sub i64 %469, 40
  %471 = load i64, i64* %PC.i509
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i509
  %473 = inttoptr i64 %470 to i32*
  %474 = load i32, i32* %473
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_40f27d, %struct.Memory** %MEMORY
  %loadMem_40f280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 33
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 5
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %ECX.i505 = bitcast %union.anon* %481 to i32*
  %482 = load i32, i32* %ECX.i505
  %483 = zext i32 %482 to i64
  %484 = load i64, i64* %PC.i504
  %485 = add i64 %484, 2
  store i64 %485, i64* %PC.i504
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %487 = bitcast %union.anon* %486 to i32*
  %488 = load i32, i32* %487, align 8
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %491 = bitcast %union.anon* %490 to i32*
  %492 = load i32, i32* %491, align 8
  %493 = zext i32 %492 to i64
  %494 = shl i64 %483, 32
  %495 = ashr exact i64 %494, 32
  %496 = shl i64 %493, 32
  %497 = or i64 %496, %489
  %498 = sdiv i64 %497, %495
  %499 = shl i64 %498, 32
  %500 = ashr exact i64 %499, 32
  %501 = icmp eq i64 %498, %500
  br i1 %501, label %506, label %502

; <label>:502:                                    ; preds = %block_.L_40f252
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %504, %struct.Memory* %loadMem_40f280)
  br label %routine_idivl__ecx.exit506

; <label>:506:                                    ; preds = %block_.L_40f252
  %507 = srem i64 %497, %495
  %508 = getelementptr inbounds %union.anon, %union.anon* %486, i64 0, i32 0
  %509 = and i64 %498, 4294967295
  store i64 %509, i64* %508, align 8
  %510 = getelementptr inbounds %union.anon, %union.anon* %490, i64 0, i32 0
  %511 = and i64 %507, 4294967295
  store i64 %511, i64* %510, align 8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %512, align 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %513, align 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %514, align 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %515, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %516, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %517, align 1
  br label %routine_idivl__ecx.exit506

routine_idivl__ecx.exit506:                       ; preds = %502, %506
  %518 = phi %struct.Memory* [ %505, %502 ], [ %loadMem_40f280, %506 ]
  store %struct.Memory* %518, %struct.Memory** %MEMORY
  %loadMem_40f282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RAX.i503
  %526 = load i64, i64* %PC.i502
  %527 = add i64 %526, 3
  store i64 %527, i64* %PC.i502
  %528 = trunc i64 %525 to i32
  %529 = sub i32 %528, 1
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RAX.i503, align 8
  %531 = icmp ult i32 %528, 1
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %532, i8* %533, align 1
  %534 = and i32 %529, 255
  %535 = call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %538, i8* %539, align 1
  %540 = xor i64 1, %525
  %541 = trunc i64 %540 to i32
  %542 = xor i32 %541, %529
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %545, i8* %546, align 1
  %547 = icmp eq i32 %529, 0
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %548, i8* %549, align 1
  %550 = lshr i32 %529, 31
  %551 = trunc i32 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %551, i8* %552, align 1
  %553 = lshr i32 %528, 31
  %554 = xor i32 %550, %553
  %555 = add i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %557, i8* %558, align 1
  store %struct.Memory* %loadMem_40f282, %struct.Memory** %MEMORY
  %loadMem_40f285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 17
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %R8D.i500 = bitcast %union.anon* %564 to i32*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 15
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %567 to i64*
  %568 = bitcast i32* %R8D.i500 to i64*
  %569 = load i64, i64* %RBP.i501
  %570 = sub i64 %569, 8
  %571 = load i64, i64* %PC.i499
  %572 = add i64 %571, 4
  store i64 %572, i64* %PC.i499
  %573 = inttoptr i64 %570 to i32*
  %574 = load i32, i32* %573
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %568, align 8
  store %struct.Memory* %loadMem_40f285, %struct.Memory** %MEMORY
  %loadMem_40f289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %EAX.i497 = bitcast %union.anon* %581 to i32*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 15
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %584 to i64*
  %585 = load i64, i64* %RBP.i498
  %586 = sub i64 %585, 52
  %587 = load i32, i32* %EAX.i497
  %588 = zext i32 %587 to i64
  %589 = load i64, i64* %PC.i496
  %590 = add i64 %589, 3
  store i64 %590, i64* %PC.i496
  %591 = inttoptr i64 %586 to i32*
  store i32 %587, i32* %591
  store %struct.Memory* %loadMem_40f289, %struct.Memory** %MEMORY
  %loadMem_40f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 17
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %R8D.i494 = bitcast %union.anon* %597 to i32*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %600 to i64*
  %601 = load i32, i32* %R8D.i494
  %602 = zext i32 %601 to i64
  %603 = load i64, i64* %PC.i493
  %604 = add i64 %603, 3
  store i64 %604, i64* %PC.i493
  %605 = and i64 %602, 4294967295
  store i64 %605, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_40f28c, %struct.Memory** %MEMORY
  %loadMem_40f28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %PC.i492
  %610 = add i64 %609, 1
  store i64 %610, i64* %PC.i492
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %613 = bitcast %union.anon* %612 to i32*
  %614 = load i32, i32* %613, align 8
  %615 = sext i32 %614 to i64
  %616 = lshr i64 %615, 32
  store i64 %616, i64* %611, align 8
  store %struct.Memory* %loadMem_40f28f, %struct.Memory** %MEMORY
  %loadMem_40f290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 5
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %ECX.i488 = bitcast %union.anon* %622 to i32*
  %623 = load i32, i32* %ECX.i488
  %624 = zext i32 %623 to i64
  %625 = load i64, i64* %PC.i487
  %626 = add i64 %625, 2
  store i64 %626, i64* %PC.i487
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %628 = bitcast %union.anon* %627 to i32*
  %629 = load i32, i32* %628, align 8
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %632 = bitcast %union.anon* %631 to i32*
  %633 = load i32, i32* %632, align 8
  %634 = zext i32 %633 to i64
  %635 = shl i64 %624, 32
  %636 = ashr exact i64 %635, 32
  %637 = shl i64 %634, 32
  %638 = or i64 %637, %630
  %639 = sdiv i64 %638, %636
  %640 = shl i64 %639, 32
  %641 = ashr exact i64 %640, 32
  %642 = icmp eq i64 %639, %641
  br i1 %642, label %647, label %643

; <label>:643:                                    ; preds = %routine_idivl__ecx.exit506
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %645, %struct.Memory* %loadMem_40f290)
  br label %routine_idivl__ecx.exit489

; <label>:647:                                    ; preds = %routine_idivl__ecx.exit506
  %648 = srem i64 %638, %636
  %649 = getelementptr inbounds %union.anon, %union.anon* %627, i64 0, i32 0
  %650 = and i64 %639, 4294967295
  store i64 %650, i64* %649, align 8
  %651 = getelementptr inbounds %union.anon, %union.anon* %631, i64 0, i32 0
  %652 = and i64 %648, 4294967295
  store i64 %652, i64* %651, align 8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %653, align 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %654, align 1
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %655, align 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %656, align 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %657, align 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %658, align 1
  br label %routine_idivl__ecx.exit489

routine_idivl__ecx.exit489:                       ; preds = %643, %647
  %659 = phi %struct.Memory* [ %646, %643 ], [ %loadMem_40f290, %647 ]
  store %struct.Memory* %659, %struct.Memory** %MEMORY
  %loadMem_40f292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 7
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %RDX.i486
  %667 = load i64, i64* %PC.i485
  %668 = add i64 %667, 3
  store i64 %668, i64* %PC.i485
  %669 = trunc i64 %666 to i32
  %670 = sub i32 %669, 1
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RDX.i486, align 8
  %672 = icmp ult i32 %669, 1
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %673, i8* %674, align 1
  %675 = and i32 %670, 255
  %676 = call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %679, i8* %680, align 1
  %681 = xor i64 1, %666
  %682 = trunc i64 %681 to i32
  %683 = xor i32 %682, %670
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %686, i8* %687, align 1
  %688 = icmp eq i32 %670, 0
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %689, i8* %690, align 1
  %691 = lshr i32 %670, 31
  %692 = trunc i32 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %692, i8* %693, align 1
  %694 = lshr i32 %669, 31
  %695 = xor i32 %691, %694
  %696 = add i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %698, i8* %699, align 1
  store %struct.Memory* %loadMem_40f292, %struct.Memory** %MEMORY
  %loadMem_40f295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 15
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 19
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %R9.i484 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RBP.i483
  %710 = sub i64 %709, 48
  %711 = load i64, i64* %PC.i482
  %712 = add i64 %711, 4
  store i64 %712, i64* %PC.i482
  %713 = inttoptr i64 %710 to i64*
  %714 = load i64, i64* %713
  store i64 %714, i64* %R9.i484, align 8
  store %struct.Memory* %loadMem_40f295, %struct.Memory** %MEMORY
  %loadMem_40f299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 7
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %EDX.i480 = bitcast %union.anon* %720 to i32*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 15
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RBP.i481
  %725 = sub i64 %724, 56
  %726 = load i32, i32* %EDX.i480
  %727 = zext i32 %726 to i64
  %728 = load i64, i64* %PC.i479
  %729 = add i64 %728, 3
  store i64 %729, i64* %PC.i479
  %730 = inttoptr i64 %725 to i32*
  store i32 %726, i32* %730
  store %struct.Memory* %loadMem_40f299, %struct.Memory** %MEMORY
  %loadMem_40f29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 7
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 19
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %R9.i478 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %R9.i478
  %741 = load i64, i64* %PC.i476
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC.i476
  store i64 %740, i64* %RDX.i477, align 8
  store %struct.Memory* %loadMem_40f29c, %struct.Memory** %MEMORY
  %loadMem_40f29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 5
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 15
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %RBP.i475
  %753 = sub i64 %752, 52
  %754 = load i64, i64* %PC.i473
  %755 = add i64 %754, 3
  store i64 %755, i64* %PC.i473
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RCX.i474, align 8
  store %struct.Memory* %loadMem_40f29f, %struct.Memory** %MEMORY
  %loadMem_40f2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 17
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %R8D.i471 = bitcast %union.anon* %764 to i32*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %767 to i64*
  %768 = bitcast i32* %R8D.i471 to i64*
  %769 = load i64, i64* %RBP.i472
  %770 = sub i64 %769, 56
  %771 = load i64, i64* %PC.i470
  %772 = add i64 %771, 4
  store i64 %772, i64* %PC.i470
  %773 = inttoptr i64 %770 to i32*
  %774 = load i32, i32* %773
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %768, align 8
  store %struct.Memory* %loadMem_40f2a2, %struct.Memory** %MEMORY
  %loadMem1_40f2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %PC.i469
  %780 = add i64 %779, 273898
  %781 = load i64, i64* %PC.i469
  %782 = add i64 %781, 5
  %783 = load i64, i64* %PC.i469
  %784 = add i64 %783, 5
  store i64 %784, i64* %PC.i469
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %786 = load i64, i64* %785, align 8
  %787 = add i64 %786, -8
  %788 = inttoptr i64 %787 to i64*
  store i64 %782, i64* %788
  store i64 %787, i64* %785, align 8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %780, i64* %789, align 8
  store %struct.Memory* %loadMem1_40f2a6, %struct.Memory** %MEMORY
  %loadMem2_40f2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f2a6 = load i64, i64* %3
  %call2_40f2a6 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40f2a6, %struct.Memory* %loadMem2_40f2a6)
  store %struct.Memory* %call2_40f2a6, %struct.Memory** %MEMORY
  br label %block_.L_40f2ab

block_.L_40f2ab:                                  ; preds = %routine_idivl__ecx.exit489, %block_40f24d
  %loadMem_40f2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 15
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RBP.i468
  %797 = sub i64 %796, 12
  %798 = load i64, i64* %PC.i467
  %799 = add i64 %798, 4
  store i64 %799, i64* %PC.i467
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800
  %802 = sub i32 %801, 1
  %803 = icmp ult i32 %801, 1
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %804, i8* %805, align 1
  %806 = and i32 %802, 255
  %807 = call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %810, i8* %811, align 1
  %812 = xor i32 %801, 1
  %813 = xor i32 %812, %802
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %816, i8* %817, align 1
  %818 = icmp eq i32 %802, 0
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %819, i8* %820, align 1
  %821 = lshr i32 %802, 31
  %822 = trunc i32 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %822, i8* %823, align 1
  %824 = lshr i32 %801, 31
  %825 = xor i32 %821, %824
  %826 = add i32 %825, %824
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %828, i8* %829, align 1
  store %struct.Memory* %loadMem_40f2ab, %struct.Memory** %MEMORY
  %loadMem_40f2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %PC.i466
  %834 = add i64 %833, 16
  %835 = load i64, i64* %PC.i466
  %836 = add i64 %835, 6
  %837 = load i64, i64* %PC.i466
  %838 = add i64 %837, 6
  store i64 %838, i64* %PC.i466
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %840 = load i8, i8* %839, align 1
  store i8 %840, i8* %BRANCH_TAKEN, align 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %842 = icmp ne i8 %840, 0
  %843 = select i1 %842, i64 %834, i64 %836
  store i64 %843, i64* %841, align 8
  store %struct.Memory* %loadMem_40f2af, %struct.Memory** %MEMORY
  %loadBr_40f2af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f2af = icmp eq i8 %loadBr_40f2af, 1
  br i1 %cmpBr_40f2af, label %block_.L_40f2bf, label %block_40f2b5

block_40f2b5:                                     ; preds = %block_.L_40f2ab
  %loadMem_40f2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 15
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RBP.i465
  %851 = sub i64 %850, 12
  %852 = load i64, i64* %PC.i464
  %853 = add i64 %852, 4
  store i64 %853, i64* %PC.i464
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = sub i32 %855, 2
  %857 = icmp ult i32 %855, 2
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %858, i8* %859, align 1
  %860 = and i32 %856, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1
  %866 = xor i32 %855, 2
  %867 = xor i32 %866, %856
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %870, i8* %871, align 1
  %872 = icmp eq i32 %856, 0
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %873, i8* %874, align 1
  %875 = lshr i32 %856, 31
  %876 = trunc i32 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %876, i8* %877, align 1
  %878 = lshr i32 %855, 31
  %879 = xor i32 %875, %878
  %880 = add i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %882, i8* %883, align 1
  store %struct.Memory* %loadMem_40f2b5, %struct.Memory** %MEMORY
  %loadMem_40f2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %886 to i64*
  %887 = load i64, i64* %PC.i463
  %888 = add i64 %887, 11
  %889 = load i64, i64* %PC.i463
  %890 = add i64 %889, 6
  %891 = load i64, i64* %PC.i463
  %892 = add i64 %891, 6
  store i64 %892, i64* %PC.i463
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %894 = load i8, i8* %893, align 1
  %895 = icmp eq i8 %894, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %BRANCH_TAKEN, align 1
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %898 = select i1 %895, i64 %888, i64 %890
  store i64 %898, i64* %897, align 8
  store %struct.Memory* %loadMem_40f2b9, %struct.Memory** %MEMORY
  %loadBr_40f2b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f2b9 = icmp eq i8 %loadBr_40f2b9, 1
  br i1 %cmpBr_40f2b9, label %block_.L_40f2c4, label %block_.L_40f2bf

block_.L_40f2bf:                                  ; preds = %block_40f2b5, %block_.L_40f2ab
  %loadMem_40f2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %PC.i462
  %903 = add i64 %902, 94
  %904 = load i64, i64* %PC.i462
  %905 = add i64 %904, 5
  store i64 %905, i64* %PC.i462
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %903, i64* %906, align 8
  store %struct.Memory* %loadMem_40f2bf, %struct.Memory** %MEMORY
  br label %block_.L_40f31d

block_.L_40f2c4:                                  ; preds = %block_40f2b5
  %loadMem_40f2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 11
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %PC.i461
  %914 = add i64 %913, 10
  store i64 %914, i64* %PC.i461
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40f2c4, %struct.Memory** %MEMORY
  %loadMem_40f2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 9
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %PC.i460
  %922 = add i64 %921, 5
  store i64 %922, i64* %PC.i460
  store i64 2502, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40f2ce, %struct.Memory** %MEMORY
  %loadMem_40f2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 7
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %PC.i458
  %930 = add i64 %929, 10
  store i64 %930, i64* %PC.i458
  store i64 ptrtoint (%G__0x57a466_type* @G__0x57a466 to i64), i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_40f2d3, %struct.Memory** %MEMORY
  %loadMem_40f2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %PC.i456
  %938 = add i64 %937, 5
  store i64 %938, i64* %PC.i456
  store i64 20, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_40f2dd, %struct.Memory** %MEMORY
  %loadMem_40f2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 5
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i455
  %949 = sub i64 %948, 8
  %950 = load i64, i64* %PC.i453
  %951 = add i64 %950, 3
  store i64 %951, i64* %PC.i453
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_40f2e2, %struct.Memory** %MEMORY
  %loadMem_40f2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %EAX.i451 = bitcast %union.anon* %960 to i32*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RBP.i452
  %965 = sub i64 %964, 60
  %966 = load i32, i32* %EAX.i451
  %967 = zext i32 %966 to i64
  %968 = load i64, i64* %PC.i450
  %969 = add i64 %968, 3
  store i64 %969, i64* %PC.i450
  %970 = inttoptr i64 %965 to i32*
  store i32 %966, i32* %970
  store %struct.Memory* %loadMem_40f2e5, %struct.Memory** %MEMORY
  %loadMem_40f2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %ECX.i448 = bitcast %union.anon* %976 to i32*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %979 to i64*
  %980 = load i32, i32* %ECX.i448
  %981 = zext i32 %980 to i64
  %982 = load i64, i64* %PC.i447
  %983 = add i64 %982, 2
  store i64 %983, i64* %PC.i447
  %984 = and i64 %981, 4294967295
  store i64 %984, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_40f2e8, %struct.Memory** %MEMORY
  %loadMem_40f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 7
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RDX.i445 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 15
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %RBP.i446
  %995 = sub i64 %994, 72
  %996 = load i64, i64* %RDX.i445
  %997 = load i64, i64* %PC.i444
  %998 = add i64 %997, 4
  store i64 %998, i64* %PC.i444
  %999 = inttoptr i64 %995 to i64*
  store i64 %996, i64* %999
  store %struct.Memory* %loadMem_40f2ea, %struct.Memory** %MEMORY
  %loadMem_40f2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %PC.i443
  %1004 = add i64 %1003, 1
  store i64 %1004, i64* %PC.i443
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1007 = bitcast %union.anon* %1006 to i32*
  %1008 = load i32, i32* %1007, align 8
  %1009 = sext i32 %1008 to i64
  %1010 = lshr i64 %1009, 32
  store i64 %1010, i64* %1005, align 8
  store %struct.Memory* %loadMem_40f2ee, %struct.Memory** %MEMORY
  %loadMem_40f2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 5
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 15
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1019 to i64*
  %1020 = load i64, i64* %RBP.i442
  %1021 = sub i64 %1020, 60
  %1022 = load i64, i64* %PC.i440
  %1023 = add i64 %1022, 3
  store i64 %1023, i64* %PC.i440
  %1024 = inttoptr i64 %1021 to i32*
  %1025 = load i32, i32* %1024
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_40f2ef, %struct.Memory** %MEMORY
  %loadMem_40f2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 5
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %ECX.i436 = bitcast %union.anon* %1032 to i32*
  %1033 = load i32, i32* %ECX.i436
  %1034 = zext i32 %1033 to i64
  %1035 = load i64, i64* %PC.i435
  %1036 = add i64 %1035, 2
  store i64 %1036, i64* %PC.i435
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

; <label>:1053:                                   ; preds = %block_.L_40f2c4
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1055 = load i64, i64* %1054, align 8
  %1056 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1055, %struct.Memory* %loadMem_40f2f2)
  br label %routine_idivl__ecx.exit437

; <label>:1057:                                   ; preds = %block_.L_40f2c4
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
  br label %routine_idivl__ecx.exit437

routine_idivl__ecx.exit437:                       ; preds = %1053, %1057
  %1069 = phi %struct.Memory* [ %1056, %1053 ], [ %loadMem_40f2f2, %1057 ]
  store %struct.Memory* %1069, %struct.Memory** %MEMORY
  %loadMem_40f2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %RAX.i434
  %1077 = load i64, i64* %PC.i433
  %1078 = add i64 %1077, 3
  store i64 %1078, i64* %PC.i433
  %1079 = trunc i64 %1076 to i32
  %1080 = sub i32 %1079, 1
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RAX.i434, align 8
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
  store %struct.Memory* %loadMem_40f2f4, %struct.Memory** %MEMORY
  %loadMem_40f2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 17
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %R8D.i431 = bitcast %union.anon* %1115 to i32*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 15
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1118 to i64*
  %1119 = bitcast i32* %R8D.i431 to i64*
  %1120 = load i64, i64* %RBP.i432
  %1121 = sub i64 %1120, 8
  %1122 = load i64, i64* %PC.i430
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i430
  %1124 = inttoptr i64 %1121 to i32*
  %1125 = load i32, i32* %1124
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %1119, align 8
  store %struct.Memory* %loadMem_40f2f7, %struct.Memory** %MEMORY
  %loadMem_40f2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 1
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %1132 to i32*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 15
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %RBP.i429
  %1137 = sub i64 %1136, 76
  %1138 = load i32, i32* %EAX.i428
  %1139 = zext i32 %1138 to i64
  %1140 = load i64, i64* %PC.i427
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %PC.i427
  %1142 = inttoptr i64 %1137 to i32*
  store i32 %1138, i32* %1142
  store %struct.Memory* %loadMem_40f2fb, %struct.Memory** %MEMORY
  %loadMem_40f2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 17
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %R8D.i425 = bitcast %union.anon* %1148 to i32*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 1
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %1151 to i64*
  %1152 = load i32, i32* %R8D.i425
  %1153 = zext i32 %1152 to i64
  %1154 = load i64, i64* %PC.i424
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i424
  %1156 = and i64 %1153, 4294967295
  store i64 %1156, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_40f2fe, %struct.Memory** %MEMORY
  %loadMem_40f301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %PC.i423
  %1161 = add i64 %1160, 1
  store i64 %1161, i64* %PC.i423
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1164 = bitcast %union.anon* %1163 to i32*
  %1165 = load i32, i32* %1164, align 8
  %1166 = sext i32 %1165 to i64
  %1167 = lshr i64 %1166, 32
  store i64 %1167, i64* %1162, align 8
  store %struct.Memory* %loadMem_40f301, %struct.Memory** %MEMORY
  %loadMem_40f302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 5
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %ECX.i419 = bitcast %union.anon* %1173 to i32*
  %1174 = load i32, i32* %ECX.i419
  %1175 = zext i32 %1174 to i64
  %1176 = load i64, i64* %PC.i418
  %1177 = add i64 %1176, 2
  store i64 %1177, i64* %PC.i418
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1179 = bitcast %union.anon* %1178 to i32*
  %1180 = load i32, i32* %1179, align 8
  %1181 = zext i32 %1180 to i64
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1183 = bitcast %union.anon* %1182 to i32*
  %1184 = load i32, i32* %1183, align 8
  %1185 = zext i32 %1184 to i64
  %1186 = shl i64 %1175, 32
  %1187 = ashr exact i64 %1186, 32
  %1188 = shl i64 %1185, 32
  %1189 = or i64 %1188, %1181
  %1190 = sdiv i64 %1189, %1187
  %1191 = shl i64 %1190, 32
  %1192 = ashr exact i64 %1191, 32
  %1193 = icmp eq i64 %1190, %1192
  br i1 %1193, label %1198, label %1194

; <label>:1194:                                   ; preds = %routine_idivl__ecx.exit437
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1196 = load i64, i64* %1195, align 8
  %1197 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1196, %struct.Memory* %loadMem_40f302)
  br label %routine_idivl__ecx.exit

; <label>:1198:                                   ; preds = %routine_idivl__ecx.exit437
  %1199 = srem i64 %1189, %1187
  %1200 = getelementptr inbounds %union.anon, %union.anon* %1178, i64 0, i32 0
  %1201 = and i64 %1190, 4294967295
  store i64 %1201, i64* %1200, align 8
  %1202 = getelementptr inbounds %union.anon, %union.anon* %1182, i64 0, i32 0
  %1203 = and i64 %1199, 4294967295
  store i64 %1203, i64* %1202, align 8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1204, align 1
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1205, align 1
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1206, align 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1207, align 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1208, align 1
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1209, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1194, %1198
  %1210 = phi %struct.Memory* [ %1197, %1194 ], [ %loadMem_40f302, %1198 ]
  store %struct.Memory* %1210, %struct.Memory** %MEMORY
  %loadMem_40f304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 7
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RDX.i417 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RDX.i417
  %1218 = load i64, i64* %PC.i416
  %1219 = add i64 %1218, 3
  store i64 %1219, i64* %PC.i416
  %1220 = trunc i64 %1217 to i32
  %1221 = sub i32 %1220, 1
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RDX.i417, align 8
  %1223 = icmp ult i32 %1220, 1
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1224, i8* %1225, align 1
  %1226 = and i32 %1221, 255
  %1227 = call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1230, i8* %1231, align 1
  %1232 = xor i64 1, %1217
  %1233 = trunc i64 %1232 to i32
  %1234 = xor i32 %1233, %1221
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1237, i8* %1238, align 1
  %1239 = icmp eq i32 %1221, 0
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1240, i8* %1241, align 1
  %1242 = lshr i32 %1221, 31
  %1243 = trunc i32 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1243, i8* %1244, align 1
  %1245 = lshr i32 %1220, 31
  %1246 = xor i32 %1242, %1245
  %1247 = add i32 %1246, %1245
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1249, i8* %1250, align 1
  store %struct.Memory* %loadMem_40f304, %struct.Memory** %MEMORY
  %loadMem_40f307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 15
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 19
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %R9.i415 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %RBP.i414
  %1261 = sub i64 %1260, 72
  %1262 = load i64, i64* %PC.i413
  %1263 = add i64 %1262, 4
  store i64 %1263, i64* %PC.i413
  %1264 = inttoptr i64 %1261 to i64*
  %1265 = load i64, i64* %1264
  store i64 %1265, i64* %R9.i415, align 8
  store %struct.Memory* %loadMem_40f307, %struct.Memory** %MEMORY
  %loadMem_40f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 7
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1271 to i32*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 15
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1274 to i64*
  %1275 = load i64, i64* %RBP.i412
  %1276 = sub i64 %1275, 80
  %1277 = load i32, i32* %EDX.i
  %1278 = zext i32 %1277 to i64
  %1279 = load i64, i64* %PC.i411
  %1280 = add i64 %1279, 3
  store i64 %1280, i64* %PC.i411
  %1281 = inttoptr i64 %1276 to i32*
  store i32 %1277, i32* %1281
  store %struct.Memory* %loadMem_40f30b, %struct.Memory** %MEMORY
  %loadMem_40f30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 33
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 7
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 19
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1290 to i64*
  %1291 = load i64, i64* %R9.i
  %1292 = load i64, i64* %PC.i409
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC.i409
  store i64 %1291, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_40f30e, %struct.Memory** %MEMORY
  %loadMem_40f311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 5
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 15
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RBP.i408
  %1304 = sub i64 %1303, 76
  %1305 = load i64, i64* %PC.i406
  %1306 = add i64 %1305, 3
  store i64 %1306, i64* %PC.i406
  %1307 = inttoptr i64 %1304 to i32*
  %1308 = load i32, i32* %1307
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_40f311, %struct.Memory** %MEMORY
  %loadMem_40f314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 17
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1315 to i32*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 15
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %1318 to i64*
  %1319 = bitcast i32* %R8D.i to i64*
  %1320 = load i64, i64* %RBP.i405
  %1321 = sub i64 %1320, 80
  %1322 = load i64, i64* %PC.i404
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %PC.i404
  %1324 = inttoptr i64 %1321 to i32*
  %1325 = load i32, i32* %1324
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %1319, align 8
  store %struct.Memory* %loadMem_40f314, %struct.Memory** %MEMORY
  %loadMem1_40f318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %PC.i403
  %1331 = add i64 %1330, 273784
  %1332 = load i64, i64* %PC.i403
  %1333 = add i64 %1332, 5
  %1334 = load i64, i64* %PC.i403
  %1335 = add i64 %1334, 5
  store i64 %1335, i64* %PC.i403
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1337 = load i64, i64* %1336, align 8
  %1338 = add i64 %1337, -8
  %1339 = inttoptr i64 %1338 to i64*
  store i64 %1333, i64* %1339
  store i64 %1338, i64* %1336, align 8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1331, i64* %1340, align 8
  store %struct.Memory* %loadMem1_40f318, %struct.Memory** %MEMORY
  %loadMem2_40f318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f318 = load i64, i64* %3
  %call2_40f318 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40f318, %struct.Memory* %loadMem2_40f318)
  store %struct.Memory* %call2_40f318, %struct.Memory** %MEMORY
  br label %block_.L_40f31d

block_.L_40f31d:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_40f2bf
  %loadMem_40f31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 1
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %RBP.i402
  %1351 = sub i64 %1350, 8
  %1352 = load i64, i64* %PC.i400
  %1353 = add i64 %1352, 3
  store i64 %1353, i64* %PC.i400
  %1354 = inttoptr i64 %1351 to i32*
  %1355 = load i32, i32* %1354
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_40f31d, %struct.Memory** %MEMORY
  %loadMem_40f320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RAX.i399
  %1364 = load i64, i64* %PC.i398
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC.i398
  %1366 = trunc i64 %1363 to i32
  %1367 = add i32 20, %1366
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RAX.i399, align 8
  %1369 = icmp ult i32 %1367, %1366
  %1370 = icmp ult i32 %1367, 20
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
  %1380 = xor i64 20, %1363
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
  %1394 = xor i32 %1390, %1393
  %1395 = add i32 %1394, %1390
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1397, i8* %1398, align 1
  store %struct.Memory* %loadMem_40f320, %struct.Memory** %MEMORY
  %loadMem_40f323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 1
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %EAX.i396 = bitcast %union.anon* %1404 to i32*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 5
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %1407 to i64*
  %1408 = load i32, i32* %EAX.i396
  %1409 = zext i32 %1408 to i64
  %1410 = load i64, i64* %PC.i395
  %1411 = add i64 %1410, 3
  store i64 %1411, i64* %PC.i395
  %1412 = shl i64 %1409, 32
  %1413 = ashr exact i64 %1412, 32
  store i64 %1413, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_40f323, %struct.Memory** %MEMORY
  %loadMem_40f326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 1
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 5
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RCX.i394
  %1424 = add i64 %1423, 12099168
  %1425 = load i64, i64* %PC.i392
  %1426 = add i64 %1425, 8
  store i64 %1426, i64* %PC.i392
  %1427 = inttoptr i64 %1424 to i8*
  %1428 = load i8, i8* %1427
  %1429 = zext i8 %1428 to i64
  store i64 %1429, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_40f326, %struct.Memory** %MEMORY
  %loadMem_40f32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 1
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %1435 to i32*
  %1436 = load i32, i32* %EAX.i391
  %1437 = zext i32 %1436 to i64
  %1438 = load i64, i64* %PC.i390
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %PC.i390
  %1440 = sub i32 %1436, 3
  %1441 = icmp ult i32 %1436, 3
  %1442 = zext i1 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1442, i8* %1443, align 1
  %1444 = and i32 %1440, 255
  %1445 = call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1448, i8* %1449, align 1
  %1450 = xor i64 3, %1437
  %1451 = trunc i64 %1450 to i32
  %1452 = xor i32 %1451, %1440
  %1453 = lshr i32 %1452, 4
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1455, i8* %1456, align 1
  %1457 = icmp eq i32 %1440, 0
  %1458 = zext i1 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1458, i8* %1459, align 1
  %1460 = lshr i32 %1440, 31
  %1461 = trunc i32 %1460 to i8
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1461, i8* %1462, align 1
  %1463 = lshr i32 %1436, 31
  %1464 = xor i32 %1460, %1463
  %1465 = add i32 %1464, %1463
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1467, i8* %1468, align 1
  store %struct.Memory* %loadMem_40f32e, %struct.Memory** %MEMORY
  %loadMem_40f331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1471 to i64*
  %1472 = load i64, i64* %PC.i389
  %1473 = add i64 %1472, 183
  %1474 = load i64, i64* %PC.i389
  %1475 = add i64 %1474, 6
  %1476 = load i64, i64* %PC.i389
  %1477 = add i64 %1476, 6
  store i64 %1477, i64* %PC.i389
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1479 = load i8, i8* %1478, align 1
  store i8 %1479, i8* %BRANCH_TAKEN, align 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1481 = icmp ne i8 %1479, 0
  %1482 = select i1 %1481, i64 %1473, i64 %1475
  store i64 %1482, i64* %1480, align 8
  store %struct.Memory* %loadMem_40f331, %struct.Memory** %MEMORY
  %loadBr_40f331 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f331 = icmp eq i8 %loadBr_40f331, 1
  br i1 %cmpBr_40f331, label %block_.L_40f3e8, label %block_40f337

block_40f337:                                     ; preds = %block_.L_40f31d
  %loadMem_40f337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i388
  %1493 = sub i64 %1492, 8
  %1494 = load i64, i64* %PC.i386
  %1495 = add i64 %1494, 3
  store i64 %1495, i64* %PC.i386
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_40f337, %struct.Memory** %MEMORY
  %loadMem_40f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RAX.i385
  %1506 = load i64, i64* %PC.i384
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i384
  %1508 = trunc i64 %1505 to i32
  %1509 = add i32 20, %1508
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i385, align 8
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
  store %struct.Memory* %loadMem_40f33a, %struct.Memory** %MEMORY
  %loadMem_40f33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 1
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %1546 to i32*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 5
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %1549 to i64*
  %1550 = load i32, i32* %EAX.i382
  %1551 = zext i32 %1550 to i64
  %1552 = load i64, i64* %PC.i381
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i381
  %1554 = shl i64 %1551, 32
  %1555 = ashr exact i64 %1554, 32
  store i64 %1555, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_40f33d, %struct.Memory** %MEMORY
  %loadMem_40f340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 5
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RCX.i380
  %1566 = add i64 %1565, 12099168
  %1567 = load i64, i64* %PC.i378
  %1568 = add i64 %1567, 8
  store i64 %1568, i64* %PC.i378
  %1569 = inttoptr i64 %1566 to i8*
  %1570 = load i8, i8* %1569
  %1571 = zext i8 %1570 to i64
  store i64 %1571, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_40f340, %struct.Memory** %MEMORY
  %loadMem_40f348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %1577 to i32*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1580 to i64*
  %1581 = load i32, i32* %EAX.i376
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %RBP.i377
  %1584 = sub i64 %1583, 28
  %1585 = load i64, i64* %PC.i375
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %PC.i375
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
  store %struct.Memory* %loadMem_40f348, %struct.Memory** %MEMORY
  %loadMem_40f34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1621 to i64*
  %1622 = load i64, i64* %PC.i374
  %1623 = add i64 %1622, 18
  %1624 = load i64, i64* %PC.i374
  %1625 = add i64 %1624, 6
  %1626 = load i64, i64* %PC.i374
  %1627 = add i64 %1626, 6
  store i64 %1627, i64* %PC.i374
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1629 = load i8, i8* %1628, align 1
  store i8 %1629, i8* %BRANCH_TAKEN, align 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1631 = icmp ne i8 %1629, 0
  %1632 = select i1 %1631, i64 %1623, i64 %1625
  store i64 %1632, i64* %1630, align 8
  store %struct.Memory* %loadMem_40f34b, %struct.Memory** %MEMORY
  %loadBr_40f34b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f34b = icmp eq i8 %loadBr_40f34b, 1
  br i1 %cmpBr_40f34b, label %block_.L_40f35d, label %block_40f351

block_40f351:                                     ; preds = %block_40f337
  %loadMem_40f351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 15
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RBP.i373
  %1640 = sub i64 %1639, 4
  %1641 = load i64, i64* %PC.i372
  %1642 = add i64 %1641, 7
  store i64 %1642, i64* %PC.i372
  %1643 = inttoptr i64 %1640 to i32*
  store i32 0, i32* %1643
  store %struct.Memory* %loadMem_40f351, %struct.Memory** %MEMORY
  %loadMem_40f358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %PC.i371
  %1648 = add i64 %1647, 802
  %1649 = load i64, i64* %PC.i371
  %1650 = add i64 %1649, 5
  store i64 %1650, i64* %PC.i371
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1648, i64* %1651, align 8
  store %struct.Memory* %loadMem_40f358, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f35d:                                  ; preds = %block_40f337
  %loadMem_40f35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 1
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %PC.i369
  %1659 = add i64 %1658, 10
  store i64 %1659, i64* %PC.i369
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_40f35d, %struct.Memory** %MEMORY
  %loadMem_40f367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 5
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 15
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %RBP.i368
  %1670 = sub i64 %1669, 8
  %1671 = load i64, i64* %PC.i366
  %1672 = add i64 %1671, 3
  store i64 %1672, i64* %PC.i366
  %1673 = inttoptr i64 %1670 to i32*
  %1674 = load i32, i32* %1673
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_40f367, %struct.Memory** %MEMORY
  %loadMem_40f36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 5
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %RCX.i365
  %1683 = load i64, i64* %PC.i364
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC.i364
  %1685 = trunc i64 %1682 to i32
  %1686 = add i32 20, %1685
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RCX.i365, align 8
  %1688 = icmp ult i32 %1686, %1685
  %1689 = icmp ult i32 %1686, 20
  %1690 = or i1 %1688, %1689
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1691, i8* %1692, align 1
  %1693 = and i32 %1686, 255
  %1694 = call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1697, i8* %1698, align 1
  %1699 = xor i64 20, %1682
  %1700 = trunc i64 %1699 to i32
  %1701 = xor i32 %1700, %1686
  %1702 = lshr i32 %1701, 4
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1704, i8* %1705, align 1
  %1706 = icmp eq i32 %1686, 0
  %1707 = zext i1 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1707, i8* %1708, align 1
  %1709 = lshr i32 %1686, 31
  %1710 = trunc i32 %1709 to i8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1710, i8* %1711, align 1
  %1712 = lshr i32 %1685, 31
  %1713 = xor i32 %1709, %1712
  %1714 = add i32 %1713, %1709
  %1715 = icmp eq i32 %1714, 2
  %1716 = zext i1 %1715 to i8
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1716, i8* %1717, align 1
  store %struct.Memory* %loadMem_40f36a, %struct.Memory** %MEMORY
  %loadMem_40f36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 5
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %ECX.i362 = bitcast %union.anon* %1723 to i32*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 7
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %1726 to i64*
  %1727 = load i32, i32* %ECX.i362
  %1728 = zext i32 %1727 to i64
  %1729 = load i64, i64* %PC.i361
  %1730 = add i64 %1729, 3
  store i64 %1730, i64* %PC.i361
  %1731 = shl i64 %1728, 32
  %1732 = ashr exact i64 %1731, 32
  store i64 %1732, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_40f36d, %struct.Memory** %MEMORY
  %loadMem_40f370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 7
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RDX.i360
  %1740 = mul i64 %1739, 4
  %1741 = add i64 %1740, 11187184
  %1742 = load i64, i64* %PC.i359
  %1743 = add i64 %1742, 8
  store i64 %1743, i64* %PC.i359
  %1744 = inttoptr i64 %1741 to i32*
  %1745 = load i32, i32* %1744
  %1746 = sext i32 %1745 to i64
  store i64 %1746, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_40f370, %struct.Memory** %MEMORY
  %loadMem_40f378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 7
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %RDX.i358
  %1754 = load i64, i64* %PC.i357
  %1755 = add i64 %1754, 7
  store i64 %1755, i64* %PC.i357
  %1756 = sext i64 %1753 to i128
  %1757 = and i128 %1756, -18446744073709551616
  %1758 = zext i64 %1753 to i128
  %1759 = or i128 %1757, %1758
  %1760 = mul i128 744, %1759
  %1761 = trunc i128 %1760 to i64
  store i64 %1761, i64* %RDX.i358, align 8
  %1762 = sext i64 %1761 to i128
  %1763 = icmp ne i128 %1762, %1760
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1764, i8* %1765, align 1
  %1766 = trunc i128 %1760 to i32
  %1767 = and i32 %1766, 255
  %1768 = call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1771, i8* %1772, align 1
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1773, align 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1774, align 1
  %1775 = lshr i64 %1761, 63
  %1776 = trunc i64 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1776, i8* %1777, align 1
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1764, i8* %1778, align 1
  store %struct.Memory* %loadMem_40f378, %struct.Memory** %MEMORY
  %loadMem_40f37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 7
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %1787 to i64*
  %1788 = load i64, i64* %RAX.i355
  %1789 = load i64, i64* %RDX.i356
  %1790 = load i64, i64* %PC.i354
  %1791 = add i64 %1790, 3
  store i64 %1791, i64* %PC.i354
  %1792 = add i64 %1789, %1788
  store i64 %1792, i64* %RAX.i355, align 8
  %1793 = icmp ult i64 %1792, %1788
  %1794 = icmp ult i64 %1792, %1789
  %1795 = or i1 %1793, %1794
  %1796 = zext i1 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1796, i8* %1797, align 1
  %1798 = trunc i64 %1792 to i32
  %1799 = and i32 %1798, 255
  %1800 = call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1803, i8* %1804, align 1
  %1805 = xor i64 %1789, %1788
  %1806 = xor i64 %1805, %1792
  %1807 = lshr i64 %1806, 4
  %1808 = trunc i64 %1807 to i8
  %1809 = and i8 %1808, 1
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1809, i8* %1810, align 1
  %1811 = icmp eq i64 %1792, 0
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1812, i8* %1813, align 1
  %1814 = lshr i64 %1792, 63
  %1815 = trunc i64 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1815, i8* %1816, align 1
  %1817 = lshr i64 %1788, 63
  %1818 = lshr i64 %1789, 63
  %1819 = xor i64 %1814, %1817
  %1820 = xor i64 %1814, %1818
  %1821 = add i64 %1819, %1820
  %1822 = icmp eq i64 %1821, 2
  %1823 = zext i1 %1822 to i8
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1823, i8* %1824, align 1
  store %struct.Memory* %loadMem_40f37f, %struct.Memory** %MEMORY
  %loadMem_40f382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 1
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RAX.i353
  %1832 = add i64 %1831, 12
  %1833 = load i64, i64* %PC.i352
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i352
  %1835 = inttoptr i64 %1832 to i32*
  %1836 = load i32, i32* %1835
  %1837 = sub i32 %1836, 1
  %1838 = icmp ult i32 %1836, 1
  %1839 = zext i1 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1839, i8* %1840, align 1
  %1841 = and i32 %1837, 255
  %1842 = call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1845, i8* %1846, align 1
  %1847 = xor i32 %1836, 1
  %1848 = xor i32 %1847, %1837
  %1849 = lshr i32 %1848, 4
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1851, i8* %1852, align 1
  %1853 = icmp eq i32 %1837, 0
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1854, i8* %1855, align 1
  %1856 = lshr i32 %1837, 31
  %1857 = trunc i32 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1857, i8* %1858, align 1
  %1859 = lshr i32 %1836, 31
  %1860 = xor i32 %1856, %1859
  %1861 = add i32 %1860, %1859
  %1862 = icmp eq i32 %1861, 2
  %1863 = zext i1 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1863, i8* %1864, align 1
  store %struct.Memory* %loadMem_40f382, %struct.Memory** %MEMORY
  %loadMem_40f386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %PC.i351
  %1869 = add i64 %1868, 88
  %1870 = load i64, i64* %PC.i351
  %1871 = add i64 %1870, 6
  %1872 = load i64, i64* %PC.i351
  %1873 = add i64 %1872, 6
  store i64 %1873, i64* %PC.i351
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1875 = load i8, i8* %1874, align 1
  %1876 = icmp eq i8 %1875, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %BRANCH_TAKEN, align 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1879 = select i1 %1876, i64 %1869, i64 %1871
  store i64 %1879, i64* %1878, align 8
  store %struct.Memory* %loadMem_40f386, %struct.Memory** %MEMORY
  %loadBr_40f386 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f386 = icmp eq i8 %loadBr_40f386, 1
  br i1 %cmpBr_40f386, label %block_.L_40f3de, label %block_40f38c

block_40f38c:                                     ; preds = %block_.L_40f35d
  %loadMem_40f38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %PC.i349
  %1887 = add i64 %1886, 10
  store i64 %1887, i64* %PC.i349
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_40f38c, %struct.Memory** %MEMORY
  %loadMem_40f396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 5
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %1893 to i64*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 15
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %1896 to i64*
  %1897 = load i64, i64* %RBP.i348
  %1898 = sub i64 %1897, 8
  %1899 = load i64, i64* %PC.i346
  %1900 = add i64 %1899, 3
  store i64 %1900, i64* %PC.i346
  %1901 = inttoptr i64 %1898 to i32*
  %1902 = load i32, i32* %1901
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_40f396, %struct.Memory** %MEMORY
  %loadMem_40f399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 5
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RCX.i345
  %1911 = load i64, i64* %PC.i344
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i344
  %1913 = trunc i64 %1910 to i32
  %1914 = add i32 20, %1913
  %1915 = zext i32 %1914 to i64
  store i64 %1915, i64* %RCX.i345, align 8
  %1916 = icmp ult i32 %1914, %1913
  %1917 = icmp ult i32 %1914, 20
  %1918 = or i1 %1916, %1917
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1919, i8* %1920, align 1
  %1921 = and i32 %1914, 255
  %1922 = call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1925, i8* %1926, align 1
  %1927 = xor i64 20, %1910
  %1928 = trunc i64 %1927 to i32
  %1929 = xor i32 %1928, %1914
  %1930 = lshr i32 %1929, 4
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1932, i8* %1933, align 1
  %1934 = icmp eq i32 %1914, 0
  %1935 = zext i1 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1935, i8* %1936, align 1
  %1937 = lshr i32 %1914, 31
  %1938 = trunc i32 %1937 to i8
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1938, i8* %1939, align 1
  %1940 = lshr i32 %1913, 31
  %1941 = xor i32 %1937, %1940
  %1942 = add i32 %1941, %1937
  %1943 = icmp eq i32 %1942, 2
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1944, i8* %1945, align 1
  store %struct.Memory* %loadMem_40f399, %struct.Memory** %MEMORY
  %loadMem_40f39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 5
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %ECX.i342 = bitcast %union.anon* %1951 to i32*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 15
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %RBP.i343
  %1956 = sub i64 %1955, 36
  %1957 = load i32, i32* %ECX.i342
  %1958 = zext i32 %1957 to i64
  %1959 = load i64, i64* %PC.i341
  %1960 = add i64 %1959, 3
  store i64 %1960, i64* %PC.i341
  %1961 = inttoptr i64 %1956 to i32*
  store i32 %1957, i32* %1961
  store %struct.Memory* %loadMem_40f39c, %struct.Memory** %MEMORY
  %loadMem_40f39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 5
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 15
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1970 to i64*
  %1971 = load i64, i64* %RBP.i340
  %1972 = sub i64 %1971, 8
  %1973 = load i64, i64* %PC.i338
  %1974 = add i64 %1973, 3
  store i64 %1974, i64* %PC.i338
  %1975 = inttoptr i64 %1972 to i32*
  %1976 = load i32, i32* %1975
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_40f39f, %struct.Memory** %MEMORY
  %loadMem_40f3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 33
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 5
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RCX.i337
  %1985 = load i64, i64* %PC.i336
  %1986 = add i64 %1985, 3
  store i64 %1986, i64* %PC.i336
  %1987 = trunc i64 %1984 to i32
  %1988 = add i32 20, %1987
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RCX.i337, align 8
  %1990 = icmp ult i32 %1988, %1987
  %1991 = icmp ult i32 %1988, 20
  %1992 = or i1 %1990, %1991
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1993, i8* %1994, align 1
  %1995 = and i32 %1988, 255
  %1996 = call i32 @llvm.ctpop.i32(i32 %1995)
  %1997 = trunc i32 %1996 to i8
  %1998 = and i8 %1997, 1
  %1999 = xor i8 %1998, 1
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1999, i8* %2000, align 1
  %2001 = xor i64 20, %1984
  %2002 = trunc i64 %2001 to i32
  %2003 = xor i32 %2002, %1988
  %2004 = lshr i32 %2003, 4
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2006, i8* %2007, align 1
  %2008 = icmp eq i32 %1988, 0
  %2009 = zext i1 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2009, i8* %2010, align 1
  %2011 = lshr i32 %1988, 31
  %2012 = trunc i32 %2011 to i8
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2012, i8* %2013, align 1
  %2014 = lshr i32 %1987, 31
  %2015 = xor i32 %2011, %2014
  %2016 = add i32 %2015, %2011
  %2017 = icmp eq i32 %2016, 2
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2018, i8* %2019, align 1
  store %struct.Memory* %loadMem_40f3a2, %struct.Memory** %MEMORY
  %loadMem_40f3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 5
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %ECX.i334 = bitcast %union.anon* %2025 to i32*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 7
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %2028 to i64*
  %2029 = load i32, i32* %ECX.i334
  %2030 = zext i32 %2029 to i64
  %2031 = load i64, i64* %PC.i333
  %2032 = add i64 %2031, 3
  store i64 %2032, i64* %PC.i333
  %2033 = shl i64 %2030, 32
  %2034 = ashr exact i64 %2033, 32
  store i64 %2034, i64* %RDX.i335, align 8
  store %struct.Memory* %loadMem_40f3a5, %struct.Memory** %MEMORY
  %loadMem_40f3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 7
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RDX.i332
  %2042 = mul i64 %2041, 4
  %2043 = add i64 %2042, 11187184
  %2044 = load i64, i64* %PC.i331
  %2045 = add i64 %2044, 8
  store i64 %2045, i64* %PC.i331
  %2046 = inttoptr i64 %2043 to i32*
  %2047 = load i32, i32* %2046
  %2048 = sext i32 %2047 to i64
  store i64 %2048, i64* %RDX.i332, align 8
  store %struct.Memory* %loadMem_40f3a8, %struct.Memory** %MEMORY
  %loadMem_40f3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 7
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RDX.i330
  %2056 = load i64, i64* %PC.i329
  %2057 = add i64 %2056, 7
  store i64 %2057, i64* %PC.i329
  %2058 = sext i64 %2055 to i128
  %2059 = and i128 %2058, -18446744073709551616
  %2060 = zext i64 %2055 to i128
  %2061 = or i128 %2059, %2060
  %2062 = mul i128 744, %2061
  %2063 = trunc i128 %2062 to i64
  store i64 %2063, i64* %RDX.i330, align 8
  %2064 = sext i64 %2063 to i128
  %2065 = icmp ne i128 %2064, %2062
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2066, i8* %2067, align 1
  %2068 = trunc i128 %2062 to i32
  %2069 = and i32 %2068, 255
  %2070 = call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2073, i8* %2074, align 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2075, align 1
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2076, align 1
  %2077 = lshr i64 %2063, 63
  %2078 = trunc i64 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2078, i8* %2079, align 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2066, i8* %2080, align 1
  store %struct.Memory* %loadMem_40f3b0, %struct.Memory** %MEMORY
  %loadMem_40f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 1
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 7
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %2089 to i64*
  %2090 = load i64, i64* %RAX.i327
  %2091 = load i64, i64* %RDX.i328
  %2092 = load i64, i64* %PC.i326
  %2093 = add i64 %2092, 3
  store i64 %2093, i64* %PC.i326
  %2094 = add i64 %2091, %2090
  store i64 %2094, i64* %RAX.i327, align 8
  %2095 = icmp ult i64 %2094, %2090
  %2096 = icmp ult i64 %2094, %2091
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2098, i8* %2099, align 1
  %2100 = trunc i64 %2094 to i32
  %2101 = and i32 %2100, 255
  %2102 = call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2105, i8* %2106, align 1
  %2107 = xor i64 %2091, %2090
  %2108 = xor i64 %2107, %2094
  %2109 = lshr i64 %2108, 4
  %2110 = trunc i64 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2111, i8* %2112, align 1
  %2113 = icmp eq i64 %2094, 0
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2114, i8* %2115, align 1
  %2116 = lshr i64 %2094, 63
  %2117 = trunc i64 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2117, i8* %2118, align 1
  %2119 = lshr i64 %2090, 63
  %2120 = lshr i64 %2091, 63
  %2121 = xor i64 %2116, %2119
  %2122 = xor i64 %2116, %2120
  %2123 = add i64 %2121, %2122
  %2124 = icmp eq i64 %2123, 2
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2125, i8* %2126, align 1
  store %struct.Memory* %loadMem_40f3b7, %struct.Memory** %MEMORY
  %loadMem_40f3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 1
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 5
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %RAX.i324
  %2137 = add i64 %2136, 4
  %2138 = load i64, i64* %PC.i323
  %2139 = add i64 %2138, 3
  store i64 %2139, i64* %PC.i323
  %2140 = inttoptr i64 %2137 to i32*
  %2141 = load i32, i32* %2140
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_40f3ba, %struct.Memory** %MEMORY
  %loadMem_40f3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 15
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %RCX.i321
  %2153 = load i64, i64* %RBP.i322
  %2154 = sub i64 %2153, 32
  %2155 = load i64, i64* %PC.i320
  %2156 = add i64 %2155, 3
  store i64 %2156, i64* %PC.i320
  %2157 = trunc i64 %2152 to i32
  %2158 = inttoptr i64 %2154 to i32*
  %2159 = load i32, i32* %2158
  %2160 = add i32 %2159, %2157
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RCX.i321, align 8
  %2162 = icmp ult i32 %2160, %2157
  %2163 = icmp ult i32 %2160, %2159
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2165, i8* %2166, align 1
  %2167 = and i32 %2160, 255
  %2168 = call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2171, i8* %2172, align 1
  %2173 = xor i32 %2159, %2157
  %2174 = xor i32 %2173, %2160
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2177, i8* %2178, align 1
  %2179 = icmp eq i32 %2160, 0
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2180, i8* %2181, align 1
  %2182 = lshr i32 %2160, 31
  %2183 = trunc i32 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2183, i8* %2184, align 1
  %2185 = lshr i32 %2157, 31
  %2186 = lshr i32 %2159, 31
  %2187 = xor i32 %2182, %2185
  %2188 = xor i32 %2182, %2186
  %2189 = add i32 %2187, %2188
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2191, i8* %2192, align 1
  store %struct.Memory* %loadMem_40f3bd, %struct.Memory** %MEMORY
  %loadMem_40f3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 5
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %ECX.i318 = bitcast %union.anon* %2198 to i32*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 15
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %RBP.i319
  %2203 = sub i64 %2202, 32
  %2204 = load i32, i32* %ECX.i318
  %2205 = zext i32 %2204 to i64
  %2206 = load i64, i64* %PC.i317
  %2207 = add i64 %2206, 3
  store i64 %2207, i64* %PC.i317
  %2208 = inttoptr i64 %2203 to i32*
  store i32 %2204, i32* %2208
  store %struct.Memory* %loadMem_40f3c0, %struct.Memory** %MEMORY
  %loadMem_40f3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 15
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RBP.i316
  %2216 = sub i64 %2215, 32
  %2217 = load i64, i64* %PC.i315
  %2218 = add i64 %2217, 4
  store i64 %2218, i64* %PC.i315
  %2219 = inttoptr i64 %2216 to i32*
  %2220 = load i32, i32* %2219
  %2221 = sub i32 %2220, 1
  %2222 = icmp ult i32 %2220, 1
  %2223 = zext i1 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2223, i8* %2224, align 1
  %2225 = and i32 %2221, 255
  %2226 = call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2229, i8* %2230, align 1
  %2231 = xor i32 %2220, 1
  %2232 = xor i32 %2231, %2221
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2235, i8* %2236, align 1
  %2237 = icmp eq i32 %2221, 0
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2238, i8* %2239, align 1
  %2240 = lshr i32 %2221, 31
  %2241 = trunc i32 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2241, i8* %2242, align 1
  %2243 = lshr i32 %2220, 31
  %2244 = xor i32 %2240, %2243
  %2245 = add i32 %2244, %2243
  %2246 = icmp eq i32 %2245, 2
  %2247 = zext i1 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2247, i8* %2248, align 1
  store %struct.Memory* %loadMem_40f3c3, %struct.Memory** %MEMORY
  %loadMem_40f3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %PC.i314
  %2253 = add i64 %2252, 18
  %2254 = load i64, i64* %PC.i314
  %2255 = add i64 %2254, 6
  %2256 = load i64, i64* %PC.i314
  %2257 = add i64 %2256, 6
  store i64 %2257, i64* %PC.i314
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2259 = load i8, i8* %2258, align 1
  %2260 = icmp ne i8 %2259, 0
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2262 = load i8, i8* %2261, align 1
  %2263 = icmp ne i8 %2262, 0
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2265 = load i8, i8* %2264, align 1
  %2266 = icmp ne i8 %2265, 0
  %2267 = xor i1 %2263, %2266
  %2268 = or i1 %2260, %2267
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %BRANCH_TAKEN, align 1
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2271 = select i1 %2268, i64 %2253, i64 %2255
  store i64 %2271, i64* %2270, align 8
  store %struct.Memory* %loadMem_40f3c7, %struct.Memory** %MEMORY
  %loadBr_40f3c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f3c7 = icmp eq i8 %loadBr_40f3c7, 1
  br i1 %cmpBr_40f3c7, label %block_.L_40f3d9, label %block_40f3cd

block_40f3cd:                                     ; preds = %block_40f38c
  %loadMem_40f3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 15
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %RBP.i313
  %2279 = sub i64 %2278, 4
  %2280 = load i64, i64* %PC.i312
  %2281 = add i64 %2280, 7
  store i64 %2281, i64* %PC.i312
  %2282 = inttoptr i64 %2279 to i32*
  store i32 0, i32* %2282
  store %struct.Memory* %loadMem_40f3cd, %struct.Memory** %MEMORY
  %loadMem_40f3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2285 to i64*
  %2286 = load i64, i64* %PC.i311
  %2287 = add i64 %2286, 678
  %2288 = load i64, i64* %PC.i311
  %2289 = add i64 %2288, 5
  store i64 %2289, i64* %PC.i311
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2287, i64* %2290, align 8
  store %struct.Memory* %loadMem_40f3d4, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f3d9:                                  ; preds = %block_40f38c
  %loadMem_40f3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %PC.i310
  %2295 = add i64 %2294, 5
  %2296 = load i64, i64* %PC.i310
  %2297 = add i64 %2296, 5
  store i64 %2297, i64* %PC.i310
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2295, i64* %2298, align 8
  store %struct.Memory* %loadMem_40f3d9, %struct.Memory** %MEMORY
  br label %block_.L_40f3de

block_.L_40f3de:                                  ; preds = %block_.L_40f3d9, %block_.L_40f35d
  %loadMem_40f3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %PC.i309
  %2303 = add i64 %2302, 5
  %2304 = load i64, i64* %PC.i309
  %2305 = add i64 %2304, 5
  store i64 %2305, i64* %PC.i309
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2303, i64* %2306, align 8
  store %struct.Memory* %loadMem_40f3de, %struct.Memory** %MEMORY
  br label %block_.L_40f3e3

block_.L_40f3e3:                                  ; preds = %block_.L_40f3de
  %loadMem_40f3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 33
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2309 to i64*
  %2310 = load i64, i64* %PC.i308
  %2311 = add i64 %2310, 5
  %2312 = load i64, i64* %PC.i308
  %2313 = add i64 %2312, 5
  store i64 %2313, i64* %PC.i308
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2311, i64* %2314, align 8
  store %struct.Memory* %loadMem_40f3e3, %struct.Memory** %MEMORY
  br label %block_.L_40f3e8

block_.L_40f3e8:                                  ; preds = %block_.L_40f3e3, %block_.L_40f31d
  %loadMem_40f3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 1
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 15
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %RBP.i307
  %2325 = sub i64 %2324, 8
  %2326 = load i64, i64* %PC.i305
  %2327 = add i64 %2326, 3
  store i64 %2327, i64* %PC.i305
  %2328 = inttoptr i64 %2325 to i32*
  %2329 = load i32, i32* %2328
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_40f3e8, %struct.Memory** %MEMORY
  %loadMem_40f3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 1
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %RAX.i304
  %2338 = load i64, i64* %PC.i303
  %2339 = add i64 %2338, 3
  store i64 %2339, i64* %PC.i303
  %2340 = trunc i64 %2337 to i32
  %2341 = sub i32 %2340, 1
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RAX.i304, align 8
  %2343 = icmp ult i32 %2340, 1
  %2344 = zext i1 %2343 to i8
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2344, i8* %2345, align 1
  %2346 = and i32 %2341, 255
  %2347 = call i32 @llvm.ctpop.i32(i32 %2346)
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = xor i8 %2349, 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2350, i8* %2351, align 1
  %2352 = xor i64 1, %2337
  %2353 = trunc i64 %2352 to i32
  %2354 = xor i32 %2353, %2341
  %2355 = lshr i32 %2354, 4
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2357, i8* %2358, align 1
  %2359 = icmp eq i32 %2341, 0
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2360, i8* %2361, align 1
  %2362 = lshr i32 %2341, 31
  %2363 = trunc i32 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2363, i8* %2364, align 1
  %2365 = lshr i32 %2340, 31
  %2366 = xor i32 %2362, %2365
  %2367 = add i32 %2366, %2365
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2369, i8* %2370, align 1
  store %struct.Memory* %loadMem_40f3eb, %struct.Memory** %MEMORY
  %loadMem_40f3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 1
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %2376 to i32*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 5
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %2379 to i64*
  %2380 = load i32, i32* %EAX.i301
  %2381 = zext i32 %2380 to i64
  %2382 = load i64, i64* %PC.i300
  %2383 = add i64 %2382, 3
  store i64 %2383, i64* %PC.i300
  %2384 = shl i64 %2381, 32
  %2385 = ashr exact i64 %2384, 32
  store i64 %2385, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_40f3ee, %struct.Memory** %MEMORY
  %loadMem_40f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 1
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 5
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RCX.i299
  %2396 = add i64 %2395, 12099168
  %2397 = load i64, i64* %PC.i297
  %2398 = add i64 %2397, 8
  store i64 %2398, i64* %PC.i297
  %2399 = inttoptr i64 %2396 to i8*
  %2400 = load i8, i8* %2399
  %2401 = zext i8 %2400 to i64
  store i64 %2401, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_40f3f1, %struct.Memory** %MEMORY
  %loadMem_40f3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 1
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %2407 to i32*
  %2408 = load i32, i32* %EAX.i296
  %2409 = zext i32 %2408 to i64
  %2410 = load i64, i64* %PC.i295
  %2411 = add i64 %2410, 3
  store i64 %2411, i64* %PC.i295
  %2412 = sub i32 %2408, 3
  %2413 = icmp ult i32 %2408, 3
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
  %2422 = xor i64 3, %2409
  %2423 = trunc i64 %2422 to i32
  %2424 = xor i32 %2423, %2412
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2427, i8* %2428, align 1
  %2429 = icmp eq i32 %2412, 0
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2430, i8* %2431, align 1
  %2432 = lshr i32 %2412, 31
  %2433 = trunc i32 %2432 to i8
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2433, i8* %2434, align 1
  %2435 = lshr i32 %2408, 31
  %2436 = xor i32 %2432, %2435
  %2437 = add i32 %2436, %2435
  %2438 = icmp eq i32 %2437, 2
  %2439 = zext i1 %2438 to i8
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2439, i8* %2440, align 1
  store %struct.Memory* %loadMem_40f3f9, %struct.Memory** %MEMORY
  %loadMem_40f3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %PC.i294
  %2445 = add i64 %2444, 183
  %2446 = load i64, i64* %PC.i294
  %2447 = add i64 %2446, 6
  %2448 = load i64, i64* %PC.i294
  %2449 = add i64 %2448, 6
  store i64 %2449, i64* %PC.i294
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2451 = load i8, i8* %2450, align 1
  store i8 %2451, i8* %BRANCH_TAKEN, align 1
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2453 = icmp ne i8 %2451, 0
  %2454 = select i1 %2453, i64 %2445, i64 %2447
  store i64 %2454, i64* %2452, align 8
  store %struct.Memory* %loadMem_40f3fc, %struct.Memory** %MEMORY
  %loadBr_40f3fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f3fc = icmp eq i8 %loadBr_40f3fc, 1
  br i1 %cmpBr_40f3fc, label %block_.L_40f4b3, label %block_40f402

block_40f402:                                     ; preds = %block_.L_40f3e8
  %loadMem_40f402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 1
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 15
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %RBP.i293
  %2465 = sub i64 %2464, 8
  %2466 = load i64, i64* %PC.i291
  %2467 = add i64 %2466, 3
  store i64 %2467, i64* %PC.i291
  %2468 = inttoptr i64 %2465 to i32*
  %2469 = load i32, i32* %2468
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_40f402, %struct.Memory** %MEMORY
  %loadMem_40f405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 1
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %2476 to i64*
  %2477 = load i64, i64* %RAX.i290
  %2478 = load i64, i64* %PC.i289
  %2479 = add i64 %2478, 3
  store i64 %2479, i64* %PC.i289
  %2480 = trunc i64 %2477 to i32
  %2481 = sub i32 %2480, 1
  %2482 = zext i32 %2481 to i64
  store i64 %2482, i64* %RAX.i290, align 8
  %2483 = icmp ult i32 %2480, 1
  %2484 = zext i1 %2483 to i8
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2484, i8* %2485, align 1
  %2486 = and i32 %2481, 255
  %2487 = call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2490, i8* %2491, align 1
  %2492 = xor i64 1, %2477
  %2493 = trunc i64 %2492 to i32
  %2494 = xor i32 %2493, %2481
  %2495 = lshr i32 %2494, 4
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2497, i8* %2498, align 1
  %2499 = icmp eq i32 %2481, 0
  %2500 = zext i1 %2499 to i8
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2500, i8* %2501, align 1
  %2502 = lshr i32 %2481, 31
  %2503 = trunc i32 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2503, i8* %2504, align 1
  %2505 = lshr i32 %2480, 31
  %2506 = xor i32 %2502, %2505
  %2507 = add i32 %2506, %2505
  %2508 = icmp eq i32 %2507, 2
  %2509 = zext i1 %2508 to i8
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2509, i8* %2510, align 1
  store %struct.Memory* %loadMem_40f405, %struct.Memory** %MEMORY
  %loadMem_40f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %2516 to i32*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 5
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %2519 to i64*
  %2520 = load i32, i32* %EAX.i287
  %2521 = zext i32 %2520 to i64
  %2522 = load i64, i64* %PC.i286
  %2523 = add i64 %2522, 3
  store i64 %2523, i64* %PC.i286
  %2524 = shl i64 %2521, 32
  %2525 = ashr exact i64 %2524, 32
  store i64 %2525, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_40f408, %struct.Memory** %MEMORY
  %loadMem_40f40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 5
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RCX.i285
  %2536 = add i64 %2535, 12099168
  %2537 = load i64, i64* %PC.i283
  %2538 = add i64 %2537, 8
  store i64 %2538, i64* %PC.i283
  %2539 = inttoptr i64 %2536 to i8*
  %2540 = load i8, i8* %2539
  %2541 = zext i8 %2540 to i64
  store i64 %2541, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_40f40b, %struct.Memory** %MEMORY
  %loadMem_40f413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 1
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %2547 to i32*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 15
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2550 to i64*
  %2551 = load i32, i32* %EAX.i281
  %2552 = zext i32 %2551 to i64
  %2553 = load i64, i64* %RBP.i282
  %2554 = sub i64 %2553, 28
  %2555 = load i64, i64* %PC.i280
  %2556 = add i64 %2555, 3
  store i64 %2556, i64* %PC.i280
  %2557 = inttoptr i64 %2554 to i32*
  %2558 = load i32, i32* %2557
  %2559 = sub i32 %2551, %2558
  %2560 = icmp ult i32 %2551, %2558
  %2561 = zext i1 %2560 to i8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2561, i8* %2562, align 1
  %2563 = and i32 %2559, 255
  %2564 = call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2567, i8* %2568, align 1
  %2569 = xor i32 %2558, %2551
  %2570 = xor i32 %2569, %2559
  %2571 = lshr i32 %2570, 4
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2573, i8* %2574, align 1
  %2575 = icmp eq i32 %2559, 0
  %2576 = zext i1 %2575 to i8
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2576, i8* %2577, align 1
  %2578 = lshr i32 %2559, 31
  %2579 = trunc i32 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2551, 31
  %2582 = lshr i32 %2558, 31
  %2583 = xor i32 %2582, %2581
  %2584 = xor i32 %2578, %2581
  %2585 = add i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2587, i8* %2588, align 1
  store %struct.Memory* %loadMem_40f413, %struct.Memory** %MEMORY
  %loadMem_40f416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %PC.i279
  %2593 = add i64 %2592, 18
  %2594 = load i64, i64* %PC.i279
  %2595 = add i64 %2594, 6
  %2596 = load i64, i64* %PC.i279
  %2597 = add i64 %2596, 6
  store i64 %2597, i64* %PC.i279
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2599 = load i8, i8* %2598, align 1
  store i8 %2599, i8* %BRANCH_TAKEN, align 1
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2601 = icmp ne i8 %2599, 0
  %2602 = select i1 %2601, i64 %2593, i64 %2595
  store i64 %2602, i64* %2600, align 8
  store %struct.Memory* %loadMem_40f416, %struct.Memory** %MEMORY
  %loadBr_40f416 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f416 = icmp eq i8 %loadBr_40f416, 1
  br i1 %cmpBr_40f416, label %block_.L_40f428, label %block_40f41c

block_40f41c:                                     ; preds = %block_40f402
  %loadMem_40f41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 15
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %2608 to i64*
  %2609 = load i64, i64* %RBP.i278
  %2610 = sub i64 %2609, 4
  %2611 = load i64, i64* %PC.i277
  %2612 = add i64 %2611, 7
  store i64 %2612, i64* %PC.i277
  %2613 = inttoptr i64 %2610 to i32*
  store i32 0, i32* %2613
  store %struct.Memory* %loadMem_40f41c, %struct.Memory** %MEMORY
  %loadMem_40f423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 33
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %PC.i276
  %2618 = add i64 %2617, 599
  %2619 = load i64, i64* %PC.i276
  %2620 = add i64 %2619, 5
  store i64 %2620, i64* %PC.i276
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2618, i64* %2621, align 8
  store %struct.Memory* %loadMem_40f423, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f428:                                  ; preds = %block_40f402
  %loadMem_40f428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 1
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2627 to i64*
  %2628 = load i64, i64* %PC.i274
  %2629 = add i64 %2628, 10
  store i64 %2629, i64* %PC.i274
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_40f428, %struct.Memory** %MEMORY
  %loadMem_40f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 33
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 5
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 15
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2638 to i64*
  %2639 = load i64, i64* %RBP.i273
  %2640 = sub i64 %2639, 8
  %2641 = load i64, i64* %PC.i271
  %2642 = add i64 %2641, 3
  store i64 %2642, i64* %PC.i271
  %2643 = inttoptr i64 %2640 to i32*
  %2644 = load i32, i32* %2643
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_40f432, %struct.Memory** %MEMORY
  %loadMem_40f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 5
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %2651 to i64*
  %2652 = load i64, i64* %RCX.i270
  %2653 = load i64, i64* %PC.i269
  %2654 = add i64 %2653, 3
  store i64 %2654, i64* %PC.i269
  %2655 = trunc i64 %2652 to i32
  %2656 = sub i32 %2655, 1
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RCX.i270, align 8
  %2658 = icmp ult i32 %2655, 1
  %2659 = zext i1 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2659, i8* %2660, align 1
  %2661 = and i32 %2656, 255
  %2662 = call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2665, i8* %2666, align 1
  %2667 = xor i64 1, %2652
  %2668 = trunc i64 %2667 to i32
  %2669 = xor i32 %2668, %2656
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2672, i8* %2673, align 1
  %2674 = icmp eq i32 %2656, 0
  %2675 = zext i1 %2674 to i8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2675, i8* %2676, align 1
  %2677 = lshr i32 %2656, 31
  %2678 = trunc i32 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2678, i8* %2679, align 1
  %2680 = lshr i32 %2655, 31
  %2681 = xor i32 %2677, %2680
  %2682 = add i32 %2681, %2680
  %2683 = icmp eq i32 %2682, 2
  %2684 = zext i1 %2683 to i8
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2684, i8* %2685, align 1
  store %struct.Memory* %loadMem_40f435, %struct.Memory** %MEMORY
  %loadMem_40f438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 5
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %ECX.i267 = bitcast %union.anon* %2691 to i32*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 7
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %2694 to i64*
  %2695 = load i32, i32* %ECX.i267
  %2696 = zext i32 %2695 to i64
  %2697 = load i64, i64* %PC.i266
  %2698 = add i64 %2697, 3
  store i64 %2698, i64* %PC.i266
  %2699 = shl i64 %2696, 32
  %2700 = ashr exact i64 %2699, 32
  store i64 %2700, i64* %RDX.i268, align 8
  store %struct.Memory* %loadMem_40f438, %struct.Memory** %MEMORY
  %loadMem_40f43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 7
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RDX.i265
  %2708 = mul i64 %2707, 4
  %2709 = add i64 %2708, 11187184
  %2710 = load i64, i64* %PC.i264
  %2711 = add i64 %2710, 8
  store i64 %2711, i64* %PC.i264
  %2712 = inttoptr i64 %2709 to i32*
  %2713 = load i32, i32* %2712
  %2714 = sext i32 %2713 to i64
  store i64 %2714, i64* %RDX.i265, align 8
  store %struct.Memory* %loadMem_40f43b, %struct.Memory** %MEMORY
  %loadMem_40f443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 7
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RDX.i263
  %2722 = load i64, i64* %PC.i262
  %2723 = add i64 %2722, 7
  store i64 %2723, i64* %PC.i262
  %2724 = sext i64 %2721 to i128
  %2725 = and i128 %2724, -18446744073709551616
  %2726 = zext i64 %2721 to i128
  %2727 = or i128 %2725, %2726
  %2728 = mul i128 744, %2727
  %2729 = trunc i128 %2728 to i64
  store i64 %2729, i64* %RDX.i263, align 8
  %2730 = sext i64 %2729 to i128
  %2731 = icmp ne i128 %2730, %2728
  %2732 = zext i1 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2732, i8* %2733, align 1
  %2734 = trunc i128 %2728 to i32
  %2735 = and i32 %2734, 255
  %2736 = call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2739, i8* %2740, align 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2741, align 1
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2742, align 1
  %2743 = lshr i64 %2729, 63
  %2744 = trunc i64 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2744, i8* %2745, align 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2732, i8* %2746, align 1
  store %struct.Memory* %loadMem_40f443, %struct.Memory** %MEMORY
  %loadMem_40f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 1
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 7
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %RAX.i260
  %2757 = load i64, i64* %RDX.i261
  %2758 = load i64, i64* %PC.i259
  %2759 = add i64 %2758, 3
  store i64 %2759, i64* %PC.i259
  %2760 = add i64 %2757, %2756
  store i64 %2760, i64* %RAX.i260, align 8
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
  store %struct.Memory* %loadMem_40f44a, %struct.Memory** %MEMORY
  %loadMem_40f44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 1
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %2798 to i64*
  %2799 = load i64, i64* %RAX.i258
  %2800 = add i64 %2799, 12
  %2801 = load i64, i64* %PC.i257
  %2802 = add i64 %2801, 4
  store i64 %2802, i64* %PC.i257
  %2803 = inttoptr i64 %2800 to i32*
  %2804 = load i32, i32* %2803
  %2805 = sub i32 %2804, 1
  %2806 = icmp ult i32 %2804, 1
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2807, i8* %2808, align 1
  %2809 = and i32 %2805, 255
  %2810 = call i32 @llvm.ctpop.i32(i32 %2809)
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = xor i8 %2812, 1
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2813, i8* %2814, align 1
  %2815 = xor i32 %2804, 1
  %2816 = xor i32 %2815, %2805
  %2817 = lshr i32 %2816, 4
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2819, i8* %2820, align 1
  %2821 = icmp eq i32 %2805, 0
  %2822 = zext i1 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2822, i8* %2823, align 1
  %2824 = lshr i32 %2805, 31
  %2825 = trunc i32 %2824 to i8
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2825, i8* %2826, align 1
  %2827 = lshr i32 %2804, 31
  %2828 = xor i32 %2824, %2827
  %2829 = add i32 %2828, %2827
  %2830 = icmp eq i32 %2829, 2
  %2831 = zext i1 %2830 to i8
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2831, i8* %2832, align 1
  store %struct.Memory* %loadMem_40f44d, %struct.Memory** %MEMORY
  %loadMem_40f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %PC.i256
  %2837 = add i64 %2836, 88
  %2838 = load i64, i64* %PC.i256
  %2839 = add i64 %2838, 6
  %2840 = load i64, i64* %PC.i256
  %2841 = add i64 %2840, 6
  store i64 %2841, i64* %PC.i256
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2843 = load i8, i8* %2842, align 1
  %2844 = icmp eq i8 %2843, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %BRANCH_TAKEN, align 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2847 = select i1 %2844, i64 %2837, i64 %2839
  store i64 %2847, i64* %2846, align 8
  store %struct.Memory* %loadMem_40f451, %struct.Memory** %MEMORY
  %loadBr_40f451 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f451 = icmp eq i8 %loadBr_40f451, 1
  br i1 %cmpBr_40f451, label %block_.L_40f4a9, label %block_40f457

block_40f457:                                     ; preds = %block_.L_40f428
  %loadMem_40f457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 1
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %PC.i254
  %2855 = add i64 %2854, 10
  store i64 %2855, i64* %PC.i254
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_40f457, %struct.Memory** %MEMORY
  %loadMem_40f461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 5
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %2864 to i64*
  %2865 = load i64, i64* %RBP.i253
  %2866 = sub i64 %2865, 8
  %2867 = load i64, i64* %PC.i251
  %2868 = add i64 %2867, 3
  store i64 %2868, i64* %PC.i251
  %2869 = inttoptr i64 %2866 to i32*
  %2870 = load i32, i32* %2869
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RCX.i252, align 8
  store %struct.Memory* %loadMem_40f461, %struct.Memory** %MEMORY
  %loadMem_40f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 33
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 5
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RCX.i250
  %2879 = load i64, i64* %PC.i249
  %2880 = add i64 %2879, 3
  store i64 %2880, i64* %PC.i249
  %2881 = trunc i64 %2878 to i32
  %2882 = sub i32 %2881, 1
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RCX.i250, align 8
  %2884 = icmp ult i32 %2881, 1
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2885, i8* %2886, align 1
  %2887 = and i32 %2882, 255
  %2888 = call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2891, i8* %2892, align 1
  %2893 = xor i64 1, %2878
  %2894 = trunc i64 %2893 to i32
  %2895 = xor i32 %2894, %2882
  %2896 = lshr i32 %2895, 4
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2898, i8* %2899, align 1
  %2900 = icmp eq i32 %2882, 0
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2901, i8* %2902, align 1
  %2903 = lshr i32 %2882, 31
  %2904 = trunc i32 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2904, i8* %2905, align 1
  %2906 = lshr i32 %2881, 31
  %2907 = xor i32 %2903, %2906
  %2908 = add i32 %2907, %2906
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2910, i8* %2911, align 1
  store %struct.Memory* %loadMem_40f464, %struct.Memory** %MEMORY
  %loadMem_40f467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 5
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %ECX.i247 = bitcast %union.anon* %2917 to i32*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RBP.i248
  %2922 = sub i64 %2921, 36
  %2923 = load i32, i32* %ECX.i247
  %2924 = zext i32 %2923 to i64
  %2925 = load i64, i64* %PC.i246
  %2926 = add i64 %2925, 3
  store i64 %2926, i64* %PC.i246
  %2927 = inttoptr i64 %2922 to i32*
  store i32 %2923, i32* %2927
  store %struct.Memory* %loadMem_40f467, %struct.Memory** %MEMORY
  %loadMem_40f46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 5
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 15
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2936 to i64*
  %2937 = load i64, i64* %RBP.i245
  %2938 = sub i64 %2937, 8
  %2939 = load i64, i64* %PC.i243
  %2940 = add i64 %2939, 3
  store i64 %2940, i64* %PC.i243
  %2941 = inttoptr i64 %2938 to i32*
  %2942 = load i32, i32* %2941
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_40f46a, %struct.Memory** %MEMORY
  %loadMem_40f46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 5
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RCX.i242
  %2951 = load i64, i64* %PC.i241
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i241
  %2953 = trunc i64 %2950 to i32
  %2954 = sub i32 %2953, 1
  %2955 = zext i32 %2954 to i64
  store i64 %2955, i64* %RCX.i242, align 8
  %2956 = icmp ult i32 %2953, 1
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2957, i8* %2958, align 1
  %2959 = and i32 %2954, 255
  %2960 = call i32 @llvm.ctpop.i32(i32 %2959)
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2963, i8* %2964, align 1
  %2965 = xor i64 1, %2950
  %2966 = trunc i64 %2965 to i32
  %2967 = xor i32 %2966, %2954
  %2968 = lshr i32 %2967, 4
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2970, i8* %2971, align 1
  %2972 = icmp eq i32 %2954, 0
  %2973 = zext i1 %2972 to i8
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2973, i8* %2974, align 1
  %2975 = lshr i32 %2954, 31
  %2976 = trunc i32 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2976, i8* %2977, align 1
  %2978 = lshr i32 %2953, 31
  %2979 = xor i32 %2975, %2978
  %2980 = add i32 %2979, %2978
  %2981 = icmp eq i32 %2980, 2
  %2982 = zext i1 %2981 to i8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2982, i8* %2983, align 1
  store %struct.Memory* %loadMem_40f46d, %struct.Memory** %MEMORY
  %loadMem_40f470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 5
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %ECX.i239 = bitcast %union.anon* %2989 to i32*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 7
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %2992 to i64*
  %2993 = load i32, i32* %ECX.i239
  %2994 = zext i32 %2993 to i64
  %2995 = load i64, i64* %PC.i238
  %2996 = add i64 %2995, 3
  store i64 %2996, i64* %PC.i238
  %2997 = shl i64 %2994, 32
  %2998 = ashr exact i64 %2997, 32
  store i64 %2998, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_40f470, %struct.Memory** %MEMORY
  %loadMem_40f473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 7
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RDX.i237
  %3006 = mul i64 %3005, 4
  %3007 = add i64 %3006, 11187184
  %3008 = load i64, i64* %PC.i236
  %3009 = add i64 %3008, 8
  store i64 %3009, i64* %PC.i236
  %3010 = inttoptr i64 %3007 to i32*
  %3011 = load i32, i32* %3010
  %3012 = sext i32 %3011 to i64
  store i64 %3012, i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_40f473, %struct.Memory** %MEMORY
  %loadMem_40f47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 7
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %RDX.i235
  %3020 = load i64, i64* %PC.i234
  %3021 = add i64 %3020, 7
  store i64 %3021, i64* %PC.i234
  %3022 = sext i64 %3019 to i128
  %3023 = and i128 %3022, -18446744073709551616
  %3024 = zext i64 %3019 to i128
  %3025 = or i128 %3023, %3024
  %3026 = mul i128 744, %3025
  %3027 = trunc i128 %3026 to i64
  store i64 %3027, i64* %RDX.i235, align 8
  %3028 = sext i64 %3027 to i128
  %3029 = icmp ne i128 %3028, %3026
  %3030 = zext i1 %3029 to i8
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3030, i8* %3031, align 1
  %3032 = trunc i128 %3026 to i32
  %3033 = and i32 %3032, 255
  %3034 = call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3037, i8* %3038, align 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3039, align 1
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3040, align 1
  %3041 = lshr i64 %3027, 63
  %3042 = trunc i64 %3041 to i8
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3042, i8* %3043, align 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3030, i8* %3044, align 1
  store %struct.Memory* %loadMem_40f47b, %struct.Memory** %MEMORY
  %loadMem_40f482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 1
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 7
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RAX.i232
  %3055 = load i64, i64* %RDX.i233
  %3056 = load i64, i64* %PC.i231
  %3057 = add i64 %3056, 3
  store i64 %3057, i64* %PC.i231
  %3058 = add i64 %3055, %3054
  store i64 %3058, i64* %RAX.i232, align 8
  %3059 = icmp ult i64 %3058, %3054
  %3060 = icmp ult i64 %3058, %3055
  %3061 = or i1 %3059, %3060
  %3062 = zext i1 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3062, i8* %3063, align 1
  %3064 = trunc i64 %3058 to i32
  %3065 = and i32 %3064, 255
  %3066 = call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3069, i8* %3070, align 1
  %3071 = xor i64 %3055, %3054
  %3072 = xor i64 %3071, %3058
  %3073 = lshr i64 %3072, 4
  %3074 = trunc i64 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3075, i8* %3076, align 1
  %3077 = icmp eq i64 %3058, 0
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3078, i8* %3079, align 1
  %3080 = lshr i64 %3058, 63
  %3081 = trunc i64 %3080 to i8
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3081, i8* %3082, align 1
  %3083 = lshr i64 %3054, 63
  %3084 = lshr i64 %3055, 63
  %3085 = xor i64 %3080, %3083
  %3086 = xor i64 %3080, %3084
  %3087 = add i64 %3085, %3086
  %3088 = icmp eq i64 %3087, 2
  %3089 = zext i1 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3089, i8* %3090, align 1
  store %struct.Memory* %loadMem_40f482, %struct.Memory** %MEMORY
  %loadMem_40f485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 33
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 1
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 5
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %3099 to i64*
  %3100 = load i64, i64* %RAX.i229
  %3101 = add i64 %3100, 4
  %3102 = load i64, i64* %PC.i228
  %3103 = add i64 %3102, 3
  store i64 %3103, i64* %PC.i228
  %3104 = inttoptr i64 %3101 to i32*
  %3105 = load i32, i32* %3104
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_40f485, %struct.Memory** %MEMORY
  %loadMem_40f488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 5
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 15
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %RCX.i226
  %3117 = load i64, i64* %RBP.i227
  %3118 = sub i64 %3117, 32
  %3119 = load i64, i64* %PC.i225
  %3120 = add i64 %3119, 3
  store i64 %3120, i64* %PC.i225
  %3121 = trunc i64 %3116 to i32
  %3122 = inttoptr i64 %3118 to i32*
  %3123 = load i32, i32* %3122
  %3124 = add i32 %3123, %3121
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RCX.i226, align 8
  %3126 = icmp ult i32 %3124, %3121
  %3127 = icmp ult i32 %3124, %3123
  %3128 = or i1 %3126, %3127
  %3129 = zext i1 %3128 to i8
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3129, i8* %3130, align 1
  %3131 = and i32 %3124, 255
  %3132 = call i32 @llvm.ctpop.i32(i32 %3131)
  %3133 = trunc i32 %3132 to i8
  %3134 = and i8 %3133, 1
  %3135 = xor i8 %3134, 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3135, i8* %3136, align 1
  %3137 = xor i32 %3123, %3121
  %3138 = xor i32 %3137, %3124
  %3139 = lshr i32 %3138, 4
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3141, i8* %3142, align 1
  %3143 = icmp eq i32 %3124, 0
  %3144 = zext i1 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3144, i8* %3145, align 1
  %3146 = lshr i32 %3124, 31
  %3147 = trunc i32 %3146 to i8
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3147, i8* %3148, align 1
  %3149 = lshr i32 %3121, 31
  %3150 = lshr i32 %3123, 31
  %3151 = xor i32 %3146, %3149
  %3152 = xor i32 %3146, %3150
  %3153 = add i32 %3151, %3152
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3155, i8* %3156, align 1
  store %struct.Memory* %loadMem_40f488, %struct.Memory** %MEMORY
  %loadMem_40f48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 33
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 5
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %ECX.i223 = bitcast %union.anon* %3162 to i32*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 15
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %RBP.i224
  %3167 = sub i64 %3166, 32
  %3168 = load i32, i32* %ECX.i223
  %3169 = zext i32 %3168 to i64
  %3170 = load i64, i64* %PC.i222
  %3171 = add i64 %3170, 3
  store i64 %3171, i64* %PC.i222
  %3172 = inttoptr i64 %3167 to i32*
  store i32 %3168, i32* %3172
  store %struct.Memory* %loadMem_40f48b, %struct.Memory** %MEMORY
  %loadMem_40f48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 15
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %RBP.i221
  %3180 = sub i64 %3179, 32
  %3181 = load i64, i64* %PC.i220
  %3182 = add i64 %3181, 4
  store i64 %3182, i64* %PC.i220
  %3183 = inttoptr i64 %3180 to i32*
  %3184 = load i32, i32* %3183
  %3185 = sub i32 %3184, 1
  %3186 = icmp ult i32 %3184, 1
  %3187 = zext i1 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3187, i8* %3188, align 1
  %3189 = and i32 %3185, 255
  %3190 = call i32 @llvm.ctpop.i32(i32 %3189)
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3193, i8* %3194, align 1
  %3195 = xor i32 %3184, 1
  %3196 = xor i32 %3195, %3185
  %3197 = lshr i32 %3196, 4
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3199, i8* %3200, align 1
  %3201 = icmp eq i32 %3185, 0
  %3202 = zext i1 %3201 to i8
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3202, i8* %3203, align 1
  %3204 = lshr i32 %3185, 31
  %3205 = trunc i32 %3204 to i8
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3205, i8* %3206, align 1
  %3207 = lshr i32 %3184, 31
  %3208 = xor i32 %3204, %3207
  %3209 = add i32 %3208, %3207
  %3210 = icmp eq i32 %3209, 2
  %3211 = zext i1 %3210 to i8
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3211, i8* %3212, align 1
  store %struct.Memory* %loadMem_40f48e, %struct.Memory** %MEMORY
  %loadMem_40f492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 33
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3215 to i64*
  %3216 = load i64, i64* %PC.i219
  %3217 = add i64 %3216, 18
  %3218 = load i64, i64* %PC.i219
  %3219 = add i64 %3218, 6
  %3220 = load i64, i64* %PC.i219
  %3221 = add i64 %3220, 6
  store i64 %3221, i64* %PC.i219
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3223 = load i8, i8* %3222, align 1
  %3224 = icmp ne i8 %3223, 0
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3226 = load i8, i8* %3225, align 1
  %3227 = icmp ne i8 %3226, 0
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3229 = load i8, i8* %3228, align 1
  %3230 = icmp ne i8 %3229, 0
  %3231 = xor i1 %3227, %3230
  %3232 = or i1 %3224, %3231
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %BRANCH_TAKEN, align 1
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3235 = select i1 %3232, i64 %3217, i64 %3219
  store i64 %3235, i64* %3234, align 8
  store %struct.Memory* %loadMem_40f492, %struct.Memory** %MEMORY
  %loadBr_40f492 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f492 = icmp eq i8 %loadBr_40f492, 1
  br i1 %cmpBr_40f492, label %block_.L_40f4a4, label %block_40f498

block_40f498:                                     ; preds = %block_40f457
  %loadMem_40f498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 15
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %3241 to i64*
  %3242 = load i64, i64* %RBP.i218
  %3243 = sub i64 %3242, 4
  %3244 = load i64, i64* %PC.i217
  %3245 = add i64 %3244, 7
  store i64 %3245, i64* %PC.i217
  %3246 = inttoptr i64 %3243 to i32*
  store i32 0, i32* %3246
  store %struct.Memory* %loadMem_40f498, %struct.Memory** %MEMORY
  %loadMem_40f49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %PC.i216
  %3251 = add i64 %3250, 475
  %3252 = load i64, i64* %PC.i216
  %3253 = add i64 %3252, 5
  store i64 %3253, i64* %PC.i216
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3251, i64* %3254, align 8
  store %struct.Memory* %loadMem_40f49f, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f4a4:                                  ; preds = %block_40f457
  %loadMem_40f4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %PC.i215
  %3259 = add i64 %3258, 5
  %3260 = load i64, i64* %PC.i215
  %3261 = add i64 %3260, 5
  store i64 %3261, i64* %PC.i215
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3259, i64* %3262, align 8
  store %struct.Memory* %loadMem_40f4a4, %struct.Memory** %MEMORY
  br label %block_.L_40f4a9

block_.L_40f4a9:                                  ; preds = %block_.L_40f4a4, %block_.L_40f428
  %loadMem_40f4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %PC.i214
  %3267 = add i64 %3266, 5
  %3268 = load i64, i64* %PC.i214
  %3269 = add i64 %3268, 5
  store i64 %3269, i64* %PC.i214
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3267, i64* %3270, align 8
  store %struct.Memory* %loadMem_40f4a9, %struct.Memory** %MEMORY
  br label %block_.L_40f4ae

block_.L_40f4ae:                                  ; preds = %block_.L_40f4a9
  %loadMem_40f4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %PC.i213
  %3275 = add i64 %3274, 5
  %3276 = load i64, i64* %PC.i213
  %3277 = add i64 %3276, 5
  store i64 %3277, i64* %PC.i213
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3275, i64* %3278, align 8
  store %struct.Memory* %loadMem_40f4ae, %struct.Memory** %MEMORY
  br label %block_.L_40f4b3

block_.L_40f4b3:                                  ; preds = %block_.L_40f4ae, %block_.L_40f3e8
  %loadMem_40f4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 1
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 15
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RBP.i212
  %3289 = sub i64 %3288, 8
  %3290 = load i64, i64* %PC.i210
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC.i210
  %3292 = inttoptr i64 %3289 to i32*
  %3293 = load i32, i32* %3292
  %3294 = zext i32 %3293 to i64
  store i64 %3294, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_40f4b3, %struct.Memory** %MEMORY
  %loadMem_40f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 1
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %RAX.i209
  %3302 = load i64, i64* %PC.i208
  %3303 = add i64 %3302, 3
  store i64 %3303, i64* %PC.i208
  %3304 = trunc i64 %3301 to i32
  %3305 = sub i32 %3304, 20
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RAX.i209, align 8
  %3307 = icmp ult i32 %3304, 20
  %3308 = zext i1 %3307 to i8
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3308, i8* %3309, align 1
  %3310 = and i32 %3305, 255
  %3311 = call i32 @llvm.ctpop.i32(i32 %3310)
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  %3314 = xor i8 %3313, 1
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3314, i8* %3315, align 1
  %3316 = xor i64 20, %3301
  %3317 = trunc i64 %3316 to i32
  %3318 = xor i32 %3317, %3305
  %3319 = lshr i32 %3318, 4
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3321, i8* %3322, align 1
  %3323 = icmp eq i32 %3305, 0
  %3324 = zext i1 %3323 to i8
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3324, i8* %3325, align 1
  %3326 = lshr i32 %3305, 31
  %3327 = trunc i32 %3326 to i8
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3327, i8* %3328, align 1
  %3329 = lshr i32 %3304, 31
  %3330 = xor i32 %3326, %3329
  %3331 = add i32 %3330, %3329
  %3332 = icmp eq i32 %3331, 2
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3333, i8* %3334, align 1
  store %struct.Memory* %loadMem_40f4b6, %struct.Memory** %MEMORY
  %loadMem_40f4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 33
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3337 to i64*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 1
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %3340 to i32*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 5
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %3343 to i64*
  %3344 = load i32, i32* %EAX.i206
  %3345 = zext i32 %3344 to i64
  %3346 = load i64, i64* %PC.i205
  %3347 = add i64 %3346, 3
  store i64 %3347, i64* %PC.i205
  %3348 = shl i64 %3345, 32
  %3349 = ashr exact i64 %3348, 32
  store i64 %3349, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_40f4b9, %struct.Memory** %MEMORY
  %loadMem_40f4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 1
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 5
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3358 to i64*
  %3359 = load i64, i64* %RCX.i204
  %3360 = add i64 %3359, 12099168
  %3361 = load i64, i64* %PC.i202
  %3362 = add i64 %3361, 8
  store i64 %3362, i64* %PC.i202
  %3363 = inttoptr i64 %3360 to i8*
  %3364 = load i8, i8* %3363
  %3365 = zext i8 %3364 to i64
  store i64 %3365, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_40f4bc, %struct.Memory** %MEMORY
  %loadMem_40f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 1
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %3371 to i32*
  %3372 = load i32, i32* %EAX.i201
  %3373 = zext i32 %3372 to i64
  %3374 = load i64, i64* %PC.i200
  %3375 = add i64 %3374, 3
  store i64 %3375, i64* %PC.i200
  %3376 = sub i32 %3372, 3
  %3377 = icmp ult i32 %3372, 3
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3378, i8* %3379, align 1
  %3380 = and i32 %3376, 255
  %3381 = call i32 @llvm.ctpop.i32(i32 %3380)
  %3382 = trunc i32 %3381 to i8
  %3383 = and i8 %3382, 1
  %3384 = xor i8 %3383, 1
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3384, i8* %3385, align 1
  %3386 = xor i64 3, %3373
  %3387 = trunc i64 %3386 to i32
  %3388 = xor i32 %3387, %3376
  %3389 = lshr i32 %3388, 4
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3391, i8* %3392, align 1
  %3393 = icmp eq i32 %3376, 0
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3394, i8* %3395, align 1
  %3396 = lshr i32 %3376, 31
  %3397 = trunc i32 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3397, i8* %3398, align 1
  %3399 = lshr i32 %3372, 31
  %3400 = xor i32 %3396, %3399
  %3401 = add i32 %3400, %3399
  %3402 = icmp eq i32 %3401, 2
  %3403 = zext i1 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3403, i8* %3404, align 1
  store %struct.Memory* %loadMem_40f4c4, %struct.Memory** %MEMORY
  %loadMem_40f4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %PC.i199
  %3409 = add i64 %3408, 183
  %3410 = load i64, i64* %PC.i199
  %3411 = add i64 %3410, 6
  %3412 = load i64, i64* %PC.i199
  %3413 = add i64 %3412, 6
  store i64 %3413, i64* %PC.i199
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3415 = load i8, i8* %3414, align 1
  store i8 %3415, i8* %BRANCH_TAKEN, align 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3417 = icmp ne i8 %3415, 0
  %3418 = select i1 %3417, i64 %3409, i64 %3411
  store i64 %3418, i64* %3416, align 8
  store %struct.Memory* %loadMem_40f4c7, %struct.Memory** %MEMORY
  %loadBr_40f4c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f4c7 = icmp eq i8 %loadBr_40f4c7, 1
  br i1 %cmpBr_40f4c7, label %block_.L_40f57e, label %block_40f4cd

block_40f4cd:                                     ; preds = %block_.L_40f4b3
  %loadMem_40f4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 1
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 15
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %RBP.i198
  %3429 = sub i64 %3428, 8
  %3430 = load i64, i64* %PC.i196
  %3431 = add i64 %3430, 3
  store i64 %3431, i64* %PC.i196
  %3432 = inttoptr i64 %3429 to i32*
  %3433 = load i32, i32* %3432
  %3434 = zext i32 %3433 to i64
  store i64 %3434, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_40f4cd, %struct.Memory** %MEMORY
  %loadMem_40f4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 1
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3440 to i64*
  %3441 = load i64, i64* %RAX.i195
  %3442 = load i64, i64* %PC.i194
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %PC.i194
  %3444 = trunc i64 %3441 to i32
  %3445 = sub i32 %3444, 20
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RAX.i195, align 8
  %3447 = icmp ult i32 %3444, 20
  %3448 = zext i1 %3447 to i8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3448, i8* %3449, align 1
  %3450 = and i32 %3445, 255
  %3451 = call i32 @llvm.ctpop.i32(i32 %3450)
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  %3454 = xor i8 %3453, 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3454, i8* %3455, align 1
  %3456 = xor i64 20, %3441
  %3457 = trunc i64 %3456 to i32
  %3458 = xor i32 %3457, %3445
  %3459 = lshr i32 %3458, 4
  %3460 = trunc i32 %3459 to i8
  %3461 = and i8 %3460, 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3461, i8* %3462, align 1
  %3463 = icmp eq i32 %3445, 0
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3464, i8* %3465, align 1
  %3466 = lshr i32 %3445, 31
  %3467 = trunc i32 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3444, 31
  %3470 = xor i32 %3466, %3469
  %3471 = add i32 %3470, %3469
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3473, i8* %3474, align 1
  store %struct.Memory* %loadMem_40f4d0, %struct.Memory** %MEMORY
  %loadMem_40f4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %3480 to i32*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 5
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %3483 to i64*
  %3484 = load i32, i32* %EAX.i192
  %3485 = zext i32 %3484 to i64
  %3486 = load i64, i64* %PC.i191
  %3487 = add i64 %3486, 3
  store i64 %3487, i64* %PC.i191
  %3488 = shl i64 %3485, 32
  %3489 = ashr exact i64 %3488, 32
  store i64 %3489, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_40f4d3, %struct.Memory** %MEMORY
  %loadMem_40f4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 5
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RCX.i190
  %3500 = add i64 %3499, 12099168
  %3501 = load i64, i64* %PC.i188
  %3502 = add i64 %3501, 8
  store i64 %3502, i64* %PC.i188
  %3503 = inttoptr i64 %3500 to i8*
  %3504 = load i8, i8* %3503
  %3505 = zext i8 %3504 to i64
  store i64 %3505, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_40f4d6, %struct.Memory** %MEMORY
  %loadMem_40f4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %EAX.i186 = bitcast %union.anon* %3511 to i32*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 15
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3514 to i64*
  %3515 = load i32, i32* %EAX.i186
  %3516 = zext i32 %3515 to i64
  %3517 = load i64, i64* %RBP.i187
  %3518 = sub i64 %3517, 28
  %3519 = load i64, i64* %PC.i185
  %3520 = add i64 %3519, 3
  store i64 %3520, i64* %PC.i185
  %3521 = inttoptr i64 %3518 to i32*
  %3522 = load i32, i32* %3521
  %3523 = sub i32 %3515, %3522
  %3524 = icmp ult i32 %3515, %3522
  %3525 = zext i1 %3524 to i8
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3525, i8* %3526, align 1
  %3527 = and i32 %3523, 255
  %3528 = call i32 @llvm.ctpop.i32(i32 %3527)
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = xor i8 %3530, 1
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3531, i8* %3532, align 1
  %3533 = xor i32 %3522, %3515
  %3534 = xor i32 %3533, %3523
  %3535 = lshr i32 %3534, 4
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3537, i8* %3538, align 1
  %3539 = icmp eq i32 %3523, 0
  %3540 = zext i1 %3539 to i8
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3540, i8* %3541, align 1
  %3542 = lshr i32 %3523, 31
  %3543 = trunc i32 %3542 to i8
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3543, i8* %3544, align 1
  %3545 = lshr i32 %3515, 31
  %3546 = lshr i32 %3522, 31
  %3547 = xor i32 %3546, %3545
  %3548 = xor i32 %3542, %3545
  %3549 = add i32 %3548, %3547
  %3550 = icmp eq i32 %3549, 2
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3551, i8* %3552, align 1
  store %struct.Memory* %loadMem_40f4de, %struct.Memory** %MEMORY
  %loadMem_40f4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3555 to i64*
  %3556 = load i64, i64* %PC.i184
  %3557 = add i64 %3556, 18
  %3558 = load i64, i64* %PC.i184
  %3559 = add i64 %3558, 6
  %3560 = load i64, i64* %PC.i184
  %3561 = add i64 %3560, 6
  store i64 %3561, i64* %PC.i184
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3563 = load i8, i8* %3562, align 1
  store i8 %3563, i8* %BRANCH_TAKEN, align 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3565 = icmp ne i8 %3563, 0
  %3566 = select i1 %3565, i64 %3557, i64 %3559
  store i64 %3566, i64* %3564, align 8
  store %struct.Memory* %loadMem_40f4e1, %struct.Memory** %MEMORY
  %loadBr_40f4e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f4e1 = icmp eq i8 %loadBr_40f4e1, 1
  br i1 %cmpBr_40f4e1, label %block_.L_40f4f3, label %block_40f4e7

block_40f4e7:                                     ; preds = %block_40f4cd
  %loadMem_40f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 15
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3572 to i64*
  %3573 = load i64, i64* %RBP.i183
  %3574 = sub i64 %3573, 4
  %3575 = load i64, i64* %PC.i182
  %3576 = add i64 %3575, 7
  store i64 %3576, i64* %PC.i182
  %3577 = inttoptr i64 %3574 to i32*
  store i32 0, i32* %3577
  store %struct.Memory* %loadMem_40f4e7, %struct.Memory** %MEMORY
  %loadMem_40f4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 33
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3580 to i64*
  %3581 = load i64, i64* %PC.i181
  %3582 = add i64 %3581, 396
  %3583 = load i64, i64* %PC.i181
  %3584 = add i64 %3583, 5
  store i64 %3584, i64* %PC.i181
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3582, i64* %3585, align 8
  store %struct.Memory* %loadMem_40f4ee, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f4f3:                                  ; preds = %block_40f4cd
  %loadMem_40f4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 1
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %PC.i179
  %3593 = add i64 %3592, 10
  store i64 %3593, i64* %PC.i179
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_40f4f3, %struct.Memory** %MEMORY
  %loadMem_40f4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 5
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 15
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RBP.i178
  %3604 = sub i64 %3603, 8
  %3605 = load i64, i64* %PC.i176
  %3606 = add i64 %3605, 3
  store i64 %3606, i64* %PC.i176
  %3607 = inttoptr i64 %3604 to i32*
  %3608 = load i32, i32* %3607
  %3609 = zext i32 %3608 to i64
  store i64 %3609, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_40f4fd, %struct.Memory** %MEMORY
  %loadMem_40f500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 33
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 5
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %RCX.i175
  %3617 = load i64, i64* %PC.i174
  %3618 = add i64 %3617, 3
  store i64 %3618, i64* %PC.i174
  %3619 = trunc i64 %3616 to i32
  %3620 = sub i32 %3619, 20
  %3621 = zext i32 %3620 to i64
  store i64 %3621, i64* %RCX.i175, align 8
  %3622 = icmp ult i32 %3619, 20
  %3623 = zext i1 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3623, i8* %3624, align 1
  %3625 = and i32 %3620, 255
  %3626 = call i32 @llvm.ctpop.i32(i32 %3625)
  %3627 = trunc i32 %3626 to i8
  %3628 = and i8 %3627, 1
  %3629 = xor i8 %3628, 1
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3629, i8* %3630, align 1
  %3631 = xor i64 20, %3616
  %3632 = trunc i64 %3631 to i32
  %3633 = xor i32 %3632, %3620
  %3634 = lshr i32 %3633, 4
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3636, i8* %3637, align 1
  %3638 = icmp eq i32 %3620, 0
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3639, i8* %3640, align 1
  %3641 = lshr i32 %3620, 31
  %3642 = trunc i32 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3642, i8* %3643, align 1
  %3644 = lshr i32 %3619, 31
  %3645 = xor i32 %3641, %3644
  %3646 = add i32 %3645, %3644
  %3647 = icmp eq i32 %3646, 2
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3648, i8* %3649, align 1
  store %struct.Memory* %loadMem_40f500, %struct.Memory** %MEMORY
  %loadMem_40f503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 5
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %ECX.i172 = bitcast %union.anon* %3655 to i32*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 7
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %3658 to i64*
  %3659 = load i32, i32* %ECX.i172
  %3660 = zext i32 %3659 to i64
  %3661 = load i64, i64* %PC.i171
  %3662 = add i64 %3661, 3
  store i64 %3662, i64* %PC.i171
  %3663 = shl i64 %3660, 32
  %3664 = ashr exact i64 %3663, 32
  store i64 %3664, i64* %RDX.i173, align 8
  store %struct.Memory* %loadMem_40f503, %struct.Memory** %MEMORY
  %loadMem_40f506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 33
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3667 to i64*
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 7
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %3670 to i64*
  %3671 = load i64, i64* %RDX.i170
  %3672 = mul i64 %3671, 4
  %3673 = add i64 %3672, 11187184
  %3674 = load i64, i64* %PC.i169
  %3675 = add i64 %3674, 8
  store i64 %3675, i64* %PC.i169
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676
  %3678 = sext i32 %3677 to i64
  store i64 %3678, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_40f506, %struct.Memory** %MEMORY
  %loadMem_40f50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 7
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %3684 to i64*
  %3685 = load i64, i64* %RDX.i168
  %3686 = load i64, i64* %PC.i167
  %3687 = add i64 %3686, 7
  store i64 %3687, i64* %PC.i167
  %3688 = sext i64 %3685 to i128
  %3689 = and i128 %3688, -18446744073709551616
  %3690 = zext i64 %3685 to i128
  %3691 = or i128 %3689, %3690
  %3692 = mul i128 744, %3691
  %3693 = trunc i128 %3692 to i64
  store i64 %3693, i64* %RDX.i168, align 8
  %3694 = sext i64 %3693 to i128
  %3695 = icmp ne i128 %3694, %3692
  %3696 = zext i1 %3695 to i8
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3696, i8* %3697, align 1
  %3698 = trunc i128 %3692 to i32
  %3699 = and i32 %3698, 255
  %3700 = call i32 @llvm.ctpop.i32(i32 %3699)
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = xor i8 %3702, 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3703, i8* %3704, align 1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3705, align 1
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3706, align 1
  %3707 = lshr i64 %3693, 63
  %3708 = trunc i64 %3707 to i8
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3708, i8* %3709, align 1
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3696, i8* %3710, align 1
  store %struct.Memory* %loadMem_40f50e, %struct.Memory** %MEMORY
  %loadMem_40f515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 33
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 1
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 7
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %3719 to i64*
  %3720 = load i64, i64* %RAX.i165
  %3721 = load i64, i64* %RDX.i166
  %3722 = load i64, i64* %PC.i164
  %3723 = add i64 %3722, 3
  store i64 %3723, i64* %PC.i164
  %3724 = add i64 %3721, %3720
  store i64 %3724, i64* %RAX.i165, align 8
  %3725 = icmp ult i64 %3724, %3720
  %3726 = icmp ult i64 %3724, %3721
  %3727 = or i1 %3725, %3726
  %3728 = zext i1 %3727 to i8
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3728, i8* %3729, align 1
  %3730 = trunc i64 %3724 to i32
  %3731 = and i32 %3730, 255
  %3732 = call i32 @llvm.ctpop.i32(i32 %3731)
  %3733 = trunc i32 %3732 to i8
  %3734 = and i8 %3733, 1
  %3735 = xor i8 %3734, 1
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3735, i8* %3736, align 1
  %3737 = xor i64 %3721, %3720
  %3738 = xor i64 %3737, %3724
  %3739 = lshr i64 %3738, 4
  %3740 = trunc i64 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3741, i8* %3742, align 1
  %3743 = icmp eq i64 %3724, 0
  %3744 = zext i1 %3743 to i8
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3744, i8* %3745, align 1
  %3746 = lshr i64 %3724, 63
  %3747 = trunc i64 %3746 to i8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3747, i8* %3748, align 1
  %3749 = lshr i64 %3720, 63
  %3750 = lshr i64 %3721, 63
  %3751 = xor i64 %3746, %3749
  %3752 = xor i64 %3746, %3750
  %3753 = add i64 %3751, %3752
  %3754 = icmp eq i64 %3753, 2
  %3755 = zext i1 %3754 to i8
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3755, i8* %3756, align 1
  store %struct.Memory* %loadMem_40f515, %struct.Memory** %MEMORY
  %loadMem_40f518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 1
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RAX.i163
  %3764 = add i64 %3763, 12
  %3765 = load i64, i64* %PC.i162
  %3766 = add i64 %3765, 4
  store i64 %3766, i64* %PC.i162
  %3767 = inttoptr i64 %3764 to i32*
  %3768 = load i32, i32* %3767
  %3769 = sub i32 %3768, 1
  %3770 = icmp ult i32 %3768, 1
  %3771 = zext i1 %3770 to i8
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3771, i8* %3772, align 1
  %3773 = and i32 %3769, 255
  %3774 = call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3777, i8* %3778, align 1
  %3779 = xor i32 %3768, 1
  %3780 = xor i32 %3779, %3769
  %3781 = lshr i32 %3780, 4
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3783, i8* %3784, align 1
  %3785 = icmp eq i32 %3769, 0
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3786, i8* %3787, align 1
  %3788 = lshr i32 %3769, 31
  %3789 = trunc i32 %3788 to i8
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3789, i8* %3790, align 1
  %3791 = lshr i32 %3768, 31
  %3792 = xor i32 %3788, %3791
  %3793 = add i32 %3792, %3791
  %3794 = icmp eq i32 %3793, 2
  %3795 = zext i1 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3795, i8* %3796, align 1
  store %struct.Memory* %loadMem_40f518, %struct.Memory** %MEMORY
  %loadMem_40f51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3799 to i64*
  %3800 = load i64, i64* %PC.i161
  %3801 = add i64 %3800, 88
  %3802 = load i64, i64* %PC.i161
  %3803 = add i64 %3802, 6
  %3804 = load i64, i64* %PC.i161
  %3805 = add i64 %3804, 6
  store i64 %3805, i64* %PC.i161
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3807 = load i8, i8* %3806, align 1
  %3808 = icmp eq i8 %3807, 0
  %3809 = zext i1 %3808 to i8
  store i8 %3809, i8* %BRANCH_TAKEN, align 1
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3811 = select i1 %3808, i64 %3801, i64 %3803
  store i64 %3811, i64* %3810, align 8
  store %struct.Memory* %loadMem_40f51c, %struct.Memory** %MEMORY
  %loadBr_40f51c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f51c = icmp eq i8 %loadBr_40f51c, 1
  br i1 %cmpBr_40f51c, label %block_.L_40f574, label %block_40f522

block_40f522:                                     ; preds = %block_.L_40f4f3
  %loadMem_40f522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 1
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %PC.i159
  %3819 = add i64 %3818, 10
  store i64 %3819, i64* %PC.i159
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_40f522, %struct.Memory** %MEMORY
  %loadMem_40f52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 5
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 15
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %RBP.i158
  %3830 = sub i64 %3829, 8
  %3831 = load i64, i64* %PC.i156
  %3832 = add i64 %3831, 3
  store i64 %3832, i64* %PC.i156
  %3833 = inttoptr i64 %3830 to i32*
  %3834 = load i32, i32* %3833
  %3835 = zext i32 %3834 to i64
  store i64 %3835, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_40f52c, %struct.Memory** %MEMORY
  %loadMem_40f52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 5
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %RCX.i155
  %3843 = load i64, i64* %PC.i154
  %3844 = add i64 %3843, 3
  store i64 %3844, i64* %PC.i154
  %3845 = trunc i64 %3842 to i32
  %3846 = sub i32 %3845, 20
  %3847 = zext i32 %3846 to i64
  store i64 %3847, i64* %RCX.i155, align 8
  %3848 = icmp ult i32 %3845, 20
  %3849 = zext i1 %3848 to i8
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3849, i8* %3850, align 1
  %3851 = and i32 %3846, 255
  %3852 = call i32 @llvm.ctpop.i32(i32 %3851)
  %3853 = trunc i32 %3852 to i8
  %3854 = and i8 %3853, 1
  %3855 = xor i8 %3854, 1
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3855, i8* %3856, align 1
  %3857 = xor i64 20, %3842
  %3858 = trunc i64 %3857 to i32
  %3859 = xor i32 %3858, %3846
  %3860 = lshr i32 %3859, 4
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3862, i8* %3863, align 1
  %3864 = icmp eq i32 %3846, 0
  %3865 = zext i1 %3864 to i8
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3865, i8* %3866, align 1
  %3867 = lshr i32 %3846, 31
  %3868 = trunc i32 %3867 to i8
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3868, i8* %3869, align 1
  %3870 = lshr i32 %3845, 31
  %3871 = xor i32 %3867, %3870
  %3872 = add i32 %3871, %3870
  %3873 = icmp eq i32 %3872, 2
  %3874 = zext i1 %3873 to i8
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3874, i8* %3875, align 1
  store %struct.Memory* %loadMem_40f52f, %struct.Memory** %MEMORY
  %loadMem_40f532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 5
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %ECX.i152 = bitcast %union.anon* %3881 to i32*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 15
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %RBP.i153
  %3886 = sub i64 %3885, 36
  %3887 = load i32, i32* %ECX.i152
  %3888 = zext i32 %3887 to i64
  %3889 = load i64, i64* %PC.i151
  %3890 = add i64 %3889, 3
  store i64 %3890, i64* %PC.i151
  %3891 = inttoptr i64 %3886 to i32*
  store i32 %3887, i32* %3891
  store %struct.Memory* %loadMem_40f532, %struct.Memory** %MEMORY
  %loadMem_40f535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 5
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 15
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RBP.i150
  %3902 = sub i64 %3901, 8
  %3903 = load i64, i64* %PC.i148
  %3904 = add i64 %3903, 3
  store i64 %3904, i64* %PC.i148
  %3905 = inttoptr i64 %3902 to i32*
  %3906 = load i32, i32* %3905
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_40f535, %struct.Memory** %MEMORY
  %loadMem_40f538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 5
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %3913 to i64*
  %3914 = load i64, i64* %RCX.i147
  %3915 = load i64, i64* %PC.i146
  %3916 = add i64 %3915, 3
  store i64 %3916, i64* %PC.i146
  %3917 = trunc i64 %3914 to i32
  %3918 = sub i32 %3917, 20
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RCX.i147, align 8
  %3920 = icmp ult i32 %3917, 20
  %3921 = zext i1 %3920 to i8
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3921, i8* %3922, align 1
  %3923 = and i32 %3918, 255
  %3924 = call i32 @llvm.ctpop.i32(i32 %3923)
  %3925 = trunc i32 %3924 to i8
  %3926 = and i8 %3925, 1
  %3927 = xor i8 %3926, 1
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3927, i8* %3928, align 1
  %3929 = xor i64 20, %3914
  %3930 = trunc i64 %3929 to i32
  %3931 = xor i32 %3930, %3918
  %3932 = lshr i32 %3931, 4
  %3933 = trunc i32 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3934, i8* %3935, align 1
  %3936 = icmp eq i32 %3918, 0
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3937, i8* %3938, align 1
  %3939 = lshr i32 %3918, 31
  %3940 = trunc i32 %3939 to i8
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3940, i8* %3941, align 1
  %3942 = lshr i32 %3917, 31
  %3943 = xor i32 %3939, %3942
  %3944 = add i32 %3943, %3942
  %3945 = icmp eq i32 %3944, 2
  %3946 = zext i1 %3945 to i8
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3946, i8* %3947, align 1
  store %struct.Memory* %loadMem_40f538, %struct.Memory** %MEMORY
  %loadMem_40f53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 5
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %ECX.i144 = bitcast %union.anon* %3953 to i32*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 7
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %3956 to i64*
  %3957 = load i32, i32* %ECX.i144
  %3958 = zext i32 %3957 to i64
  %3959 = load i64, i64* %PC.i143
  %3960 = add i64 %3959, 3
  store i64 %3960, i64* %PC.i143
  %3961 = shl i64 %3958, 32
  %3962 = ashr exact i64 %3961, 32
  store i64 %3962, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_40f53b, %struct.Memory** %MEMORY
  %loadMem_40f53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 33
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 7
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %3968 to i64*
  %3969 = load i64, i64* %RDX.i142
  %3970 = mul i64 %3969, 4
  %3971 = add i64 %3970, 11187184
  %3972 = load i64, i64* %PC.i141
  %3973 = add i64 %3972, 8
  store i64 %3973, i64* %PC.i141
  %3974 = inttoptr i64 %3971 to i32*
  %3975 = load i32, i32* %3974
  %3976 = sext i32 %3975 to i64
  store i64 %3976, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_40f53e, %struct.Memory** %MEMORY
  %loadMem_40f546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 7
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RDX.i140
  %3984 = load i64, i64* %PC.i139
  %3985 = add i64 %3984, 7
  store i64 %3985, i64* %PC.i139
  %3986 = sext i64 %3983 to i128
  %3987 = and i128 %3986, -18446744073709551616
  %3988 = zext i64 %3983 to i128
  %3989 = or i128 %3987, %3988
  %3990 = mul i128 744, %3989
  %3991 = trunc i128 %3990 to i64
  store i64 %3991, i64* %RDX.i140, align 8
  %3992 = sext i64 %3991 to i128
  %3993 = icmp ne i128 %3992, %3990
  %3994 = zext i1 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3994, i8* %3995, align 1
  %3996 = trunc i128 %3990 to i32
  %3997 = and i32 %3996, 255
  %3998 = call i32 @llvm.ctpop.i32(i32 %3997)
  %3999 = trunc i32 %3998 to i8
  %4000 = and i8 %3999, 1
  %4001 = xor i8 %4000, 1
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4001, i8* %4002, align 1
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4003, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4004, align 1
  %4005 = lshr i64 %3991, 63
  %4006 = trunc i64 %4005 to i8
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4006, i8* %4007, align 1
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3994, i8* %4008, align 1
  store %struct.Memory* %loadMem_40f546, %struct.Memory** %MEMORY
  %loadMem_40f54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 1
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 7
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %4017 to i64*
  %4018 = load i64, i64* %RAX.i137
  %4019 = load i64, i64* %RDX.i138
  %4020 = load i64, i64* %PC.i136
  %4021 = add i64 %4020, 3
  store i64 %4021, i64* %PC.i136
  %4022 = add i64 %4019, %4018
  store i64 %4022, i64* %RAX.i137, align 8
  %4023 = icmp ult i64 %4022, %4018
  %4024 = icmp ult i64 %4022, %4019
  %4025 = or i1 %4023, %4024
  %4026 = zext i1 %4025 to i8
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4026, i8* %4027, align 1
  %4028 = trunc i64 %4022 to i32
  %4029 = and i32 %4028, 255
  %4030 = call i32 @llvm.ctpop.i32(i32 %4029)
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4033, i8* %4034, align 1
  %4035 = xor i64 %4019, %4018
  %4036 = xor i64 %4035, %4022
  %4037 = lshr i64 %4036, 4
  %4038 = trunc i64 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4039, i8* %4040, align 1
  %4041 = icmp eq i64 %4022, 0
  %4042 = zext i1 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4042, i8* %4043, align 1
  %4044 = lshr i64 %4022, 63
  %4045 = trunc i64 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4045, i8* %4046, align 1
  %4047 = lshr i64 %4018, 63
  %4048 = lshr i64 %4019, 63
  %4049 = xor i64 %4044, %4047
  %4050 = xor i64 %4044, %4048
  %4051 = add i64 %4049, %4050
  %4052 = icmp eq i64 %4051, 2
  %4053 = zext i1 %4052 to i8
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4053, i8* %4054, align 1
  store %struct.Memory* %loadMem_40f54d, %struct.Memory** %MEMORY
  %loadMem_40f550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 1
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 5
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %RAX.i134
  %4065 = add i64 %4064, 4
  %4066 = load i64, i64* %PC.i133
  %4067 = add i64 %4066, 3
  store i64 %4067, i64* %PC.i133
  %4068 = inttoptr i64 %4065 to i32*
  %4069 = load i32, i32* %4068
  %4070 = zext i32 %4069 to i64
  store i64 %4070, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_40f550, %struct.Memory** %MEMORY
  %loadMem_40f553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 33
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 5
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 15
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %4079 to i64*
  %4080 = load i64, i64* %RCX.i131
  %4081 = load i64, i64* %RBP.i132
  %4082 = sub i64 %4081, 32
  %4083 = load i64, i64* %PC.i130
  %4084 = add i64 %4083, 3
  store i64 %4084, i64* %PC.i130
  %4085 = trunc i64 %4080 to i32
  %4086 = inttoptr i64 %4082 to i32*
  %4087 = load i32, i32* %4086
  %4088 = add i32 %4087, %4085
  %4089 = zext i32 %4088 to i64
  store i64 %4089, i64* %RCX.i131, align 8
  %4090 = icmp ult i32 %4088, %4085
  %4091 = icmp ult i32 %4088, %4087
  %4092 = or i1 %4090, %4091
  %4093 = zext i1 %4092 to i8
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4093, i8* %4094, align 1
  %4095 = and i32 %4088, 255
  %4096 = call i32 @llvm.ctpop.i32(i32 %4095)
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  %4099 = xor i8 %4098, 1
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4099, i8* %4100, align 1
  %4101 = xor i32 %4087, %4085
  %4102 = xor i32 %4101, %4088
  %4103 = lshr i32 %4102, 4
  %4104 = trunc i32 %4103 to i8
  %4105 = and i8 %4104, 1
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4105, i8* %4106, align 1
  %4107 = icmp eq i32 %4088, 0
  %4108 = zext i1 %4107 to i8
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4108, i8* %4109, align 1
  %4110 = lshr i32 %4088, 31
  %4111 = trunc i32 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4111, i8* %4112, align 1
  %4113 = lshr i32 %4085, 31
  %4114 = lshr i32 %4087, 31
  %4115 = xor i32 %4110, %4113
  %4116 = xor i32 %4110, %4114
  %4117 = add i32 %4115, %4116
  %4118 = icmp eq i32 %4117, 2
  %4119 = zext i1 %4118 to i8
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4119, i8* %4120, align 1
  store %struct.Memory* %loadMem_40f553, %struct.Memory** %MEMORY
  %loadMem_40f556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 5
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %ECX.i128 = bitcast %union.anon* %4126 to i32*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 15
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4129 to i64*
  %4130 = load i64, i64* %RBP.i129
  %4131 = sub i64 %4130, 32
  %4132 = load i32, i32* %ECX.i128
  %4133 = zext i32 %4132 to i64
  %4134 = load i64, i64* %PC.i127
  %4135 = add i64 %4134, 3
  store i64 %4135, i64* %PC.i127
  %4136 = inttoptr i64 %4131 to i32*
  store i32 %4132, i32* %4136
  store %struct.Memory* %loadMem_40f556, %struct.Memory** %MEMORY
  %loadMem_40f559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 33
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 15
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RBP.i126
  %4144 = sub i64 %4143, 32
  %4145 = load i64, i64* %PC.i125
  %4146 = add i64 %4145, 4
  store i64 %4146, i64* %PC.i125
  %4147 = inttoptr i64 %4144 to i32*
  %4148 = load i32, i32* %4147
  %4149 = sub i32 %4148, 1
  %4150 = icmp ult i32 %4148, 1
  %4151 = zext i1 %4150 to i8
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4151, i8* %4152, align 1
  %4153 = and i32 %4149, 255
  %4154 = call i32 @llvm.ctpop.i32(i32 %4153)
  %4155 = trunc i32 %4154 to i8
  %4156 = and i8 %4155, 1
  %4157 = xor i8 %4156, 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4157, i8* %4158, align 1
  %4159 = xor i32 %4148, 1
  %4160 = xor i32 %4159, %4149
  %4161 = lshr i32 %4160, 4
  %4162 = trunc i32 %4161 to i8
  %4163 = and i8 %4162, 1
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4163, i8* %4164, align 1
  %4165 = icmp eq i32 %4149, 0
  %4166 = zext i1 %4165 to i8
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4166, i8* %4167, align 1
  %4168 = lshr i32 %4149, 31
  %4169 = trunc i32 %4168 to i8
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4169, i8* %4170, align 1
  %4171 = lshr i32 %4148, 31
  %4172 = xor i32 %4168, %4171
  %4173 = add i32 %4172, %4171
  %4174 = icmp eq i32 %4173, 2
  %4175 = zext i1 %4174 to i8
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4175, i8* %4176, align 1
  store %struct.Memory* %loadMem_40f559, %struct.Memory** %MEMORY
  %loadMem_40f55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 33
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4179 to i64*
  %4180 = load i64, i64* %PC.i124
  %4181 = add i64 %4180, 18
  %4182 = load i64, i64* %PC.i124
  %4183 = add i64 %4182, 6
  %4184 = load i64, i64* %PC.i124
  %4185 = add i64 %4184, 6
  store i64 %4185, i64* %PC.i124
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4187 = load i8, i8* %4186, align 1
  %4188 = icmp ne i8 %4187, 0
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4190 = load i8, i8* %4189, align 1
  %4191 = icmp ne i8 %4190, 0
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4193 = load i8, i8* %4192, align 1
  %4194 = icmp ne i8 %4193, 0
  %4195 = xor i1 %4191, %4194
  %4196 = or i1 %4188, %4195
  %4197 = zext i1 %4196 to i8
  store i8 %4197, i8* %BRANCH_TAKEN, align 1
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4199 = select i1 %4196, i64 %4181, i64 %4183
  store i64 %4199, i64* %4198, align 8
  store %struct.Memory* %loadMem_40f55d, %struct.Memory** %MEMORY
  %loadBr_40f55d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f55d = icmp eq i8 %loadBr_40f55d, 1
  br i1 %cmpBr_40f55d, label %block_.L_40f56f, label %block_40f563

block_40f563:                                     ; preds = %block_40f522
  %loadMem_40f563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 15
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4205 to i64*
  %4206 = load i64, i64* %RBP.i123
  %4207 = sub i64 %4206, 4
  %4208 = load i64, i64* %PC.i122
  %4209 = add i64 %4208, 7
  store i64 %4209, i64* %PC.i122
  %4210 = inttoptr i64 %4207 to i32*
  store i32 0, i32* %4210
  store %struct.Memory* %loadMem_40f563, %struct.Memory** %MEMORY
  %loadMem_40f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4213 to i64*
  %4214 = load i64, i64* %PC.i121
  %4215 = add i64 %4214, 272
  %4216 = load i64, i64* %PC.i121
  %4217 = add i64 %4216, 5
  store i64 %4217, i64* %PC.i121
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4215, i64* %4218, align 8
  store %struct.Memory* %loadMem_40f56a, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f56f:                                  ; preds = %block_40f522
  %loadMem_40f56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %PC.i120
  %4223 = add i64 %4222, 5
  %4224 = load i64, i64* %PC.i120
  %4225 = add i64 %4224, 5
  store i64 %4225, i64* %PC.i120
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4223, i64* %4226, align 8
  store %struct.Memory* %loadMem_40f56f, %struct.Memory** %MEMORY
  br label %block_.L_40f574

block_.L_40f574:                                  ; preds = %block_.L_40f56f, %block_.L_40f4f3
  %loadMem_40f574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %PC.i119
  %4231 = add i64 %4230, 5
  %4232 = load i64, i64* %PC.i119
  %4233 = add i64 %4232, 5
  store i64 %4233, i64* %PC.i119
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4231, i64* %4234, align 8
  store %struct.Memory* %loadMem_40f574, %struct.Memory** %MEMORY
  br label %block_.L_40f579

block_.L_40f579:                                  ; preds = %block_.L_40f574
  %loadMem_40f579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4237 to i64*
  %4238 = load i64, i64* %PC.i118
  %4239 = add i64 %4238, 5
  %4240 = load i64, i64* %PC.i118
  %4241 = add i64 %4240, 5
  store i64 %4241, i64* %PC.i118
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4239, i64* %4242, align 8
  store %struct.Memory* %loadMem_40f579, %struct.Memory** %MEMORY
  br label %block_.L_40f57e

block_.L_40f57e:                                  ; preds = %block_.L_40f579, %block_.L_40f4b3
  %loadMem_40f57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 15
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %RBP.i117
  %4253 = sub i64 %4252, 8
  %4254 = load i64, i64* %PC.i115
  %4255 = add i64 %4254, 3
  store i64 %4255, i64* %PC.i115
  %4256 = inttoptr i64 %4253 to i32*
  %4257 = load i32, i32* %4256
  %4258 = zext i32 %4257 to i64
  store i64 %4258, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_40f57e, %struct.Memory** %MEMORY
  %loadMem_40f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 1
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4264 to i64*
  %4265 = load i64, i64* %RAX.i114
  %4266 = load i64, i64* %PC.i113
  %4267 = add i64 %4266, 3
  store i64 %4267, i64* %PC.i113
  %4268 = trunc i64 %4265 to i32
  %4269 = add i32 1, %4268
  %4270 = zext i32 %4269 to i64
  store i64 %4270, i64* %RAX.i114, align 8
  %4271 = icmp ult i32 %4269, %4268
  %4272 = icmp ult i32 %4269, 1
  %4273 = or i1 %4271, %4272
  %4274 = zext i1 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4274, i8* %4275, align 1
  %4276 = and i32 %4269, 255
  %4277 = call i32 @llvm.ctpop.i32(i32 %4276)
  %4278 = trunc i32 %4277 to i8
  %4279 = and i8 %4278, 1
  %4280 = xor i8 %4279, 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4280, i8* %4281, align 1
  %4282 = xor i64 1, %4265
  %4283 = trunc i64 %4282 to i32
  %4284 = xor i32 %4283, %4269
  %4285 = lshr i32 %4284, 4
  %4286 = trunc i32 %4285 to i8
  %4287 = and i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4287, i8* %4288, align 1
  %4289 = icmp eq i32 %4269, 0
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4290, i8* %4291, align 1
  %4292 = lshr i32 %4269, 31
  %4293 = trunc i32 %4292 to i8
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4293, i8* %4294, align 1
  %4295 = lshr i32 %4268, 31
  %4296 = xor i32 %4292, %4295
  %4297 = add i32 %4296, %4292
  %4298 = icmp eq i32 %4297, 2
  %4299 = zext i1 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4299, i8* %4300, align 1
  store %struct.Memory* %loadMem_40f581, %struct.Memory** %MEMORY
  %loadMem_40f584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 1
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %EAX.i111 = bitcast %union.anon* %4306 to i32*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 5
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %4309 to i64*
  %4310 = load i32, i32* %EAX.i111
  %4311 = zext i32 %4310 to i64
  %4312 = load i64, i64* %PC.i110
  %4313 = add i64 %4312, 3
  store i64 %4313, i64* %PC.i110
  %4314 = shl i64 %4311, 32
  %4315 = ashr exact i64 %4314, 32
  store i64 %4315, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_40f584, %struct.Memory** %MEMORY
  %loadMem_40f587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 1
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 5
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %RCX.i109
  %4326 = add i64 %4325, 12099168
  %4327 = load i64, i64* %PC.i107
  %4328 = add i64 %4327, 8
  store i64 %4328, i64* %PC.i107
  %4329 = inttoptr i64 %4326 to i8*
  %4330 = load i8, i8* %4329
  %4331 = zext i8 %4330 to i64
  store i64 %4331, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_40f587, %struct.Memory** %MEMORY
  %loadMem_40f58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 1
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %4337 to i32*
  %4338 = load i32, i32* %EAX.i106
  %4339 = zext i32 %4338 to i64
  %4340 = load i64, i64* %PC.i105
  %4341 = add i64 %4340, 3
  store i64 %4341, i64* %PC.i105
  %4342 = sub i32 %4338, 3
  %4343 = icmp ult i32 %4338, 3
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4344, i8* %4345, align 1
  %4346 = and i32 %4342, 255
  %4347 = call i32 @llvm.ctpop.i32(i32 %4346)
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = xor i8 %4349, 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4350, i8* %4351, align 1
  %4352 = xor i64 3, %4339
  %4353 = trunc i64 %4352 to i32
  %4354 = xor i32 %4353, %4342
  %4355 = lshr i32 %4354, 4
  %4356 = trunc i32 %4355 to i8
  %4357 = and i8 %4356, 1
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4357, i8* %4358, align 1
  %4359 = icmp eq i32 %4342, 0
  %4360 = zext i1 %4359 to i8
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4360, i8* %4361, align 1
  %4362 = lshr i32 %4342, 31
  %4363 = trunc i32 %4362 to i8
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4363, i8* %4364, align 1
  %4365 = lshr i32 %4338, 31
  %4366 = xor i32 %4362, %4365
  %4367 = add i32 %4366, %4365
  %4368 = icmp eq i32 %4367, 2
  %4369 = zext i1 %4368 to i8
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4369, i8* %4370, align 1
  store %struct.Memory* %loadMem_40f58f, %struct.Memory** %MEMORY
  %loadMem_40f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %PC.i104
  %4375 = add i64 %4374, 183
  %4376 = load i64, i64* %PC.i104
  %4377 = add i64 %4376, 6
  %4378 = load i64, i64* %PC.i104
  %4379 = add i64 %4378, 6
  store i64 %4379, i64* %PC.i104
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4381 = load i8, i8* %4380, align 1
  store i8 %4381, i8* %BRANCH_TAKEN, align 1
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4383 = icmp ne i8 %4381, 0
  %4384 = select i1 %4383, i64 %4375, i64 %4377
  store i64 %4384, i64* %4382, align 8
  store %struct.Memory* %loadMem_40f592, %struct.Memory** %MEMORY
  %loadBr_40f592 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f592 = icmp eq i8 %loadBr_40f592, 1
  br i1 %cmpBr_40f592, label %block_.L_40f649, label %block_40f598

block_40f598:                                     ; preds = %block_.L_40f57e
  %loadMem_40f598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 1
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 15
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4393 to i64*
  %4394 = load i64, i64* %RBP.i103
  %4395 = sub i64 %4394, 8
  %4396 = load i64, i64* %PC.i101
  %4397 = add i64 %4396, 3
  store i64 %4397, i64* %PC.i101
  %4398 = inttoptr i64 %4395 to i32*
  %4399 = load i32, i32* %4398
  %4400 = zext i32 %4399 to i64
  store i64 %4400, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_40f598, %struct.Memory** %MEMORY
  %loadMem_40f59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 1
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %RAX.i100
  %4408 = load i64, i64* %PC.i99
  %4409 = add i64 %4408, 3
  store i64 %4409, i64* %PC.i99
  %4410 = trunc i64 %4407 to i32
  %4411 = add i32 1, %4410
  %4412 = zext i32 %4411 to i64
  store i64 %4412, i64* %RAX.i100, align 8
  %4413 = icmp ult i32 %4411, %4410
  %4414 = icmp ult i32 %4411, 1
  %4415 = or i1 %4413, %4414
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4416, i8* %4417, align 1
  %4418 = and i32 %4411, 255
  %4419 = call i32 @llvm.ctpop.i32(i32 %4418)
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = xor i8 %4421, 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4422, i8* %4423, align 1
  %4424 = xor i64 1, %4407
  %4425 = trunc i64 %4424 to i32
  %4426 = xor i32 %4425, %4411
  %4427 = lshr i32 %4426, 4
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4429, i8* %4430, align 1
  %4431 = icmp eq i32 %4411, 0
  %4432 = zext i1 %4431 to i8
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4432, i8* %4433, align 1
  %4434 = lshr i32 %4411, 31
  %4435 = trunc i32 %4434 to i8
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4435, i8* %4436, align 1
  %4437 = lshr i32 %4410, 31
  %4438 = xor i32 %4434, %4437
  %4439 = add i32 %4438, %4434
  %4440 = icmp eq i32 %4439, 2
  %4441 = zext i1 %4440 to i8
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4441, i8* %4442, align 1
  store %struct.Memory* %loadMem_40f59b, %struct.Memory** %MEMORY
  %loadMem_40f59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 33
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4445 to i64*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 1
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %4448 to i32*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 5
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %4451 to i64*
  %4452 = load i32, i32* %EAX.i97
  %4453 = zext i32 %4452 to i64
  %4454 = load i64, i64* %PC.i96
  %4455 = add i64 %4454, 3
  store i64 %4455, i64* %PC.i96
  %4456 = shl i64 %4453, 32
  %4457 = ashr exact i64 %4456, 32
  store i64 %4457, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_40f59e, %struct.Memory** %MEMORY
  %loadMem_40f5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 1
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 5
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %4466 to i64*
  %4467 = load i64, i64* %RCX.i95
  %4468 = add i64 %4467, 12099168
  %4469 = load i64, i64* %PC.i93
  %4470 = add i64 %4469, 8
  store i64 %4470, i64* %PC.i93
  %4471 = inttoptr i64 %4468 to i8*
  %4472 = load i8, i8* %4471
  %4473 = zext i8 %4472 to i64
  store i64 %4473, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_40f5a1, %struct.Memory** %MEMORY
  %loadMem_40f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %4479 to i32*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 15
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4482 to i64*
  %4483 = load i32, i32* %EAX.i91
  %4484 = zext i32 %4483 to i64
  %4485 = load i64, i64* %RBP.i92
  %4486 = sub i64 %4485, 28
  %4487 = load i64, i64* %PC.i90
  %4488 = add i64 %4487, 3
  store i64 %4488, i64* %PC.i90
  %4489 = inttoptr i64 %4486 to i32*
  %4490 = load i32, i32* %4489
  %4491 = sub i32 %4483, %4490
  %4492 = icmp ult i32 %4483, %4490
  %4493 = zext i1 %4492 to i8
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4493, i8* %4494, align 1
  %4495 = and i32 %4491, 255
  %4496 = call i32 @llvm.ctpop.i32(i32 %4495)
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  %4499 = xor i8 %4498, 1
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4499, i8* %4500, align 1
  %4501 = xor i32 %4490, %4483
  %4502 = xor i32 %4501, %4491
  %4503 = lshr i32 %4502, 4
  %4504 = trunc i32 %4503 to i8
  %4505 = and i8 %4504, 1
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4505, i8* %4506, align 1
  %4507 = icmp eq i32 %4491, 0
  %4508 = zext i1 %4507 to i8
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4508, i8* %4509, align 1
  %4510 = lshr i32 %4491, 31
  %4511 = trunc i32 %4510 to i8
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4511, i8* %4512, align 1
  %4513 = lshr i32 %4483, 31
  %4514 = lshr i32 %4490, 31
  %4515 = xor i32 %4514, %4513
  %4516 = xor i32 %4510, %4513
  %4517 = add i32 %4516, %4515
  %4518 = icmp eq i32 %4517, 2
  %4519 = zext i1 %4518 to i8
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4519, i8* %4520, align 1
  store %struct.Memory* %loadMem_40f5a9, %struct.Memory** %MEMORY
  %loadMem_40f5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4523 to i64*
  %4524 = load i64, i64* %PC.i89
  %4525 = add i64 %4524, 18
  %4526 = load i64, i64* %PC.i89
  %4527 = add i64 %4526, 6
  %4528 = load i64, i64* %PC.i89
  %4529 = add i64 %4528, 6
  store i64 %4529, i64* %PC.i89
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4531 = load i8, i8* %4530, align 1
  store i8 %4531, i8* %BRANCH_TAKEN, align 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4533 = icmp ne i8 %4531, 0
  %4534 = select i1 %4533, i64 %4525, i64 %4527
  store i64 %4534, i64* %4532, align 8
  store %struct.Memory* %loadMem_40f5ac, %struct.Memory** %MEMORY
  %loadBr_40f5ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f5ac = icmp eq i8 %loadBr_40f5ac, 1
  br i1 %cmpBr_40f5ac, label %block_.L_40f5be, label %block_40f5b2

block_40f5b2:                                     ; preds = %block_40f598
  %loadMem_40f5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 15
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %4540 to i64*
  %4541 = load i64, i64* %RBP.i88
  %4542 = sub i64 %4541, 4
  %4543 = load i64, i64* %PC.i87
  %4544 = add i64 %4543, 7
  store i64 %4544, i64* %PC.i87
  %4545 = inttoptr i64 %4542 to i32*
  store i32 0, i32* %4545
  store %struct.Memory* %loadMem_40f5b2, %struct.Memory** %MEMORY
  %loadMem_40f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %PC.i86
  %4550 = add i64 %4549, 193
  %4551 = load i64, i64* %PC.i86
  %4552 = add i64 %4551, 5
  store i64 %4552, i64* %PC.i86
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4550, i64* %4553, align 8
  store %struct.Memory* %loadMem_40f5b9, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f5be:                                  ; preds = %block_40f598
  %loadMem_40f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 1
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4559 to i64*
  %4560 = load i64, i64* %PC.i84
  %4561 = add i64 %4560, 10
  store i64 %4561, i64* %PC.i84
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_40f5be, %struct.Memory** %MEMORY
  %loadMem_40f5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 33
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4564 to i64*
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 5
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 15
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4570 to i64*
  %4571 = load i64, i64* %RBP.i83
  %4572 = sub i64 %4571, 8
  %4573 = load i64, i64* %PC.i81
  %4574 = add i64 %4573, 3
  store i64 %4574, i64* %PC.i81
  %4575 = inttoptr i64 %4572 to i32*
  %4576 = load i32, i32* %4575
  %4577 = zext i32 %4576 to i64
  store i64 %4577, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_40f5c8, %struct.Memory** %MEMORY
  %loadMem_40f5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 33
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4580 to i64*
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 5
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %RCX.i80
  %4585 = load i64, i64* %PC.i79
  %4586 = add i64 %4585, 3
  store i64 %4586, i64* %PC.i79
  %4587 = trunc i64 %4584 to i32
  %4588 = add i32 1, %4587
  %4589 = zext i32 %4588 to i64
  store i64 %4589, i64* %RCX.i80, align 8
  %4590 = icmp ult i32 %4588, %4587
  %4591 = icmp ult i32 %4588, 1
  %4592 = or i1 %4590, %4591
  %4593 = zext i1 %4592 to i8
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4593, i8* %4594, align 1
  %4595 = and i32 %4588, 255
  %4596 = call i32 @llvm.ctpop.i32(i32 %4595)
  %4597 = trunc i32 %4596 to i8
  %4598 = and i8 %4597, 1
  %4599 = xor i8 %4598, 1
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4599, i8* %4600, align 1
  %4601 = xor i64 1, %4584
  %4602 = trunc i64 %4601 to i32
  %4603 = xor i32 %4602, %4588
  %4604 = lshr i32 %4603, 4
  %4605 = trunc i32 %4604 to i8
  %4606 = and i8 %4605, 1
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4606, i8* %4607, align 1
  %4608 = icmp eq i32 %4588, 0
  %4609 = zext i1 %4608 to i8
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4609, i8* %4610, align 1
  %4611 = lshr i32 %4588, 31
  %4612 = trunc i32 %4611 to i8
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4612, i8* %4613, align 1
  %4614 = lshr i32 %4587, 31
  %4615 = xor i32 %4611, %4614
  %4616 = add i32 %4615, %4611
  %4617 = icmp eq i32 %4616, 2
  %4618 = zext i1 %4617 to i8
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4618, i8* %4619, align 1
  store %struct.Memory* %loadMem_40f5cb, %struct.Memory** %MEMORY
  %loadMem_40f5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 5
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %ECX.i77 = bitcast %union.anon* %4625 to i32*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 7
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %4628 to i64*
  %4629 = load i32, i32* %ECX.i77
  %4630 = zext i32 %4629 to i64
  %4631 = load i64, i64* %PC.i76
  %4632 = add i64 %4631, 3
  store i64 %4632, i64* %PC.i76
  %4633 = shl i64 %4630, 32
  %4634 = ashr exact i64 %4633, 32
  store i64 %4634, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_40f5ce, %struct.Memory** %MEMORY
  %loadMem_40f5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 7
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RDX.i75
  %4642 = mul i64 %4641, 4
  %4643 = add i64 %4642, 11187184
  %4644 = load i64, i64* %PC.i74
  %4645 = add i64 %4644, 8
  store i64 %4645, i64* %PC.i74
  %4646 = inttoptr i64 %4643 to i32*
  %4647 = load i32, i32* %4646
  %4648 = sext i32 %4647 to i64
  store i64 %4648, i64* %RDX.i75, align 8
  store %struct.Memory* %loadMem_40f5d1, %struct.Memory** %MEMORY
  %loadMem_40f5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4651 to i64*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 7
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %4654 to i64*
  %4655 = load i64, i64* %RDX.i73
  %4656 = load i64, i64* %PC.i72
  %4657 = add i64 %4656, 7
  store i64 %4657, i64* %PC.i72
  %4658 = sext i64 %4655 to i128
  %4659 = and i128 %4658, -18446744073709551616
  %4660 = zext i64 %4655 to i128
  %4661 = or i128 %4659, %4660
  %4662 = mul i128 744, %4661
  %4663 = trunc i128 %4662 to i64
  store i64 %4663, i64* %RDX.i73, align 8
  %4664 = sext i64 %4663 to i128
  %4665 = icmp ne i128 %4664, %4662
  %4666 = zext i1 %4665 to i8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4666, i8* %4667, align 1
  %4668 = trunc i128 %4662 to i32
  %4669 = and i32 %4668, 255
  %4670 = call i32 @llvm.ctpop.i32(i32 %4669)
  %4671 = trunc i32 %4670 to i8
  %4672 = and i8 %4671, 1
  %4673 = xor i8 %4672, 1
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4673, i8* %4674, align 1
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4675, align 1
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4676, align 1
  %4677 = lshr i64 %4663, 63
  %4678 = trunc i64 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4678, i8* %4679, align 1
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4666, i8* %4680, align 1
  store %struct.Memory* %loadMem_40f5d9, %struct.Memory** %MEMORY
  %loadMem_40f5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 33
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4683 to i64*
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 1
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 7
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %4689 to i64*
  %4690 = load i64, i64* %RAX.i70
  %4691 = load i64, i64* %RDX.i71
  %4692 = load i64, i64* %PC.i69
  %4693 = add i64 %4692, 3
  store i64 %4693, i64* %PC.i69
  %4694 = add i64 %4691, %4690
  store i64 %4694, i64* %RAX.i70, align 8
  %4695 = icmp ult i64 %4694, %4690
  %4696 = icmp ult i64 %4694, %4691
  %4697 = or i1 %4695, %4696
  %4698 = zext i1 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4698, i8* %4699, align 1
  %4700 = trunc i64 %4694 to i32
  %4701 = and i32 %4700, 255
  %4702 = call i32 @llvm.ctpop.i32(i32 %4701)
  %4703 = trunc i32 %4702 to i8
  %4704 = and i8 %4703, 1
  %4705 = xor i8 %4704, 1
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4705, i8* %4706, align 1
  %4707 = xor i64 %4691, %4690
  %4708 = xor i64 %4707, %4694
  %4709 = lshr i64 %4708, 4
  %4710 = trunc i64 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4711, i8* %4712, align 1
  %4713 = icmp eq i64 %4694, 0
  %4714 = zext i1 %4713 to i8
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4714, i8* %4715, align 1
  %4716 = lshr i64 %4694, 63
  %4717 = trunc i64 %4716 to i8
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4717, i8* %4718, align 1
  %4719 = lshr i64 %4690, 63
  %4720 = lshr i64 %4691, 63
  %4721 = xor i64 %4716, %4719
  %4722 = xor i64 %4716, %4720
  %4723 = add i64 %4721, %4722
  %4724 = icmp eq i64 %4723, 2
  %4725 = zext i1 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4725, i8* %4726, align 1
  store %struct.Memory* %loadMem_40f5e0, %struct.Memory** %MEMORY
  %loadMem_40f5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 33
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 1
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RAX.i68
  %4734 = add i64 %4733, 12
  %4735 = load i64, i64* %PC.i67
  %4736 = add i64 %4735, 4
  store i64 %4736, i64* %PC.i67
  %4737 = inttoptr i64 %4734 to i32*
  %4738 = load i32, i32* %4737
  %4739 = sub i32 %4738, 1
  %4740 = icmp ult i32 %4738, 1
  %4741 = zext i1 %4740 to i8
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4741, i8* %4742, align 1
  %4743 = and i32 %4739, 255
  %4744 = call i32 @llvm.ctpop.i32(i32 %4743)
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = xor i8 %4746, 1
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4747, i8* %4748, align 1
  %4749 = xor i32 %4738, 1
  %4750 = xor i32 %4749, %4739
  %4751 = lshr i32 %4750, 4
  %4752 = trunc i32 %4751 to i8
  %4753 = and i8 %4752, 1
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4753, i8* %4754, align 1
  %4755 = icmp eq i32 %4739, 0
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4756, i8* %4757, align 1
  %4758 = lshr i32 %4739, 31
  %4759 = trunc i32 %4758 to i8
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4759, i8* %4760, align 1
  %4761 = lshr i32 %4738, 31
  %4762 = xor i32 %4758, %4761
  %4763 = add i32 %4762, %4761
  %4764 = icmp eq i32 %4763, 2
  %4765 = zext i1 %4764 to i8
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4765, i8* %4766, align 1
  store %struct.Memory* %loadMem_40f5e3, %struct.Memory** %MEMORY
  %loadMem_40f5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4769 to i64*
  %4770 = load i64, i64* %PC.i66
  %4771 = add i64 %4770, 88
  %4772 = load i64, i64* %PC.i66
  %4773 = add i64 %4772, 6
  %4774 = load i64, i64* %PC.i66
  %4775 = add i64 %4774, 6
  store i64 %4775, i64* %PC.i66
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4777 = load i8, i8* %4776, align 1
  %4778 = icmp eq i8 %4777, 0
  %4779 = zext i1 %4778 to i8
  store i8 %4779, i8* %BRANCH_TAKEN, align 1
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4781 = select i1 %4778, i64 %4771, i64 %4773
  store i64 %4781, i64* %4780, align 8
  store %struct.Memory* %loadMem_40f5e7, %struct.Memory** %MEMORY
  %loadBr_40f5e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f5e7 = icmp eq i8 %loadBr_40f5e7, 1
  br i1 %cmpBr_40f5e7, label %block_.L_40f63f, label %block_40f5ed

block_40f5ed:                                     ; preds = %block_.L_40f5be
  %loadMem_40f5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 33
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 1
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %4787 to i64*
  %4788 = load i64, i64* %PC.i64
  %4789 = add i64 %4788, 10
  store i64 %4789, i64* %PC.i64
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_40f5ed, %struct.Memory** %MEMORY
  %loadMem_40f5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 5
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %4795 to i64*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 15
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %4798 to i64*
  %4799 = load i64, i64* %RBP.i63
  %4800 = sub i64 %4799, 8
  %4801 = load i64, i64* %PC.i61
  %4802 = add i64 %4801, 3
  store i64 %4802, i64* %PC.i61
  %4803 = inttoptr i64 %4800 to i32*
  %4804 = load i32, i32* %4803
  %4805 = zext i32 %4804 to i64
  store i64 %4805, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_40f5f7, %struct.Memory** %MEMORY
  %loadMem_40f5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 5
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RCX.i60
  %4813 = load i64, i64* %PC.i59
  %4814 = add i64 %4813, 3
  store i64 %4814, i64* %PC.i59
  %4815 = trunc i64 %4812 to i32
  %4816 = add i32 1, %4815
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RCX.i60, align 8
  %4818 = icmp ult i32 %4816, %4815
  %4819 = icmp ult i32 %4816, 1
  %4820 = or i1 %4818, %4819
  %4821 = zext i1 %4820 to i8
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4821, i8* %4822, align 1
  %4823 = and i32 %4816, 255
  %4824 = call i32 @llvm.ctpop.i32(i32 %4823)
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4827, i8* %4828, align 1
  %4829 = xor i64 1, %4812
  %4830 = trunc i64 %4829 to i32
  %4831 = xor i32 %4830, %4816
  %4832 = lshr i32 %4831, 4
  %4833 = trunc i32 %4832 to i8
  %4834 = and i8 %4833, 1
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4834, i8* %4835, align 1
  %4836 = icmp eq i32 %4816, 0
  %4837 = zext i1 %4836 to i8
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4837, i8* %4838, align 1
  %4839 = lshr i32 %4816, 31
  %4840 = trunc i32 %4839 to i8
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4840, i8* %4841, align 1
  %4842 = lshr i32 %4815, 31
  %4843 = xor i32 %4839, %4842
  %4844 = add i32 %4843, %4839
  %4845 = icmp eq i32 %4844, 2
  %4846 = zext i1 %4845 to i8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4846, i8* %4847, align 1
  store %struct.Memory* %loadMem_40f5fa, %struct.Memory** %MEMORY
  %loadMem_40f5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 33
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 5
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %ECX.i57 = bitcast %union.anon* %4853 to i32*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 15
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %RBP.i58
  %4858 = sub i64 %4857, 36
  %4859 = load i32, i32* %ECX.i57
  %4860 = zext i32 %4859 to i64
  %4861 = load i64, i64* %PC.i56
  %4862 = add i64 %4861, 3
  store i64 %4862, i64* %PC.i56
  %4863 = inttoptr i64 %4858 to i32*
  store i32 %4859, i32* %4863
  store %struct.Memory* %loadMem_40f5fd, %struct.Memory** %MEMORY
  %loadMem_40f600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 5
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 15
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4872 to i64*
  %4873 = load i64, i64* %RBP.i55
  %4874 = sub i64 %4873, 8
  %4875 = load i64, i64* %PC.i53
  %4876 = add i64 %4875, 3
  store i64 %4876, i64* %PC.i53
  %4877 = inttoptr i64 %4874 to i32*
  %4878 = load i32, i32* %4877
  %4879 = zext i32 %4878 to i64
  store i64 %4879, i64* %RCX.i54, align 8
  store %struct.Memory* %loadMem_40f600, %struct.Memory** %MEMORY
  %loadMem_40f603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 33
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 5
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %RCX.i52
  %4887 = load i64, i64* %PC.i51
  %4888 = add i64 %4887, 3
  store i64 %4888, i64* %PC.i51
  %4889 = trunc i64 %4886 to i32
  %4890 = add i32 1, %4889
  %4891 = zext i32 %4890 to i64
  store i64 %4891, i64* %RCX.i52, align 8
  %4892 = icmp ult i32 %4890, %4889
  %4893 = icmp ult i32 %4890, 1
  %4894 = or i1 %4892, %4893
  %4895 = zext i1 %4894 to i8
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4895, i8* %4896, align 1
  %4897 = and i32 %4890, 255
  %4898 = call i32 @llvm.ctpop.i32(i32 %4897)
  %4899 = trunc i32 %4898 to i8
  %4900 = and i8 %4899, 1
  %4901 = xor i8 %4900, 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4901, i8* %4902, align 1
  %4903 = xor i64 1, %4886
  %4904 = trunc i64 %4903 to i32
  %4905 = xor i32 %4904, %4890
  %4906 = lshr i32 %4905, 4
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4908, i8* %4909, align 1
  %4910 = icmp eq i32 %4890, 0
  %4911 = zext i1 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4911, i8* %4912, align 1
  %4913 = lshr i32 %4890, 31
  %4914 = trunc i32 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4914, i8* %4915, align 1
  %4916 = lshr i32 %4889, 31
  %4917 = xor i32 %4913, %4916
  %4918 = add i32 %4917, %4913
  %4919 = icmp eq i32 %4918, 2
  %4920 = zext i1 %4919 to i8
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4920, i8* %4921, align 1
  store %struct.Memory* %loadMem_40f603, %struct.Memory** %MEMORY
  %loadMem_40f606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 5
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %ECX.i49 = bitcast %union.anon* %4927 to i32*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 7
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %4930 to i64*
  %4931 = load i32, i32* %ECX.i49
  %4932 = zext i32 %4931 to i64
  %4933 = load i64, i64* %PC.i48
  %4934 = add i64 %4933, 3
  store i64 %4934, i64* %PC.i48
  %4935 = shl i64 %4932, 32
  %4936 = ashr exact i64 %4935, 32
  store i64 %4936, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_40f606, %struct.Memory** %MEMORY
  %loadMem_40f609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 33
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 7
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %RDX.i47
  %4944 = mul i64 %4943, 4
  %4945 = add i64 %4944, 11187184
  %4946 = load i64, i64* %PC.i46
  %4947 = add i64 %4946, 8
  store i64 %4947, i64* %PC.i46
  %4948 = inttoptr i64 %4945 to i32*
  %4949 = load i32, i32* %4948
  %4950 = sext i32 %4949 to i64
  store i64 %4950, i64* %RDX.i47, align 8
  store %struct.Memory* %loadMem_40f609, %struct.Memory** %MEMORY
  %loadMem_40f611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 7
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RDX.i45
  %4958 = load i64, i64* %PC.i44
  %4959 = add i64 %4958, 7
  store i64 %4959, i64* %PC.i44
  %4960 = sext i64 %4957 to i128
  %4961 = and i128 %4960, -18446744073709551616
  %4962 = zext i64 %4957 to i128
  %4963 = or i128 %4961, %4962
  %4964 = mul i128 744, %4963
  %4965 = trunc i128 %4964 to i64
  store i64 %4965, i64* %RDX.i45, align 8
  %4966 = sext i64 %4965 to i128
  %4967 = icmp ne i128 %4966, %4964
  %4968 = zext i1 %4967 to i8
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4968, i8* %4969, align 1
  %4970 = trunc i128 %4964 to i32
  %4971 = and i32 %4970, 255
  %4972 = call i32 @llvm.ctpop.i32(i32 %4971)
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  %4975 = xor i8 %4974, 1
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4975, i8* %4976, align 1
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4977, align 1
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4978, align 1
  %4979 = lshr i64 %4965, 63
  %4980 = trunc i64 %4979 to i8
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4980, i8* %4981, align 1
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4968, i8* %4982, align 1
  store %struct.Memory* %loadMem_40f611, %struct.Memory** %MEMORY
  %loadMem_40f618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 33
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4985 to i64*
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 1
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 7
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4991 to i64*
  %4992 = load i64, i64* %RAX.i43
  %4993 = load i64, i64* %RDX.i
  %4994 = load i64, i64* %PC.i42
  %4995 = add i64 %4994, 3
  store i64 %4995, i64* %PC.i42
  %4996 = add i64 %4993, %4992
  store i64 %4996, i64* %RAX.i43, align 8
  %4997 = icmp ult i64 %4996, %4992
  %4998 = icmp ult i64 %4996, %4993
  %4999 = or i1 %4997, %4998
  %5000 = zext i1 %4999 to i8
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5000, i8* %5001, align 1
  %5002 = trunc i64 %4996 to i32
  %5003 = and i32 %5002, 255
  %5004 = call i32 @llvm.ctpop.i32(i32 %5003)
  %5005 = trunc i32 %5004 to i8
  %5006 = and i8 %5005, 1
  %5007 = xor i8 %5006, 1
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5007, i8* %5008, align 1
  %5009 = xor i64 %4993, %4992
  %5010 = xor i64 %5009, %4996
  %5011 = lshr i64 %5010, 4
  %5012 = trunc i64 %5011 to i8
  %5013 = and i8 %5012, 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5013, i8* %5014, align 1
  %5015 = icmp eq i64 %4996, 0
  %5016 = zext i1 %5015 to i8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5016, i8* %5017, align 1
  %5018 = lshr i64 %4996, 63
  %5019 = trunc i64 %5018 to i8
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5019, i8* %5020, align 1
  %5021 = lshr i64 %4992, 63
  %5022 = lshr i64 %4993, 63
  %5023 = xor i64 %5018, %5021
  %5024 = xor i64 %5018, %5022
  %5025 = add i64 %5023, %5024
  %5026 = icmp eq i64 %5025, 2
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5027, i8* %5028, align 1
  store %struct.Memory* %loadMem_40f618, %struct.Memory** %MEMORY
  %loadMem_40f61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 1
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 5
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %RAX.i40
  %5039 = add i64 %5038, 4
  %5040 = load i64, i64* %PC.i39
  %5041 = add i64 %5040, 3
  store i64 %5041, i64* %PC.i39
  %5042 = inttoptr i64 %5039 to i32*
  %5043 = load i32, i32* %5042
  %5044 = zext i32 %5043 to i64
  store i64 %5044, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_40f61b, %struct.Memory** %MEMORY
  %loadMem_40f61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 5
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %5050 to i64*
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 15
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5053 to i64*
  %5054 = load i64, i64* %RCX.i37
  %5055 = load i64, i64* %RBP.i38
  %5056 = sub i64 %5055, 32
  %5057 = load i64, i64* %PC.i36
  %5058 = add i64 %5057, 3
  store i64 %5058, i64* %PC.i36
  %5059 = trunc i64 %5054 to i32
  %5060 = inttoptr i64 %5056 to i32*
  %5061 = load i32, i32* %5060
  %5062 = add i32 %5061, %5059
  %5063 = zext i32 %5062 to i64
  store i64 %5063, i64* %RCX.i37, align 8
  %5064 = icmp ult i32 %5062, %5059
  %5065 = icmp ult i32 %5062, %5061
  %5066 = or i1 %5064, %5065
  %5067 = zext i1 %5066 to i8
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5067, i8* %5068, align 1
  %5069 = and i32 %5062, 255
  %5070 = call i32 @llvm.ctpop.i32(i32 %5069)
  %5071 = trunc i32 %5070 to i8
  %5072 = and i8 %5071, 1
  %5073 = xor i8 %5072, 1
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5073, i8* %5074, align 1
  %5075 = xor i32 %5061, %5059
  %5076 = xor i32 %5075, %5062
  %5077 = lshr i32 %5076, 4
  %5078 = trunc i32 %5077 to i8
  %5079 = and i8 %5078, 1
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5079, i8* %5080, align 1
  %5081 = icmp eq i32 %5062, 0
  %5082 = zext i1 %5081 to i8
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5082, i8* %5083, align 1
  %5084 = lshr i32 %5062, 31
  %5085 = trunc i32 %5084 to i8
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5085, i8* %5086, align 1
  %5087 = lshr i32 %5059, 31
  %5088 = lshr i32 %5061, 31
  %5089 = xor i32 %5084, %5087
  %5090 = xor i32 %5084, %5088
  %5091 = add i32 %5089, %5090
  %5092 = icmp eq i32 %5091, 2
  %5093 = zext i1 %5092 to i8
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5093, i8* %5094, align 1
  store %struct.Memory* %loadMem_40f61e, %struct.Memory** %MEMORY
  %loadMem_40f621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 33
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5097 to i64*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 5
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5100 to i32*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 15
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5103 to i64*
  %5104 = load i64, i64* %RBP.i35
  %5105 = sub i64 %5104, 32
  %5106 = load i32, i32* %ECX.i
  %5107 = zext i32 %5106 to i64
  %5108 = load i64, i64* %PC.i34
  %5109 = add i64 %5108, 3
  store i64 %5109, i64* %PC.i34
  %5110 = inttoptr i64 %5105 to i32*
  store i32 %5106, i32* %5110
  store %struct.Memory* %loadMem_40f621, %struct.Memory** %MEMORY
  %loadMem_40f624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 15
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %5116 to i64*
  %5117 = load i64, i64* %RBP.i33
  %5118 = sub i64 %5117, 32
  %5119 = load i64, i64* %PC.i32
  %5120 = add i64 %5119, 4
  store i64 %5120, i64* %PC.i32
  %5121 = inttoptr i64 %5118 to i32*
  %5122 = load i32, i32* %5121
  %5123 = sub i32 %5122, 1
  %5124 = icmp ult i32 %5122, 1
  %5125 = zext i1 %5124 to i8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5125, i8* %5126, align 1
  %5127 = and i32 %5123, 255
  %5128 = call i32 @llvm.ctpop.i32(i32 %5127)
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  %5131 = xor i8 %5130, 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5131, i8* %5132, align 1
  %5133 = xor i32 %5122, 1
  %5134 = xor i32 %5133, %5123
  %5135 = lshr i32 %5134, 4
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5137, i8* %5138, align 1
  %5139 = icmp eq i32 %5123, 0
  %5140 = zext i1 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5140, i8* %5141, align 1
  %5142 = lshr i32 %5123, 31
  %5143 = trunc i32 %5142 to i8
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5143, i8* %5144, align 1
  %5145 = lshr i32 %5122, 31
  %5146 = xor i32 %5142, %5145
  %5147 = add i32 %5146, %5145
  %5148 = icmp eq i32 %5147, 2
  %5149 = zext i1 %5148 to i8
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5149, i8* %5150, align 1
  store %struct.Memory* %loadMem_40f624, %struct.Memory** %MEMORY
  %loadMem_40f628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %PC.i31
  %5155 = add i64 %5154, 18
  %5156 = load i64, i64* %PC.i31
  %5157 = add i64 %5156, 6
  %5158 = load i64, i64* %PC.i31
  %5159 = add i64 %5158, 6
  store i64 %5159, i64* %PC.i31
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5161 = load i8, i8* %5160, align 1
  %5162 = icmp ne i8 %5161, 0
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5164 = load i8, i8* %5163, align 1
  %5165 = icmp ne i8 %5164, 0
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5167 = load i8, i8* %5166, align 1
  %5168 = icmp ne i8 %5167, 0
  %5169 = xor i1 %5165, %5168
  %5170 = or i1 %5162, %5169
  %5171 = zext i1 %5170 to i8
  store i8 %5171, i8* %BRANCH_TAKEN, align 1
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5173 = select i1 %5170, i64 %5155, i64 %5157
  store i64 %5173, i64* %5172, align 8
  store %struct.Memory* %loadMem_40f628, %struct.Memory** %MEMORY
  %loadBr_40f628 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f628 = icmp eq i8 %loadBr_40f628, 1
  br i1 %cmpBr_40f628, label %block_.L_40f63a, label %block_40f62e

block_40f62e:                                     ; preds = %block_40f5ed
  %loadMem_40f62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5176 to i64*
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 15
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %5179 to i64*
  %5180 = load i64, i64* %RBP.i30
  %5181 = sub i64 %5180, 4
  %5182 = load i64, i64* %PC.i29
  %5183 = add i64 %5182, 7
  store i64 %5183, i64* %PC.i29
  %5184 = inttoptr i64 %5181 to i32*
  store i32 0, i32* %5184
  store %struct.Memory* %loadMem_40f62e, %struct.Memory** %MEMORY
  %loadMem_40f635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5187 to i64*
  %5188 = load i64, i64* %PC.i28
  %5189 = add i64 %5188, 69
  %5190 = load i64, i64* %PC.i28
  %5191 = add i64 %5190, 5
  store i64 %5191, i64* %PC.i28
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5189, i64* %5192, align 8
  store %struct.Memory* %loadMem_40f635, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f63a:                                  ; preds = %block_40f5ed
  %loadMem_40f63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5195 to i64*
  %5196 = load i64, i64* %PC.i27
  %5197 = add i64 %5196, 5
  %5198 = load i64, i64* %PC.i27
  %5199 = add i64 %5198, 5
  store i64 %5199, i64* %PC.i27
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5197, i64* %5200, align 8
  store %struct.Memory* %loadMem_40f63a, %struct.Memory** %MEMORY
  br label %block_.L_40f63f

block_.L_40f63f:                                  ; preds = %block_.L_40f63a, %block_.L_40f5be
  %loadMem_40f63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5203 to i64*
  %5204 = load i64, i64* %PC.i26
  %5205 = add i64 %5204, 5
  %5206 = load i64, i64* %PC.i26
  %5207 = add i64 %5206, 5
  store i64 %5207, i64* %PC.i26
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5205, i64* %5208, align 8
  store %struct.Memory* %loadMem_40f63f, %struct.Memory** %MEMORY
  br label %block_.L_40f644

block_.L_40f644:                                  ; preds = %block_.L_40f63f
  %loadMem_40f644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5211 to i64*
  %5212 = load i64, i64* %PC.i25
  %5213 = add i64 %5212, 5
  %5214 = load i64, i64* %PC.i25
  %5215 = add i64 %5214, 5
  store i64 %5215, i64* %PC.i25
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5213, i64* %5216, align 8
  store %struct.Memory* %loadMem_40f644, %struct.Memory** %MEMORY
  br label %block_.L_40f649

block_.L_40f649:                                  ; preds = %block_.L_40f644, %block_.L_40f57e
  %loadMem_40f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 15
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5222 to i64*
  %5223 = load i64, i64* %RBP.i24
  %5224 = sub i64 %5223, 32
  %5225 = load i64, i64* %PC.i23
  %5226 = add i64 %5225, 4
  store i64 %5226, i64* %PC.i23
  %5227 = inttoptr i64 %5224 to i32*
  %5228 = load i32, i32* %5227
  %5229 = sub i32 %5228, 1
  %5230 = icmp ult i32 %5228, 1
  %5231 = zext i1 %5230 to i8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5231, i8* %5232, align 1
  %5233 = and i32 %5229, 255
  %5234 = call i32 @llvm.ctpop.i32(i32 %5233)
  %5235 = trunc i32 %5234 to i8
  %5236 = and i8 %5235, 1
  %5237 = xor i8 %5236, 1
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5237, i8* %5238, align 1
  %5239 = xor i32 %5228, 1
  %5240 = xor i32 %5239, %5229
  %5241 = lshr i32 %5240, 4
  %5242 = trunc i32 %5241 to i8
  %5243 = and i8 %5242, 1
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5243, i8* %5244, align 1
  %5245 = icmp eq i32 %5229, 0
  %5246 = zext i1 %5245 to i8
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5246, i8* %5247, align 1
  %5248 = lshr i32 %5229, 31
  %5249 = trunc i32 %5248 to i8
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5249, i8* %5250, align 1
  %5251 = lshr i32 %5228, 31
  %5252 = xor i32 %5248, %5251
  %5253 = add i32 %5252, %5251
  %5254 = icmp eq i32 %5253, 2
  %5255 = zext i1 %5254 to i8
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5255, i8* %5256, align 1
  store %struct.Memory* %loadMem_40f649, %struct.Memory** %MEMORY
  %loadMem_40f64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 33
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5259 to i64*
  %5260 = load i64, i64* %PC.i22
  %5261 = add i64 %5260, 38
  %5262 = load i64, i64* %PC.i22
  %5263 = add i64 %5262, 6
  %5264 = load i64, i64* %PC.i22
  %5265 = add i64 %5264, 6
  store i64 %5265, i64* %PC.i22
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5267 = load i8, i8* %5266, align 1
  %5268 = icmp eq i8 %5267, 0
  %5269 = zext i1 %5268 to i8
  store i8 %5269, i8* %BRANCH_TAKEN, align 1
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5271 = select i1 %5268, i64 %5261, i64 %5263
  store i64 %5271, i64* %5270, align 8
  store %struct.Memory* %loadMem_40f64d, %struct.Memory** %MEMORY
  %loadBr_40f64d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f64d = icmp eq i8 %loadBr_40f64d, 1
  br i1 %cmpBr_40f64d, label %block_.L_40f673, label %block_40f653

block_40f653:                                     ; preds = %block_.L_40f649
  %loadMem_40f653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 15
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %RBP.i21
  %5279 = sub i64 %5278, 24
  %5280 = load i64, i64* %PC.i20
  %5281 = add i64 %5280, 5
  store i64 %5281, i64* %PC.i20
  %5282 = inttoptr i64 %5279 to i64*
  %5283 = load i64, i64* %5282
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5284, align 1
  %5285 = trunc i64 %5283 to i32
  %5286 = and i32 %5285, 255
  %5287 = call i32 @llvm.ctpop.i32(i32 %5286)
  %5288 = trunc i32 %5287 to i8
  %5289 = and i8 %5288, 1
  %5290 = xor i8 %5289, 1
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5290, i8* %5291, align 1
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5292, align 1
  %5293 = icmp eq i64 %5283, 0
  %5294 = zext i1 %5293 to i8
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5294, i8* %5295, align 1
  %5296 = lshr i64 %5283, 63
  %5297 = trunc i64 %5296 to i8
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5297, i8* %5298, align 1
  %5299 = lshr i64 %5283, 63
  %5300 = xor i64 %5296, %5299
  %5301 = add i64 %5300, %5299
  %5302 = icmp eq i64 %5301, 2
  %5303 = zext i1 %5302 to i8
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5303, i8* %5304, align 1
  store %struct.Memory* %loadMem_40f653, %struct.Memory** %MEMORY
  %loadMem_40f658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 33
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %PC.i19
  %5309 = add i64 %5308, 15
  %5310 = load i64, i64* %PC.i19
  %5311 = add i64 %5310, 6
  %5312 = load i64, i64* %PC.i19
  %5313 = add i64 %5312, 6
  store i64 %5313, i64* %PC.i19
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5315 = load i8, i8* %5314, align 1
  store i8 %5315, i8* %BRANCH_TAKEN, align 1
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5317 = icmp ne i8 %5315, 0
  %5318 = select i1 %5317, i64 %5309, i64 %5311
  store i64 %5318, i64* %5316, align 8
  store %struct.Memory* %loadMem_40f658, %struct.Memory** %MEMORY
  %loadBr_40f658 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f658 = icmp eq i8 %loadBr_40f658, 1
  br i1 %cmpBr_40f658, label %block_.L_40f667, label %block_40f65e

block_40f65e:                                     ; preds = %block_40f653
  %loadMem_40f65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 33
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5321 to i64*
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 1
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5324 to i64*
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 15
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %5327 to i64*
  %5328 = load i64, i64* %RBP.i18
  %5329 = sub i64 %5328, 36
  %5330 = load i64, i64* %PC.i16
  %5331 = add i64 %5330, 3
  store i64 %5331, i64* %PC.i16
  %5332 = inttoptr i64 %5329 to i32*
  %5333 = load i32, i32* %5332
  %5334 = zext i32 %5333 to i64
  store i64 %5334, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_40f65e, %struct.Memory** %MEMORY
  %loadMem_40f661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 33
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5337 to i64*
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 5
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 15
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5343 to i64*
  %5344 = load i64, i64* %RBP.i15
  %5345 = sub i64 %5344, 24
  %5346 = load i64, i64* %PC.i13
  %5347 = add i64 %5346, 4
  store i64 %5347, i64* %PC.i13
  %5348 = inttoptr i64 %5345 to i64*
  %5349 = load i64, i64* %5348
  store i64 %5349, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_40f661, %struct.Memory** %MEMORY
  %loadMem_40f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 1
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5355 to i32*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 5
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RCX.i
  %5360 = load i32, i32* %EAX.i
  %5361 = zext i32 %5360 to i64
  %5362 = load i64, i64* %PC.i12
  %5363 = add i64 %5362, 2
  store i64 %5363, i64* %PC.i12
  %5364 = inttoptr i64 %5359 to i32*
  store i32 %5360, i32* %5364
  store %struct.Memory* %loadMem_40f665, %struct.Memory** %MEMORY
  br label %block_.L_40f667

block_.L_40f667:                                  ; preds = %block_40f65e, %block_40f653
  %loadMem_40f667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 15
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5370 to i64*
  %5371 = load i64, i64* %RBP.i11
  %5372 = sub i64 %5371, 4
  %5373 = load i64, i64* %PC.i10
  %5374 = add i64 %5373, 7
  store i64 %5374, i64* %PC.i10
  %5375 = inttoptr i64 %5372 to i32*
  store i32 1, i32* %5375
  store %struct.Memory* %loadMem_40f667, %struct.Memory** %MEMORY
  %loadMem_40f66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 33
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5378 to i64*
  %5379 = load i64, i64* %PC.i9
  %5380 = add i64 %5379, 12
  %5381 = load i64, i64* %PC.i9
  %5382 = add i64 %5381, 5
  store i64 %5382, i64* %PC.i9
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5380, i64* %5383, align 8
  store %struct.Memory* %loadMem_40f66e, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f673:                                  ; preds = %block_.L_40f649
  %loadMem_40f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5386 to i64*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 15
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %RBP.i8
  %5391 = sub i64 %5390, 4
  %5392 = load i64, i64* %PC.i7
  %5393 = add i64 %5392, 7
  store i64 %5393, i64* %PC.i7
  %5394 = inttoptr i64 %5391 to i32*
  store i32 0, i32* %5394
  store %struct.Memory* %loadMem_40f673, %struct.Memory** %MEMORY
  br label %block_.L_40f67a

block_.L_40f67a:                                  ; preds = %block_.L_40f673, %block_.L_40f667, %block_40f62e, %block_40f5b2, %block_40f563, %block_40f4e7, %block_40f498, %block_40f41c, %block_40f3cd, %block_40f351
  %loadMem_40f67a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 1
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 15
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %RBP.i6
  %5405 = sub i64 %5404, 4
  %5406 = load i64, i64* %PC.i5
  %5407 = add i64 %5406, 3
  store i64 %5407, i64* %PC.i5
  %5408 = inttoptr i64 %5405 to i32*
  %5409 = load i32, i32* %5408
  %5410 = zext i32 %5409 to i64
  store i64 %5410, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_40f67a, %struct.Memory** %MEMORY
  %loadMem_40f67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 13
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RSP.i
  %5418 = load i64, i64* %PC.i4
  %5419 = add i64 %5418, 4
  store i64 %5419, i64* %PC.i4
  %5420 = add i64 80, %5417
  store i64 %5420, i64* %RSP.i, align 8
  %5421 = icmp ult i64 %5420, %5417
  %5422 = icmp ult i64 %5420, 80
  %5423 = or i1 %5421, %5422
  %5424 = zext i1 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5424, i8* %5425, align 1
  %5426 = trunc i64 %5420 to i32
  %5427 = and i32 %5426, 255
  %5428 = call i32 @llvm.ctpop.i32(i32 %5427)
  %5429 = trunc i32 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = xor i8 %5430, 1
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5431, i8* %5432, align 1
  %5433 = xor i64 80, %5417
  %5434 = xor i64 %5433, %5420
  %5435 = lshr i64 %5434, 4
  %5436 = trunc i64 %5435 to i8
  %5437 = and i8 %5436, 1
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5437, i8* %5438, align 1
  %5439 = icmp eq i64 %5420, 0
  %5440 = zext i1 %5439 to i8
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5440, i8* %5441, align 1
  %5442 = lshr i64 %5420, 63
  %5443 = trunc i64 %5442 to i8
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5443, i8* %5444, align 1
  %5445 = lshr i64 %5417, 63
  %5446 = xor i64 %5442, %5445
  %5447 = add i64 %5446, %5442
  %5448 = icmp eq i64 %5447, 2
  %5449 = zext i1 %5448 to i8
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5449, i8* %5450, align 1
  store %struct.Memory* %loadMem_40f67d, %struct.Memory** %MEMORY
  %loadMem_40f681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 15
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5456 to i64*
  %5457 = load i64, i64* %PC.i2
  %5458 = add i64 %5457, 1
  store i64 %5458, i64* %PC.i2
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5460 = load i64, i64* %5459, align 8
  %5461 = add i64 %5460, 8
  %5462 = inttoptr i64 %5460 to i64*
  %5463 = load i64, i64* %5462
  store i64 %5463, i64* %RBP.i3, align 8
  store i64 %5461, i64* %5459, align 8
  store %struct.Memory* %loadMem_40f681, %struct.Memory** %MEMORY
  %loadMem_40f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 33
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5466 to i64*
  %5467 = load i64, i64* %PC.i1
  %5468 = add i64 %5467, 1
  store i64 %5468, i64* %PC.i1
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5471 = load i64, i64* %5470, align 8
  %5472 = inttoptr i64 %5471 to i64*
  %5473 = load i64, i64* %5472
  store i64 %5473, i64* %5469, align 8
  %5474 = add i64 %5471, 8
  store i64 %5474, i64* %5470, align 8
  store %struct.Memory* %loadMem_40f682, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40f682
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jae_.L_40f252(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40f252(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f2ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x9c5___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2501, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40f2bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40f2c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f31d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x9c6___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2502, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a466___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a466_type* @G__0x57a466 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_je_.L_40f3e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40f35d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f67a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40f3de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
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

define %struct.Memory* @routine_jle_.L_40f3d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f3de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f3e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f3e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40f4b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40f428(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f4a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_40f4a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f4a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f4ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f4b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40f57e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40f4f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f574(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_40f56f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f574(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f579(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f57e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40f649(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40f5be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f63f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_40f63a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f63f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40f649(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40f673(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40f667(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
