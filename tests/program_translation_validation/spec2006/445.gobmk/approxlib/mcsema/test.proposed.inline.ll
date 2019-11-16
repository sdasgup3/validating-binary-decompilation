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
%G_0x99da04_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a4be_type = type <{ [8 x i8] }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
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
@G_0x99da04 = global %G_0x99da04_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
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

declare %struct.Memory* @sub_40fc80.fastlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_411db0.slow_approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @approxlib(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4115b0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4115b0, %struct.Memory** %MEMORY
  %loadMem_4115b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i976 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i977 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i976
  %27 = load i64, i64* %PC.i975
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i975
  store i64 %26, i64* %RBP.i977, align 8
  store %struct.Memory* %loadMem_4115b1, %struct.Memory** %MEMORY
  %loadMem_4115b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i994 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i994
  %36 = load i64, i64* %PC.i993
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i993
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i994, align 8
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
  store %struct.Memory* %loadMem_4115b4, %struct.Memory** %MEMORY
  %loadMem_4115b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1047 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1048 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1048
  %77 = sub i64 %76, 8
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i1047
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i1047
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_4115b8, %struct.Memory** %MEMORY
  %loadMem_4115bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i1064 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i1065 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i1065
  %93 = sub i64 %92, 12
  %94 = load i32, i32* %ESI.i
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i1064
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i1064
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_4115bb, %struct.Memory** %MEMORY
  %loadMem_4115be = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i1105 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %EDX.i1106 = bitcast %union.anon* %104 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i1107 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i1107
  %109 = sub i64 %108, 16
  %110 = load i32, i32* %EDX.i1106
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC.i1105
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC.i1105
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  store %struct.Memory* %loadMem_4115be, %struct.Memory** %MEMORY
  %loadMem_4115c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RCX.i1103 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i1104 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i1104
  %125 = sub i64 %124, 24
  %126 = load i64, i64* %RCX.i1103
  %127 = load i64, i64* %PC.i1102
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC.i1102
  %129 = inttoptr i64 %125 to i64*
  store i64 %126, i64* %129
  store %struct.Memory* %loadMem_4115c1, %struct.Memory** %MEMORY
  %loadMem_4115c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i1100 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RBP.i1101 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RBP.i1101
  %137 = sub i64 %136, 32
  %138 = load i64, i64* %PC.i1100
  %139 = add i64 %138, 7
  store i64 %139, i64* %PC.i1100
  %140 = inttoptr i64 %137 to i32*
  store i32 0, i32* %140
  store %struct.Memory* %loadMem_4115c5, %struct.Memory** %MEMORY
  %loadMem_4115cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i1097 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RCX.i1098 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RBP.i1099 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RBP.i1099
  %151 = sub i64 %150, 8
  %152 = load i64, i64* %PC.i1097
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC.i1097
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RCX.i1098, align 8
  store %struct.Memory* %loadMem_4115cc, %struct.Memory** %MEMORY
  %loadMem_4115d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RCX.i1095 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RDX.i1096 = bitcast %union.anon* %165 to i64*
  %166 = load i64, i64* %RCX.i1095
  %167 = add i64 %166, 12099168
  %168 = load i64, i64* %PC.i1094
  %169 = add i64 %168, 8
  store i64 %169, i64* %PC.i1094
  %170 = inttoptr i64 %167 to i8*
  %171 = load i8, i8* %170
  %172 = zext i8 %171 to i64
  store i64 %172, i64* %RDX.i1096, align 8
  store %struct.Memory* %loadMem_4115d0, %struct.Memory** %MEMORY
  %loadMem_4115d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i1092 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %EDX.i1093 = bitcast %union.anon* %178 to i32*
  %179 = load i32, i32* %EDX.i1093
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC.i1092
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC.i1092
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %183, align 1
  %184 = and i32 %179, 255
  %185 = call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %188, i8* %189, align 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %190, align 1
  %191 = icmp eq i32 %179, 0
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %192, i8* %193, align 1
  %194 = lshr i32 %179, 31
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %195, i8* %196, align 1
  %197 = lshr i32 %179, 31
  %198 = xor i32 %194, %197
  %199 = add i32 %198, %197
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %201, i8* %202, align 1
  store %struct.Memory* %loadMem_4115d8, %struct.Memory** %MEMORY
  %loadMem_4115db = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i1091 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %PC.i1091
  %207 = add i64 %206, 11
  %208 = load i64, i64* %PC.i1091
  %209 = add i64 %208, 6
  %210 = load i64, i64* %PC.i1091
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC.i1091
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %213 = load i8, i8* %212, align 1
  %214 = icmp eq i8 %213, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %BRANCH_TAKEN, align 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %217 = select i1 %214, i64 %207, i64 %209
  store i64 %217, i64* %216, align 8
  store %struct.Memory* %loadMem_4115db, %struct.Memory** %MEMORY
  %loadBr_4115db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4115db = icmp eq i8 %loadBr_4115db, 1
  br i1 %cmpBr_4115db, label %block_.L_4115e6, label %block_4115e1

block_4115e1:                                     ; preds = %entry
  %loadMem_4115e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i1090 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i1090
  %222 = add i64 %221, 94
  %223 = load i64, i64* %PC.i1090
  %224 = add i64 %223, 5
  store i64 %224, i64* %PC.i1090
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  store %struct.Memory* %loadMem_4115e1, %struct.Memory** %MEMORY
  br label %block_.L_41163f

block_.L_4115e6:                                  ; preds = %entry
  %loadMem_4115e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i1088 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 11
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RDI.i1089 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %PC.i1088
  %233 = add i64 %232, 10
  store i64 %233, i64* %PC.i1088
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1089, align 8
  store %struct.Memory* %loadMem_4115e6, %struct.Memory** %MEMORY
  %loadMem_4115f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i1086 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 9
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RSI.i1087 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %PC.i1086
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC.i1086
  store i64 1595, i64* %RSI.i1087, align 8
  store %struct.Memory* %loadMem_4115f0, %struct.Memory** %MEMORY
  %loadMem_4115f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i1084 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 7
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RDX.i1085 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %PC.i1084
  %249 = add i64 %248, 10
  store i64 %249, i64* %PC.i1084
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i1085, align 8
  store %struct.Memory* %loadMem_4115f5, %struct.Memory** %MEMORY
  %loadMem_4115ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i1082 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RAX.i1083 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %PC.i1082
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC.i1082
  store i64 20, i64* %RAX.i1083, align 8
  store %struct.Memory* %loadMem_4115ff, %struct.Memory** %MEMORY
  %loadMem_411604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i1079 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RCX.i1080 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i1081 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i1081
  %268 = sub i64 %267, 8
  %269 = load i64, i64* %PC.i1079
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i1079
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RCX.i1080, align 8
  store %struct.Memory* %loadMem_411604, %struct.Memory** %MEMORY
  %loadMem_411607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i1076 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %EAX.i1077 = bitcast %union.anon* %279 to i32*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 15
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RBP.i1078 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %RBP.i1078
  %284 = sub i64 %283, 72
  %285 = load i32, i32* %EAX.i1077
  %286 = zext i32 %285 to i64
  %287 = load i64, i64* %PC.i1076
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC.i1076
  %289 = inttoptr i64 %284 to i32*
  store i32 %285, i32* %289
  store %struct.Memory* %loadMem_411607, %struct.Memory** %MEMORY
  %loadMem_41160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i1073 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %ECX.i1074 = bitcast %union.anon* %295 to i32*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %RAX.i1075 = bitcast %union.anon* %298 to i64*
  %299 = load i32, i32* %ECX.i1074
  %300 = zext i32 %299 to i64
  %301 = load i64, i64* %PC.i1073
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC.i1073
  %303 = and i64 %300, 4294967295
  store i64 %303, i64* %RAX.i1075, align 8
  store %struct.Memory* %loadMem_41160a, %struct.Memory** %MEMORY
  %loadMem_41160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i1070 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 7
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RDX.i1071 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i1072 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RBP.i1072
  %314 = sub i64 %313, 80
  %315 = load i64, i64* %RDX.i1071
  %316 = load i64, i64* %PC.i1070
  %317 = add i64 %316, 4
  store i64 %317, i64* %PC.i1070
  %318 = inttoptr i64 %314 to i64*
  store i64 %315, i64* %318
  store %struct.Memory* %loadMem_41160c, %struct.Memory** %MEMORY
  %loadMem_411610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i1069
  %323 = add i64 %322, 1
  store i64 %323, i64* %PC.i1069
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %326 = bitcast %union.anon* %325 to i32*
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = lshr i64 %328, 32
  store i64 %329, i64* %324, align 8
  store %struct.Memory* %loadMem_411610, %struct.Memory** %MEMORY
  %loadMem_411611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i1066 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RCX.i1067 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 15
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RBP.i1068 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RBP.i1068
  %340 = sub i64 %339, 72
  %341 = load i64, i64* %PC.i1066
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC.i1066
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RCX.i1067, align 8
  store %struct.Memory* %loadMem_411611, %struct.Memory** %MEMORY
  %loadMem_411614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i1061 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 5
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %ECX.i1062 = bitcast %union.anon* %351 to i32*
  %352 = load i32, i32* %ECX.i1062
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %PC.i1061
  %355 = add i64 %354, 2
  store i64 %355, i64* %PC.i1061
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %357 = bitcast %union.anon* %356 to i32*
  %358 = load i32, i32* %357, align 8
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %361 = bitcast %union.anon* %360 to i32*
  %362 = load i32, i32* %361, align 8
  %363 = zext i32 %362 to i64
  %364 = shl i64 %353, 32
  %365 = ashr exact i64 %364, 32
  %366 = shl i64 %363, 32
  %367 = or i64 %366, %359
  %368 = sdiv i64 %367, %365
  %369 = shl i64 %368, 32
  %370 = ashr exact i64 %369, 32
  %371 = icmp eq i64 %368, %370
  br i1 %371, label %376, label %372

; <label>:372:                                    ; preds = %block_.L_4115e6
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %374, %struct.Memory* %loadMem_411614)
  br label %routine_idivl__ecx.exit1063

; <label>:376:                                    ; preds = %block_.L_4115e6
  %377 = srem i64 %367, %365
  %378 = getelementptr inbounds %union.anon, %union.anon* %356, i64 0, i32 0
  %379 = and i64 %368, 4294967295
  store i64 %379, i64* %378, align 8
  %380 = getelementptr inbounds %union.anon, %union.anon* %360, i64 0, i32 0
  %381 = and i64 %377, 4294967295
  store i64 %381, i64* %380, align 8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %382, align 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %383, align 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %384, align 1
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %385, align 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %386, align 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %387, align 1
  br label %routine_idivl__ecx.exit1063

routine_idivl__ecx.exit1063:                      ; preds = %372, %376
  %388 = phi %struct.Memory* [ %375, %372 ], [ %loadMem_411614, %376 ]
  store %struct.Memory* %388, %struct.Memory** %MEMORY
  %loadMem_411616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i1059 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RAX.i1060 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RAX.i1060
  %396 = load i64, i64* %PC.i1059
  %397 = add i64 %396, 3
  store i64 %397, i64* %PC.i1059
  %398 = trunc i64 %395 to i32
  %399 = sub i32 %398, 1
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RAX.i1060, align 8
  %401 = icmp ult i32 %398, 1
  %402 = zext i1 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %402, i8* %403, align 1
  %404 = and i32 %399, 255
  %405 = call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %408, i8* %409, align 1
  %410 = xor i64 1, %395
  %411 = trunc i64 %410 to i32
  %412 = xor i32 %411, %399
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %415, i8* %416, align 1
  %417 = icmp eq i32 %399, 0
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %418, i8* %419, align 1
  %420 = lshr i32 %399, 31
  %421 = trunc i32 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %421, i8* %422, align 1
  %423 = lshr i32 %398, 31
  %424 = xor i32 %420, %423
  %425 = add i32 %424, %423
  %426 = icmp eq i32 %425, 2
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %427, i8* %428, align 1
  store %struct.Memory* %loadMem_411616, %struct.Memory** %MEMORY
  %loadMem_411619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i1056 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 17
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %R8D.i1057 = bitcast %union.anon* %434 to i32*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 15
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RBP.i1058 = bitcast %union.anon* %437 to i64*
  %438 = bitcast i32* %R8D.i1057 to i64*
  %439 = load i64, i64* %RBP.i1058
  %440 = sub i64 %439, 8
  %441 = load i64, i64* %PC.i1056
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC.i1056
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %438, align 8
  store %struct.Memory* %loadMem_411619, %struct.Memory** %MEMORY
  %loadMem_41161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i1053 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %EAX.i1054 = bitcast %union.anon* %451 to i32*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 15
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RBP.i1055 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %RBP.i1055
  %456 = sub i64 %455, 84
  %457 = load i32, i32* %EAX.i1054
  %458 = zext i32 %457 to i64
  %459 = load i64, i64* %PC.i1053
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i1053
  %461 = inttoptr i64 %456 to i32*
  store i32 %457, i32* %461
  store %struct.Memory* %loadMem_41161d, %struct.Memory** %MEMORY
  %loadMem_411620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i1050 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 17
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %R8D.i1051 = bitcast %union.anon* %467 to i32*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RAX.i1052 = bitcast %union.anon* %470 to i64*
  %471 = load i32, i32* %R8D.i1051
  %472 = zext i32 %471 to i64
  %473 = load i64, i64* %PC.i1050
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC.i1050
  %475 = and i64 %472, 4294967295
  store i64 %475, i64* %RAX.i1052, align 8
  store %struct.Memory* %loadMem_411620, %struct.Memory** %MEMORY
  %loadMem_411623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 33
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %PC.i1049
  %480 = add i64 %479, 1
  store i64 %480, i64* %PC.i1049
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %483 = bitcast %union.anon* %482 to i32*
  %484 = load i32, i32* %483, align 8
  %485 = sext i32 %484 to i64
  %486 = lshr i64 %485, 32
  store i64 %486, i64* %481, align 8
  store %struct.Memory* %loadMem_411623, %struct.Memory** %MEMORY
  %loadMem_411624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i1044 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 5
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %ECX.i1045 = bitcast %union.anon* %492 to i32*
  %493 = load i32, i32* %ECX.i1045
  %494 = zext i32 %493 to i64
  %495 = load i64, i64* %PC.i1044
  %496 = add i64 %495, 2
  store i64 %496, i64* %PC.i1044
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %498 = bitcast %union.anon* %497 to i32*
  %499 = load i32, i32* %498, align 8
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %502 = bitcast %union.anon* %501 to i32*
  %503 = load i32, i32* %502, align 8
  %504 = zext i32 %503 to i64
  %505 = shl i64 %494, 32
  %506 = ashr exact i64 %505, 32
  %507 = shl i64 %504, 32
  %508 = or i64 %507, %500
  %509 = sdiv i64 %508, %506
  %510 = shl i64 %509, 32
  %511 = ashr exact i64 %510, 32
  %512 = icmp eq i64 %509, %511
  br i1 %512, label %517, label %513

; <label>:513:                                    ; preds = %routine_idivl__ecx.exit1063
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %515, %struct.Memory* %loadMem_411624)
  br label %routine_idivl__ecx.exit1046

; <label>:517:                                    ; preds = %routine_idivl__ecx.exit1063
  %518 = srem i64 %508, %506
  %519 = getelementptr inbounds %union.anon, %union.anon* %497, i64 0, i32 0
  %520 = and i64 %509, 4294967295
  store i64 %520, i64* %519, align 8
  %521 = getelementptr inbounds %union.anon, %union.anon* %501, i64 0, i32 0
  %522 = and i64 %518, 4294967295
  store i64 %522, i64* %521, align 8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %523, align 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %524, align 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %525, align 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %526, align 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %527, align 1
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %528, align 1
  br label %routine_idivl__ecx.exit1046

routine_idivl__ecx.exit1046:                      ; preds = %513, %517
  %529 = phi %struct.Memory* [ %516, %513 ], [ %loadMem_411624, %517 ]
  store %struct.Memory* %529, %struct.Memory** %MEMORY
  %loadMem_411626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i1042 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 7
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RDX.i1043 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RDX.i1043
  %537 = load i64, i64* %PC.i1042
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC.i1042
  %539 = trunc i64 %536 to i32
  %540 = sub i32 %539, 1
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RDX.i1043, align 8
  %542 = icmp ult i32 %539, 1
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %543, i8* %544, align 1
  %545 = and i32 %540, 255
  %546 = call i32 @llvm.ctpop.i32(i32 %545)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %549, i8* %550, align 1
  %551 = xor i64 1, %536
  %552 = trunc i64 %551 to i32
  %553 = xor i32 %552, %540
  %554 = lshr i32 %553, 4
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %556, i8* %557, align 1
  %558 = icmp eq i32 %540, 0
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %559, i8* %560, align 1
  %561 = lshr i32 %540, 31
  %562 = trunc i32 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %562, i8* %563, align 1
  %564 = lshr i32 %539, 31
  %565 = xor i32 %561, %564
  %566 = add i32 %565, %564
  %567 = icmp eq i32 %566, 2
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %568, i8* %569, align 1
  store %struct.Memory* %loadMem_411626, %struct.Memory** %MEMORY
  %loadMem_411629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 33
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 15
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RBP.i1040 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 19
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %R9.i1041 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %RBP.i1040
  %580 = sub i64 %579, 80
  %581 = load i64, i64* %PC.i1039
  %582 = add i64 %581, 4
  store i64 %582, i64* %PC.i1039
  %583 = inttoptr i64 %580 to i64*
  %584 = load i64, i64* %583
  store i64 %584, i64* %R9.i1041, align 8
  store %struct.Memory* %loadMem_411629, %struct.Memory** %MEMORY
  %loadMem_41162d = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i1036 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 7
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %EDX.i1037 = bitcast %union.anon* %590 to i32*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 15
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RBP.i1038 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RBP.i1038
  %595 = sub i64 %594, 88
  %596 = load i32, i32* %EDX.i1037
  %597 = zext i32 %596 to i64
  %598 = load i64, i64* %PC.i1036
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC.i1036
  %600 = inttoptr i64 %595 to i32*
  store i32 %596, i32* %600
  store %struct.Memory* %loadMem_41162d, %struct.Memory** %MEMORY
  %loadMem_411630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i1033 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 7
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RDX.i1034 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 19
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %R9.i1035 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %R9.i1035
  %611 = load i64, i64* %PC.i1033
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC.i1033
  store i64 %610, i64* %RDX.i1034, align 8
  store %struct.Memory* %loadMem_411630, %struct.Memory** %MEMORY
  %loadMem_411633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i1030 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 5
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RCX.i1031 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 15
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RBP.i1032 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %RBP.i1032
  %623 = sub i64 %622, 84
  %624 = load i64, i64* %PC.i1030
  %625 = add i64 %624, 3
  store i64 %625, i64* %PC.i1030
  %626 = inttoptr i64 %623 to i32*
  %627 = load i32, i32* %626
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RCX.i1031, align 8
  store %struct.Memory* %loadMem_411633, %struct.Memory** %MEMORY
  %loadMem_411636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i1027 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 17
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %R8D.i1028 = bitcast %union.anon* %634 to i32*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i1029 = bitcast %union.anon* %637 to i64*
  %638 = bitcast i32* %R8D.i1028 to i64*
  %639 = load i64, i64* %RBP.i1029
  %640 = sub i64 %639, 88
  %641 = load i64, i64* %PC.i1027
  %642 = add i64 %641, 4
  store i64 %642, i64* %PC.i1027
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %638, align 8
  store %struct.Memory* %loadMem_411636, %struct.Memory** %MEMORY
  %loadMem1_41163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %PC.i1026
  %650 = add i64 %649, 264790
  %651 = load i64, i64* %PC.i1026
  %652 = add i64 %651, 5
  %653 = load i64, i64* %PC.i1026
  %654 = add i64 %653, 5
  store i64 %654, i64* %PC.i1026
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %656 = load i64, i64* %655, align 8
  %657 = add i64 %656, -8
  %658 = inttoptr i64 %657 to i64*
  store i64 %652, i64* %658
  store i64 %657, i64* %655, align 8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %650, i64* %659, align 8
  store %struct.Memory* %loadMem1_41163a, %struct.Memory** %MEMORY
  %loadMem2_41163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41163a = load i64, i64* %3
  %call2_41163a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_41163a, %struct.Memory* %loadMem2_41163a)
  store %struct.Memory* %call2_41163a, %struct.Memory** %MEMORY
  br label %block_.L_41163f

block_.L_41163f:                                  ; preds = %routine_idivl__ecx.exit1046, %block_4115e1
  %loadMem_41163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i1024 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 15
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RBP.i1025 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %RBP.i1025
  %667 = sub i64 %666, 12
  %668 = load i64, i64* %PC.i1024
  %669 = add i64 %668, 4
  store i64 %669, i64* %PC.i1024
  %670 = inttoptr i64 %667 to i32*
  %671 = load i32, i32* %670
  %672 = sub i32 %671, 1
  %673 = icmp ult i32 %671, 1
  %674 = zext i1 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %674, i8* %675, align 1
  %676 = and i32 %672, 255
  %677 = call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %681, align 1
  %682 = xor i32 %671, 1
  %683 = xor i32 %682, %672
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %686, i8* %687, align 1
  %688 = icmp eq i32 %672, 0
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %689, i8* %690, align 1
  %691 = lshr i32 %672, 31
  %692 = trunc i32 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %692, i8* %693, align 1
  %694 = lshr i32 %671, 31
  %695 = xor i32 %691, %694
  %696 = add i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %698, i8* %699, align 1
  store %struct.Memory* %loadMem_41163f, %struct.Memory** %MEMORY
  %loadMem_411643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %PC.i1023
  %704 = add i64 %703, 16
  %705 = load i64, i64* %PC.i1023
  %706 = add i64 %705, 6
  %707 = load i64, i64* %PC.i1023
  %708 = add i64 %707, 6
  store i64 %708, i64* %PC.i1023
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %710 = load i8, i8* %709, align 1
  store i8 %710, i8* %BRANCH_TAKEN, align 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %712 = icmp ne i8 %710, 0
  %713 = select i1 %712, i64 %704, i64 %706
  store i64 %713, i64* %711, align 8
  store %struct.Memory* %loadMem_411643, %struct.Memory** %MEMORY
  %loadBr_411643 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411643 = icmp eq i8 %loadBr_411643, 1
  br i1 %cmpBr_411643, label %block_.L_411653, label %block_411649

block_411649:                                     ; preds = %block_.L_41163f
  %loadMem_411649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i1021 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i1022 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i1022
  %721 = sub i64 %720, 12
  %722 = load i64, i64* %PC.i1021
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i1021
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724
  %726 = sub i32 %725, 2
  %727 = icmp ult i32 %725, 2
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %728, i8* %729, align 1
  %730 = and i32 %726, 255
  %731 = call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %734, i8* %735, align 1
  %736 = xor i32 %725, 2
  %737 = xor i32 %736, %726
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %740, i8* %741, align 1
  %742 = icmp eq i32 %726, 0
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %743, i8* %744, align 1
  %745 = lshr i32 %726, 31
  %746 = trunc i32 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %746, i8* %747, align 1
  %748 = lshr i32 %725, 31
  %749 = xor i32 %745, %748
  %750 = add i32 %749, %748
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %752, i8* %753, align 1
  store %struct.Memory* %loadMem_411649, %struct.Memory** %MEMORY
  %loadMem_41164d = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %PC.i1020
  %758 = add i64 %757, 11
  %759 = load i64, i64* %PC.i1020
  %760 = add i64 %759, 6
  %761 = load i64, i64* %PC.i1020
  %762 = add i64 %761, 6
  store i64 %762, i64* %PC.i1020
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %764 = load i8, i8* %763, align 1
  %765 = icmp eq i8 %764, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %BRANCH_TAKEN, align 1
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %768 = select i1 %765, i64 %758, i64 %760
  store i64 %768, i64* %767, align 8
  store %struct.Memory* %loadMem_41164d, %struct.Memory** %MEMORY
  %loadBr_41164d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41164d = icmp eq i8 %loadBr_41164d, 1
  br i1 %cmpBr_41164d, label %block_.L_411658, label %block_.L_411653

block_.L_411653:                                  ; preds = %block_411649, %block_.L_41163f
  %loadMem_411653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i1019 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %PC.i1019
  %773 = add i64 %772, 94
  %774 = load i64, i64* %PC.i1019
  %775 = add i64 %774, 5
  store i64 %775, i64* %PC.i1019
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %773, i64* %776, align 8
  store %struct.Memory* %loadMem_411653, %struct.Memory** %MEMORY
  br label %block_.L_4116b1

block_.L_411658:                                  ; preds = %block_411649
  %loadMem_411658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 11
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RDI.i1018 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %PC.i1017
  %784 = add i64 %783, 10
  store i64 %784, i64* %PC.i1017
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1018, align 8
  store %struct.Memory* %loadMem_411658, %struct.Memory** %MEMORY
  %loadMem_411662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 9
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RSI.i1016 = bitcast %union.anon* %790 to i64*
  %791 = load i64, i64* %PC.i1015
  %792 = add i64 %791, 5
  store i64 %792, i64* %PC.i1015
  store i64 1596, i64* %RSI.i1016, align 8
  store %struct.Memory* %loadMem_411662, %struct.Memory** %MEMORY
  %loadMem_411667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 7
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RDX.i1014 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %PC.i1013
  %800 = add i64 %799, 10
  store i64 %800, i64* %PC.i1013
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i1014, align 8
  store %struct.Memory* %loadMem_411667, %struct.Memory** %MEMORY
  %loadMem_411671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 1
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RAX.i1012 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %PC.i1011
  %808 = add i64 %807, 5
  store i64 %808, i64* %PC.i1011
  store i64 20, i64* %RAX.i1012, align 8
  store %struct.Memory* %loadMem_411671, %struct.Memory** %MEMORY
  %loadMem_411676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 5
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RCX.i1009 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 15
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RBP.i1010 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %RBP.i1010
  %819 = sub i64 %818, 8
  %820 = load i64, i64* %PC.i1008
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC.i1008
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RCX.i1009, align 8
  store %struct.Memory* %loadMem_411676, %struct.Memory** %MEMORY
  %loadMem_411679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 1
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %EAX.i1006 = bitcast %union.anon* %830 to i32*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 15
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RBP.i1007 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %RBP.i1007
  %835 = sub i64 %834, 92
  %836 = load i32, i32* %EAX.i1006
  %837 = zext i32 %836 to i64
  %838 = load i64, i64* %PC.i1005
  %839 = add i64 %838, 3
  store i64 %839, i64* %PC.i1005
  %840 = inttoptr i64 %835 to i32*
  store i32 %836, i32* %840
  store %struct.Memory* %loadMem_411679, %struct.Memory** %MEMORY
  %loadMem_41167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 5
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %ECX.i1003 = bitcast %union.anon* %846 to i32*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i1004 = bitcast %union.anon* %849 to i64*
  %850 = load i32, i32* %ECX.i1003
  %851 = zext i32 %850 to i64
  %852 = load i64, i64* %PC.i1002
  %853 = add i64 %852, 2
  store i64 %853, i64* %PC.i1002
  %854 = and i64 %851, 4294967295
  store i64 %854, i64* %RAX.i1004, align 8
  store %struct.Memory* %loadMem_41167c, %struct.Memory** %MEMORY
  %loadMem_41167e = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 7
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RDX.i1000 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 15
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RBP.i1001 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RBP.i1001
  %865 = sub i64 %864, 104
  %866 = load i64, i64* %RDX.i1000
  %867 = load i64, i64* %PC.i999
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC.i999
  %869 = inttoptr i64 %865 to i64*
  store i64 %866, i64* %869
  store %struct.Memory* %loadMem_41167e, %struct.Memory** %MEMORY
  %loadMem_411682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %PC.i998
  %874 = add i64 %873, 1
  store i64 %874, i64* %PC.i998
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %877 = bitcast %union.anon* %876 to i32*
  %878 = load i32, i32* %877, align 8
  %879 = sext i32 %878 to i64
  %880 = lshr i64 %879, 32
  store i64 %880, i64* %875, align 8
  store %struct.Memory* %loadMem_411682, %struct.Memory** %MEMORY
  %loadMem_411683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 5
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RCX.i996 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RBP.i997
  %891 = sub i64 %890, 92
  %892 = load i64, i64* %PC.i995
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i995
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RCX.i996, align 8
  store %struct.Memory* %loadMem_411683, %struct.Memory** %MEMORY
  %loadMem_411686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 5
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %ECX.i991 = bitcast %union.anon* %902 to i32*
  %903 = load i32, i32* %ECX.i991
  %904 = zext i32 %903 to i64
  %905 = load i64, i64* %PC.i990
  %906 = add i64 %905, 2
  store i64 %906, i64* %PC.i990
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %908 = bitcast %union.anon* %907 to i32*
  %909 = load i32, i32* %908, align 8
  %910 = zext i32 %909 to i64
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %912 = bitcast %union.anon* %911 to i32*
  %913 = load i32, i32* %912, align 8
  %914 = zext i32 %913 to i64
  %915 = shl i64 %904, 32
  %916 = ashr exact i64 %915, 32
  %917 = shl i64 %914, 32
  %918 = or i64 %917, %910
  %919 = sdiv i64 %918, %916
  %920 = shl i64 %919, 32
  %921 = ashr exact i64 %920, 32
  %922 = icmp eq i64 %919, %921
  br i1 %922, label %927, label %923

; <label>:923:                                    ; preds = %block_.L_411658
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %925 = load i64, i64* %924, align 8
  %926 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %925, %struct.Memory* %loadMem_411686)
  br label %routine_idivl__ecx.exit992

; <label>:927:                                    ; preds = %block_.L_411658
  %928 = srem i64 %918, %916
  %929 = getelementptr inbounds %union.anon, %union.anon* %907, i64 0, i32 0
  %930 = and i64 %919, 4294967295
  store i64 %930, i64* %929, align 8
  %931 = getelementptr inbounds %union.anon, %union.anon* %911, i64 0, i32 0
  %932 = and i64 %928, 4294967295
  store i64 %932, i64* %931, align 8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %933, align 1
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %934, align 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %935, align 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %936, align 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %937, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %938, align 1
  br label %routine_idivl__ecx.exit992

routine_idivl__ecx.exit992:                       ; preds = %923, %927
  %939 = phi %struct.Memory* [ %926, %923 ], [ %loadMem_411686, %927 ]
  store %struct.Memory* %939, %struct.Memory** %MEMORY
  %loadMem_411688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i989 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RAX.i989
  %947 = load i64, i64* %PC.i988
  %948 = add i64 %947, 3
  store i64 %948, i64* %PC.i988
  %949 = trunc i64 %946 to i32
  %950 = sub i32 %949, 1
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i989, align 8
  %952 = icmp ult i32 %949, 1
  %953 = zext i1 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %953, i8* %954, align 1
  %955 = and i32 %950, 255
  %956 = call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %959, i8* %960, align 1
  %961 = xor i64 1, %946
  %962 = trunc i64 %961 to i32
  %963 = xor i32 %962, %950
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %966, i8* %967, align 1
  %968 = icmp eq i32 %950, 0
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %969, i8* %970, align 1
  %971 = lshr i32 %950, 31
  %972 = trunc i32 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %972, i8* %973, align 1
  %974 = lshr i32 %949, 31
  %975 = xor i32 %971, %974
  %976 = add i32 %975, %974
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %978, i8* %979, align 1
  store %struct.Memory* %loadMem_411688, %struct.Memory** %MEMORY
  %loadMem_41168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 17
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %R8D.i986 = bitcast %union.anon* %985 to i32*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 15
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RBP.i987 = bitcast %union.anon* %988 to i64*
  %989 = bitcast i32* %R8D.i986 to i64*
  %990 = load i64, i64* %RBP.i987
  %991 = sub i64 %990, 8
  %992 = load i64, i64* %PC.i985
  %993 = add i64 %992, 4
  store i64 %993, i64* %PC.i985
  %994 = inttoptr i64 %991 to i32*
  %995 = load i32, i32* %994
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %989, align 8
  store %struct.Memory* %loadMem_41168b, %struct.Memory** %MEMORY
  %loadMem_41168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %EAX.i983 = bitcast %union.anon* %1002 to i32*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 15
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RBP.i984 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RBP.i984
  %1007 = sub i64 %1006, 108
  %1008 = load i32, i32* %EAX.i983
  %1009 = zext i32 %1008 to i64
  %1010 = load i64, i64* %PC.i982
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC.i982
  %1012 = inttoptr i64 %1007 to i32*
  store i32 %1008, i32* %1012
  store %struct.Memory* %loadMem_41168f, %struct.Memory** %MEMORY
  %loadMem_411692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 17
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %R8D.i980 = bitcast %union.anon* %1018 to i32*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %1021 to i64*
  %1022 = load i32, i32* %R8D.i980
  %1023 = zext i32 %1022 to i64
  %1024 = load i64, i64* %PC.i979
  %1025 = add i64 %1024, 3
  store i64 %1025, i64* %PC.i979
  %1026 = and i64 %1023, 4294967295
  store i64 %1026, i64* %RAX.i981, align 8
  store %struct.Memory* %loadMem_411692, %struct.Memory** %MEMORY
  %loadMem_411695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %PC.i978
  %1031 = add i64 %1030, 1
  store i64 %1031, i64* %PC.i978
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1034 = bitcast %union.anon* %1033 to i32*
  %1035 = load i32, i32* %1034, align 8
  %1036 = sext i32 %1035 to i64
  %1037 = lshr i64 %1036, 32
  store i64 %1037, i64* %1032, align 8
  store %struct.Memory* %loadMem_411695, %struct.Memory** %MEMORY
  %loadMem_411696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 5
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %ECX.i974 = bitcast %union.anon* %1043 to i32*
  %1044 = load i32, i32* %ECX.i974
  %1045 = zext i32 %1044 to i64
  %1046 = load i64, i64* %PC.i973
  %1047 = add i64 %1046, 2
  store i64 %1047, i64* %PC.i973
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1049 = bitcast %union.anon* %1048 to i32*
  %1050 = load i32, i32* %1049, align 8
  %1051 = zext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1053 = bitcast %union.anon* %1052 to i32*
  %1054 = load i32, i32* %1053, align 8
  %1055 = zext i32 %1054 to i64
  %1056 = shl i64 %1045, 32
  %1057 = ashr exact i64 %1056, 32
  %1058 = shl i64 %1055, 32
  %1059 = or i64 %1058, %1051
  %1060 = sdiv i64 %1059, %1057
  %1061 = shl i64 %1060, 32
  %1062 = ashr exact i64 %1061, 32
  %1063 = icmp eq i64 %1060, %1062
  br i1 %1063, label %1068, label %1064

; <label>:1064:                                   ; preds = %routine_idivl__ecx.exit992
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1066 = load i64, i64* %1065, align 8
  %1067 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1066, %struct.Memory* %loadMem_411696)
  br label %routine_idivl__ecx.exit

; <label>:1068:                                   ; preds = %routine_idivl__ecx.exit992
  %1069 = srem i64 %1059, %1057
  %1070 = getelementptr inbounds %union.anon, %union.anon* %1048, i64 0, i32 0
  %1071 = and i64 %1060, 4294967295
  store i64 %1071, i64* %1070, align 8
  %1072 = getelementptr inbounds %union.anon, %union.anon* %1052, i64 0, i32 0
  %1073 = and i64 %1069, 4294967295
  store i64 %1073, i64* %1072, align 8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1074, align 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1075, align 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1076, align 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1077, align 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1078, align 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1079, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1064, %1068
  %1080 = phi %struct.Memory* [ %1067, %1064 ], [ %loadMem_411696, %1068 ]
  store %struct.Memory* %1080, %struct.Memory** %MEMORY
  %loadMem_411698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 7
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RDX.i972 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %RDX.i972
  %1088 = load i64, i64* %PC.i971
  %1089 = add i64 %1088, 3
  store i64 %1089, i64* %PC.i971
  %1090 = trunc i64 %1087 to i32
  %1091 = sub i32 %1090, 1
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RDX.i972, align 8
  %1093 = icmp ult i32 %1090, 1
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1094, i8* %1095, align 1
  %1096 = and i32 %1091, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1
  %1102 = xor i64 1, %1087
  %1103 = trunc i64 %1102 to i32
  %1104 = xor i32 %1103, %1091
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1107, i8* %1108, align 1
  %1109 = icmp eq i32 %1091, 0
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1110, i8* %1111, align 1
  %1112 = lshr i32 %1091, 31
  %1113 = trunc i32 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1113, i8* %1114, align 1
  %1115 = lshr i32 %1090, 31
  %1116 = xor i32 %1112, %1115
  %1117 = add i32 %1116, %1115
  %1118 = icmp eq i32 %1117, 2
  %1119 = zext i1 %1118 to i8
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1119, i8* %1120, align 1
  store %struct.Memory* %loadMem_411698, %struct.Memory** %MEMORY
  %loadMem_41169b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 19
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %R9.i970 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i969
  %1131 = sub i64 %1130, 104
  %1132 = load i64, i64* %PC.i968
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i968
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134
  store i64 %1135, i64* %R9.i970, align 8
  store %struct.Memory* %loadMem_41169b, %struct.Memory** %MEMORY
  %loadMem_41169f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 7
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %EDX.i966 = bitcast %union.anon* %1141 to i32*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i967 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RBP.i967
  %1146 = sub i64 %1145, 112
  %1147 = load i32, i32* %EDX.i966
  %1148 = zext i32 %1147 to i64
  %1149 = load i64, i64* %PC.i965
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %PC.i965
  %1151 = inttoptr i64 %1146 to i32*
  store i32 %1147, i32* %1151
  store %struct.Memory* %loadMem_41169f, %struct.Memory** %MEMORY
  %loadMem_4116a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 7
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RDX.i964 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 19
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %R9.i
  %1162 = load i64, i64* %PC.i963
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %PC.i963
  store i64 %1161, i64* %RDX.i964, align 8
  store %struct.Memory* %loadMem_4116a2, %struct.Memory** %MEMORY
  %loadMem_4116a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 5
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RCX.i961 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 15
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RBP.i962 = bitcast %union.anon* %1172 to i64*
  %1173 = load i64, i64* %RBP.i962
  %1174 = sub i64 %1173, 108
  %1175 = load i64, i64* %PC.i960
  %1176 = add i64 %1175, 3
  store i64 %1176, i64* %PC.i960
  %1177 = inttoptr i64 %1174 to i32*
  %1178 = load i32, i32* %1177
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RCX.i961, align 8
  store %struct.Memory* %loadMem_4116a5, %struct.Memory** %MEMORY
  %loadMem_4116a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 17
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1185 to i32*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 15
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %1188 to i64*
  %1189 = bitcast i32* %R8D.i to i64*
  %1190 = load i64, i64* %RBP.i959
  %1191 = sub i64 %1190, 112
  %1192 = load i64, i64* %PC.i958
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %PC.i958
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %1189, align 8
  store %struct.Memory* %loadMem_4116a8, %struct.Memory** %MEMORY
  %loadMem1_4116ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %PC.i957
  %1201 = add i64 %1200, 264676
  %1202 = load i64, i64* %PC.i957
  %1203 = add i64 %1202, 5
  %1204 = load i64, i64* %PC.i957
  %1205 = add i64 %1204, 5
  store i64 %1205, i64* %PC.i957
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1207 = load i64, i64* %1206, align 8
  %1208 = add i64 %1207, -8
  %1209 = inttoptr i64 %1208 to i64*
  store i64 %1203, i64* %1209
  store i64 %1208, i64* %1206, align 8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1201, i64* %1210, align 8
  store %struct.Memory* %loadMem1_4116ac, %struct.Memory** %MEMORY
  %loadMem2_4116ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4116ac = load i64, i64* %3
  %call2_4116ac = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_4116ac, %struct.Memory* %loadMem2_4116ac)
  store %struct.Memory* %call2_4116ac, %struct.Memory** %MEMORY
  br label %block_.L_4116b1

block_.L_4116b1:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_411653
  %loadMem_4116b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i956
  %1218 = sub i64 %1217, 24
  %1219 = load i64, i64* %PC.i955
  %1220 = add i64 %1219, 5
  store i64 %1220, i64* %PC.i955
  %1221 = inttoptr i64 %1218 to i64*
  %1222 = load i64, i64* %1221
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1223, align 1
  %1224 = trunc i64 %1222 to i32
  %1225 = and i32 %1224, 255
  %1226 = call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1229, i8* %1230, align 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1231, align 1
  %1232 = icmp eq i64 %1222, 0
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1233, i8* %1234, align 1
  %1235 = lshr i64 %1222, 63
  %1236 = trunc i64 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i64 %1222, 63
  %1239 = xor i64 %1235, %1238
  %1240 = add i64 %1239, %1238
  %1241 = icmp eq i64 %1240, 2
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1242, i8* %1243, align 1
  store %struct.Memory* %loadMem_4116b1, %struct.Memory** %MEMORY
  %loadMem_4116b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %PC.i954
  %1248 = add i64 %1247, 51
  %1249 = load i64, i64* %PC.i954
  %1250 = add i64 %1249, 6
  %1251 = load i64, i64* %PC.i954
  %1252 = add i64 %1251, 6
  store i64 %1252, i64* %PC.i954
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1254 = load i8, i8* %1253, align 1
  %1255 = icmp eq i8 %1254, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %BRANCH_TAKEN, align 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1258 = select i1 %1255, i64 %1248, i64 %1250
  store i64 %1258, i64* %1257, align 8
  store %struct.Memory* %loadMem_4116b6, %struct.Memory** %MEMORY
  %loadBr_4116b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4116b6 = icmp eq i8 %loadBr_4116b6, 1
  br i1 %cmpBr_4116b6, label %block_.L_4116e9, label %block_4116bc

block_4116bc:                                     ; preds = %block_.L_4116b1
  %loadMem_4116bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 7
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RDX.i953 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %PC.i952
  %1266 = add i64 %1265, 5
  store i64 %1266, i64* %PC.i952
  store i64 1, i64* %RDX.i953, align 8
  store %struct.Memory* %loadMem_4116bc, %struct.Memory** %MEMORY
  %loadMem_4116c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 11
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RDI.i950 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 15
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %RBP.i951
  %1277 = sub i64 %1276, 8
  %1278 = load i64, i64* %PC.i949
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC.i949
  %1280 = inttoptr i64 %1277 to i32*
  %1281 = load i32, i32* %1280
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RDI.i950, align 8
  store %struct.Memory* %loadMem_4116c1, %struct.Memory** %MEMORY
  %loadMem_4116c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 9
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RSI.i947 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 15
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RBP.i948
  %1293 = sub i64 %1292, 12
  %1294 = load i64, i64* %PC.i946
  %1295 = add i64 %1294, 3
  store i64 %1295, i64* %PC.i946
  %1296 = inttoptr i64 %1293 to i32*
  %1297 = load i32, i32* %1296
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RSI.i947, align 8
  store %struct.Memory* %loadMem_4116c4, %struct.Memory** %MEMORY
  %loadMem1_4116c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %PC.i945
  %1303 = add i64 %1302, -6727
  %1304 = load i64, i64* %PC.i945
  %1305 = add i64 %1304, 5
  %1306 = load i64, i64* %PC.i945
  %1307 = add i64 %1306, 5
  store i64 %1307, i64* %PC.i945
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1309 = load i64, i64* %1308, align 8
  %1310 = add i64 %1309, -8
  %1311 = inttoptr i64 %1310 to i64*
  store i64 %1305, i64* %1311
  store i64 %1310, i64* %1308, align 8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1303, i64* %1312, align 8
  store %struct.Memory* %loadMem1_4116c7, %struct.Memory** %MEMORY
  %loadMem2_4116c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4116c7 = load i64, i64* %3
  %call2_4116c7 = call %struct.Memory* @sub_40fc80.fastlib(%struct.State* %0, i64 %loadPC_4116c7, %struct.Memory* %loadMem2_4116c7)
  store %struct.Memory* %call2_4116c7, %struct.Memory** %MEMORY
  %loadMem_4116cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 1
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %EAX.i943 = bitcast %union.anon* %1318 to i32*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 15
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RBP.i944 = bitcast %union.anon* %1321 to i64*
  %1322 = load i64, i64* %RBP.i944
  %1323 = sub i64 %1322, 36
  %1324 = load i32, i32* %EAX.i943
  %1325 = zext i32 %1324 to i64
  %1326 = load i64, i64* %PC.i942
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC.i942
  %1328 = inttoptr i64 %1323 to i32*
  store i32 %1324, i32* %1328
  store %struct.Memory* %loadMem_4116cc, %struct.Memory** %MEMORY
  %loadMem_4116cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 15
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %RBP.i941
  %1336 = sub i64 %1335, 36
  %1337 = load i64, i64* %PC.i940
  %1338 = add i64 %1337, 4
  store i64 %1338, i64* %PC.i940
  %1339 = inttoptr i64 %1336 to i32*
  %1340 = load i32, i32* %1339
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1341, align 1
  %1342 = and i32 %1340, 255
  %1343 = call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1346, i8* %1347, align 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1348, align 1
  %1349 = icmp eq i32 %1340, 0
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1350, i8* %1351, align 1
  %1352 = lshr i32 %1340, 31
  %1353 = trunc i32 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1353, i8* %1354, align 1
  %1355 = lshr i32 %1340, 31
  %1356 = xor i32 %1352, %1355
  %1357 = add i32 %1356, %1355
  %1358 = icmp eq i32 %1357, 2
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1359, i8* %1360, align 1
  store %struct.Memory* %loadMem_4116cf, %struct.Memory** %MEMORY
  %loadMem_4116d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %PC.i939
  %1365 = add i64 %1364, 17
  %1366 = load i64, i64* %PC.i939
  %1367 = add i64 %1366, 6
  %1368 = load i64, i64* %PC.i939
  %1369 = add i64 %1368, 6
  store i64 %1369, i64* %PC.i939
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1371 = load i8, i8* %1370, align 1
  %1372 = icmp ne i8 %1371, 0
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1374 = load i8, i8* %1373, align 1
  %1375 = icmp ne i8 %1374, 0
  %1376 = xor i1 %1372, %1375
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %BRANCH_TAKEN, align 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1379 = select i1 %1376, i64 %1365, i64 %1367
  store i64 %1379, i64* %1378, align 8
  store %struct.Memory* %loadMem_4116d3, %struct.Memory** %MEMORY
  %loadBr_4116d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4116d3 = icmp eq i8 %loadBr_4116d3, 1
  br i1 %cmpBr_4116d3, label %block_.L_4116e4, label %block_4116d9

block_4116d9:                                     ; preds = %block_4116bc
  %loadMem_4116d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i937 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 15
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %1388 to i64*
  %1389 = load i64, i64* %RBP.i938
  %1390 = sub i64 %1389, 36
  %1391 = load i64, i64* %PC.i936
  %1392 = add i64 %1391, 3
  store i64 %1392, i64* %PC.i936
  %1393 = inttoptr i64 %1390 to i32*
  %1394 = load i32, i32* %1393
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RAX.i937, align 8
  store %struct.Memory* %loadMem_4116d9, %struct.Memory** %MEMORY
  %loadMem_4116dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 1
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %EAX.i934 = bitcast %union.anon* %1401 to i32*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 15
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %RBP.i935
  %1406 = sub i64 %1405, 4
  %1407 = load i32, i32* %EAX.i934
  %1408 = zext i32 %1407 to i64
  %1409 = load i64, i64* %PC.i933
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %PC.i933
  %1411 = inttoptr i64 %1406 to i32*
  store i32 %1407, i32* %1411
  store %struct.Memory* %loadMem_4116dc, %struct.Memory** %MEMORY
  %loadMem_4116df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %PC.i932
  %1416 = add i64 %1415, 1724
  %1417 = load i64, i64* %PC.i932
  %1418 = add i64 %1417, 5
  store i64 %1418, i64* %PC.i932
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1416, i64* %1419, align 8
  store %struct.Memory* %loadMem_4116df, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_4116e4:                                  ; preds = %block_4116bc
  %loadMem_4116e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %PC.i931
  %1424 = add i64 %1423, 5
  %1425 = load i64, i64* %PC.i931
  %1426 = add i64 %1425, 5
  store i64 %1426, i64* %PC.i931
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1424, i64* %1427, align 8
  store %struct.Memory* %loadMem_4116e4, %struct.Memory** %MEMORY
  br label %block_.L_4116e9

block_.L_4116e9:                                  ; preds = %block_.L_4116e4, %block_.L_4116b1
  %loadMem_4116e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 15
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RBP.i930 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %RBP.i930
  %1435 = sub i64 %1434, 16
  %1436 = load i64, i64* %PC.i929
  %1437 = add i64 %1436, 4
  store i64 %1437, i64* %PC.i929
  %1438 = inttoptr i64 %1435 to i32*
  %1439 = load i32, i32* %1438
  %1440 = sub i32 %1439, 20
  %1441 = icmp ult i32 %1439, 20
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
  %1450 = xor i32 %1439, 20
  %1451 = xor i32 %1450, %1440
  %1452 = lshr i32 %1451, 4
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1454, i8* %1455, align 1
  %1456 = icmp eq i32 %1440, 0
  %1457 = zext i1 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1457, i8* %1458, align 1
  %1459 = lshr i32 %1440, 31
  %1460 = trunc i32 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1460, i8* %1461, align 1
  %1462 = lshr i32 %1439, 31
  %1463 = xor i32 %1459, %1462
  %1464 = add i32 %1463, %1462
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1466, i8* %1467, align 1
  store %struct.Memory* %loadMem_4116e9, %struct.Memory** %MEMORY
  %loadMem_4116ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %PC.i928
  %1472 = add i64 %1471, 32
  %1473 = load i64, i64* %PC.i928
  %1474 = add i64 %1473, 6
  %1475 = load i64, i64* %PC.i928
  %1476 = add i64 %1475, 6
  store i64 %1476, i64* %PC.i928
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1478 = load i8, i8* %1477, align 1
  %1479 = icmp ne i8 %1478, 0
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1481 = load i8, i8* %1480, align 1
  %1482 = icmp ne i8 %1481, 0
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1484 = load i8, i8* %1483, align 1
  %1485 = icmp ne i8 %1484, 0
  %1486 = xor i1 %1482, %1485
  %1487 = or i1 %1479, %1486
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %BRANCH_TAKEN, align 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1490 = select i1 %1487, i64 %1472, i64 %1474
  store i64 %1490, i64* %1489, align 8
  store %struct.Memory* %loadMem_4116ed, %struct.Memory** %MEMORY
  %loadBr_4116ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4116ed = icmp eq i8 %loadBr_4116ed, 1
  br i1 %cmpBr_4116ed, label %block_.L_41170d, label %block_4116f3

block_4116f3:                                     ; preds = %block_.L_4116e9
  %loadMem_4116f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 11
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i927
  %1501 = sub i64 %1500, 8
  %1502 = load i64, i64* %PC.i926
  %1503 = add i64 %1502, 3
  store i64 %1503, i64* %PC.i926
  %1504 = inttoptr i64 %1501 to i32*
  %1505 = load i32, i32* %1504
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4116f3, %struct.Memory** %MEMORY
  %loadMem_4116f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 9
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 15
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RBP.i925
  %1517 = sub i64 %1516, 12
  %1518 = load i64, i64* %PC.i924
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC.i924
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4116f6, %struct.Memory** %MEMORY
  %loadMem_4116f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 7
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RDX.i922 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 15
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RBP.i923
  %1533 = sub i64 %1532, 16
  %1534 = load i64, i64* %PC.i921
  %1535 = add i64 %1534, 3
  store i64 %1535, i64* %PC.i921
  %1536 = inttoptr i64 %1533 to i32*
  %1537 = load i32, i32* %1536
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RDX.i922, align 8
  store %struct.Memory* %loadMem_4116f9, %struct.Memory** %MEMORY
  %loadMem_4116fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 5
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RCX.i919 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i920
  %1549 = sub i64 %1548, 24
  %1550 = load i64, i64* %PC.i918
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC.i918
  %1552 = inttoptr i64 %1549 to i64*
  %1553 = load i64, i64* %1552
  store i64 %1553, i64* %RCX.i919, align 8
  store %struct.Memory* %loadMem_4116fc, %struct.Memory** %MEMORY
  %loadMem1_411700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %PC.i917
  %1558 = add i64 %1557, 1712
  %1559 = load i64, i64* %PC.i917
  %1560 = add i64 %1559, 5
  %1561 = load i64, i64* %PC.i917
  %1562 = add i64 %1561, 5
  store i64 %1562, i64* %PC.i917
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1564 = load i64, i64* %1563, align 8
  %1565 = add i64 %1564, -8
  %1566 = inttoptr i64 %1565 to i64*
  store i64 %1560, i64* %1566
  store i64 %1565, i64* %1563, align 8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1558, i64* %1567, align 8
  store %struct.Memory* %loadMem1_411700, %struct.Memory** %MEMORY
  %loadMem2_411700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411700 = load i64, i64* %3
  %call2_411700 = call %struct.Memory* @sub_411db0.slow_approxlib(%struct.State* %0, i64 %loadPC_411700, %struct.Memory* %loadMem2_411700)
  store %struct.Memory* %call2_411700, %struct.Memory** %MEMORY
  %loadMem_411705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 1
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %EAX.i915 = bitcast %union.anon* %1573 to i32*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 15
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %RBP.i916
  %1578 = sub i64 %1577, 4
  %1579 = load i32, i32* %EAX.i915
  %1580 = zext i32 %1579 to i64
  %1581 = load i64, i64* %PC.i914
  %1582 = add i64 %1581, 3
  store i64 %1582, i64* %PC.i914
  %1583 = inttoptr i64 %1578 to i32*
  store i32 %1579, i32* %1583
  store %struct.Memory* %loadMem_411705, %struct.Memory** %MEMORY
  %loadMem_411708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %PC.i913
  %1588 = add i64 %1587, 1683
  %1589 = load i64, i64* %PC.i913
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %PC.i913
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1588, i64* %1591, align 8
  store %struct.Memory* %loadMem_411708, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_41170d:                                  ; preds = %block_.L_4116e9
  %loadMem_41170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 1
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RAX.i912 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %PC.i911
  %1599 = add i64 %1598, 7
  store i64 %1599, i64* %PC.i911
  %1600 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %1601 = zext i32 %1600 to i64
  store i64 %1601, i64* %RAX.i912, align 8
  store %struct.Memory* %loadMem_41170d, %struct.Memory** %MEMORY
  %loadMem_411714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 1
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RAX.i910 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RAX.i910
  %1609 = load i64, i64* %PC.i909
  %1610 = add i64 %1609, 3
  store i64 %1610, i64* %PC.i909
  %1611 = trunc i64 %1608 to i32
  %1612 = add i32 1, %1611
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RAX.i910, align 8
  %1614 = icmp ult i32 %1612, %1611
  %1615 = icmp ult i32 %1612, 1
  %1616 = or i1 %1614, %1615
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1617, i8* %1618, align 1
  %1619 = and i32 %1612, 255
  %1620 = call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1623, i8* %1624, align 1
  %1625 = xor i64 1, %1608
  %1626 = trunc i64 %1625 to i32
  %1627 = xor i32 %1626, %1612
  %1628 = lshr i32 %1627, 4
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1630, i8* %1631, align 1
  %1632 = icmp eq i32 %1612, 0
  %1633 = zext i1 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1633, i8* %1634, align 1
  %1635 = lshr i32 %1612, 31
  %1636 = trunc i32 %1635 to i8
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1636, i8* %1637, align 1
  %1638 = lshr i32 %1611, 31
  %1639 = xor i32 %1635, %1638
  %1640 = add i32 %1639, %1635
  %1641 = icmp eq i32 %1640, 2
  %1642 = zext i1 %1641 to i8
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1642, i8* %1643, align 1
  store %struct.Memory* %loadMem_411714, %struct.Memory** %MEMORY
  %loadMem_411717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 1
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %EAX.i908 = bitcast %union.anon* %1649 to i32*
  %1650 = load i32, i32* %EAX.i908
  %1651 = zext i32 %1650 to i64
  %1652 = load i64, i64* %PC.i907
  %1653 = add i64 %1652, 7
  store i64 %1653, i64* %PC.i907
  store i32 %1650, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  store %struct.Memory* %loadMem_411717, %struct.Memory** %MEMORY
  %loadMem_41171e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 1
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %PC.i905
  %1661 = add i64 %1660, 7
  store i64 %1661, i64* %PC.i905
  %1662 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %1663 = zext i32 %1662 to i64
  store i64 %1663, i64* %RAX.i906, align 8
  store %struct.Memory* %loadMem_41171e, %struct.Memory** %MEMORY
  %loadMem_411725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 5
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RCX.i903 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 15
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RBP.i904
  %1674 = sub i64 %1673, 8
  %1675 = load i64, i64* %PC.i902
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %PC.i902
  %1677 = inttoptr i64 %1674 to i32*
  %1678 = load i32, i32* %1677
  %1679 = sext i32 %1678 to i64
  store i64 %1679, i64* %RCX.i903, align 8
  store %struct.Memory* %loadMem_411725, %struct.Memory** %MEMORY
  %loadMem_411729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 1
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %EAX.i900 = bitcast %union.anon* %1685 to i32*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 5
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RCX.i901 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RCX.i901
  %1690 = mul i64 %1689, 4
  %1691 = add i64 %1690, 11185584
  %1692 = load i32, i32* %EAX.i900
  %1693 = zext i32 %1692 to i64
  %1694 = load i64, i64* %PC.i899
  %1695 = add i64 %1694, 7
  store i64 %1695, i64* %PC.i899
  %1696 = inttoptr i64 %1691 to i32*
  store i32 %1692, i32* %1696
  store %struct.Memory* %loadMem_411729, %struct.Memory** %MEMORY
  %loadMem_411730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RBP.i898
  %1707 = sub i64 %1706, 8
  %1708 = load i64, i64* %PC.i896
  %1709 = add i64 %1708, 3
  store i64 %1709, i64* %PC.i896
  %1710 = inttoptr i64 %1707 to i32*
  %1711 = load i32, i32* %1710
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_411730, %struct.Memory** %MEMORY
  %loadMem_411733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %RAX.i895
  %1720 = load i64, i64* %PC.i894
  %1721 = add i64 %1720, 3
  store i64 %1721, i64* %PC.i894
  %1722 = trunc i64 %1719 to i32
  %1723 = add i32 20, %1722
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RAX.i895, align 8
  %1725 = icmp ult i32 %1723, %1722
  %1726 = icmp ult i32 %1723, 20
  %1727 = or i1 %1725, %1726
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1728, i8* %1729, align 1
  %1730 = and i32 %1723, 255
  %1731 = call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1734, i8* %1735, align 1
  %1736 = xor i64 20, %1719
  %1737 = trunc i64 %1736 to i32
  %1738 = xor i32 %1737, %1723
  %1739 = lshr i32 %1738, 4
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1741, i8* %1742, align 1
  %1743 = icmp eq i32 %1723, 0
  %1744 = zext i1 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1744, i8* %1745, align 1
  %1746 = lshr i32 %1723, 31
  %1747 = trunc i32 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1747, i8* %1748, align 1
  %1749 = lshr i32 %1722, 31
  %1750 = xor i32 %1746, %1749
  %1751 = add i32 %1750, %1746
  %1752 = icmp eq i32 %1751, 2
  %1753 = zext i1 %1752 to i8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1753, i8* %1754, align 1
  store %struct.Memory* %loadMem_411733, %struct.Memory** %MEMORY
  %loadMem_411736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 1
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %EAX.i892 = bitcast %union.anon* %1760 to i32*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 5
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RCX.i893 = bitcast %union.anon* %1763 to i64*
  %1764 = load i32, i32* %EAX.i892
  %1765 = zext i32 %1764 to i64
  %1766 = load i64, i64* %PC.i891
  %1767 = add i64 %1766, 3
  store i64 %1767, i64* %PC.i891
  %1768 = shl i64 %1765, 32
  %1769 = ashr exact i64 %1768, 32
  store i64 %1769, i64* %RCX.i893, align 8
  store %struct.Memory* %loadMem_411736, %struct.Memory** %MEMORY
  %loadMem_411739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 5
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RCX.i890
  %1780 = add i64 %1779, 12099168
  %1781 = load i64, i64* %PC.i888
  %1782 = add i64 %1781, 8
  store i64 %1782, i64* %PC.i888
  %1783 = inttoptr i64 %1780 to i8*
  %1784 = load i8, i8* %1783
  %1785 = zext i8 %1784 to i64
  store i64 %1785, i64* %RAX.i889, align 8
  store %struct.Memory* %loadMem_411739, %struct.Memory** %MEMORY
  %loadMem_411741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 1
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %EAX.i887 = bitcast %union.anon* %1791 to i32*
  %1792 = load i32, i32* %EAX.i887
  %1793 = zext i32 %1792 to i64
  %1794 = load i64, i64* %PC.i886
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC.i886
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1796, align 1
  %1797 = and i32 %1792, 255
  %1798 = call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1801, i8* %1802, align 1
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1803, align 1
  %1804 = icmp eq i32 %1792, 0
  %1805 = zext i1 %1804 to i8
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1805, i8* %1806, align 1
  %1807 = lshr i32 %1792, 31
  %1808 = trunc i32 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1808, i8* %1809, align 1
  %1810 = lshr i32 %1792, 31
  %1811 = xor i32 %1807, %1810
  %1812 = add i32 %1811, %1810
  %1813 = icmp eq i32 %1812, 2
  %1814 = zext i1 %1813 to i8
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1814, i8* %1815, align 1
  store %struct.Memory* %loadMem_411741, %struct.Memory** %MEMORY
  %loadMem_411744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %1818 to i64*
  %1819 = load i64, i64* %PC.i885
  %1820 = add i64 %1819, 123
  %1821 = load i64, i64* %PC.i885
  %1822 = add i64 %1821, 6
  %1823 = load i64, i64* %PC.i885
  %1824 = add i64 %1823, 6
  store i64 %1824, i64* %PC.i885
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1826 = load i8, i8* %1825, align 1
  %1827 = icmp eq i8 %1826, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %BRANCH_TAKEN, align 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1830 = select i1 %1827, i64 %1820, i64 %1822
  store i64 %1830, i64* %1829, align 8
  store %struct.Memory* %loadMem_411744, %struct.Memory** %MEMORY
  %loadBr_411744 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411744 = icmp eq i8 %loadBr_411744, 1
  br i1 %cmpBr_411744, label %block_.L_4117bf, label %block_41174a

block_41174a:                                     ; preds = %block_.L_41170d
  %loadMem_41174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 1
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 15
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %RBP.i884
  %1841 = sub i64 %1840, 8
  %1842 = load i64, i64* %PC.i882
  %1843 = add i64 %1842, 3
  store i64 %1843, i64* %PC.i882
  %1844 = inttoptr i64 %1841 to i32*
  %1845 = load i32, i32* %1844
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_41174a, %struct.Memory** %MEMORY
  %loadMem_41174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 1
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %RAX.i881
  %1854 = load i64, i64* %PC.i880
  %1855 = add i64 %1854, 3
  store i64 %1855, i64* %PC.i880
  %1856 = trunc i64 %1853 to i32
  %1857 = add i32 20, %1856
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RAX.i881, align 8
  %1859 = icmp ult i32 %1857, %1856
  %1860 = icmp ult i32 %1857, 20
  %1861 = or i1 %1859, %1860
  %1862 = zext i1 %1861 to i8
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1862, i8* %1863, align 1
  %1864 = and i32 %1857, 255
  %1865 = call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1868, i8* %1869, align 1
  %1870 = xor i64 20, %1853
  %1871 = trunc i64 %1870 to i32
  %1872 = xor i32 %1871, %1857
  %1873 = lshr i32 %1872, 4
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1875, i8* %1876, align 1
  %1877 = icmp eq i32 %1857, 0
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1878, i8* %1879, align 1
  %1880 = lshr i32 %1857, 31
  %1881 = trunc i32 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1881, i8* %1882, align 1
  %1883 = lshr i32 %1856, 31
  %1884 = xor i32 %1880, %1883
  %1885 = add i32 %1884, %1880
  %1886 = icmp eq i32 %1885, 2
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1887, i8* %1888, align 1
  store %struct.Memory* %loadMem_41174d, %struct.Memory** %MEMORY
  %loadMem_411750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 1
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %EAX.i878 = bitcast %union.anon* %1894 to i32*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 5
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RCX.i879 = bitcast %union.anon* %1897 to i64*
  %1898 = load i32, i32* %EAX.i878
  %1899 = zext i32 %1898 to i64
  %1900 = load i64, i64* %PC.i877
  %1901 = add i64 %1900, 3
  store i64 %1901, i64* %PC.i877
  %1902 = shl i64 %1899, 32
  %1903 = ashr exact i64 %1902, 32
  store i64 %1903, i64* %RCX.i879, align 8
  store %struct.Memory* %loadMem_411750, %struct.Memory** %MEMORY
  %loadMem_411753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 1
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 5
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RCX.i876 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %RCX.i876
  %1914 = mul i64 %1913, 4
  %1915 = add i64 %1914, 11185584
  %1916 = load i64, i64* %PC.i874
  %1917 = add i64 %1916, 7
  store i64 %1917, i64* %PC.i874
  %1918 = inttoptr i64 %1915 to i32*
  %1919 = load i32, i32* %1918
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_411753, %struct.Memory** %MEMORY
  %loadMem_41175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 1
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %EAX.i873 = bitcast %union.anon* %1926 to i32*
  %1927 = load i32, i32* %EAX.i873
  %1928 = zext i32 %1927 to i64
  %1929 = load i64, i64* %PC.i872
  %1930 = add i64 %1929, 7
  store i64 %1930, i64* %PC.i872
  %1931 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %1932 = sub i32 %1927, %1931
  %1933 = icmp ult i32 %1927, %1931
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1934, i8* %1935, align 1
  %1936 = and i32 %1932, 255
  %1937 = call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1940, i8* %1941, align 1
  %1942 = xor i32 %1931, %1927
  %1943 = xor i32 %1942, %1932
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1946, i8* %1947, align 1
  %1948 = icmp eq i32 %1932, 0
  %1949 = zext i1 %1948 to i8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1949, i8* %1950, align 1
  %1951 = lshr i32 %1932, 31
  %1952 = trunc i32 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1952, i8* %1953, align 1
  %1954 = lshr i32 %1927, 31
  %1955 = lshr i32 %1931, 31
  %1956 = xor i32 %1955, %1954
  %1957 = xor i32 %1951, %1954
  %1958 = add i32 %1957, %1956
  %1959 = icmp eq i32 %1958, 2
  %1960 = zext i1 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1960, i8* %1961, align 1
  store %struct.Memory* %loadMem_41175a, %struct.Memory** %MEMORY
  %loadMem_411761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1964 to i64*
  %1965 = load i64, i64* %PC.i871
  %1966 = add i64 %1965, 94
  %1967 = load i64, i64* %PC.i871
  %1968 = add i64 %1967, 6
  %1969 = load i64, i64* %PC.i871
  %1970 = add i64 %1969, 6
  store i64 %1970, i64* %PC.i871
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1972 = load i8, i8* %1971, align 1
  store i8 %1972, i8* %BRANCH_TAKEN, align 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1974 = icmp ne i8 %1972, 0
  %1975 = select i1 %1974, i64 %1966, i64 %1968
  store i64 %1975, i64* %1973, align 8
  store %struct.Memory* %loadMem_411761, %struct.Memory** %MEMORY
  %loadBr_411761 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411761 = icmp eq i8 %loadBr_411761, 1
  br i1 %cmpBr_411761, label %block_.L_4117bf, label %block_411767

block_411767:                                     ; preds = %block_41174a
  %loadMem_411767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 15
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %RBP.i870
  %1983 = sub i64 %1982, 24
  %1984 = load i64, i64* %PC.i869
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i869
  %1986 = inttoptr i64 %1983 to i64*
  %1987 = load i64, i64* %1986
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1988, align 1
  %1989 = trunc i64 %1987 to i32
  %1990 = and i32 %1989, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1996, align 1
  %1997 = icmp eq i64 %1987, 0
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1998, i8* %1999, align 1
  %2000 = lshr i64 %1987, 63
  %2001 = trunc i64 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2001, i8* %2002, align 1
  %2003 = lshr i64 %1987, 63
  %2004 = xor i64 %2000, %2003
  %2005 = add i64 %2004, %2003
  %2006 = icmp eq i64 %2005, 2
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2007, i8* %2008, align 1
  store %struct.Memory* %loadMem_411767, %struct.Memory** %MEMORY
  %loadMem_41176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %PC.i868
  %2013 = add i64 %2012, 23
  %2014 = load i64, i64* %PC.i868
  %2015 = add i64 %2014, 6
  %2016 = load i64, i64* %PC.i868
  %2017 = add i64 %2016, 6
  store i64 %2017, i64* %PC.i868
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2019 = load i8, i8* %2018, align 1
  store i8 %2019, i8* %BRANCH_TAKEN, align 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2021 = icmp ne i8 %2019, 0
  %2022 = select i1 %2021, i64 %2013, i64 %2015
  store i64 %2022, i64* %2020, align 8
  store %struct.Memory* %loadMem_41176c, %struct.Memory** %MEMORY
  %loadBr_41176c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41176c = icmp eq i8 %loadBr_41176c, 1
  br i1 %cmpBr_41176c, label %block_.L_411783, label %block_411772

block_411772:                                     ; preds = %block_411767
  %loadMem_411772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 1
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RAX.i866 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i867
  %2033 = sub i64 %2032, 8
  %2034 = load i64, i64* %PC.i865
  %2035 = add i64 %2034, 3
  store i64 %2035, i64* %PC.i865
  %2036 = inttoptr i64 %2033 to i32*
  %2037 = load i32, i32* %2036
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RAX.i866, align 8
  store %struct.Memory* %loadMem_411772, %struct.Memory** %MEMORY
  %loadMem_411775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 1
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %RAX.i864
  %2046 = load i64, i64* %PC.i863
  %2047 = add i64 %2046, 3
  store i64 %2047, i64* %PC.i863
  %2048 = trunc i64 %2045 to i32
  %2049 = add i32 20, %2048
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RAX.i864, align 8
  %2051 = icmp ult i32 %2049, %2048
  %2052 = icmp ult i32 %2049, 20
  %2053 = or i1 %2051, %2052
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2054, i8* %2055, align 1
  %2056 = and i32 %2049, 255
  %2057 = call i32 @llvm.ctpop.i32(i32 %2056)
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2060, i8* %2061, align 1
  %2062 = xor i64 20, %2045
  %2063 = trunc i64 %2062 to i32
  %2064 = xor i32 %2063, %2049
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2067, i8* %2068, align 1
  %2069 = icmp eq i32 %2049, 0
  %2070 = zext i1 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2070, i8* %2071, align 1
  %2072 = lshr i32 %2049, 31
  %2073 = trunc i32 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2073, i8* %2074, align 1
  %2075 = lshr i32 %2048, 31
  %2076 = xor i32 %2072, %2075
  %2077 = add i32 %2076, %2072
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2079, i8* %2080, align 1
  store %struct.Memory* %loadMem_411775, %struct.Memory** %MEMORY
  %loadMem_411778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 5
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RCX.i861 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 15
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RBP.i862 = bitcast %union.anon* %2089 to i64*
  %2090 = load i64, i64* %RBP.i862
  %2091 = sub i64 %2090, 24
  %2092 = load i64, i64* %PC.i860
  %2093 = add i64 %2092, 4
  store i64 %2093, i64* %PC.i860
  %2094 = inttoptr i64 %2091 to i64*
  %2095 = load i64, i64* %2094
  store i64 %2095, i64* %RCX.i861, align 8
  store %struct.Memory* %loadMem_411778, %struct.Memory** %MEMORY
  %loadMem_41177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 7
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RDX.i858 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 15
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RBP.i859
  %2106 = sub i64 %2105, 32
  %2107 = load i64, i64* %PC.i857
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i857
  %2109 = inttoptr i64 %2106 to i32*
  %2110 = load i32, i32* %2109
  %2111 = sext i32 %2110 to i64
  store i64 %2111, i64* %RDX.i858, align 8
  store %struct.Memory* %loadMem_41177c, %struct.Memory** %MEMORY
  %loadMem_411780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %EAX.i854 = bitcast %union.anon* %2117 to i32*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 5
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RCX.i855 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 7
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RDX.i856 = bitcast %union.anon* %2123 to i64*
  %2124 = load i64, i64* %RCX.i855
  %2125 = load i64, i64* %RDX.i856
  %2126 = mul i64 %2125, 4
  %2127 = add i64 %2126, %2124
  %2128 = load i32, i32* %EAX.i854
  %2129 = zext i32 %2128 to i64
  %2130 = load i64, i64* %PC.i853
  %2131 = add i64 %2130, 3
  store i64 %2131, i64* %PC.i853
  %2132 = inttoptr i64 %2127 to i32*
  store i32 %2128, i32* %2132
  store %struct.Memory* %loadMem_411780, %struct.Memory** %MEMORY
  br label %block_.L_411783

block_.L_411783:                                  ; preds = %block_411772, %block_411767
  %loadMem_411783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 1
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 15
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %RBP.i852
  %2143 = sub i64 %2142, 32
  %2144 = load i64, i64* %PC.i850
  %2145 = add i64 %2144, 3
  store i64 %2145, i64* %PC.i850
  %2146 = inttoptr i64 %2143 to i32*
  %2147 = load i32, i32* %2146
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RAX.i851, align 8
  store %struct.Memory* %loadMem_411783, %struct.Memory** %MEMORY
  %loadMem_411786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 1
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RAX.i849
  %2156 = load i64, i64* %PC.i848
  %2157 = add i64 %2156, 3
  store i64 %2157, i64* %PC.i848
  %2158 = trunc i64 %2155 to i32
  %2159 = add i32 1, %2158
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RAX.i849, align 8
  %2161 = icmp ult i32 %2159, %2158
  %2162 = icmp ult i32 %2159, 1
  %2163 = or i1 %2161, %2162
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2164, i8* %2165, align 1
  %2166 = and i32 %2159, 255
  %2167 = call i32 @llvm.ctpop.i32(i32 %2166)
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  %2170 = xor i8 %2169, 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2170, i8* %2171, align 1
  %2172 = xor i64 1, %2155
  %2173 = trunc i64 %2172 to i32
  %2174 = xor i32 %2173, %2159
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2177, i8* %2178, align 1
  %2179 = icmp eq i32 %2159, 0
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2180, i8* %2181, align 1
  %2182 = lshr i32 %2159, 31
  %2183 = trunc i32 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2183, i8* %2184, align 1
  %2185 = lshr i32 %2158, 31
  %2186 = xor i32 %2182, %2185
  %2187 = add i32 %2186, %2182
  %2188 = icmp eq i32 %2187, 2
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2189, i8* %2190, align 1
  store %struct.Memory* %loadMem_411786, %struct.Memory** %MEMORY
  %loadMem_411789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 1
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %EAX.i846 = bitcast %union.anon* %2196 to i32*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RBP.i847
  %2201 = sub i64 %2200, 32
  %2202 = load i32, i32* %EAX.i846
  %2203 = zext i32 %2202 to i64
  %2204 = load i64, i64* %PC.i845
  %2205 = add i64 %2204, 3
  store i64 %2205, i64* %PC.i845
  %2206 = inttoptr i64 %2201 to i32*
  store i32 %2202, i32* %2206
  store %struct.Memory* %loadMem_411789, %struct.Memory** %MEMORY
  %loadMem_41178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 15
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RBP.i844
  %2217 = sub i64 %2216, 32
  %2218 = load i64, i64* %PC.i842
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i842
  %2220 = inttoptr i64 %2217 to i32*
  %2221 = load i32, i32* %2220
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RAX.i843, align 8
  store %struct.Memory* %loadMem_41178c, %struct.Memory** %MEMORY
  %loadMem_41178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 1
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %EAX.i840 = bitcast %union.anon* %2228 to i32*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 15
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %2231 to i64*
  %2232 = load i32, i32* %EAX.i840
  %2233 = zext i32 %2232 to i64
  %2234 = load i64, i64* %RBP.i841
  %2235 = sub i64 %2234, 16
  %2236 = load i64, i64* %PC.i839
  %2237 = add i64 %2236, 3
  store i64 %2237, i64* %PC.i839
  %2238 = inttoptr i64 %2235 to i32*
  %2239 = load i32, i32* %2238
  %2240 = sub i32 %2232, %2239
  %2241 = icmp ult i32 %2232, %2239
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2242, i8* %2243, align 1
  %2244 = and i32 %2240, 255
  %2245 = call i32 @llvm.ctpop.i32(i32 %2244)
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2248, i8* %2249, align 1
  %2250 = xor i32 %2239, %2232
  %2251 = xor i32 %2250, %2240
  %2252 = lshr i32 %2251, 4
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2254, i8* %2255, align 1
  %2256 = icmp eq i32 %2240, 0
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2257, i8* %2258, align 1
  %2259 = lshr i32 %2240, 31
  %2260 = trunc i32 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2260, i8* %2261, align 1
  %2262 = lshr i32 %2232, 31
  %2263 = lshr i32 %2239, 31
  %2264 = xor i32 %2263, %2262
  %2265 = xor i32 %2259, %2262
  %2266 = add i32 %2265, %2264
  %2267 = icmp eq i32 %2266, 2
  %2268 = zext i1 %2267 to i8
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2268, i8* %2269, align 1
  store %struct.Memory* %loadMem_41178f, %struct.Memory** %MEMORY
  %loadMem_411792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i838
  %2274 = add i64 %2273, 17
  %2275 = load i64, i64* %PC.i838
  %2276 = add i64 %2275, 6
  %2277 = load i64, i64* %PC.i838
  %2278 = add i64 %2277, 6
  store i64 %2278, i64* %PC.i838
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2280 = load i8, i8* %2279, align 1
  %2281 = icmp ne i8 %2280, 0
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2283 = load i8, i8* %2282, align 1
  %2284 = icmp ne i8 %2283, 0
  %2285 = xor i1 %2281, %2284
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %BRANCH_TAKEN, align 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2288 = select i1 %2285, i64 %2274, i64 %2276
  store i64 %2288, i64* %2287, align 8
  store %struct.Memory* %loadMem_411792, %struct.Memory** %MEMORY
  %loadBr_411792 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411792 = icmp eq i8 %loadBr_411792, 1
  br i1 %cmpBr_411792, label %block_.L_4117a3, label %block_411798

block_411798:                                     ; preds = %block_.L_411783
  %loadMem_411798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i837
  %2299 = sub i64 %2298, 32
  %2300 = load i64, i64* %PC.i835
  %2301 = add i64 %2300, 3
  store i64 %2301, i64* %PC.i835
  %2302 = inttoptr i64 %2299 to i32*
  %2303 = load i32, i32* %2302
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_411798, %struct.Memory** %MEMORY
  %loadMem_41179b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %EAX.i833 = bitcast %union.anon* %2310 to i32*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 15
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RBP.i834
  %2315 = sub i64 %2314, 4
  %2316 = load i32, i32* %EAX.i833
  %2317 = zext i32 %2316 to i64
  %2318 = load i64, i64* %PC.i832
  %2319 = add i64 %2318, 3
  store i64 %2319, i64* %PC.i832
  %2320 = inttoptr i64 %2315 to i32*
  store i32 %2316, i32* %2320
  store %struct.Memory* %loadMem_41179b, %struct.Memory** %MEMORY
  %loadMem_41179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %PC.i831
  %2325 = add i64 %2324, 1533
  %2326 = load i64, i64* %PC.i831
  %2327 = add i64 %2326, 5
  store i64 %2327, i64* %PC.i831
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2325, i64* %2328, align 8
  store %struct.Memory* %loadMem_41179e, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_4117a3:                                  ; preds = %block_.L_411783
  %loadMem_4117a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 1
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %PC.i829
  %2336 = add i64 %2335, 7
  store i64 %2336, i64* %PC.i829
  %2337 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RAX.i830, align 8
  store %struct.Memory* %loadMem_4117a3, %struct.Memory** %MEMORY
  %loadMem_4117aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 5
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RCX.i827 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RBP.i828
  %2349 = sub i64 %2348, 8
  %2350 = load i64, i64* %PC.i826
  %2351 = add i64 %2350, 3
  store i64 %2351, i64* %PC.i826
  %2352 = inttoptr i64 %2349 to i32*
  %2353 = load i32, i32* %2352
  %2354 = zext i32 %2353 to i64
  store i64 %2354, i64* %RCX.i827, align 8
  store %struct.Memory* %loadMem_4117aa, %struct.Memory** %MEMORY
  %loadMem_4117ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 5
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RCX.i825 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RCX.i825
  %2362 = load i64, i64* %PC.i824
  %2363 = add i64 %2362, 3
  store i64 %2363, i64* %PC.i824
  %2364 = trunc i64 %2361 to i32
  %2365 = add i32 20, %2364
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RCX.i825, align 8
  %2367 = icmp ult i32 %2365, %2364
  %2368 = icmp ult i32 %2365, 20
  %2369 = or i1 %2367, %2368
  %2370 = zext i1 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2370, i8* %2371, align 1
  %2372 = and i32 %2365, 255
  %2373 = call i32 @llvm.ctpop.i32(i32 %2372)
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = xor i8 %2375, 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2376, i8* %2377, align 1
  %2378 = xor i64 20, %2361
  %2379 = trunc i64 %2378 to i32
  %2380 = xor i32 %2379, %2365
  %2381 = lshr i32 %2380, 4
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2383, i8* %2384, align 1
  %2385 = icmp eq i32 %2365, 0
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2386, i8* %2387, align 1
  %2388 = lshr i32 %2365, 31
  %2389 = trunc i32 %2388 to i8
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2389, i8* %2390, align 1
  %2391 = lshr i32 %2364, 31
  %2392 = xor i32 %2388, %2391
  %2393 = add i32 %2392, %2388
  %2394 = icmp eq i32 %2393, 2
  %2395 = zext i1 %2394 to i8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2395, i8* %2396, align 1
  store %struct.Memory* %loadMem_4117ad, %struct.Memory** %MEMORY
  %loadMem_4117b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 5
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %ECX.i822 = bitcast %union.anon* %2402 to i32*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 7
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RDX.i823 = bitcast %union.anon* %2405 to i64*
  %2406 = load i32, i32* %ECX.i822
  %2407 = zext i32 %2406 to i64
  %2408 = load i64, i64* %PC.i821
  %2409 = add i64 %2408, 3
  store i64 %2409, i64* %PC.i821
  %2410 = shl i64 %2407, 32
  %2411 = ashr exact i64 %2410, 32
  store i64 %2411, i64* %RDX.i823, align 8
  store %struct.Memory* %loadMem_4117b0, %struct.Memory** %MEMORY
  %loadMem_4117b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 1
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %EAX.i819 = bitcast %union.anon* %2417 to i32*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 7
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RDX.i820 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RDX.i820
  %2422 = mul i64 %2421, 4
  %2423 = add i64 %2422, 11185584
  %2424 = load i32, i32* %EAX.i819
  %2425 = zext i32 %2424 to i64
  %2426 = load i64, i64* %PC.i818
  %2427 = add i64 %2426, 7
  store i64 %2427, i64* %PC.i818
  %2428 = inttoptr i64 %2423 to i32*
  store i32 %2424, i32* %2428
  store %struct.Memory* %loadMem_4117b3, %struct.Memory** %MEMORY
  %loadMem_4117ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %PC.i817
  %2433 = add i64 %2432, 277
  %2434 = load i64, i64* %PC.i817
  %2435 = add i64 %2434, 5
  store i64 %2435, i64* %PC.i817
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2433, i64* %2436, align 8
  store %struct.Memory* %loadMem_4117ba, %struct.Memory** %MEMORY
  br label %block_.L_4118cf

block_.L_4117bf:                                  ; preds = %block_41174a, %block_.L_41170d
  %loadMem_4117bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 1
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RAX.i815 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 15
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %2445 to i64*
  %2446 = load i64, i64* %RBP.i816
  %2447 = sub i64 %2446, 8
  %2448 = load i64, i64* %PC.i814
  %2449 = add i64 %2448, 3
  store i64 %2449, i64* %PC.i814
  %2450 = inttoptr i64 %2447 to i32*
  %2451 = load i32, i32* %2450
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RAX.i815, align 8
  store %struct.Memory* %loadMem_4117bf, %struct.Memory** %MEMORY
  %loadMem_4117c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 1
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RAX.i813
  %2460 = load i64, i64* %PC.i812
  %2461 = add i64 %2460, 3
  store i64 %2461, i64* %PC.i812
  %2462 = trunc i64 %2459 to i32
  %2463 = add i32 20, %2462
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RAX.i813, align 8
  %2465 = icmp ult i32 %2463, %2462
  %2466 = icmp ult i32 %2463, 20
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2468, i8* %2469, align 1
  %2470 = and i32 %2463, 255
  %2471 = call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2474, i8* %2475, align 1
  %2476 = xor i64 20, %2459
  %2477 = trunc i64 %2476 to i32
  %2478 = xor i32 %2477, %2463
  %2479 = lshr i32 %2478, 4
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2481, i8* %2482, align 1
  %2483 = icmp eq i32 %2463, 0
  %2484 = zext i1 %2483 to i8
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2484, i8* %2485, align 1
  %2486 = lshr i32 %2463, 31
  %2487 = trunc i32 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2487, i8* %2488, align 1
  %2489 = lshr i32 %2462, 31
  %2490 = xor i32 %2486, %2489
  %2491 = add i32 %2490, %2486
  %2492 = icmp eq i32 %2491, 2
  %2493 = zext i1 %2492 to i8
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2493, i8* %2494, align 1
  store %struct.Memory* %loadMem_4117c2, %struct.Memory** %MEMORY
  %loadMem_4117c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %EAX.i810 = bitcast %union.anon* %2500 to i32*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 5
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RCX.i811 = bitcast %union.anon* %2503 to i64*
  %2504 = load i32, i32* %EAX.i810
  %2505 = zext i32 %2504 to i64
  %2506 = load i64, i64* %PC.i809
  %2507 = add i64 %2506, 3
  store i64 %2507, i64* %PC.i809
  %2508 = shl i64 %2505, 32
  %2509 = ashr exact i64 %2508, 32
  store i64 %2509, i64* %RCX.i811, align 8
  store %struct.Memory* %loadMem_4117c5, %struct.Memory** %MEMORY
  %loadMem_4117c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RCX.i808
  %2520 = add i64 %2519, 12099168
  %2521 = load i64, i64* %PC.i806
  %2522 = add i64 %2521, 8
  store i64 %2522, i64* %PC.i806
  %2523 = inttoptr i64 %2520 to i8*
  %2524 = load i8, i8* %2523
  %2525 = zext i8 %2524 to i64
  store i64 %2525, i64* %RAX.i807, align 8
  store %struct.Memory* %loadMem_4117c8, %struct.Memory** %MEMORY
  %loadMem_4117d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %EAX.i804 = bitcast %union.anon* %2531 to i32*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %2534 to i64*
  %2535 = load i32, i32* %EAX.i804
  %2536 = zext i32 %2535 to i64
  %2537 = load i64, i64* %RBP.i805
  %2538 = sub i64 %2537, 12
  %2539 = load i64, i64* %PC.i803
  %2540 = add i64 %2539, 3
  store i64 %2540, i64* %PC.i803
  %2541 = inttoptr i64 %2538 to i32*
  %2542 = load i32, i32* %2541
  %2543 = sub i32 %2535, %2542
  %2544 = icmp ult i32 %2535, %2542
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2545, i8* %2546, align 1
  %2547 = and i32 %2543, 255
  %2548 = call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2551, i8* %2552, align 1
  %2553 = xor i32 %2542, %2535
  %2554 = xor i32 %2553, %2543
  %2555 = lshr i32 %2554, 4
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2557, i8* %2558, align 1
  %2559 = icmp eq i32 %2543, 0
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2560, i8* %2561, align 1
  %2562 = lshr i32 %2543, 31
  %2563 = trunc i32 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2535, 31
  %2566 = lshr i32 %2542, 31
  %2567 = xor i32 %2566, %2565
  %2568 = xor i32 %2562, %2565
  %2569 = add i32 %2568, %2567
  %2570 = icmp eq i32 %2569, 2
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2571, i8* %2572, align 1
  store %struct.Memory* %loadMem_4117d0, %struct.Memory** %MEMORY
  %loadMem_4117d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 33
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %PC.i802
  %2577 = add i64 %2576, 247
  %2578 = load i64, i64* %PC.i802
  %2579 = add i64 %2578, 6
  %2580 = load i64, i64* %PC.i802
  %2581 = add i64 %2580, 6
  store i64 %2581, i64* %PC.i802
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2583 = load i8, i8* %2582, align 1
  %2584 = icmp eq i8 %2583, 0
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %BRANCH_TAKEN, align 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2587 = select i1 %2584, i64 %2577, i64 %2579
  store i64 %2587, i64* %2586, align 8
  store %struct.Memory* %loadMem_4117d3, %struct.Memory** %MEMORY
  %loadBr_4117d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4117d3 = icmp eq i8 %loadBr_4117d3, 1
  br i1 %cmpBr_4117d3, label %block_.L_4118ca, label %block_4117d9

block_4117d9:                                     ; preds = %block_.L_4117bf
  %loadMem_4117d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 1
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 15
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RBP.i801
  %2598 = sub i64 %2597, 8
  %2599 = load i64, i64* %PC.i799
  %2600 = add i64 %2599, 3
  store i64 %2600, i64* %PC.i799
  %2601 = inttoptr i64 %2598 to i32*
  %2602 = load i32, i32* %2601
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_4117d9, %struct.Memory** %MEMORY
  %loadMem_4117dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RAX.i798
  %2611 = load i64, i64* %PC.i797
  %2612 = add i64 %2611, 3
  store i64 %2612, i64* %PC.i797
  %2613 = trunc i64 %2610 to i32
  %2614 = add i32 20, %2613
  %2615 = zext i32 %2614 to i64
  store i64 %2615, i64* %RAX.i798, align 8
  %2616 = icmp ult i32 %2614, %2613
  %2617 = icmp ult i32 %2614, 20
  %2618 = or i1 %2616, %2617
  %2619 = zext i1 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2619, i8* %2620, align 1
  %2621 = and i32 %2614, 255
  %2622 = call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2625, i8* %2626, align 1
  %2627 = xor i64 20, %2610
  %2628 = trunc i64 %2627 to i32
  %2629 = xor i32 %2628, %2614
  %2630 = lshr i32 %2629, 4
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2632, i8* %2633, align 1
  %2634 = icmp eq i32 %2614, 0
  %2635 = zext i1 %2634 to i8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2635, i8* %2636, align 1
  %2637 = lshr i32 %2614, 31
  %2638 = trunc i32 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2638, i8* %2639, align 1
  %2640 = lshr i32 %2613, 31
  %2641 = xor i32 %2637, %2640
  %2642 = add i32 %2641, %2637
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2644, i8* %2645, align 1
  store %struct.Memory* %loadMem_4117dc, %struct.Memory** %MEMORY
  %loadMem_4117df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 1
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %EAX.i795 = bitcast %union.anon* %2651 to i32*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 5
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %2654 to i64*
  %2655 = load i32, i32* %EAX.i795
  %2656 = zext i32 %2655 to i64
  %2657 = load i64, i64* %PC.i794
  %2658 = add i64 %2657, 3
  store i64 %2658, i64* %PC.i794
  %2659 = shl i64 %2656, 32
  %2660 = ashr exact i64 %2659, 32
  store i64 %2660, i64* %RCX.i796, align 8
  store %struct.Memory* %loadMem_4117df, %struct.Memory** %MEMORY
  %loadMem_4117e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 1
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 5
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RCX.i793
  %2671 = mul i64 %2670, 4
  %2672 = add i64 %2671, 11187184
  %2673 = load i64, i64* %PC.i791
  %2674 = add i64 %2673, 7
  store i64 %2674, i64* %PC.i791
  %2675 = inttoptr i64 %2672 to i32*
  %2676 = load i32, i32* %2675
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %RAX.i792, align 8
  store %struct.Memory* %loadMem_4117e2, %struct.Memory** %MEMORY
  %loadMem_4117e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %EAX.i789 = bitcast %union.anon* %2683 to i32*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 15
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %RBP.i790
  %2688 = sub i64 %2687, 40
  %2689 = load i32, i32* %EAX.i789
  %2690 = zext i32 %2689 to i64
  %2691 = load i64, i64* %PC.i788
  %2692 = add i64 %2691, 3
  store i64 %2692, i64* %PC.i788
  %2693 = inttoptr i64 %2688 to i32*
  store i32 %2689, i32* %2693
  store %struct.Memory* %loadMem_4117e9, %struct.Memory** %MEMORY
  %loadMem_4117ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 15
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %2699 to i64*
  %2700 = load i64, i64* %RBP.i787
  %2701 = sub i64 %2700, 28
  %2702 = load i64, i64* %PC.i786
  %2703 = add i64 %2702, 7
  store i64 %2703, i64* %PC.i786
  %2704 = inttoptr i64 %2701 to i32*
  store i32 0, i32* %2704
  store %struct.Memory* %loadMem_4117ec, %struct.Memory** %MEMORY
  br label %block_.L_4117f3

block_.L_4117f3:                                  ; preds = %block_.L_4118b7, %block_4117d9
  %loadMem_4117f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 33
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 1
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %PC.i784
  %2712 = add i64 %2711, 10
  store i64 %2712, i64* %PC.i784
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i785, align 8
  store %struct.Memory* %loadMem_4117f3, %struct.Memory** %MEMORY
  %loadMem_4117fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 5
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 15
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %RBP.i783
  %2723 = sub i64 %2722, 28
  %2724 = load i64, i64* %PC.i781
  %2725 = add i64 %2724, 3
  store i64 %2725, i64* %PC.i781
  %2726 = inttoptr i64 %2723 to i32*
  %2727 = load i32, i32* %2726
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RCX.i782, align 8
  store %struct.Memory* %loadMem_4117fd, %struct.Memory** %MEMORY
  %loadMem_411800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 7
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RDX.i779 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 15
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %RBP.i780
  %2739 = sub i64 %2738, 40
  %2740 = load i64, i64* %PC.i778
  %2741 = add i64 %2740, 4
  store i64 %2741, i64* %PC.i778
  %2742 = inttoptr i64 %2739 to i32*
  %2743 = load i32, i32* %2742
  %2744 = sext i32 %2743 to i64
  store i64 %2744, i64* %RDX.i779, align 8
  store %struct.Memory* %loadMem_411800, %struct.Memory** %MEMORY
  %loadMem_411804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 7
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RDX.i777 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RDX.i777
  %2752 = load i64, i64* %PC.i776
  %2753 = add i64 %2752, 7
  store i64 %2753, i64* %PC.i776
  %2754 = sext i64 %2751 to i128
  %2755 = and i128 %2754, -18446744073709551616
  %2756 = zext i64 %2751 to i128
  %2757 = or i128 %2755, %2756
  %2758 = mul i128 744, %2757
  %2759 = trunc i128 %2758 to i64
  store i64 %2759, i64* %RDX.i777, align 8
  %2760 = sext i64 %2759 to i128
  %2761 = icmp ne i128 %2760, %2758
  %2762 = zext i1 %2761 to i8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2762, i8* %2763, align 1
  %2764 = trunc i128 %2758 to i32
  %2765 = and i32 %2764, 255
  %2766 = call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2769, i8* %2770, align 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2771, align 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2772, align 1
  %2773 = lshr i64 %2759, 63
  %2774 = trunc i64 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2774, i8* %2775, align 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2762, i8* %2776, align 1
  store %struct.Memory* %loadMem_411804, %struct.Memory** %MEMORY
  %loadMem_41180b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 1
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 7
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RDX.i775 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %RAX.i774
  %2787 = load i64, i64* %RDX.i775
  %2788 = load i64, i64* %PC.i773
  %2789 = add i64 %2788, 3
  store i64 %2789, i64* %PC.i773
  %2790 = add i64 %2787, %2786
  store i64 %2790, i64* %RAX.i774, align 8
  %2791 = icmp ult i64 %2790, %2786
  %2792 = icmp ult i64 %2790, %2787
  %2793 = or i1 %2791, %2792
  %2794 = zext i1 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2794, i8* %2795, align 1
  %2796 = trunc i64 %2790 to i32
  %2797 = and i32 %2796, 255
  %2798 = call i32 @llvm.ctpop.i32(i32 %2797)
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = xor i8 %2800, 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2801, i8* %2802, align 1
  %2803 = xor i64 %2787, %2786
  %2804 = xor i64 %2803, %2790
  %2805 = lshr i64 %2804, 4
  %2806 = trunc i64 %2805 to i8
  %2807 = and i8 %2806, 1
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2807, i8* %2808, align 1
  %2809 = icmp eq i64 %2790, 0
  %2810 = zext i1 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2810, i8* %2811, align 1
  %2812 = lshr i64 %2790, 63
  %2813 = trunc i64 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2813, i8* %2814, align 1
  %2815 = lshr i64 %2786, 63
  %2816 = lshr i64 %2787, 63
  %2817 = xor i64 %2812, %2815
  %2818 = xor i64 %2812, %2816
  %2819 = add i64 %2817, %2818
  %2820 = icmp eq i64 %2819, 2
  %2821 = zext i1 %2820 to i8
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2821, i8* %2822, align 1
  store %struct.Memory* %loadMem_41180b, %struct.Memory** %MEMORY
  %loadMem_41180e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 5
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %ECX.i771 = bitcast %union.anon* %2828 to i32*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 1
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %2831 to i64*
  %2832 = load i32, i32* %ECX.i771
  %2833 = zext i32 %2832 to i64
  %2834 = load i64, i64* %RAX.i772
  %2835 = add i64 %2834, 12
  %2836 = load i64, i64* %PC.i770
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i770
  %2838 = inttoptr i64 %2835 to i32*
  %2839 = load i32, i32* %2838
  %2840 = sub i32 %2832, %2839
  %2841 = icmp ult i32 %2832, %2839
  %2842 = zext i1 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2842, i8* %2843, align 1
  %2844 = and i32 %2840, 255
  %2845 = call i32 @llvm.ctpop.i32(i32 %2844)
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2848, i8* %2849, align 1
  %2850 = xor i32 %2839, %2832
  %2851 = xor i32 %2850, %2840
  %2852 = lshr i32 %2851, 4
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2854, i8* %2855, align 1
  %2856 = icmp eq i32 %2840, 0
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2857, i8* %2858, align 1
  %2859 = lshr i32 %2840, 31
  %2860 = trunc i32 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2860, i8* %2861, align 1
  %2862 = lshr i32 %2832, 31
  %2863 = lshr i32 %2839, 31
  %2864 = xor i32 %2863, %2862
  %2865 = xor i32 %2859, %2862
  %2866 = add i32 %2865, %2864
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2868, i8* %2869, align 1
  store %struct.Memory* %loadMem_41180e, %struct.Memory** %MEMORY
  %loadMem_411811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %PC.i769
  %2874 = add i64 %2873, 180
  %2875 = load i64, i64* %PC.i769
  %2876 = add i64 %2875, 6
  %2877 = load i64, i64* %PC.i769
  %2878 = add i64 %2877, 6
  store i64 %2878, i64* %PC.i769
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2880 = load i8, i8* %2879, align 1
  %2881 = icmp ne i8 %2880, 0
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2883 = load i8, i8* %2882, align 1
  %2884 = icmp ne i8 %2883, 0
  %2885 = xor i1 %2881, %2884
  %2886 = xor i1 %2885, true
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %BRANCH_TAKEN, align 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2889 = select i1 %2885, i64 %2876, i64 %2874
  store i64 %2889, i64* %2888, align 8
  store %struct.Memory* %loadMem_411811, %struct.Memory** %MEMORY
  %loadBr_411811 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411811 = icmp eq i8 %loadBr_411811, 1
  br i1 %cmpBr_411811, label %block_.L_4118c5, label %block_411817

block_411817:                                     ; preds = %block_.L_4117f3
  %loadMem_411817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 1
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %PC.i767
  %2897 = add i64 %2896, 10
  store i64 %2897, i64* %PC.i767
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i768, align 8
  store %struct.Memory* %loadMem_411817, %struct.Memory** %MEMORY
  %loadMem_411821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 5
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RCX.i765 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 15
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %RBP.i766
  %2908 = sub i64 %2907, 40
  %2909 = load i64, i64* %PC.i764
  %2910 = add i64 %2909, 4
  store i64 %2910, i64* %PC.i764
  %2911 = inttoptr i64 %2908 to i32*
  %2912 = load i32, i32* %2911
  %2913 = sext i32 %2912 to i64
  store i64 %2913, i64* %RCX.i765, align 8
  store %struct.Memory* %loadMem_411821, %struct.Memory** %MEMORY
  %loadMem_411825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 5
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RCX.i763 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RCX.i763
  %2921 = load i64, i64* %PC.i762
  %2922 = add i64 %2921, 7
  store i64 %2922, i64* %PC.i762
  %2923 = sext i64 %2920 to i128
  %2924 = and i128 %2923, -18446744073709551616
  %2925 = zext i64 %2920 to i128
  %2926 = or i128 %2924, %2925
  %2927 = mul i128 744, %2926
  %2928 = trunc i128 %2927 to i64
  store i64 %2928, i64* %RCX.i763, align 8
  %2929 = sext i64 %2928 to i128
  %2930 = icmp ne i128 %2929, %2927
  %2931 = zext i1 %2930 to i8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2931, i8* %2932, align 1
  %2933 = trunc i128 %2927 to i32
  %2934 = and i32 %2933, 255
  %2935 = call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2938, i8* %2939, align 1
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2940, align 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2941, align 1
  %2942 = lshr i64 %2928, 63
  %2943 = trunc i64 %2942 to i8
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2943, i8* %2944, align 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2931, i8* %2945, align 1
  store %struct.Memory* %loadMem_411825, %struct.Memory** %MEMORY
  %loadMem_41182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 1
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 5
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RCX.i761 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %RAX.i760
  %2956 = load i64, i64* %RCX.i761
  %2957 = load i64, i64* %PC.i759
  %2958 = add i64 %2957, 3
  store i64 %2958, i64* %PC.i759
  %2959 = add i64 %2956, %2955
  store i64 %2959, i64* %RAX.i760, align 8
  %2960 = icmp ult i64 %2959, %2955
  %2961 = icmp ult i64 %2959, %2956
  %2962 = or i1 %2960, %2961
  %2963 = zext i1 %2962 to i8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2963, i8* %2964, align 1
  %2965 = trunc i64 %2959 to i32
  %2966 = and i32 %2965, 255
  %2967 = call i32 @llvm.ctpop.i32(i32 %2966)
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = xor i8 %2969, 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2970, i8* %2971, align 1
  %2972 = xor i64 %2956, %2955
  %2973 = xor i64 %2972, %2959
  %2974 = lshr i64 %2973, 4
  %2975 = trunc i64 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2976, i8* %2977, align 1
  %2978 = icmp eq i64 %2959, 0
  %2979 = zext i1 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2979, i8* %2980, align 1
  %2981 = lshr i64 %2959, 63
  %2982 = trunc i64 %2981 to i8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2982, i8* %2983, align 1
  %2984 = lshr i64 %2955, 63
  %2985 = lshr i64 %2956, 63
  %2986 = xor i64 %2981, %2984
  %2987 = xor i64 %2981, %2985
  %2988 = add i64 %2986, %2987
  %2989 = icmp eq i64 %2988, 2
  %2990 = zext i1 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2990, i8* %2991, align 1
  store %struct.Memory* %loadMem_41182c, %struct.Memory** %MEMORY
  %loadMem_41182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 5
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RCX.i757 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 15
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %RBP.i758
  %3002 = sub i64 %3001, 28
  %3003 = load i64, i64* %PC.i756
  %3004 = add i64 %3003, 4
  store i64 %3004, i64* %PC.i756
  %3005 = inttoptr i64 %3002 to i32*
  %3006 = load i32, i32* %3005
  %3007 = sext i32 %3006 to i64
  store i64 %3007, i64* %RCX.i757, align 8
  store %struct.Memory* %loadMem_41182f, %struct.Memory** %MEMORY
  %loadMem_411833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 1
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RAX.i753 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 5
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RCX.i754 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 7
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RDX.i755 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RAX.i753
  %3021 = load i64, i64* %RCX.i754
  %3022 = mul i64 %3021, 4
  %3023 = add i64 %3020, 16
  %3024 = add i64 %3023, %3022
  %3025 = load i64, i64* %PC.i752
  %3026 = add i64 %3025, 4
  store i64 %3026, i64* %PC.i752
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RDX.i755, align 8
  store %struct.Memory* %loadMem_411833, %struct.Memory** %MEMORY
  %loadMem_411837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 33
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 7
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %EDX.i750 = bitcast %union.anon* %3035 to i32*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 15
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %3038 to i64*
  %3039 = load i64, i64* %RBP.i751
  %3040 = sub i64 %3039, 44
  %3041 = load i32, i32* %EDX.i750
  %3042 = zext i32 %3041 to i64
  %3043 = load i64, i64* %PC.i749
  %3044 = add i64 %3043, 3
  store i64 %3044, i64* %PC.i749
  %3045 = inttoptr i64 %3040 to i32*
  store i32 %3041, i32* %3045
  store %struct.Memory* %loadMem_411837, %struct.Memory** %MEMORY
  %loadMem_41183a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 1
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i748
  %3056 = sub i64 %3055, 44
  %3057 = load i64, i64* %PC.i746
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i746
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RAX.i747, align 8
  store %struct.Memory* %loadMem_41183a, %struct.Memory** %MEMORY
  %loadMem_41183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 1
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 7
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RDX.i745 = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %RAX.i744
  %3072 = add i64 %3071, 12099168
  %3073 = load i64, i64* %PC.i743
  %3074 = add i64 %3073, 8
  store i64 %3074, i64* %PC.i743
  %3075 = inttoptr i64 %3072 to i8*
  %3076 = load i8, i8* %3075
  %3077 = zext i8 %3076 to i64
  store i64 %3077, i64* %RDX.i745, align 8
  store %struct.Memory* %loadMem_41183e, %struct.Memory** %MEMORY
  %loadMem_411846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 7
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %EDX.i742 = bitcast %union.anon* %3083 to i32*
  %3084 = load i32, i32* %EDX.i742
  %3085 = zext i32 %3084 to i64
  %3086 = load i64, i64* %PC.i741
  %3087 = add i64 %3086, 3
  store i64 %3087, i64* %PC.i741
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3088, align 1
  %3089 = and i32 %3084, 255
  %3090 = call i32 @llvm.ctpop.i32(i32 %3089)
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = xor i8 %3092, 1
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3093, i8* %3094, align 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3095, align 1
  %3096 = icmp eq i32 %3084, 0
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3097, i8* %3098, align 1
  %3099 = lshr i32 %3084, 31
  %3100 = trunc i32 %3099 to i8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3100, i8* %3101, align 1
  %3102 = lshr i32 %3084, 31
  %3103 = xor i32 %3099, %3102
  %3104 = add i32 %3103, %3102
  %3105 = icmp eq i32 %3104, 2
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3106, i8* %3107, align 1
  store %struct.Memory* %loadMem_411846, %struct.Memory** %MEMORY
  %loadMem_411849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 33
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %3110 to i64*
  %3111 = load i64, i64* %PC.i740
  %3112 = add i64 %3111, 105
  %3113 = load i64, i64* %PC.i740
  %3114 = add i64 %3113, 6
  %3115 = load i64, i64* %PC.i740
  %3116 = add i64 %3115, 6
  store i64 %3116, i64* %PC.i740
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3118 = load i8, i8* %3117, align 1
  %3119 = icmp eq i8 %3118, 0
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %BRANCH_TAKEN, align 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3122 = select i1 %3119, i64 %3112, i64 %3114
  store i64 %3122, i64* %3121, align 8
  store %struct.Memory* %loadMem_411849, %struct.Memory** %MEMORY
  %loadBr_411849 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411849 = icmp eq i8 %loadBr_411849, 1
  br i1 %cmpBr_411849, label %block_.L_4118b2, label %block_41184f

block_41184f:                                     ; preds = %block_411817
  %loadMem_41184f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 1
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 15
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %RBP.i739
  %3133 = sub i64 %3132, 44
  %3134 = load i64, i64* %PC.i737
  %3135 = add i64 %3134, 4
  store i64 %3135, i64* %PC.i737
  %3136 = inttoptr i64 %3133 to i32*
  %3137 = load i32, i32* %3136
  %3138 = sext i32 %3137 to i64
  store i64 %3138, i64* %RAX.i738, align 8
  store %struct.Memory* %loadMem_41184f, %struct.Memory** %MEMORY
  %loadMem_411853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 1
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 5
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %RAX.i735
  %3149 = mul i64 %3148, 4
  %3150 = add i64 %3149, 11185584
  %3151 = load i64, i64* %PC.i734
  %3152 = add i64 %3151, 7
  store i64 %3152, i64* %PC.i734
  %3153 = inttoptr i64 %3150 to i32*
  %3154 = load i32, i32* %3153
  %3155 = zext i32 %3154 to i64
  store i64 %3155, i64* %RCX.i736, align 8
  store %struct.Memory* %loadMem_411853, %struct.Memory** %MEMORY
  %loadMem_41185a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 5
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %ECX.i733 = bitcast %union.anon* %3161 to i32*
  %3162 = load i32, i32* %ECX.i733
  %3163 = zext i32 %3162 to i64
  %3164 = load i64, i64* %PC.i732
  %3165 = add i64 %3164, 7
  store i64 %3165, i64* %PC.i732
  %3166 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3167 = sub i32 %3162, %3166
  %3168 = icmp ult i32 %3162, %3166
  %3169 = zext i1 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3169, i8* %3170, align 1
  %3171 = and i32 %3167, 255
  %3172 = call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3175, i8* %3176, align 1
  %3177 = xor i32 %3166, %3162
  %3178 = xor i32 %3177, %3167
  %3179 = lshr i32 %3178, 4
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3181, i8* %3182, align 1
  %3183 = icmp eq i32 %3167, 0
  %3184 = zext i1 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3184, i8* %3185, align 1
  %3186 = lshr i32 %3167, 31
  %3187 = trunc i32 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3187, i8* %3188, align 1
  %3189 = lshr i32 %3162, 31
  %3190 = lshr i32 %3166, 31
  %3191 = xor i32 %3190, %3189
  %3192 = xor i32 %3186, %3189
  %3193 = add i32 %3192, %3191
  %3194 = icmp eq i32 %3193, 2
  %3195 = zext i1 %3194 to i8
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3195, i8* %3196, align 1
  store %struct.Memory* %loadMem_41185a, %struct.Memory** %MEMORY
  %loadMem_411861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 33
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %PC.i731
  %3201 = add i64 %3200, 81
  %3202 = load i64, i64* %PC.i731
  %3203 = add i64 %3202, 6
  %3204 = load i64, i64* %PC.i731
  %3205 = add i64 %3204, 6
  store i64 %3205, i64* %PC.i731
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3207 = load i8, i8* %3206, align 1
  store i8 %3207, i8* %BRANCH_TAKEN, align 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3209 = icmp ne i8 %3207, 0
  %3210 = select i1 %3209, i64 %3201, i64 %3203
  store i64 %3210, i64* %3208, align 8
  store %struct.Memory* %loadMem_411861, %struct.Memory** %MEMORY
  %loadBr_411861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411861 = icmp eq i8 %loadBr_411861, 1
  br i1 %cmpBr_411861, label %block_.L_4118b2, label %block_411867

block_411867:                                     ; preds = %block_41184f
  %loadMem_411867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RBP.i730
  %3218 = sub i64 %3217, 24
  %3219 = load i64, i64* %PC.i729
  %3220 = add i64 %3219, 5
  store i64 %3220, i64* %PC.i729
  %3221 = inttoptr i64 %3218 to i64*
  %3222 = load i64, i64* %3221
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3223, align 1
  %3224 = trunc i64 %3222 to i32
  %3225 = and i32 %3224, 255
  %3226 = call i32 @llvm.ctpop.i32(i32 %3225)
  %3227 = trunc i32 %3226 to i8
  %3228 = and i8 %3227, 1
  %3229 = xor i8 %3228, 1
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3229, i8* %3230, align 1
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3231, align 1
  %3232 = icmp eq i64 %3222, 0
  %3233 = zext i1 %3232 to i8
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3233, i8* %3234, align 1
  %3235 = lshr i64 %3222, 63
  %3236 = trunc i64 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3236, i8* %3237, align 1
  %3238 = lshr i64 %3222, 63
  %3239 = xor i64 %3235, %3238
  %3240 = add i64 %3239, %3238
  %3241 = icmp eq i64 %3240, 2
  %3242 = zext i1 %3241 to i8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3242, i8* %3243, align 1
  store %struct.Memory* %loadMem_411867, %struct.Memory** %MEMORY
  %loadMem_41186c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %PC.i728
  %3248 = add i64 %3247, 20
  %3249 = load i64, i64* %PC.i728
  %3250 = add i64 %3249, 6
  %3251 = load i64, i64* %PC.i728
  %3252 = add i64 %3251, 6
  store i64 %3252, i64* %PC.i728
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3254 = load i8, i8* %3253, align 1
  store i8 %3254, i8* %BRANCH_TAKEN, align 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3256 = icmp ne i8 %3254, 0
  %3257 = select i1 %3256, i64 %3248, i64 %3250
  store i64 %3257, i64* %3255, align 8
  store %struct.Memory* %loadMem_41186c, %struct.Memory** %MEMORY
  %loadBr_41186c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41186c = icmp eq i8 %loadBr_41186c, 1
  br i1 %cmpBr_41186c, label %block_.L_411880, label %block_411872

block_411872:                                     ; preds = %block_411867
  %loadMem_411872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 1
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 15
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RBP.i727
  %3268 = sub i64 %3267, 44
  %3269 = load i64, i64* %PC.i725
  %3270 = add i64 %3269, 3
  store i64 %3270, i64* %PC.i725
  %3271 = inttoptr i64 %3268 to i32*
  %3272 = load i32, i32* %3271
  %3273 = zext i32 %3272 to i64
  store i64 %3273, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_411872, %struct.Memory** %MEMORY
  %loadMem_411875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 5
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 15
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RBP.i724
  %3284 = sub i64 %3283, 24
  %3285 = load i64, i64* %PC.i722
  %3286 = add i64 %3285, 4
  store i64 %3286, i64* %PC.i722
  %3287 = inttoptr i64 %3284 to i64*
  %3288 = load i64, i64* %3287
  store i64 %3288, i64* %RCX.i723, align 8
  store %struct.Memory* %loadMem_411875, %struct.Memory** %MEMORY
  %loadMem_411879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 7
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RDX.i720 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 15
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RBP.i721
  %3299 = sub i64 %3298, 32
  %3300 = load i64, i64* %PC.i719
  %3301 = add i64 %3300, 4
  store i64 %3301, i64* %PC.i719
  %3302 = inttoptr i64 %3299 to i32*
  %3303 = load i32, i32* %3302
  %3304 = sext i32 %3303 to i64
  store i64 %3304, i64* %RDX.i720, align 8
  store %struct.Memory* %loadMem_411879, %struct.Memory** %MEMORY
  %loadMem_41187d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 1
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %EAX.i716 = bitcast %union.anon* %3310 to i32*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 5
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RCX.i717 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 7
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %RCX.i717
  %3318 = load i64, i64* %RDX.i718
  %3319 = mul i64 %3318, 4
  %3320 = add i64 %3319, %3317
  %3321 = load i32, i32* %EAX.i716
  %3322 = zext i32 %3321 to i64
  %3323 = load i64, i64* %PC.i715
  %3324 = add i64 %3323, 3
  store i64 %3324, i64* %PC.i715
  %3325 = inttoptr i64 %3320 to i32*
  store i32 %3321, i32* %3325
  store %struct.Memory* %loadMem_41187d, %struct.Memory** %MEMORY
  br label %block_.L_411880

block_.L_411880:                                  ; preds = %block_411872, %block_411867
  %loadMem_411880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 1
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 15
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RBP.i714
  %3336 = sub i64 %3335, 32
  %3337 = load i64, i64* %PC.i712
  %3338 = add i64 %3337, 3
  store i64 %3338, i64* %PC.i712
  %3339 = inttoptr i64 %3336 to i32*
  %3340 = load i32, i32* %3339
  %3341 = zext i32 %3340 to i64
  store i64 %3341, i64* %RAX.i713, align 8
  store %struct.Memory* %loadMem_411880, %struct.Memory** %MEMORY
  %loadMem_411883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 1
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %3347 to i64*
  %3348 = load i64, i64* %RAX.i711
  %3349 = load i64, i64* %PC.i710
  %3350 = add i64 %3349, 3
  store i64 %3350, i64* %PC.i710
  %3351 = trunc i64 %3348 to i32
  %3352 = add i32 1, %3351
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RAX.i711, align 8
  %3354 = icmp ult i32 %3352, %3351
  %3355 = icmp ult i32 %3352, 1
  %3356 = or i1 %3354, %3355
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3357, i8* %3358, align 1
  %3359 = and i32 %3352, 255
  %3360 = call i32 @llvm.ctpop.i32(i32 %3359)
  %3361 = trunc i32 %3360 to i8
  %3362 = and i8 %3361, 1
  %3363 = xor i8 %3362, 1
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3363, i8* %3364, align 1
  %3365 = xor i64 1, %3348
  %3366 = trunc i64 %3365 to i32
  %3367 = xor i32 %3366, %3352
  %3368 = lshr i32 %3367, 4
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3370, i8* %3371, align 1
  %3372 = icmp eq i32 %3352, 0
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3373, i8* %3374, align 1
  %3375 = lshr i32 %3352, 31
  %3376 = trunc i32 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3351, 31
  %3379 = xor i32 %3375, %3378
  %3380 = add i32 %3379, %3375
  %3381 = icmp eq i32 %3380, 2
  %3382 = zext i1 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3382, i8* %3383, align 1
  store %struct.Memory* %loadMem_411883, %struct.Memory** %MEMORY
  %loadMem_411886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 1
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %EAX.i708 = bitcast %union.anon* %3389 to i32*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 15
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %3392 to i64*
  %3393 = load i64, i64* %RBP.i709
  %3394 = sub i64 %3393, 32
  %3395 = load i32, i32* %EAX.i708
  %3396 = zext i32 %3395 to i64
  %3397 = load i64, i64* %PC.i707
  %3398 = add i64 %3397, 3
  store i64 %3398, i64* %PC.i707
  %3399 = inttoptr i64 %3394 to i32*
  store i32 %3395, i32* %3399
  store %struct.Memory* %loadMem_411886, %struct.Memory** %MEMORY
  %loadMem_411889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 1
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 15
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %RBP.i706
  %3410 = sub i64 %3409, 32
  %3411 = load i64, i64* %PC.i704
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i704
  %3413 = inttoptr i64 %3410 to i32*
  %3414 = load i32, i32* %3413
  %3415 = zext i32 %3414 to i64
  store i64 %3415, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_411889, %struct.Memory** %MEMORY
  %loadMem_41188c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 33
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 1
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %EAX.i702 = bitcast %union.anon* %3421 to i32*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 15
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %3424 to i64*
  %3425 = load i32, i32* %EAX.i702
  %3426 = zext i32 %3425 to i64
  %3427 = load i64, i64* %RBP.i703
  %3428 = sub i64 %3427, 16
  %3429 = load i64, i64* %PC.i701
  %3430 = add i64 %3429, 3
  store i64 %3430, i64* %PC.i701
  %3431 = inttoptr i64 %3428 to i32*
  %3432 = load i32, i32* %3431
  %3433 = sub i32 %3425, %3432
  %3434 = icmp ult i32 %3425, %3432
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3435, i8* %3436, align 1
  %3437 = and i32 %3433, 255
  %3438 = call i32 @llvm.ctpop.i32(i32 %3437)
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  %3441 = xor i8 %3440, 1
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3441, i8* %3442, align 1
  %3443 = xor i32 %3432, %3425
  %3444 = xor i32 %3443, %3433
  %3445 = lshr i32 %3444, 4
  %3446 = trunc i32 %3445 to i8
  %3447 = and i8 %3446, 1
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3447, i8* %3448, align 1
  %3449 = icmp eq i32 %3433, 0
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i32 %3433, 31
  %3453 = trunc i32 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3453, i8* %3454, align 1
  %3455 = lshr i32 %3425, 31
  %3456 = lshr i32 %3432, 31
  %3457 = xor i32 %3456, %3455
  %3458 = xor i32 %3452, %3455
  %3459 = add i32 %3458, %3457
  %3460 = icmp eq i32 %3459, 2
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3461, i8* %3462, align 1
  store %struct.Memory* %loadMem_41188c, %struct.Memory** %MEMORY
  %loadMem_41188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %PC.i700
  %3467 = add i64 %3466, 17
  %3468 = load i64, i64* %PC.i700
  %3469 = add i64 %3468, 6
  %3470 = load i64, i64* %PC.i700
  %3471 = add i64 %3470, 6
  store i64 %3471, i64* %PC.i700
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3473 = load i8, i8* %3472, align 1
  %3474 = icmp ne i8 %3473, 0
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3476 = load i8, i8* %3475, align 1
  %3477 = icmp ne i8 %3476, 0
  %3478 = xor i1 %3474, %3477
  %3479 = zext i1 %3478 to i8
  store i8 %3479, i8* %BRANCH_TAKEN, align 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3481 = select i1 %3478, i64 %3467, i64 %3469
  store i64 %3481, i64* %3480, align 8
  store %struct.Memory* %loadMem_41188f, %struct.Memory** %MEMORY
  %loadBr_41188f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41188f = icmp eq i8 %loadBr_41188f, 1
  br i1 %cmpBr_41188f, label %block_.L_4118a0, label %block_411895

block_411895:                                     ; preds = %block_.L_411880
  %loadMem_411895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 1
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 15
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %3490 to i64*
  %3491 = load i64, i64* %RBP.i699
  %3492 = sub i64 %3491, 32
  %3493 = load i64, i64* %PC.i697
  %3494 = add i64 %3493, 3
  store i64 %3494, i64* %PC.i697
  %3495 = inttoptr i64 %3492 to i32*
  %3496 = load i32, i32* %3495
  %3497 = zext i32 %3496 to i64
  store i64 %3497, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_411895, %struct.Memory** %MEMORY
  %loadMem_411898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 1
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %EAX.i695 = bitcast %union.anon* %3503 to i32*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 15
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RBP.i696
  %3508 = sub i64 %3507, 4
  %3509 = load i32, i32* %EAX.i695
  %3510 = zext i32 %3509 to i64
  %3511 = load i64, i64* %PC.i694
  %3512 = add i64 %3511, 3
  store i64 %3512, i64* %PC.i694
  %3513 = inttoptr i64 %3508 to i32*
  store i32 %3509, i32* %3513
  store %struct.Memory* %loadMem_411898, %struct.Memory** %MEMORY
  %loadMem_41189b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %PC.i693
  %3518 = add i64 %3517, 1280
  %3519 = load i64, i64* %PC.i693
  %3520 = add i64 %3519, 5
  store i64 %3520, i64* %PC.i693
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3518, i64* %3521, align 8
  store %struct.Memory* %loadMem_41189b, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_4118a0:                                  ; preds = %block_.L_411880
  %loadMem_4118a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 1
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %PC.i691
  %3529 = add i64 %3528, 7
  store i64 %3529, i64* %PC.i691
  %3530 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_4118a0, %struct.Memory** %MEMORY
  %loadMem_4118a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 5
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 15
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %RBP.i690
  %3542 = sub i64 %3541, 44
  %3543 = load i64, i64* %PC.i688
  %3544 = add i64 %3543, 4
  store i64 %3544, i64* %PC.i688
  %3545 = inttoptr i64 %3542 to i32*
  %3546 = load i32, i32* %3545
  %3547 = sext i32 %3546 to i64
  store i64 %3547, i64* %RCX.i689, align 8
  store %struct.Memory* %loadMem_4118a7, %struct.Memory** %MEMORY
  %loadMem_4118ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 1
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %EAX.i686 = bitcast %union.anon* %3553 to i32*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 5
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %RCX.i687
  %3558 = mul i64 %3557, 4
  %3559 = add i64 %3558, 11185584
  %3560 = load i32, i32* %EAX.i686
  %3561 = zext i32 %3560 to i64
  %3562 = load i64, i64* %PC.i685
  %3563 = add i64 %3562, 7
  store i64 %3563, i64* %PC.i685
  %3564 = inttoptr i64 %3559 to i32*
  store i32 %3560, i32* %3564
  store %struct.Memory* %loadMem_4118ab, %struct.Memory** %MEMORY
  br label %block_.L_4118b2

block_.L_4118b2:                                  ; preds = %block_.L_4118a0, %block_41184f, %block_411817
  %loadMem_4118b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %PC.i684
  %3569 = add i64 %3568, 5
  %3570 = load i64, i64* %PC.i684
  %3571 = add i64 %3570, 5
  store i64 %3571, i64* %PC.i684
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3569, i64* %3572, align 8
  store %struct.Memory* %loadMem_4118b2, %struct.Memory** %MEMORY
  br label %block_.L_4118b7

block_.L_4118b7:                                  ; preds = %block_.L_4118b2
  %loadMem_4118b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 1
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 15
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %RBP.i683
  %3583 = sub i64 %3582, 28
  %3584 = load i64, i64* %PC.i681
  %3585 = add i64 %3584, 3
  store i64 %3585, i64* %PC.i681
  %3586 = inttoptr i64 %3583 to i32*
  %3587 = load i32, i32* %3586
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RAX.i682, align 8
  store %struct.Memory* %loadMem_4118b7, %struct.Memory** %MEMORY
  %loadMem_4118ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 33
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 1
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %3594 to i64*
  %3595 = load i64, i64* %RAX.i680
  %3596 = load i64, i64* %PC.i679
  %3597 = add i64 %3596, 3
  store i64 %3597, i64* %PC.i679
  %3598 = trunc i64 %3595 to i32
  %3599 = add i32 1, %3598
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RAX.i680, align 8
  %3601 = icmp ult i32 %3599, %3598
  %3602 = icmp ult i32 %3599, 1
  %3603 = or i1 %3601, %3602
  %3604 = zext i1 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3604, i8* %3605, align 1
  %3606 = and i32 %3599, 255
  %3607 = call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3610, i8* %3611, align 1
  %3612 = xor i64 1, %3595
  %3613 = trunc i64 %3612 to i32
  %3614 = xor i32 %3613, %3599
  %3615 = lshr i32 %3614, 4
  %3616 = trunc i32 %3615 to i8
  %3617 = and i8 %3616, 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3617, i8* %3618, align 1
  %3619 = icmp eq i32 %3599, 0
  %3620 = zext i1 %3619 to i8
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3620, i8* %3621, align 1
  %3622 = lshr i32 %3599, 31
  %3623 = trunc i32 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3623, i8* %3624, align 1
  %3625 = lshr i32 %3598, 31
  %3626 = xor i32 %3622, %3625
  %3627 = add i32 %3626, %3622
  %3628 = icmp eq i32 %3627, 2
  %3629 = zext i1 %3628 to i8
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3629, i8* %3630, align 1
  store %struct.Memory* %loadMem_4118ba, %struct.Memory** %MEMORY
  %loadMem_4118bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 1
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %EAX.i677 = bitcast %union.anon* %3636 to i32*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 15
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RBP.i678
  %3641 = sub i64 %3640, 28
  %3642 = load i32, i32* %EAX.i677
  %3643 = zext i32 %3642 to i64
  %3644 = load i64, i64* %PC.i676
  %3645 = add i64 %3644, 3
  store i64 %3645, i64* %PC.i676
  %3646 = inttoptr i64 %3641 to i32*
  store i32 %3642, i32* %3646
  store %struct.Memory* %loadMem_4118bd, %struct.Memory** %MEMORY
  %loadMem_4118c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %3649 to i64*
  %3650 = load i64, i64* %PC.i675
  %3651 = add i64 %3650, -205
  %3652 = load i64, i64* %PC.i675
  %3653 = add i64 %3652, 5
  store i64 %3653, i64* %PC.i675
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3651, i64* %3654, align 8
  store %struct.Memory* %loadMem_4118c0, %struct.Memory** %MEMORY
  br label %block_.L_4117f3

block_.L_4118c5:                                  ; preds = %block_.L_4117f3
  %loadMem_4118c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %3657 to i64*
  %3658 = load i64, i64* %PC.i674
  %3659 = add i64 %3658, 5
  %3660 = load i64, i64* %PC.i674
  %3661 = add i64 %3660, 5
  store i64 %3661, i64* %PC.i674
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3659, i64* %3662, align 8
  store %struct.Memory* %loadMem_4118c5, %struct.Memory** %MEMORY
  br label %block_.L_4118ca

block_.L_4118ca:                                  ; preds = %block_.L_4118c5, %block_.L_4117bf
  %loadMem_4118ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %PC.i673
  %3667 = add i64 %3666, 5
  %3668 = load i64, i64* %PC.i673
  %3669 = add i64 %3668, 5
  store i64 %3669, i64* %PC.i673
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3667, i64* %3670, align 8
  store %struct.Memory* %loadMem_4118ca, %struct.Memory** %MEMORY
  br label %block_.L_4118cf

block_.L_4118cf:                                  ; preds = %block_.L_4118ca, %block_.L_4117a3
  %loadMem_4118cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 1
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 15
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %RBP.i672
  %3681 = sub i64 %3680, 8
  %3682 = load i64, i64* %PC.i670
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC.i670
  %3684 = inttoptr i64 %3681 to i32*
  %3685 = load i32, i32* %3684
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RAX.i671, align 8
  store %struct.Memory* %loadMem_4118cf, %struct.Memory** %MEMORY
  %loadMem_4118d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 1
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RAX.i669
  %3694 = load i64, i64* %PC.i668
  %3695 = add i64 %3694, 3
  store i64 %3695, i64* %PC.i668
  %3696 = trunc i64 %3693 to i32
  %3697 = sub i32 %3696, 1
  %3698 = zext i32 %3697 to i64
  store i64 %3698, i64* %RAX.i669, align 8
  %3699 = icmp ult i32 %3696, 1
  %3700 = zext i1 %3699 to i8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3700, i8* %3701, align 1
  %3702 = and i32 %3697, 255
  %3703 = call i32 @llvm.ctpop.i32(i32 %3702)
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  %3706 = xor i8 %3705, 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3706, i8* %3707, align 1
  %3708 = xor i64 1, %3693
  %3709 = trunc i64 %3708 to i32
  %3710 = xor i32 %3709, %3697
  %3711 = lshr i32 %3710, 4
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3713, i8* %3714, align 1
  %3715 = icmp eq i32 %3697, 0
  %3716 = zext i1 %3715 to i8
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3716, i8* %3717, align 1
  %3718 = lshr i32 %3697, 31
  %3719 = trunc i32 %3718 to i8
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3719, i8* %3720, align 1
  %3721 = lshr i32 %3696, 31
  %3722 = xor i32 %3718, %3721
  %3723 = add i32 %3722, %3721
  %3724 = icmp eq i32 %3723, 2
  %3725 = zext i1 %3724 to i8
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3725, i8* %3726, align 1
  store %struct.Memory* %loadMem_4118d2, %struct.Memory** %MEMORY
  %loadMem_4118d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 33
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %3729 to i64*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 1
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %EAX.i666 = bitcast %union.anon* %3732 to i32*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 5
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %3735 to i64*
  %3736 = load i32, i32* %EAX.i666
  %3737 = zext i32 %3736 to i64
  %3738 = load i64, i64* %PC.i665
  %3739 = add i64 %3738, 3
  store i64 %3739, i64* %PC.i665
  %3740 = shl i64 %3737, 32
  %3741 = ashr exact i64 %3740, 32
  store i64 %3741, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_4118d5, %struct.Memory** %MEMORY
  %loadMem_4118d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 1
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 5
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %3750 to i64*
  %3751 = load i64, i64* %RCX.i664
  %3752 = add i64 %3751, 12099168
  %3753 = load i64, i64* %PC.i662
  %3754 = add i64 %3753, 8
  store i64 %3754, i64* %PC.i662
  %3755 = inttoptr i64 %3752 to i8*
  %3756 = load i8, i8* %3755
  %3757 = zext i8 %3756 to i64
  store i64 %3757, i64* %RAX.i663, align 8
  store %struct.Memory* %loadMem_4118d8, %struct.Memory** %MEMORY
  %loadMem_4118e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 33
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 1
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %EAX.i661 = bitcast %union.anon* %3763 to i32*
  %3764 = load i32, i32* %EAX.i661
  %3765 = zext i32 %3764 to i64
  %3766 = load i64, i64* %PC.i660
  %3767 = add i64 %3766, 3
  store i64 %3767, i64* %PC.i660
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3768, align 1
  %3769 = and i32 %3764, 255
  %3770 = call i32 @llvm.ctpop.i32(i32 %3769)
  %3771 = trunc i32 %3770 to i8
  %3772 = and i8 %3771, 1
  %3773 = xor i8 %3772, 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3773, i8* %3774, align 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3775, align 1
  %3776 = icmp eq i32 %3764, 0
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3777, i8* %3778, align 1
  %3779 = lshr i32 %3764, 31
  %3780 = trunc i32 %3779 to i8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3780, i8* %3781, align 1
  %3782 = lshr i32 %3764, 31
  %3783 = xor i32 %3779, %3782
  %3784 = add i32 %3783, %3782
  %3785 = icmp eq i32 %3784, 2
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3786, i8* %3787, align 1
  store %struct.Memory* %loadMem_4118e0, %struct.Memory** %MEMORY
  %loadMem_4118e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %PC.i659
  %3792 = add i64 %3791, 123
  %3793 = load i64, i64* %PC.i659
  %3794 = add i64 %3793, 6
  %3795 = load i64, i64* %PC.i659
  %3796 = add i64 %3795, 6
  store i64 %3796, i64* %PC.i659
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3798 = load i8, i8* %3797, align 1
  %3799 = icmp eq i8 %3798, 0
  %3800 = zext i1 %3799 to i8
  store i8 %3800, i8* %BRANCH_TAKEN, align 1
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3802 = select i1 %3799, i64 %3792, i64 %3794
  store i64 %3802, i64* %3801, align 8
  store %struct.Memory* %loadMem_4118e3, %struct.Memory** %MEMORY
  %loadBr_4118e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4118e3 = icmp eq i8 %loadBr_4118e3, 1
  br i1 %cmpBr_4118e3, label %block_.L_41195e, label %block_4118e9

block_4118e9:                                     ; preds = %block_.L_4118cf
  %loadMem_4118e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 1
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 15
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %3811 to i64*
  %3812 = load i64, i64* %RBP.i658
  %3813 = sub i64 %3812, 8
  %3814 = load i64, i64* %PC.i656
  %3815 = add i64 %3814, 3
  store i64 %3815, i64* %PC.i656
  %3816 = inttoptr i64 %3813 to i32*
  %3817 = load i32, i32* %3816
  %3818 = zext i32 %3817 to i64
  store i64 %3818, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_4118e9, %struct.Memory** %MEMORY
  %loadMem_4118ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 1
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RAX.i655
  %3826 = load i64, i64* %PC.i654
  %3827 = add i64 %3826, 3
  store i64 %3827, i64* %PC.i654
  %3828 = trunc i64 %3825 to i32
  %3829 = sub i32 %3828, 1
  %3830 = zext i32 %3829 to i64
  store i64 %3830, i64* %RAX.i655, align 8
  %3831 = icmp ult i32 %3828, 1
  %3832 = zext i1 %3831 to i8
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3832, i8* %3833, align 1
  %3834 = and i32 %3829, 255
  %3835 = call i32 @llvm.ctpop.i32(i32 %3834)
  %3836 = trunc i32 %3835 to i8
  %3837 = and i8 %3836, 1
  %3838 = xor i8 %3837, 1
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3838, i8* %3839, align 1
  %3840 = xor i64 1, %3825
  %3841 = trunc i64 %3840 to i32
  %3842 = xor i32 %3841, %3829
  %3843 = lshr i32 %3842, 4
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3845, i8* %3846, align 1
  %3847 = icmp eq i32 %3829, 0
  %3848 = zext i1 %3847 to i8
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3848, i8* %3849, align 1
  %3850 = lshr i32 %3829, 31
  %3851 = trunc i32 %3850 to i8
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3851, i8* %3852, align 1
  %3853 = lshr i32 %3828, 31
  %3854 = xor i32 %3850, %3853
  %3855 = add i32 %3854, %3853
  %3856 = icmp eq i32 %3855, 2
  %3857 = zext i1 %3856 to i8
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3857, i8* %3858, align 1
  store %struct.Memory* %loadMem_4118ec, %struct.Memory** %MEMORY
  %loadMem_4118ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 1
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %3864 to i32*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 5
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RCX.i653 = bitcast %union.anon* %3867 to i64*
  %3868 = load i32, i32* %EAX.i652
  %3869 = zext i32 %3868 to i64
  %3870 = load i64, i64* %PC.i651
  %3871 = add i64 %3870, 3
  store i64 %3871, i64* %PC.i651
  %3872 = shl i64 %3869, 32
  %3873 = ashr exact i64 %3872, 32
  store i64 %3873, i64* %RCX.i653, align 8
  store %struct.Memory* %loadMem_4118ef, %struct.Memory** %MEMORY
  %loadMem_4118f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 33
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 1
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 5
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %3882 to i64*
  %3883 = load i64, i64* %RCX.i650
  %3884 = mul i64 %3883, 4
  %3885 = add i64 %3884, 11185584
  %3886 = load i64, i64* %PC.i648
  %3887 = add i64 %3886, 7
  store i64 %3887, i64* %PC.i648
  %3888 = inttoptr i64 %3885 to i32*
  %3889 = load i32, i32* %3888
  %3890 = zext i32 %3889 to i64
  store i64 %3890, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_4118f2, %struct.Memory** %MEMORY
  %loadMem_4118f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 1
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %EAX.i647 = bitcast %union.anon* %3896 to i32*
  %3897 = load i32, i32* %EAX.i647
  %3898 = zext i32 %3897 to i64
  %3899 = load i64, i64* %PC.i646
  %3900 = add i64 %3899, 7
  store i64 %3900, i64* %PC.i646
  %3901 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %3902 = sub i32 %3897, %3901
  %3903 = icmp ult i32 %3897, %3901
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3904, i8* %3905, align 1
  %3906 = and i32 %3902, 255
  %3907 = call i32 @llvm.ctpop.i32(i32 %3906)
  %3908 = trunc i32 %3907 to i8
  %3909 = and i8 %3908, 1
  %3910 = xor i8 %3909, 1
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3910, i8* %3911, align 1
  %3912 = xor i32 %3901, %3897
  %3913 = xor i32 %3912, %3902
  %3914 = lshr i32 %3913, 4
  %3915 = trunc i32 %3914 to i8
  %3916 = and i8 %3915, 1
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3916, i8* %3917, align 1
  %3918 = icmp eq i32 %3902, 0
  %3919 = zext i1 %3918 to i8
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3919, i8* %3920, align 1
  %3921 = lshr i32 %3902, 31
  %3922 = trunc i32 %3921 to i8
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3922, i8* %3923, align 1
  %3924 = lshr i32 %3897, 31
  %3925 = lshr i32 %3901, 31
  %3926 = xor i32 %3925, %3924
  %3927 = xor i32 %3921, %3924
  %3928 = add i32 %3927, %3926
  %3929 = icmp eq i32 %3928, 2
  %3930 = zext i1 %3929 to i8
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3930, i8* %3931, align 1
  store %struct.Memory* %loadMem_4118f9, %struct.Memory** %MEMORY
  %loadMem_411900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %PC.i645
  %3936 = add i64 %3935, 94
  %3937 = load i64, i64* %PC.i645
  %3938 = add i64 %3937, 6
  %3939 = load i64, i64* %PC.i645
  %3940 = add i64 %3939, 6
  store i64 %3940, i64* %PC.i645
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3942 = load i8, i8* %3941, align 1
  store i8 %3942, i8* %BRANCH_TAKEN, align 1
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3944 = icmp ne i8 %3942, 0
  %3945 = select i1 %3944, i64 %3936, i64 %3938
  store i64 %3945, i64* %3943, align 8
  store %struct.Memory* %loadMem_411900, %struct.Memory** %MEMORY
  %loadBr_411900 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411900 = icmp eq i8 %loadBr_411900, 1
  br i1 %cmpBr_411900, label %block_.L_41195e, label %block_411906

block_411906:                                     ; preds = %block_4118e9
  %loadMem_411906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 15
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %3951 to i64*
  %3952 = load i64, i64* %RBP.i644
  %3953 = sub i64 %3952, 24
  %3954 = load i64, i64* %PC.i643
  %3955 = add i64 %3954, 5
  store i64 %3955, i64* %PC.i643
  %3956 = inttoptr i64 %3953 to i64*
  %3957 = load i64, i64* %3956
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3958, align 1
  %3959 = trunc i64 %3957 to i32
  %3960 = and i32 %3959, 255
  %3961 = call i32 @llvm.ctpop.i32(i32 %3960)
  %3962 = trunc i32 %3961 to i8
  %3963 = and i8 %3962, 1
  %3964 = xor i8 %3963, 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3964, i8* %3965, align 1
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3966, align 1
  %3967 = icmp eq i64 %3957, 0
  %3968 = zext i1 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3968, i8* %3969, align 1
  %3970 = lshr i64 %3957, 63
  %3971 = trunc i64 %3970 to i8
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3971, i8* %3972, align 1
  %3973 = lshr i64 %3957, 63
  %3974 = xor i64 %3970, %3973
  %3975 = add i64 %3974, %3973
  %3976 = icmp eq i64 %3975, 2
  %3977 = zext i1 %3976 to i8
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3977, i8* %3978, align 1
  store %struct.Memory* %loadMem_411906, %struct.Memory** %MEMORY
  %loadMem_41190b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %3981 to i64*
  %3982 = load i64, i64* %PC.i642
  %3983 = add i64 %3982, 23
  %3984 = load i64, i64* %PC.i642
  %3985 = add i64 %3984, 6
  %3986 = load i64, i64* %PC.i642
  %3987 = add i64 %3986, 6
  store i64 %3987, i64* %PC.i642
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3989 = load i8, i8* %3988, align 1
  store i8 %3989, i8* %BRANCH_TAKEN, align 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3991 = icmp ne i8 %3989, 0
  %3992 = select i1 %3991, i64 %3983, i64 %3985
  store i64 %3992, i64* %3990, align 8
  store %struct.Memory* %loadMem_41190b, %struct.Memory** %MEMORY
  %loadBr_41190b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41190b = icmp eq i8 %loadBr_41190b, 1
  br i1 %cmpBr_41190b, label %block_.L_411922, label %block_411911

block_411911:                                     ; preds = %block_411906
  %loadMem_411911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 1
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 15
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %RBP.i641
  %4003 = sub i64 %4002, 8
  %4004 = load i64, i64* %PC.i639
  %4005 = add i64 %4004, 3
  store i64 %4005, i64* %PC.i639
  %4006 = inttoptr i64 %4003 to i32*
  %4007 = load i32, i32* %4006
  %4008 = zext i32 %4007 to i64
  store i64 %4008, i64* %RAX.i640, align 8
  store %struct.Memory* %loadMem_411911, %struct.Memory** %MEMORY
  %loadMem_411914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 1
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %RAX.i638
  %4016 = load i64, i64* %PC.i637
  %4017 = add i64 %4016, 3
  store i64 %4017, i64* %PC.i637
  %4018 = trunc i64 %4015 to i32
  %4019 = sub i32 %4018, 1
  %4020 = zext i32 %4019 to i64
  store i64 %4020, i64* %RAX.i638, align 8
  %4021 = icmp ult i32 %4018, 1
  %4022 = zext i1 %4021 to i8
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4022, i8* %4023, align 1
  %4024 = and i32 %4019, 255
  %4025 = call i32 @llvm.ctpop.i32(i32 %4024)
  %4026 = trunc i32 %4025 to i8
  %4027 = and i8 %4026, 1
  %4028 = xor i8 %4027, 1
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4028, i8* %4029, align 1
  %4030 = xor i64 1, %4015
  %4031 = trunc i64 %4030 to i32
  %4032 = xor i32 %4031, %4019
  %4033 = lshr i32 %4032, 4
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4035, i8* %4036, align 1
  %4037 = icmp eq i32 %4019, 0
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4038, i8* %4039, align 1
  %4040 = lshr i32 %4019, 31
  %4041 = trunc i32 %4040 to i8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4041, i8* %4042, align 1
  %4043 = lshr i32 %4018, 31
  %4044 = xor i32 %4040, %4043
  %4045 = add i32 %4044, %4043
  %4046 = icmp eq i32 %4045, 2
  %4047 = zext i1 %4046 to i8
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4047, i8* %4048, align 1
  store %struct.Memory* %loadMem_411914, %struct.Memory** %MEMORY
  %loadMem_411917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 33
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 5
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 15
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %4057 to i64*
  %4058 = load i64, i64* %RBP.i636
  %4059 = sub i64 %4058, 24
  %4060 = load i64, i64* %PC.i634
  %4061 = add i64 %4060, 4
  store i64 %4061, i64* %PC.i634
  %4062 = inttoptr i64 %4059 to i64*
  %4063 = load i64, i64* %4062
  store i64 %4063, i64* %RCX.i635, align 8
  store %struct.Memory* %loadMem_411917, %struct.Memory** %MEMORY
  %loadMem_41191b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 7
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 15
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RBP.i633
  %4074 = sub i64 %4073, 32
  %4075 = load i64, i64* %PC.i631
  %4076 = add i64 %4075, 4
  store i64 %4076, i64* %PC.i631
  %4077 = inttoptr i64 %4074 to i32*
  %4078 = load i32, i32* %4077
  %4079 = sext i32 %4078 to i64
  store i64 %4079, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_41191b, %struct.Memory** %MEMORY
  %loadMem_41191f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 1
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %4085 to i32*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 5
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 7
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %RDX.i630 = bitcast %union.anon* %4091 to i64*
  %4092 = load i64, i64* %RCX.i629
  %4093 = load i64, i64* %RDX.i630
  %4094 = mul i64 %4093, 4
  %4095 = add i64 %4094, %4092
  %4096 = load i32, i32* %EAX.i628
  %4097 = zext i32 %4096 to i64
  %4098 = load i64, i64* %PC.i627
  %4099 = add i64 %4098, 3
  store i64 %4099, i64* %PC.i627
  %4100 = inttoptr i64 %4095 to i32*
  store i32 %4096, i32* %4100
  store %struct.Memory* %loadMem_41191f, %struct.Memory** %MEMORY
  br label %block_.L_411922

block_.L_411922:                                  ; preds = %block_411911, %block_411906
  %loadMem_411922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 1
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 15
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RBP.i626
  %4111 = sub i64 %4110, 32
  %4112 = load i64, i64* %PC.i624
  %4113 = add i64 %4112, 3
  store i64 %4113, i64* %PC.i624
  %4114 = inttoptr i64 %4111 to i32*
  %4115 = load i32, i32* %4114
  %4116 = zext i32 %4115 to i64
  store i64 %4116, i64* %RAX.i625, align 8
  store %struct.Memory* %loadMem_411922, %struct.Memory** %MEMORY
  %loadMem_411925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 1
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %4122 to i64*
  %4123 = load i64, i64* %RAX.i623
  %4124 = load i64, i64* %PC.i622
  %4125 = add i64 %4124, 3
  store i64 %4125, i64* %PC.i622
  %4126 = trunc i64 %4123 to i32
  %4127 = add i32 1, %4126
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RAX.i623, align 8
  %4129 = icmp ult i32 %4127, %4126
  %4130 = icmp ult i32 %4127, 1
  %4131 = or i1 %4129, %4130
  %4132 = zext i1 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4132, i8* %4133, align 1
  %4134 = and i32 %4127, 255
  %4135 = call i32 @llvm.ctpop.i32(i32 %4134)
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = xor i8 %4137, 1
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4138, i8* %4139, align 1
  %4140 = xor i64 1, %4123
  %4141 = trunc i64 %4140 to i32
  %4142 = xor i32 %4141, %4127
  %4143 = lshr i32 %4142, 4
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4145, i8* %4146, align 1
  %4147 = icmp eq i32 %4127, 0
  %4148 = zext i1 %4147 to i8
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4148, i8* %4149, align 1
  %4150 = lshr i32 %4127, 31
  %4151 = trunc i32 %4150 to i8
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4151, i8* %4152, align 1
  %4153 = lshr i32 %4126, 31
  %4154 = xor i32 %4150, %4153
  %4155 = add i32 %4154, %4150
  %4156 = icmp eq i32 %4155, 2
  %4157 = zext i1 %4156 to i8
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4157, i8* %4158, align 1
  store %struct.Memory* %loadMem_411925, %struct.Memory** %MEMORY
  %loadMem_411928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 1
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %EAX.i620 = bitcast %union.anon* %4164 to i32*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 15
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RBP.i621
  %4169 = sub i64 %4168, 32
  %4170 = load i32, i32* %EAX.i620
  %4171 = zext i32 %4170 to i64
  %4172 = load i64, i64* %PC.i619
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i619
  %4174 = inttoptr i64 %4169 to i32*
  store i32 %4170, i32* %4174
  store %struct.Memory* %loadMem_411928, %struct.Memory** %MEMORY
  %loadMem_41192b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 1
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 15
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %RBP.i618
  %4185 = sub i64 %4184, 32
  %4186 = load i64, i64* %PC.i616
  %4187 = add i64 %4186, 3
  store i64 %4187, i64* %PC.i616
  %4188 = inttoptr i64 %4185 to i32*
  %4189 = load i32, i32* %4188
  %4190 = zext i32 %4189 to i64
  store i64 %4190, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_41192b, %struct.Memory** %MEMORY
  %loadMem_41192e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 1
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %EAX.i614 = bitcast %union.anon* %4196 to i32*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 15
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %4199 to i64*
  %4200 = load i32, i32* %EAX.i614
  %4201 = zext i32 %4200 to i64
  %4202 = load i64, i64* %RBP.i615
  %4203 = sub i64 %4202, 16
  %4204 = load i64, i64* %PC.i613
  %4205 = add i64 %4204, 3
  store i64 %4205, i64* %PC.i613
  %4206 = inttoptr i64 %4203 to i32*
  %4207 = load i32, i32* %4206
  %4208 = sub i32 %4200, %4207
  %4209 = icmp ult i32 %4200, %4207
  %4210 = zext i1 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4210, i8* %4211, align 1
  %4212 = and i32 %4208, 255
  %4213 = call i32 @llvm.ctpop.i32(i32 %4212)
  %4214 = trunc i32 %4213 to i8
  %4215 = and i8 %4214, 1
  %4216 = xor i8 %4215, 1
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4216, i8* %4217, align 1
  %4218 = xor i32 %4207, %4200
  %4219 = xor i32 %4218, %4208
  %4220 = lshr i32 %4219, 4
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4222, i8* %4223, align 1
  %4224 = icmp eq i32 %4208, 0
  %4225 = zext i1 %4224 to i8
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4225, i8* %4226, align 1
  %4227 = lshr i32 %4208, 31
  %4228 = trunc i32 %4227 to i8
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4228, i8* %4229, align 1
  %4230 = lshr i32 %4200, 31
  %4231 = lshr i32 %4207, 31
  %4232 = xor i32 %4231, %4230
  %4233 = xor i32 %4227, %4230
  %4234 = add i32 %4233, %4232
  %4235 = icmp eq i32 %4234, 2
  %4236 = zext i1 %4235 to i8
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4236, i8* %4237, align 1
  store %struct.Memory* %loadMem_41192e, %struct.Memory** %MEMORY
  %loadMem_411931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %PC.i612
  %4242 = add i64 %4241, 17
  %4243 = load i64, i64* %PC.i612
  %4244 = add i64 %4243, 6
  %4245 = load i64, i64* %PC.i612
  %4246 = add i64 %4245, 6
  store i64 %4246, i64* %PC.i612
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4248 = load i8, i8* %4247, align 1
  %4249 = icmp ne i8 %4248, 0
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4251 = load i8, i8* %4250, align 1
  %4252 = icmp ne i8 %4251, 0
  %4253 = xor i1 %4249, %4252
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %BRANCH_TAKEN, align 1
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4256 = select i1 %4253, i64 %4242, i64 %4244
  store i64 %4256, i64* %4255, align 8
  store %struct.Memory* %loadMem_411931, %struct.Memory** %MEMORY
  %loadBr_411931 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411931 = icmp eq i8 %loadBr_411931, 1
  br i1 %cmpBr_411931, label %block_.L_411942, label %block_411937

block_411937:                                     ; preds = %block_.L_411922
  %loadMem_411937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 1
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 15
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %4265 to i64*
  %4266 = load i64, i64* %RBP.i611
  %4267 = sub i64 %4266, 32
  %4268 = load i64, i64* %PC.i609
  %4269 = add i64 %4268, 3
  store i64 %4269, i64* %PC.i609
  %4270 = inttoptr i64 %4267 to i32*
  %4271 = load i32, i32* %4270
  %4272 = zext i32 %4271 to i64
  store i64 %4272, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_411937, %struct.Memory** %MEMORY
  %loadMem_41193a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 33
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 1
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %4278 to i32*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 15
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %4281 to i64*
  %4282 = load i64, i64* %RBP.i608
  %4283 = sub i64 %4282, 4
  %4284 = load i32, i32* %EAX.i607
  %4285 = zext i32 %4284 to i64
  %4286 = load i64, i64* %PC.i606
  %4287 = add i64 %4286, 3
  store i64 %4287, i64* %PC.i606
  %4288 = inttoptr i64 %4283 to i32*
  store i32 %4284, i32* %4288
  store %struct.Memory* %loadMem_41193a, %struct.Memory** %MEMORY
  %loadMem_41193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %4291 to i64*
  %4292 = load i64, i64* %PC.i605
  %4293 = add i64 %4292, 1118
  %4294 = load i64, i64* %PC.i605
  %4295 = add i64 %4294, 5
  store i64 %4295, i64* %PC.i605
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4293, i64* %4296, align 8
  store %struct.Memory* %loadMem_41193d, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411942:                                  ; preds = %block_.L_411922
  %loadMem_411942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 1
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %PC.i603
  %4304 = add i64 %4303, 7
  store i64 %4304, i64* %PC.i603
  %4305 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %4306 = zext i32 %4305 to i64
  store i64 %4306, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_411942, %struct.Memory** %MEMORY
  %loadMem_411949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 5
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 15
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %4315 to i64*
  %4316 = load i64, i64* %RBP.i602
  %4317 = sub i64 %4316, 8
  %4318 = load i64, i64* %PC.i600
  %4319 = add i64 %4318, 3
  store i64 %4319, i64* %PC.i600
  %4320 = inttoptr i64 %4317 to i32*
  %4321 = load i32, i32* %4320
  %4322 = zext i32 %4321 to i64
  store i64 %4322, i64* %RCX.i601, align 8
  store %struct.Memory* %loadMem_411949, %struct.Memory** %MEMORY
  %loadMem_41194c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 5
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %4328 to i64*
  %4329 = load i64, i64* %RCX.i599
  %4330 = load i64, i64* %PC.i598
  %4331 = add i64 %4330, 3
  store i64 %4331, i64* %PC.i598
  %4332 = trunc i64 %4329 to i32
  %4333 = sub i32 %4332, 1
  %4334 = zext i32 %4333 to i64
  store i64 %4334, i64* %RCX.i599, align 8
  %4335 = icmp ult i32 %4332, 1
  %4336 = zext i1 %4335 to i8
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4336, i8* %4337, align 1
  %4338 = and i32 %4333, 255
  %4339 = call i32 @llvm.ctpop.i32(i32 %4338)
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = xor i8 %4341, 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4342, i8* %4343, align 1
  %4344 = xor i64 1, %4329
  %4345 = trunc i64 %4344 to i32
  %4346 = xor i32 %4345, %4333
  %4347 = lshr i32 %4346, 4
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4349, i8* %4350, align 1
  %4351 = icmp eq i32 %4333, 0
  %4352 = zext i1 %4351 to i8
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4352, i8* %4353, align 1
  %4354 = lshr i32 %4333, 31
  %4355 = trunc i32 %4354 to i8
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4355, i8* %4356, align 1
  %4357 = lshr i32 %4332, 31
  %4358 = xor i32 %4354, %4357
  %4359 = add i32 %4358, %4357
  %4360 = icmp eq i32 %4359, 2
  %4361 = zext i1 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4361, i8* %4362, align 1
  store %struct.Memory* %loadMem_41194c, %struct.Memory** %MEMORY
  %loadMem_41194f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 33
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 5
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %ECX.i596 = bitcast %union.anon* %4368 to i32*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 7
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %4371 to i64*
  %4372 = load i32, i32* %ECX.i596
  %4373 = zext i32 %4372 to i64
  %4374 = load i64, i64* %PC.i595
  %4375 = add i64 %4374, 3
  store i64 %4375, i64* %PC.i595
  %4376 = shl i64 %4373, 32
  %4377 = ashr exact i64 %4376, 32
  store i64 %4377, i64* %RDX.i597, align 8
  store %struct.Memory* %loadMem_41194f, %struct.Memory** %MEMORY
  %loadMem_411952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %EAX.i593 = bitcast %union.anon* %4383 to i32*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 7
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RDX.i594 = bitcast %union.anon* %4386 to i64*
  %4387 = load i64, i64* %RDX.i594
  %4388 = mul i64 %4387, 4
  %4389 = add i64 %4388, 11185584
  %4390 = load i32, i32* %EAX.i593
  %4391 = zext i32 %4390 to i64
  %4392 = load i64, i64* %PC.i592
  %4393 = add i64 %4392, 7
  store i64 %4393, i64* %PC.i592
  %4394 = inttoptr i64 %4389 to i32*
  store i32 %4390, i32* %4394
  store %struct.Memory* %loadMem_411952, %struct.Memory** %MEMORY
  %loadMem_411959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %4397 to i64*
  %4398 = load i64, i64* %PC.i591
  %4399 = add i64 %4398, 277
  %4400 = load i64, i64* %PC.i591
  %4401 = add i64 %4400, 5
  store i64 %4401, i64* %PC.i591
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4399, i64* %4402, align 8
  store %struct.Memory* %loadMem_411959, %struct.Memory** %MEMORY
  br label %block_.L_411a6e

block_.L_41195e:                                  ; preds = %block_4118e9, %block_.L_4118cf
  %loadMem_41195e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 1
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 15
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %4411 to i64*
  %4412 = load i64, i64* %RBP.i590
  %4413 = sub i64 %4412, 8
  %4414 = load i64, i64* %PC.i588
  %4415 = add i64 %4414, 3
  store i64 %4415, i64* %PC.i588
  %4416 = inttoptr i64 %4413 to i32*
  %4417 = load i32, i32* %4416
  %4418 = zext i32 %4417 to i64
  store i64 %4418, i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_41195e, %struct.Memory** %MEMORY
  %loadMem_411961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 1
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %4424 to i64*
  %4425 = load i64, i64* %RAX.i587
  %4426 = load i64, i64* %PC.i586
  %4427 = add i64 %4426, 3
  store i64 %4427, i64* %PC.i586
  %4428 = trunc i64 %4425 to i32
  %4429 = sub i32 %4428, 1
  %4430 = zext i32 %4429 to i64
  store i64 %4430, i64* %RAX.i587, align 8
  %4431 = icmp ult i32 %4428, 1
  %4432 = zext i1 %4431 to i8
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4432, i8* %4433, align 1
  %4434 = and i32 %4429, 255
  %4435 = call i32 @llvm.ctpop.i32(i32 %4434)
  %4436 = trunc i32 %4435 to i8
  %4437 = and i8 %4436, 1
  %4438 = xor i8 %4437, 1
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4438, i8* %4439, align 1
  %4440 = xor i64 1, %4425
  %4441 = trunc i64 %4440 to i32
  %4442 = xor i32 %4441, %4429
  %4443 = lshr i32 %4442, 4
  %4444 = trunc i32 %4443 to i8
  %4445 = and i8 %4444, 1
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4445, i8* %4446, align 1
  %4447 = icmp eq i32 %4429, 0
  %4448 = zext i1 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4448, i8* %4449, align 1
  %4450 = lshr i32 %4429, 31
  %4451 = trunc i32 %4450 to i8
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4451, i8* %4452, align 1
  %4453 = lshr i32 %4428, 31
  %4454 = xor i32 %4450, %4453
  %4455 = add i32 %4454, %4453
  %4456 = icmp eq i32 %4455, 2
  %4457 = zext i1 %4456 to i8
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4457, i8* %4458, align 1
  store %struct.Memory* %loadMem_411961, %struct.Memory** %MEMORY
  %loadMem_411964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 33
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 1
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %EAX.i584 = bitcast %union.anon* %4464 to i32*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 5
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %4467 to i64*
  %4468 = load i32, i32* %EAX.i584
  %4469 = zext i32 %4468 to i64
  %4470 = load i64, i64* %PC.i583
  %4471 = add i64 %4470, 3
  store i64 %4471, i64* %PC.i583
  %4472 = shl i64 %4469, 32
  %4473 = ashr exact i64 %4472, 32
  store i64 %4473, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_411964, %struct.Memory** %MEMORY
  %loadMem_411967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 5
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %RCX.i582
  %4484 = add i64 %4483, 12099168
  %4485 = load i64, i64* %PC.i580
  %4486 = add i64 %4485, 8
  store i64 %4486, i64* %PC.i580
  %4487 = inttoptr i64 %4484 to i8*
  %4488 = load i8, i8* %4487
  %4489 = zext i8 %4488 to i64
  store i64 %4489, i64* %RAX.i581, align 8
  store %struct.Memory* %loadMem_411967, %struct.Memory** %MEMORY
  %loadMem_41196f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %4495 to i32*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 15
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %4498 to i64*
  %4499 = load i32, i32* %EAX.i578
  %4500 = zext i32 %4499 to i64
  %4501 = load i64, i64* %RBP.i579
  %4502 = sub i64 %4501, 12
  %4503 = load i64, i64* %PC.i577
  %4504 = add i64 %4503, 3
  store i64 %4504, i64* %PC.i577
  %4505 = inttoptr i64 %4502 to i32*
  %4506 = load i32, i32* %4505
  %4507 = sub i32 %4499, %4506
  %4508 = icmp ult i32 %4499, %4506
  %4509 = zext i1 %4508 to i8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4509, i8* %4510, align 1
  %4511 = and i32 %4507, 255
  %4512 = call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4515, i8* %4516, align 1
  %4517 = xor i32 %4506, %4499
  %4518 = xor i32 %4517, %4507
  %4519 = lshr i32 %4518, 4
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4521, i8* %4522, align 1
  %4523 = icmp eq i32 %4507, 0
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4524, i8* %4525, align 1
  %4526 = lshr i32 %4507, 31
  %4527 = trunc i32 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4527, i8* %4528, align 1
  %4529 = lshr i32 %4499, 31
  %4530 = lshr i32 %4506, 31
  %4531 = xor i32 %4530, %4529
  %4532 = xor i32 %4526, %4529
  %4533 = add i32 %4532, %4531
  %4534 = icmp eq i32 %4533, 2
  %4535 = zext i1 %4534 to i8
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4535, i8* %4536, align 1
  store %struct.Memory* %loadMem_41196f, %struct.Memory** %MEMORY
  %loadMem_411972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %4539 to i64*
  %4540 = load i64, i64* %PC.i576
  %4541 = add i64 %4540, 247
  %4542 = load i64, i64* %PC.i576
  %4543 = add i64 %4542, 6
  %4544 = load i64, i64* %PC.i576
  %4545 = add i64 %4544, 6
  store i64 %4545, i64* %PC.i576
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4547 = load i8, i8* %4546, align 1
  %4548 = icmp eq i8 %4547, 0
  %4549 = zext i1 %4548 to i8
  store i8 %4549, i8* %BRANCH_TAKEN, align 1
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4551 = select i1 %4548, i64 %4541, i64 %4543
  store i64 %4551, i64* %4550, align 8
  store %struct.Memory* %loadMem_411972, %struct.Memory** %MEMORY
  %loadBr_411972 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411972 = icmp eq i8 %loadBr_411972, 1
  br i1 %cmpBr_411972, label %block_.L_411a69, label %block_411978

block_411978:                                     ; preds = %block_.L_41195e
  %loadMem_411978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 1
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 15
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %4560 to i64*
  %4561 = load i64, i64* %RBP.i575
  %4562 = sub i64 %4561, 8
  %4563 = load i64, i64* %PC.i573
  %4564 = add i64 %4563, 3
  store i64 %4564, i64* %PC.i573
  %4565 = inttoptr i64 %4562 to i32*
  %4566 = load i32, i32* %4565
  %4567 = zext i32 %4566 to i64
  store i64 %4567, i64* %RAX.i574, align 8
  store %struct.Memory* %loadMem_411978, %struct.Memory** %MEMORY
  %loadMem_41197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 1
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RAX.i572
  %4575 = load i64, i64* %PC.i571
  %4576 = add i64 %4575, 3
  store i64 %4576, i64* %PC.i571
  %4577 = trunc i64 %4574 to i32
  %4578 = sub i32 %4577, 1
  %4579 = zext i32 %4578 to i64
  store i64 %4579, i64* %RAX.i572, align 8
  %4580 = icmp ult i32 %4577, 1
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4581, i8* %4582, align 1
  %4583 = and i32 %4578, 255
  %4584 = call i32 @llvm.ctpop.i32(i32 %4583)
  %4585 = trunc i32 %4584 to i8
  %4586 = and i8 %4585, 1
  %4587 = xor i8 %4586, 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4587, i8* %4588, align 1
  %4589 = xor i64 1, %4574
  %4590 = trunc i64 %4589 to i32
  %4591 = xor i32 %4590, %4578
  %4592 = lshr i32 %4591, 4
  %4593 = trunc i32 %4592 to i8
  %4594 = and i8 %4593, 1
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4594, i8* %4595, align 1
  %4596 = icmp eq i32 %4578, 0
  %4597 = zext i1 %4596 to i8
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4597, i8* %4598, align 1
  %4599 = lshr i32 %4578, 31
  %4600 = trunc i32 %4599 to i8
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4600, i8* %4601, align 1
  %4602 = lshr i32 %4577, 31
  %4603 = xor i32 %4599, %4602
  %4604 = add i32 %4603, %4602
  %4605 = icmp eq i32 %4604, 2
  %4606 = zext i1 %4605 to i8
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4606, i8* %4607, align 1
  store %struct.Memory* %loadMem_41197b, %struct.Memory** %MEMORY
  %loadMem_41197e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 1
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %EAX.i569 = bitcast %union.anon* %4613 to i32*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 5
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %4616 to i64*
  %4617 = load i32, i32* %EAX.i569
  %4618 = zext i32 %4617 to i64
  %4619 = load i64, i64* %PC.i568
  %4620 = add i64 %4619, 3
  store i64 %4620, i64* %PC.i568
  %4621 = shl i64 %4618, 32
  %4622 = ashr exact i64 %4621, 32
  store i64 %4622, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_41197e, %struct.Memory** %MEMORY
  %loadMem_411981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 33
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 1
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 5
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %RCX.i567
  %4633 = mul i64 %4632, 4
  %4634 = add i64 %4633, 11187184
  %4635 = load i64, i64* %PC.i565
  %4636 = add i64 %4635, 7
  store i64 %4636, i64* %PC.i565
  %4637 = inttoptr i64 %4634 to i32*
  %4638 = load i32, i32* %4637
  %4639 = zext i32 %4638 to i64
  store i64 %4639, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_411981, %struct.Memory** %MEMORY
  %loadMem_411988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 33
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 1
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %EAX.i563 = bitcast %union.anon* %4645 to i32*
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 15
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %4648 to i64*
  %4649 = load i64, i64* %RBP.i564
  %4650 = sub i64 %4649, 48
  %4651 = load i32, i32* %EAX.i563
  %4652 = zext i32 %4651 to i64
  %4653 = load i64, i64* %PC.i562
  %4654 = add i64 %4653, 3
  store i64 %4654, i64* %PC.i562
  %4655 = inttoptr i64 %4650 to i32*
  store i32 %4651, i32* %4655
  store %struct.Memory* %loadMem_411988, %struct.Memory** %MEMORY
  %loadMem_41198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 15
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %4661 to i64*
  %4662 = load i64, i64* %RBP.i561
  %4663 = sub i64 %4662, 28
  %4664 = load i64, i64* %PC.i560
  %4665 = add i64 %4664, 7
  store i64 %4665, i64* %PC.i560
  %4666 = inttoptr i64 %4663 to i32*
  store i32 0, i32* %4666
  store %struct.Memory* %loadMem_41198b, %struct.Memory** %MEMORY
  br label %block_.L_411992

block_.L_411992:                                  ; preds = %block_.L_411a56, %block_411978
  %loadMem_411992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 33
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 1
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %PC.i558
  %4674 = add i64 %4673, 10
  store i64 %4674, i64* %PC.i558
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_411992, %struct.Memory** %MEMORY
  %loadMem_41199c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 5
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 15
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RBP.i557
  %4685 = sub i64 %4684, 28
  %4686 = load i64, i64* %PC.i555
  %4687 = add i64 %4686, 3
  store i64 %4687, i64* %PC.i555
  %4688 = inttoptr i64 %4685 to i32*
  %4689 = load i32, i32* %4688
  %4690 = zext i32 %4689 to i64
  store i64 %4690, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_41199c, %struct.Memory** %MEMORY
  %loadMem_41199f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 7
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %RDX.i553 = bitcast %union.anon* %4696 to i64*
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 15
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %4699 to i64*
  %4700 = load i64, i64* %RBP.i554
  %4701 = sub i64 %4700, 48
  %4702 = load i64, i64* %PC.i552
  %4703 = add i64 %4702, 4
  store i64 %4703, i64* %PC.i552
  %4704 = inttoptr i64 %4701 to i32*
  %4705 = load i32, i32* %4704
  %4706 = sext i32 %4705 to i64
  store i64 %4706, i64* %RDX.i553, align 8
  store %struct.Memory* %loadMem_41199f, %struct.Memory** %MEMORY
  %loadMem_4119a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %4709 to i64*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 7
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %4712 to i64*
  %4713 = load i64, i64* %RDX.i551
  %4714 = load i64, i64* %PC.i550
  %4715 = add i64 %4714, 7
  store i64 %4715, i64* %PC.i550
  %4716 = sext i64 %4713 to i128
  %4717 = and i128 %4716, -18446744073709551616
  %4718 = zext i64 %4713 to i128
  %4719 = or i128 %4717, %4718
  %4720 = mul i128 744, %4719
  %4721 = trunc i128 %4720 to i64
  store i64 %4721, i64* %RDX.i551, align 8
  %4722 = sext i64 %4721 to i128
  %4723 = icmp ne i128 %4722, %4720
  %4724 = zext i1 %4723 to i8
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4724, i8* %4725, align 1
  %4726 = trunc i128 %4720 to i32
  %4727 = and i32 %4726, 255
  %4728 = call i32 @llvm.ctpop.i32(i32 %4727)
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  %4731 = xor i8 %4730, 1
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4731, i8* %4732, align 1
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4733, align 1
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4734, align 1
  %4735 = lshr i64 %4721, 63
  %4736 = trunc i64 %4735 to i8
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4736, i8* %4737, align 1
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4724, i8* %4738, align 1
  store %struct.Memory* %loadMem_4119a3, %struct.Memory** %MEMORY
  %loadMem_4119aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 33
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %4741 to i64*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 1
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 7
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RDX.i549 = bitcast %union.anon* %4747 to i64*
  %4748 = load i64, i64* %RAX.i548
  %4749 = load i64, i64* %RDX.i549
  %4750 = load i64, i64* %PC.i547
  %4751 = add i64 %4750, 3
  store i64 %4751, i64* %PC.i547
  %4752 = add i64 %4749, %4748
  store i64 %4752, i64* %RAX.i548, align 8
  %4753 = icmp ult i64 %4752, %4748
  %4754 = icmp ult i64 %4752, %4749
  %4755 = or i1 %4753, %4754
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4756, i8* %4757, align 1
  %4758 = trunc i64 %4752 to i32
  %4759 = and i32 %4758, 255
  %4760 = call i32 @llvm.ctpop.i32(i32 %4759)
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4763, i8* %4764, align 1
  %4765 = xor i64 %4749, %4748
  %4766 = xor i64 %4765, %4752
  %4767 = lshr i64 %4766, 4
  %4768 = trunc i64 %4767 to i8
  %4769 = and i8 %4768, 1
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4769, i8* %4770, align 1
  %4771 = icmp eq i64 %4752, 0
  %4772 = zext i1 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4772, i8* %4773, align 1
  %4774 = lshr i64 %4752, 63
  %4775 = trunc i64 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4775, i8* %4776, align 1
  %4777 = lshr i64 %4748, 63
  %4778 = lshr i64 %4749, 63
  %4779 = xor i64 %4774, %4777
  %4780 = xor i64 %4774, %4778
  %4781 = add i64 %4779, %4780
  %4782 = icmp eq i64 %4781, 2
  %4783 = zext i1 %4782 to i8
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4783, i8* %4784, align 1
  store %struct.Memory* %loadMem_4119aa, %struct.Memory** %MEMORY
  %loadMem_4119ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 33
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 5
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %ECX.i545 = bitcast %union.anon* %4790 to i32*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %4793 to i64*
  %4794 = load i32, i32* %ECX.i545
  %4795 = zext i32 %4794 to i64
  %4796 = load i64, i64* %RAX.i546
  %4797 = add i64 %4796, 12
  %4798 = load i64, i64* %PC.i544
  %4799 = add i64 %4798, 3
  store i64 %4799, i64* %PC.i544
  %4800 = inttoptr i64 %4797 to i32*
  %4801 = load i32, i32* %4800
  %4802 = sub i32 %4794, %4801
  %4803 = icmp ult i32 %4794, %4801
  %4804 = zext i1 %4803 to i8
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4804, i8* %4805, align 1
  %4806 = and i32 %4802, 255
  %4807 = call i32 @llvm.ctpop.i32(i32 %4806)
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  %4810 = xor i8 %4809, 1
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4810, i8* %4811, align 1
  %4812 = xor i32 %4801, %4794
  %4813 = xor i32 %4812, %4802
  %4814 = lshr i32 %4813, 4
  %4815 = trunc i32 %4814 to i8
  %4816 = and i8 %4815, 1
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4816, i8* %4817, align 1
  %4818 = icmp eq i32 %4802, 0
  %4819 = zext i1 %4818 to i8
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4819, i8* %4820, align 1
  %4821 = lshr i32 %4802, 31
  %4822 = trunc i32 %4821 to i8
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4822, i8* %4823, align 1
  %4824 = lshr i32 %4794, 31
  %4825 = lshr i32 %4801, 31
  %4826 = xor i32 %4825, %4824
  %4827 = xor i32 %4821, %4824
  %4828 = add i32 %4827, %4826
  %4829 = icmp eq i32 %4828, 2
  %4830 = zext i1 %4829 to i8
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4830, i8* %4831, align 1
  store %struct.Memory* %loadMem_4119ad, %struct.Memory** %MEMORY
  %loadMem_4119b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 33
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %PC.i543
  %4836 = add i64 %4835, 180
  %4837 = load i64, i64* %PC.i543
  %4838 = add i64 %4837, 6
  %4839 = load i64, i64* %PC.i543
  %4840 = add i64 %4839, 6
  store i64 %4840, i64* %PC.i543
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4842 = load i8, i8* %4841, align 1
  %4843 = icmp ne i8 %4842, 0
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4845 = load i8, i8* %4844, align 1
  %4846 = icmp ne i8 %4845, 0
  %4847 = xor i1 %4843, %4846
  %4848 = xor i1 %4847, true
  %4849 = zext i1 %4848 to i8
  store i8 %4849, i8* %BRANCH_TAKEN, align 1
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4851 = select i1 %4847, i64 %4838, i64 %4836
  store i64 %4851, i64* %4850, align 8
  store %struct.Memory* %loadMem_4119b0, %struct.Memory** %MEMORY
  %loadBr_4119b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4119b0 = icmp eq i8 %loadBr_4119b0, 1
  br i1 %cmpBr_4119b0, label %block_.L_411a64, label %block_4119b6

block_4119b6:                                     ; preds = %block_.L_411992
  %loadMem_4119b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 1
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %PC.i541
  %4859 = add i64 %4858, 10
  store i64 %4859, i64* %PC.i541
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_4119b6, %struct.Memory** %MEMORY
  %loadMem_4119c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 33
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %4862 to i64*
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 5
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 15
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %4868 to i64*
  %4869 = load i64, i64* %RBP.i540
  %4870 = sub i64 %4869, 48
  %4871 = load i64, i64* %PC.i538
  %4872 = add i64 %4871, 4
  store i64 %4872, i64* %PC.i538
  %4873 = inttoptr i64 %4870 to i32*
  %4874 = load i32, i32* %4873
  %4875 = sext i32 %4874 to i64
  store i64 %4875, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_4119c0, %struct.Memory** %MEMORY
  %loadMem_4119c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 33
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 5
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %4881 to i64*
  %4882 = load i64, i64* %RCX.i537
  %4883 = load i64, i64* %PC.i536
  %4884 = add i64 %4883, 7
  store i64 %4884, i64* %PC.i536
  %4885 = sext i64 %4882 to i128
  %4886 = and i128 %4885, -18446744073709551616
  %4887 = zext i64 %4882 to i128
  %4888 = or i128 %4886, %4887
  %4889 = mul i128 744, %4888
  %4890 = trunc i128 %4889 to i64
  store i64 %4890, i64* %RCX.i537, align 8
  %4891 = sext i64 %4890 to i128
  %4892 = icmp ne i128 %4891, %4889
  %4893 = zext i1 %4892 to i8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4893, i8* %4894, align 1
  %4895 = trunc i128 %4889 to i32
  %4896 = and i32 %4895, 255
  %4897 = call i32 @llvm.ctpop.i32(i32 %4896)
  %4898 = trunc i32 %4897 to i8
  %4899 = and i8 %4898, 1
  %4900 = xor i8 %4899, 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4900, i8* %4901, align 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4902, align 1
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4903, align 1
  %4904 = lshr i64 %4890, 63
  %4905 = trunc i64 %4904 to i8
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4905, i8* %4906, align 1
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4893, i8* %4907, align 1
  store %struct.Memory* %loadMem_4119c4, %struct.Memory** %MEMORY
  %loadMem_4119cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 1
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 5
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %RAX.i534
  %4918 = load i64, i64* %RCX.i535
  %4919 = load i64, i64* %PC.i533
  %4920 = add i64 %4919, 3
  store i64 %4920, i64* %PC.i533
  %4921 = add i64 %4918, %4917
  store i64 %4921, i64* %RAX.i534, align 8
  %4922 = icmp ult i64 %4921, %4917
  %4923 = icmp ult i64 %4921, %4918
  %4924 = or i1 %4922, %4923
  %4925 = zext i1 %4924 to i8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4925, i8* %4926, align 1
  %4927 = trunc i64 %4921 to i32
  %4928 = and i32 %4927, 255
  %4929 = call i32 @llvm.ctpop.i32(i32 %4928)
  %4930 = trunc i32 %4929 to i8
  %4931 = and i8 %4930, 1
  %4932 = xor i8 %4931, 1
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4932, i8* %4933, align 1
  %4934 = xor i64 %4918, %4917
  %4935 = xor i64 %4934, %4921
  %4936 = lshr i64 %4935, 4
  %4937 = trunc i64 %4936 to i8
  %4938 = and i8 %4937, 1
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4938, i8* %4939, align 1
  %4940 = icmp eq i64 %4921, 0
  %4941 = zext i1 %4940 to i8
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4941, i8* %4942, align 1
  %4943 = lshr i64 %4921, 63
  %4944 = trunc i64 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i64 %4917, 63
  %4947 = lshr i64 %4918, 63
  %4948 = xor i64 %4943, %4946
  %4949 = xor i64 %4943, %4947
  %4950 = add i64 %4948, %4949
  %4951 = icmp eq i64 %4950, 2
  %4952 = zext i1 %4951 to i8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4952, i8* %4953, align 1
  store %struct.Memory* %loadMem_4119cb, %struct.Memory** %MEMORY
  %loadMem_4119ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 5
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 15
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %4962 to i64*
  %4963 = load i64, i64* %RBP.i532
  %4964 = sub i64 %4963, 28
  %4965 = load i64, i64* %PC.i530
  %4966 = add i64 %4965, 4
  store i64 %4966, i64* %PC.i530
  %4967 = inttoptr i64 %4964 to i32*
  %4968 = load i32, i32* %4967
  %4969 = sext i32 %4968 to i64
  store i64 %4969, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_4119ce, %struct.Memory** %MEMORY
  %loadMem_4119d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 33
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 1
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 5
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 7
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RDX.i529 = bitcast %union.anon* %4981 to i64*
  %4982 = load i64, i64* %RAX.i527
  %4983 = load i64, i64* %RCX.i528
  %4984 = mul i64 %4983, 4
  %4985 = add i64 %4982, 16
  %4986 = add i64 %4985, %4984
  %4987 = load i64, i64* %PC.i526
  %4988 = add i64 %4987, 4
  store i64 %4988, i64* %PC.i526
  %4989 = inttoptr i64 %4986 to i32*
  %4990 = load i32, i32* %4989
  %4991 = zext i32 %4990 to i64
  store i64 %4991, i64* %RDX.i529, align 8
  store %struct.Memory* %loadMem_4119d2, %struct.Memory** %MEMORY
  %loadMem_4119d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 7
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %EDX.i524 = bitcast %union.anon* %4997 to i32*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 15
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %RBP.i525
  %5002 = sub i64 %5001, 52
  %5003 = load i32, i32* %EDX.i524
  %5004 = zext i32 %5003 to i64
  %5005 = load i64, i64* %PC.i523
  %5006 = add i64 %5005, 3
  store i64 %5006, i64* %PC.i523
  %5007 = inttoptr i64 %5002 to i32*
  store i32 %5003, i32* %5007
  store %struct.Memory* %loadMem_4119d6, %struct.Memory** %MEMORY
  %loadMem_4119d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 1
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 15
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %5016 to i64*
  %5017 = load i64, i64* %RBP.i522
  %5018 = sub i64 %5017, 52
  %5019 = load i64, i64* %PC.i520
  %5020 = add i64 %5019, 4
  store i64 %5020, i64* %PC.i520
  %5021 = inttoptr i64 %5018 to i32*
  %5022 = load i32, i32* %5021
  %5023 = sext i32 %5022 to i64
  store i64 %5023, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_4119d9, %struct.Memory** %MEMORY
  %loadMem_4119dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 1
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 7
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %RAX.i518
  %5034 = add i64 %5033, 12099168
  %5035 = load i64, i64* %PC.i517
  %5036 = add i64 %5035, 8
  store i64 %5036, i64* %PC.i517
  %5037 = inttoptr i64 %5034 to i8*
  %5038 = load i8, i8* %5037
  %5039 = zext i8 %5038 to i64
  store i64 %5039, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_4119dd, %struct.Memory** %MEMORY
  %loadMem_4119e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 7
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %EDX.i516 = bitcast %union.anon* %5045 to i32*
  %5046 = load i32, i32* %EDX.i516
  %5047 = zext i32 %5046 to i64
  %5048 = load i64, i64* %PC.i515
  %5049 = add i64 %5048, 3
  store i64 %5049, i64* %PC.i515
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5050, align 1
  %5051 = and i32 %5046, 255
  %5052 = call i32 @llvm.ctpop.i32(i32 %5051)
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  %5055 = xor i8 %5054, 1
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5055, i8* %5056, align 1
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5057, align 1
  %5058 = icmp eq i32 %5046, 0
  %5059 = zext i1 %5058 to i8
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5059, i8* %5060, align 1
  %5061 = lshr i32 %5046, 31
  %5062 = trunc i32 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5062, i8* %5063, align 1
  %5064 = lshr i32 %5046, 31
  %5065 = xor i32 %5061, %5064
  %5066 = add i32 %5065, %5064
  %5067 = icmp eq i32 %5066, 2
  %5068 = zext i1 %5067 to i8
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5068, i8* %5069, align 1
  store %struct.Memory* %loadMem_4119e5, %struct.Memory** %MEMORY
  %loadMem_4119e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %5072 to i64*
  %5073 = load i64, i64* %PC.i514
  %5074 = add i64 %5073, 105
  %5075 = load i64, i64* %PC.i514
  %5076 = add i64 %5075, 6
  %5077 = load i64, i64* %PC.i514
  %5078 = add i64 %5077, 6
  store i64 %5078, i64* %PC.i514
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5080 = load i8, i8* %5079, align 1
  %5081 = icmp eq i8 %5080, 0
  %5082 = zext i1 %5081 to i8
  store i8 %5082, i8* %BRANCH_TAKEN, align 1
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5084 = select i1 %5081, i64 %5074, i64 %5076
  store i64 %5084, i64* %5083, align 8
  store %struct.Memory* %loadMem_4119e8, %struct.Memory** %MEMORY
  %loadBr_4119e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4119e8 = icmp eq i8 %loadBr_4119e8, 1
  br i1 %cmpBr_4119e8, label %block_.L_411a51, label %block_4119ee

block_4119ee:                                     ; preds = %block_4119b6
  %loadMem_4119ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 33
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %5087 to i64*
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 1
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 15
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %5093 to i64*
  %5094 = load i64, i64* %RBP.i513
  %5095 = sub i64 %5094, 52
  %5096 = load i64, i64* %PC.i511
  %5097 = add i64 %5096, 4
  store i64 %5097, i64* %PC.i511
  %5098 = inttoptr i64 %5095 to i32*
  %5099 = load i32, i32* %5098
  %5100 = sext i32 %5099 to i64
  store i64 %5100, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_4119ee, %struct.Memory** %MEMORY
  %loadMem_4119f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 33
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 1
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 5
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RAX.i509
  %5111 = mul i64 %5110, 4
  %5112 = add i64 %5111, 11185584
  %5113 = load i64, i64* %PC.i508
  %5114 = add i64 %5113, 7
  store i64 %5114, i64* %PC.i508
  %5115 = inttoptr i64 %5112 to i32*
  %5116 = load i32, i32* %5115
  %5117 = zext i32 %5116 to i64
  store i64 %5117, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_4119f2, %struct.Memory** %MEMORY
  %loadMem_4119f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 5
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %ECX.i507 = bitcast %union.anon* %5123 to i32*
  %5124 = load i32, i32* %ECX.i507
  %5125 = zext i32 %5124 to i64
  %5126 = load i64, i64* %PC.i506
  %5127 = add i64 %5126, 7
  store i64 %5127, i64* %PC.i506
  %5128 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %5129 = sub i32 %5124, %5128
  %5130 = icmp ult i32 %5124, %5128
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5131, i8* %5132, align 1
  %5133 = and i32 %5129, 255
  %5134 = call i32 @llvm.ctpop.i32(i32 %5133)
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  %5137 = xor i8 %5136, 1
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5137, i8* %5138, align 1
  %5139 = xor i32 %5128, %5124
  %5140 = xor i32 %5139, %5129
  %5141 = lshr i32 %5140, 4
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5143, i8* %5144, align 1
  %5145 = icmp eq i32 %5129, 0
  %5146 = zext i1 %5145 to i8
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5146, i8* %5147, align 1
  %5148 = lshr i32 %5129, 31
  %5149 = trunc i32 %5148 to i8
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5149, i8* %5150, align 1
  %5151 = lshr i32 %5124, 31
  %5152 = lshr i32 %5128, 31
  %5153 = xor i32 %5152, %5151
  %5154 = xor i32 %5148, %5151
  %5155 = add i32 %5154, %5153
  %5156 = icmp eq i32 %5155, 2
  %5157 = zext i1 %5156 to i8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5157, i8* %5158, align 1
  store %struct.Memory* %loadMem_4119f9, %struct.Memory** %MEMORY
  %loadMem_411a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 33
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %5161 to i64*
  %5162 = load i64, i64* %PC.i505
  %5163 = add i64 %5162, 81
  %5164 = load i64, i64* %PC.i505
  %5165 = add i64 %5164, 6
  %5166 = load i64, i64* %PC.i505
  %5167 = add i64 %5166, 6
  store i64 %5167, i64* %PC.i505
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5169 = load i8, i8* %5168, align 1
  store i8 %5169, i8* %BRANCH_TAKEN, align 1
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5171 = icmp ne i8 %5169, 0
  %5172 = select i1 %5171, i64 %5163, i64 %5165
  store i64 %5172, i64* %5170, align 8
  store %struct.Memory* %loadMem_411a00, %struct.Memory** %MEMORY
  %loadBr_411a00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a00 = icmp eq i8 %loadBr_411a00, 1
  br i1 %cmpBr_411a00, label %block_.L_411a51, label %block_411a06

block_411a06:                                     ; preds = %block_4119ee
  %loadMem_411a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 33
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 15
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %5178 to i64*
  %5179 = load i64, i64* %RBP.i504
  %5180 = sub i64 %5179, 24
  %5181 = load i64, i64* %PC.i503
  %5182 = add i64 %5181, 5
  store i64 %5182, i64* %PC.i503
  %5183 = inttoptr i64 %5180 to i64*
  %5184 = load i64, i64* %5183
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5185, align 1
  %5186 = trunc i64 %5184 to i32
  %5187 = and i32 %5186, 255
  %5188 = call i32 @llvm.ctpop.i32(i32 %5187)
  %5189 = trunc i32 %5188 to i8
  %5190 = and i8 %5189, 1
  %5191 = xor i8 %5190, 1
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5191, i8* %5192, align 1
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5193, align 1
  %5194 = icmp eq i64 %5184, 0
  %5195 = zext i1 %5194 to i8
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5195, i8* %5196, align 1
  %5197 = lshr i64 %5184, 63
  %5198 = trunc i64 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5198, i8* %5199, align 1
  %5200 = lshr i64 %5184, 63
  %5201 = xor i64 %5197, %5200
  %5202 = add i64 %5201, %5200
  %5203 = icmp eq i64 %5202, 2
  %5204 = zext i1 %5203 to i8
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5204, i8* %5205, align 1
  store %struct.Memory* %loadMem_411a06, %struct.Memory** %MEMORY
  %loadMem_411a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 33
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %5208 to i64*
  %5209 = load i64, i64* %PC.i502
  %5210 = add i64 %5209, 20
  %5211 = load i64, i64* %PC.i502
  %5212 = add i64 %5211, 6
  %5213 = load i64, i64* %PC.i502
  %5214 = add i64 %5213, 6
  store i64 %5214, i64* %PC.i502
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5216 = load i8, i8* %5215, align 1
  store i8 %5216, i8* %BRANCH_TAKEN, align 1
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5218 = icmp ne i8 %5216, 0
  %5219 = select i1 %5218, i64 %5210, i64 %5212
  store i64 %5219, i64* %5217, align 8
  store %struct.Memory* %loadMem_411a0b, %struct.Memory** %MEMORY
  %loadBr_411a0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a0b = icmp eq i8 %loadBr_411a0b, 1
  br i1 %cmpBr_411a0b, label %block_.L_411a1f, label %block_411a11

block_411a11:                                     ; preds = %block_411a06
  %loadMem_411a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 1
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 15
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %5228 to i64*
  %5229 = load i64, i64* %RBP.i501
  %5230 = sub i64 %5229, 52
  %5231 = load i64, i64* %PC.i499
  %5232 = add i64 %5231, 3
  store i64 %5232, i64* %PC.i499
  %5233 = inttoptr i64 %5230 to i32*
  %5234 = load i32, i32* %5233
  %5235 = zext i32 %5234 to i64
  store i64 %5235, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_411a11, %struct.Memory** %MEMORY
  %loadMem_411a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 33
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %5238 to i64*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 5
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 15
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %5244 to i64*
  %5245 = load i64, i64* %RBP.i498
  %5246 = sub i64 %5245, 24
  %5247 = load i64, i64* %PC.i496
  %5248 = add i64 %5247, 4
  store i64 %5248, i64* %PC.i496
  %5249 = inttoptr i64 %5246 to i64*
  %5250 = load i64, i64* %5249
  store i64 %5250, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_411a14, %struct.Memory** %MEMORY
  %loadMem_411a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 33
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %5253 to i64*
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 7
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 15
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %5259 to i64*
  %5260 = load i64, i64* %RBP.i495
  %5261 = sub i64 %5260, 32
  %5262 = load i64, i64* %PC.i493
  %5263 = add i64 %5262, 4
  store i64 %5263, i64* %PC.i493
  %5264 = inttoptr i64 %5261 to i32*
  %5265 = load i32, i32* %5264
  %5266 = sext i32 %5265 to i64
  store i64 %5266, i64* %RDX.i494, align 8
  store %struct.Memory* %loadMem_411a18, %struct.Memory** %MEMORY
  %loadMem_411a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 1
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %EAX.i490 = bitcast %union.anon* %5272 to i32*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 5
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %5275 to i64*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 7
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %5278 to i64*
  %5279 = load i64, i64* %RCX.i491
  %5280 = load i64, i64* %RDX.i492
  %5281 = mul i64 %5280, 4
  %5282 = add i64 %5281, %5279
  %5283 = load i32, i32* %EAX.i490
  %5284 = zext i32 %5283 to i64
  %5285 = load i64, i64* %PC.i489
  %5286 = add i64 %5285, 3
  store i64 %5286, i64* %PC.i489
  %5287 = inttoptr i64 %5282 to i32*
  store i32 %5283, i32* %5287
  store %struct.Memory* %loadMem_411a1c, %struct.Memory** %MEMORY
  br label %block_.L_411a1f

block_.L_411a1f:                                  ; preds = %block_411a11, %block_411a06
  %loadMem_411a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 33
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 1
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %5293 to i64*
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 15
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %5296 to i64*
  %5297 = load i64, i64* %RBP.i488
  %5298 = sub i64 %5297, 32
  %5299 = load i64, i64* %PC.i486
  %5300 = add i64 %5299, 3
  store i64 %5300, i64* %PC.i486
  %5301 = inttoptr i64 %5298 to i32*
  %5302 = load i32, i32* %5301
  %5303 = zext i32 %5302 to i64
  store i64 %5303, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_411a1f, %struct.Memory** %MEMORY
  %loadMem_411a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 1
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %5309 to i64*
  %5310 = load i64, i64* %RAX.i485
  %5311 = load i64, i64* %PC.i484
  %5312 = add i64 %5311, 3
  store i64 %5312, i64* %PC.i484
  %5313 = trunc i64 %5310 to i32
  %5314 = add i32 1, %5313
  %5315 = zext i32 %5314 to i64
  store i64 %5315, i64* %RAX.i485, align 8
  %5316 = icmp ult i32 %5314, %5313
  %5317 = icmp ult i32 %5314, 1
  %5318 = or i1 %5316, %5317
  %5319 = zext i1 %5318 to i8
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5319, i8* %5320, align 1
  %5321 = and i32 %5314, 255
  %5322 = call i32 @llvm.ctpop.i32(i32 %5321)
  %5323 = trunc i32 %5322 to i8
  %5324 = and i8 %5323, 1
  %5325 = xor i8 %5324, 1
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5325, i8* %5326, align 1
  %5327 = xor i64 1, %5310
  %5328 = trunc i64 %5327 to i32
  %5329 = xor i32 %5328, %5314
  %5330 = lshr i32 %5329, 4
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5332, i8* %5333, align 1
  %5334 = icmp eq i32 %5314, 0
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5335, i8* %5336, align 1
  %5337 = lshr i32 %5314, 31
  %5338 = trunc i32 %5337 to i8
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5338, i8* %5339, align 1
  %5340 = lshr i32 %5313, 31
  %5341 = xor i32 %5337, %5340
  %5342 = add i32 %5341, %5337
  %5343 = icmp eq i32 %5342, 2
  %5344 = zext i1 %5343 to i8
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5344, i8* %5345, align 1
  store %struct.Memory* %loadMem_411a22, %struct.Memory** %MEMORY
  %loadMem_411a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 33
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %5348 to i64*
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 1
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %5351 to i32*
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 15
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %5354 to i64*
  %5355 = load i64, i64* %RBP.i483
  %5356 = sub i64 %5355, 32
  %5357 = load i32, i32* %EAX.i482
  %5358 = zext i32 %5357 to i64
  %5359 = load i64, i64* %PC.i481
  %5360 = add i64 %5359, 3
  store i64 %5360, i64* %PC.i481
  %5361 = inttoptr i64 %5356 to i32*
  store i32 %5357, i32* %5361
  store %struct.Memory* %loadMem_411a25, %struct.Memory** %MEMORY
  %loadMem_411a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 33
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 1
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 15
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %5370 to i64*
  %5371 = load i64, i64* %RBP.i480
  %5372 = sub i64 %5371, 32
  %5373 = load i64, i64* %PC.i478
  %5374 = add i64 %5373, 3
  store i64 %5374, i64* %PC.i478
  %5375 = inttoptr i64 %5372 to i32*
  %5376 = load i32, i32* %5375
  %5377 = zext i32 %5376 to i64
  store i64 %5377, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_411a28, %struct.Memory** %MEMORY
  %loadMem_411a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %EAX.i476 = bitcast %union.anon* %5383 to i32*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %5386 to i64*
  %5387 = load i32, i32* %EAX.i476
  %5388 = zext i32 %5387 to i64
  %5389 = load i64, i64* %RBP.i477
  %5390 = sub i64 %5389, 16
  %5391 = load i64, i64* %PC.i475
  %5392 = add i64 %5391, 3
  store i64 %5392, i64* %PC.i475
  %5393 = inttoptr i64 %5390 to i32*
  %5394 = load i32, i32* %5393
  %5395 = sub i32 %5387, %5394
  %5396 = icmp ult i32 %5387, %5394
  %5397 = zext i1 %5396 to i8
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5397, i8* %5398, align 1
  %5399 = and i32 %5395, 255
  %5400 = call i32 @llvm.ctpop.i32(i32 %5399)
  %5401 = trunc i32 %5400 to i8
  %5402 = and i8 %5401, 1
  %5403 = xor i8 %5402, 1
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5403, i8* %5404, align 1
  %5405 = xor i32 %5394, %5387
  %5406 = xor i32 %5405, %5395
  %5407 = lshr i32 %5406, 4
  %5408 = trunc i32 %5407 to i8
  %5409 = and i8 %5408, 1
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5409, i8* %5410, align 1
  %5411 = icmp eq i32 %5395, 0
  %5412 = zext i1 %5411 to i8
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5412, i8* %5413, align 1
  %5414 = lshr i32 %5395, 31
  %5415 = trunc i32 %5414 to i8
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5415, i8* %5416, align 1
  %5417 = lshr i32 %5387, 31
  %5418 = lshr i32 %5394, 31
  %5419 = xor i32 %5418, %5417
  %5420 = xor i32 %5414, %5417
  %5421 = add i32 %5420, %5419
  %5422 = icmp eq i32 %5421, 2
  %5423 = zext i1 %5422 to i8
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5423, i8* %5424, align 1
  store %struct.Memory* %loadMem_411a2b, %struct.Memory** %MEMORY
  %loadMem_411a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 33
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %5427 to i64*
  %5428 = load i64, i64* %PC.i474
  %5429 = add i64 %5428, 17
  %5430 = load i64, i64* %PC.i474
  %5431 = add i64 %5430, 6
  %5432 = load i64, i64* %PC.i474
  %5433 = add i64 %5432, 6
  store i64 %5433, i64* %PC.i474
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5435 = load i8, i8* %5434, align 1
  %5436 = icmp ne i8 %5435, 0
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5438 = load i8, i8* %5437, align 1
  %5439 = icmp ne i8 %5438, 0
  %5440 = xor i1 %5436, %5439
  %5441 = zext i1 %5440 to i8
  store i8 %5441, i8* %BRANCH_TAKEN, align 1
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5443 = select i1 %5440, i64 %5429, i64 %5431
  store i64 %5443, i64* %5442, align 8
  store %struct.Memory* %loadMem_411a2e, %struct.Memory** %MEMORY
  %loadBr_411a2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a2e = icmp eq i8 %loadBr_411a2e, 1
  br i1 %cmpBr_411a2e, label %block_.L_411a3f, label %block_411a34

block_411a34:                                     ; preds = %block_.L_411a1f
  %loadMem_411a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 33
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 1
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %5449 to i64*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 15
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %5452 to i64*
  %5453 = load i64, i64* %RBP.i473
  %5454 = sub i64 %5453, 32
  %5455 = load i64, i64* %PC.i471
  %5456 = add i64 %5455, 3
  store i64 %5456, i64* %PC.i471
  %5457 = inttoptr i64 %5454 to i32*
  %5458 = load i32, i32* %5457
  %5459 = zext i32 %5458 to i64
  store i64 %5459, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_411a34, %struct.Memory** %MEMORY
  %loadMem_411a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 1
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %EAX.i469 = bitcast %union.anon* %5465 to i32*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 15
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %RBP.i470
  %5470 = sub i64 %5469, 4
  %5471 = load i32, i32* %EAX.i469
  %5472 = zext i32 %5471 to i64
  %5473 = load i64, i64* %PC.i468
  %5474 = add i64 %5473, 3
  store i64 %5474, i64* %PC.i468
  %5475 = inttoptr i64 %5470 to i32*
  store i32 %5471, i32* %5475
  store %struct.Memory* %loadMem_411a37, %struct.Memory** %MEMORY
  %loadMem_411a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 33
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %5478 to i64*
  %5479 = load i64, i64* %PC.i467
  %5480 = add i64 %5479, 865
  %5481 = load i64, i64* %PC.i467
  %5482 = add i64 %5481, 5
  store i64 %5482, i64* %PC.i467
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5480, i64* %5483, align 8
  store %struct.Memory* %loadMem_411a3a, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411a3f:                                  ; preds = %block_.L_411a1f
  %loadMem_411a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 33
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %5486 to i64*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 1
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %5489 to i64*
  %5490 = load i64, i64* %PC.i465
  %5491 = add i64 %5490, 7
  store i64 %5491, i64* %PC.i465
  %5492 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %5493 = zext i32 %5492 to i64
  store i64 %5493, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_411a3f, %struct.Memory** %MEMORY
  %loadMem_411a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 33
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %5496 to i64*
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 5
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 15
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %5502 to i64*
  %5503 = load i64, i64* %RBP.i464
  %5504 = sub i64 %5503, 52
  %5505 = load i64, i64* %PC.i462
  %5506 = add i64 %5505, 4
  store i64 %5506, i64* %PC.i462
  %5507 = inttoptr i64 %5504 to i32*
  %5508 = load i32, i32* %5507
  %5509 = sext i32 %5508 to i64
  store i64 %5509, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_411a46, %struct.Memory** %MEMORY
  %loadMem_411a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 33
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %5512 to i64*
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 1
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %5515 to i32*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 5
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %5518 to i64*
  %5519 = load i64, i64* %RCX.i461
  %5520 = mul i64 %5519, 4
  %5521 = add i64 %5520, 11185584
  %5522 = load i32, i32* %EAX.i460
  %5523 = zext i32 %5522 to i64
  %5524 = load i64, i64* %PC.i459
  %5525 = add i64 %5524, 7
  store i64 %5525, i64* %PC.i459
  %5526 = inttoptr i64 %5521 to i32*
  store i32 %5522, i32* %5526
  store %struct.Memory* %loadMem_411a4a, %struct.Memory** %MEMORY
  br label %block_.L_411a51

block_.L_411a51:                                  ; preds = %block_.L_411a3f, %block_4119ee, %block_4119b6
  %loadMem_411a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 33
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %5529 to i64*
  %5530 = load i64, i64* %PC.i458
  %5531 = add i64 %5530, 5
  %5532 = load i64, i64* %PC.i458
  %5533 = add i64 %5532, 5
  store i64 %5533, i64* %PC.i458
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5531, i64* %5534, align 8
  store %struct.Memory* %loadMem_411a51, %struct.Memory** %MEMORY
  br label %block_.L_411a56

block_.L_411a56:                                  ; preds = %block_.L_411a51
  %loadMem_411a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 33
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %5537 to i64*
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 1
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %5540 to i64*
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 15
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %5543 to i64*
  %5544 = load i64, i64* %RBP.i457
  %5545 = sub i64 %5544, 28
  %5546 = load i64, i64* %PC.i455
  %5547 = add i64 %5546, 3
  store i64 %5547, i64* %PC.i455
  %5548 = inttoptr i64 %5545 to i32*
  %5549 = load i32, i32* %5548
  %5550 = zext i32 %5549 to i64
  store i64 %5550, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_411a56, %struct.Memory** %MEMORY
  %loadMem_411a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 1
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %5556 to i64*
  %5557 = load i64, i64* %RAX.i454
  %5558 = load i64, i64* %PC.i453
  %5559 = add i64 %5558, 3
  store i64 %5559, i64* %PC.i453
  %5560 = trunc i64 %5557 to i32
  %5561 = add i32 1, %5560
  %5562 = zext i32 %5561 to i64
  store i64 %5562, i64* %RAX.i454, align 8
  %5563 = icmp ult i32 %5561, %5560
  %5564 = icmp ult i32 %5561, 1
  %5565 = or i1 %5563, %5564
  %5566 = zext i1 %5565 to i8
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5566, i8* %5567, align 1
  %5568 = and i32 %5561, 255
  %5569 = call i32 @llvm.ctpop.i32(i32 %5568)
  %5570 = trunc i32 %5569 to i8
  %5571 = and i8 %5570, 1
  %5572 = xor i8 %5571, 1
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5572, i8* %5573, align 1
  %5574 = xor i64 1, %5557
  %5575 = trunc i64 %5574 to i32
  %5576 = xor i32 %5575, %5561
  %5577 = lshr i32 %5576, 4
  %5578 = trunc i32 %5577 to i8
  %5579 = and i8 %5578, 1
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5579, i8* %5580, align 1
  %5581 = icmp eq i32 %5561, 0
  %5582 = zext i1 %5581 to i8
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5582, i8* %5583, align 1
  %5584 = lshr i32 %5561, 31
  %5585 = trunc i32 %5584 to i8
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5585, i8* %5586, align 1
  %5587 = lshr i32 %5560, 31
  %5588 = xor i32 %5584, %5587
  %5589 = add i32 %5588, %5584
  %5590 = icmp eq i32 %5589, 2
  %5591 = zext i1 %5590 to i8
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5591, i8* %5592, align 1
  store %struct.Memory* %loadMem_411a59, %struct.Memory** %MEMORY
  %loadMem_411a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 1
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %EAX.i451 = bitcast %union.anon* %5598 to i32*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 15
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %5601 to i64*
  %5602 = load i64, i64* %RBP.i452
  %5603 = sub i64 %5602, 28
  %5604 = load i32, i32* %EAX.i451
  %5605 = zext i32 %5604 to i64
  %5606 = load i64, i64* %PC.i450
  %5607 = add i64 %5606, 3
  store i64 %5607, i64* %PC.i450
  %5608 = inttoptr i64 %5603 to i32*
  store i32 %5604, i32* %5608
  store %struct.Memory* %loadMem_411a5c, %struct.Memory** %MEMORY
  %loadMem_411a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 33
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5611 to i64*
  %5612 = load i64, i64* %PC.i449
  %5613 = add i64 %5612, -205
  %5614 = load i64, i64* %PC.i449
  %5615 = add i64 %5614, 5
  store i64 %5615, i64* %PC.i449
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5613, i64* %5616, align 8
  store %struct.Memory* %loadMem_411a5f, %struct.Memory** %MEMORY
  br label %block_.L_411992

block_.L_411a64:                                  ; preds = %block_.L_411992
  %loadMem_411a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 33
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %5619 to i64*
  %5620 = load i64, i64* %PC.i448
  %5621 = add i64 %5620, 5
  %5622 = load i64, i64* %PC.i448
  %5623 = add i64 %5622, 5
  store i64 %5623, i64* %PC.i448
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5621, i64* %5624, align 8
  store %struct.Memory* %loadMem_411a64, %struct.Memory** %MEMORY
  br label %block_.L_411a69

block_.L_411a69:                                  ; preds = %block_.L_411a64, %block_.L_41195e
  %loadMem_411a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 33
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %PC.i447
  %5629 = add i64 %5628, 5
  %5630 = load i64, i64* %PC.i447
  %5631 = add i64 %5630, 5
  store i64 %5631, i64* %PC.i447
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5629, i64* %5632, align 8
  store %struct.Memory* %loadMem_411a69, %struct.Memory** %MEMORY
  br label %block_.L_411a6e

block_.L_411a6e:                                  ; preds = %block_.L_411a69, %block_.L_411942
  %loadMem_411a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 1
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %5638 to i64*
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 15
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %5641 to i64*
  %5642 = load i64, i64* %RBP.i446
  %5643 = sub i64 %5642, 8
  %5644 = load i64, i64* %PC.i444
  %5645 = add i64 %5644, 3
  store i64 %5645, i64* %PC.i444
  %5646 = inttoptr i64 %5643 to i32*
  %5647 = load i32, i32* %5646
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_411a6e, %struct.Memory** %MEMORY
  %loadMem_411a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 33
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %5651 to i64*
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 1
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %5654 to i64*
  %5655 = load i64, i64* %RAX.i443
  %5656 = load i64, i64* %PC.i442
  %5657 = add i64 %5656, 3
  store i64 %5657, i64* %PC.i442
  %5658 = trunc i64 %5655 to i32
  %5659 = sub i32 %5658, 20
  %5660 = zext i32 %5659 to i64
  store i64 %5660, i64* %RAX.i443, align 8
  %5661 = icmp ult i32 %5658, 20
  %5662 = zext i1 %5661 to i8
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5662, i8* %5663, align 1
  %5664 = and i32 %5659, 255
  %5665 = call i32 @llvm.ctpop.i32(i32 %5664)
  %5666 = trunc i32 %5665 to i8
  %5667 = and i8 %5666, 1
  %5668 = xor i8 %5667, 1
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5668, i8* %5669, align 1
  %5670 = xor i64 20, %5655
  %5671 = trunc i64 %5670 to i32
  %5672 = xor i32 %5671, %5659
  %5673 = lshr i32 %5672, 4
  %5674 = trunc i32 %5673 to i8
  %5675 = and i8 %5674, 1
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5675, i8* %5676, align 1
  %5677 = icmp eq i32 %5659, 0
  %5678 = zext i1 %5677 to i8
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5678, i8* %5679, align 1
  %5680 = lshr i32 %5659, 31
  %5681 = trunc i32 %5680 to i8
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5681, i8* %5682, align 1
  %5683 = lshr i32 %5658, 31
  %5684 = xor i32 %5680, %5683
  %5685 = add i32 %5684, %5683
  %5686 = icmp eq i32 %5685, 2
  %5687 = zext i1 %5686 to i8
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5687, i8* %5688, align 1
  store %struct.Memory* %loadMem_411a71, %struct.Memory** %MEMORY
  %loadMem_411a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 33
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %5691 to i64*
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 1
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %5694 to i32*
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 5
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %5697 to i64*
  %5698 = load i32, i32* %EAX.i440
  %5699 = zext i32 %5698 to i64
  %5700 = load i64, i64* %PC.i439
  %5701 = add i64 %5700, 3
  store i64 %5701, i64* %PC.i439
  %5702 = shl i64 %5699, 32
  %5703 = ashr exact i64 %5702, 32
  store i64 %5703, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_411a74, %struct.Memory** %MEMORY
  %loadMem_411a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 33
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %5706 to i64*
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 1
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %5709 to i64*
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 5
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %5712 to i64*
  %5713 = load i64, i64* %RCX.i438
  %5714 = add i64 %5713, 12099168
  %5715 = load i64, i64* %PC.i436
  %5716 = add i64 %5715, 8
  store i64 %5716, i64* %PC.i436
  %5717 = inttoptr i64 %5714 to i8*
  %5718 = load i8, i8* %5717
  %5719 = zext i8 %5718 to i64
  store i64 %5719, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_411a77, %struct.Memory** %MEMORY
  %loadMem_411a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 33
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 1
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %EAX.i435 = bitcast %union.anon* %5725 to i32*
  %5726 = load i32, i32* %EAX.i435
  %5727 = zext i32 %5726 to i64
  %5728 = load i64, i64* %PC.i434
  %5729 = add i64 %5728, 3
  store i64 %5729, i64* %PC.i434
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5730, align 1
  %5731 = and i32 %5726, 255
  %5732 = call i32 @llvm.ctpop.i32(i32 %5731)
  %5733 = trunc i32 %5732 to i8
  %5734 = and i8 %5733, 1
  %5735 = xor i8 %5734, 1
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5735, i8* %5736, align 1
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5737, align 1
  %5738 = icmp eq i32 %5726, 0
  %5739 = zext i1 %5738 to i8
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5739, i8* %5740, align 1
  %5741 = lshr i32 %5726, 31
  %5742 = trunc i32 %5741 to i8
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5742, i8* %5743, align 1
  %5744 = lshr i32 %5726, 31
  %5745 = xor i32 %5741, %5744
  %5746 = add i32 %5745, %5744
  %5747 = icmp eq i32 %5746, 2
  %5748 = zext i1 %5747 to i8
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5748, i8* %5749, align 1
  store %struct.Memory* %loadMem_411a7f, %struct.Memory** %MEMORY
  %loadMem_411a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5751 = getelementptr inbounds %struct.GPR, %struct.GPR* %5750, i32 0, i32 33
  %5752 = getelementptr inbounds %struct.Reg, %struct.Reg* %5751, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5752 to i64*
  %5753 = load i64, i64* %PC.i433
  %5754 = add i64 %5753, 123
  %5755 = load i64, i64* %PC.i433
  %5756 = add i64 %5755, 6
  %5757 = load i64, i64* %PC.i433
  %5758 = add i64 %5757, 6
  store i64 %5758, i64* %PC.i433
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5760 = load i8, i8* %5759, align 1
  %5761 = icmp eq i8 %5760, 0
  %5762 = zext i1 %5761 to i8
  store i8 %5762, i8* %BRANCH_TAKEN, align 1
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5764 = select i1 %5761, i64 %5754, i64 %5756
  store i64 %5764, i64* %5763, align 8
  store %struct.Memory* %loadMem_411a82, %struct.Memory** %MEMORY
  %loadBr_411a82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a82 = icmp eq i8 %loadBr_411a82, 1
  br i1 %cmpBr_411a82, label %block_.L_411afd, label %block_411a88

block_411a88:                                     ; preds = %block_.L_411a6e
  %loadMem_411a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 33
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5767 to i64*
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 1
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %5770 to i64*
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 15
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %5773 to i64*
  %5774 = load i64, i64* %RBP.i432
  %5775 = sub i64 %5774, 8
  %5776 = load i64, i64* %PC.i430
  %5777 = add i64 %5776, 3
  store i64 %5777, i64* %PC.i430
  %5778 = inttoptr i64 %5775 to i32*
  %5779 = load i32, i32* %5778
  %5780 = zext i32 %5779 to i64
  store i64 %5780, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_411a88, %struct.Memory** %MEMORY
  %loadMem_411a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 33
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 1
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RAX.i429
  %5788 = load i64, i64* %PC.i428
  %5789 = add i64 %5788, 3
  store i64 %5789, i64* %PC.i428
  %5790 = trunc i64 %5787 to i32
  %5791 = sub i32 %5790, 20
  %5792 = zext i32 %5791 to i64
  store i64 %5792, i64* %RAX.i429, align 8
  %5793 = icmp ult i32 %5790, 20
  %5794 = zext i1 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5794, i8* %5795, align 1
  %5796 = and i32 %5791, 255
  %5797 = call i32 @llvm.ctpop.i32(i32 %5796)
  %5798 = trunc i32 %5797 to i8
  %5799 = and i8 %5798, 1
  %5800 = xor i8 %5799, 1
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5800, i8* %5801, align 1
  %5802 = xor i64 20, %5787
  %5803 = trunc i64 %5802 to i32
  %5804 = xor i32 %5803, %5791
  %5805 = lshr i32 %5804, 4
  %5806 = trunc i32 %5805 to i8
  %5807 = and i8 %5806, 1
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5807, i8* %5808, align 1
  %5809 = icmp eq i32 %5791, 0
  %5810 = zext i1 %5809 to i8
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5810, i8* %5811, align 1
  %5812 = lshr i32 %5791, 31
  %5813 = trunc i32 %5812 to i8
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5813, i8* %5814, align 1
  %5815 = lshr i32 %5790, 31
  %5816 = xor i32 %5812, %5815
  %5817 = add i32 %5816, %5815
  %5818 = icmp eq i32 %5817, 2
  %5819 = zext i1 %5818 to i8
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5819, i8* %5820, align 1
  store %struct.Memory* %loadMem_411a8b, %struct.Memory** %MEMORY
  %loadMem_411a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 33
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5823 to i64*
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 1
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %5826 to i32*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 5
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %5829 to i64*
  %5830 = load i32, i32* %EAX.i426
  %5831 = zext i32 %5830 to i64
  %5832 = load i64, i64* %PC.i425
  %5833 = add i64 %5832, 3
  store i64 %5833, i64* %PC.i425
  %5834 = shl i64 %5831, 32
  %5835 = ashr exact i64 %5834, 32
  store i64 %5835, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_411a8e, %struct.Memory** %MEMORY
  %loadMem_411a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 33
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %5838 to i64*
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 1
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %5841 to i64*
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 5
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %5844 to i64*
  %5845 = load i64, i64* %RCX.i424
  %5846 = mul i64 %5845, 4
  %5847 = add i64 %5846, 11185584
  %5848 = load i64, i64* %PC.i422
  %5849 = add i64 %5848, 7
  store i64 %5849, i64* %PC.i422
  %5850 = inttoptr i64 %5847 to i32*
  %5851 = load i32, i32* %5850
  %5852 = zext i32 %5851 to i64
  store i64 %5852, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_411a91, %struct.Memory** %MEMORY
  %loadMem_411a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 33
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5855 to i64*
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 1
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %5858 to i32*
  %5859 = load i32, i32* %EAX.i421
  %5860 = zext i32 %5859 to i64
  %5861 = load i64, i64* %PC.i420
  %5862 = add i64 %5861, 7
  store i64 %5862, i64* %PC.i420
  %5863 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %5864 = sub i32 %5859, %5863
  %5865 = icmp ult i32 %5859, %5863
  %5866 = zext i1 %5865 to i8
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5866, i8* %5867, align 1
  %5868 = and i32 %5864, 255
  %5869 = call i32 @llvm.ctpop.i32(i32 %5868)
  %5870 = trunc i32 %5869 to i8
  %5871 = and i8 %5870, 1
  %5872 = xor i8 %5871, 1
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5872, i8* %5873, align 1
  %5874 = xor i32 %5863, %5859
  %5875 = xor i32 %5874, %5864
  %5876 = lshr i32 %5875, 4
  %5877 = trunc i32 %5876 to i8
  %5878 = and i8 %5877, 1
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5878, i8* %5879, align 1
  %5880 = icmp eq i32 %5864, 0
  %5881 = zext i1 %5880 to i8
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5881, i8* %5882, align 1
  %5883 = lshr i32 %5864, 31
  %5884 = trunc i32 %5883 to i8
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5884, i8* %5885, align 1
  %5886 = lshr i32 %5859, 31
  %5887 = lshr i32 %5863, 31
  %5888 = xor i32 %5887, %5886
  %5889 = xor i32 %5883, %5886
  %5890 = add i32 %5889, %5888
  %5891 = icmp eq i32 %5890, 2
  %5892 = zext i1 %5891 to i8
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5892, i8* %5893, align 1
  store %struct.Memory* %loadMem_411a98, %struct.Memory** %MEMORY
  %loadMem_411a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 33
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %5896 to i64*
  %5897 = load i64, i64* %PC.i419
  %5898 = add i64 %5897, 94
  %5899 = load i64, i64* %PC.i419
  %5900 = add i64 %5899, 6
  %5901 = load i64, i64* %PC.i419
  %5902 = add i64 %5901, 6
  store i64 %5902, i64* %PC.i419
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5904 = load i8, i8* %5903, align 1
  store i8 %5904, i8* %BRANCH_TAKEN, align 1
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5906 = icmp ne i8 %5904, 0
  %5907 = select i1 %5906, i64 %5898, i64 %5900
  store i64 %5907, i64* %5905, align 8
  store %struct.Memory* %loadMem_411a9f, %struct.Memory** %MEMORY
  %loadBr_411a9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a9f = icmp eq i8 %loadBr_411a9f, 1
  br i1 %cmpBr_411a9f, label %block_.L_411afd, label %block_411aa5

block_411aa5:                                     ; preds = %block_411a88
  %loadMem_411aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 33
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 15
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %5913 to i64*
  %5914 = load i64, i64* %RBP.i418
  %5915 = sub i64 %5914, 24
  %5916 = load i64, i64* %PC.i417
  %5917 = add i64 %5916, 5
  store i64 %5917, i64* %PC.i417
  %5918 = inttoptr i64 %5915 to i64*
  %5919 = load i64, i64* %5918
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5920, align 1
  %5921 = trunc i64 %5919 to i32
  %5922 = and i32 %5921, 255
  %5923 = call i32 @llvm.ctpop.i32(i32 %5922)
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5926, i8* %5927, align 1
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5928, align 1
  %5929 = icmp eq i64 %5919, 0
  %5930 = zext i1 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5930, i8* %5931, align 1
  %5932 = lshr i64 %5919, 63
  %5933 = trunc i64 %5932 to i8
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5933, i8* %5934, align 1
  %5935 = lshr i64 %5919, 63
  %5936 = xor i64 %5932, %5935
  %5937 = add i64 %5936, %5935
  %5938 = icmp eq i64 %5937, 2
  %5939 = zext i1 %5938 to i8
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5939, i8* %5940, align 1
  store %struct.Memory* %loadMem_411aa5, %struct.Memory** %MEMORY
  %loadMem_411aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %5943 to i64*
  %5944 = load i64, i64* %PC.i416
  %5945 = add i64 %5944, 23
  %5946 = load i64, i64* %PC.i416
  %5947 = add i64 %5946, 6
  %5948 = load i64, i64* %PC.i416
  %5949 = add i64 %5948, 6
  store i64 %5949, i64* %PC.i416
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5951 = load i8, i8* %5950, align 1
  store i8 %5951, i8* %BRANCH_TAKEN, align 1
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5953 = icmp ne i8 %5951, 0
  %5954 = select i1 %5953, i64 %5945, i64 %5947
  store i64 %5954, i64* %5952, align 8
  store %struct.Memory* %loadMem_411aaa, %struct.Memory** %MEMORY
  %loadBr_411aaa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411aaa = icmp eq i8 %loadBr_411aaa, 1
  br i1 %cmpBr_411aaa, label %block_.L_411ac1, label %block_411ab0

block_411ab0:                                     ; preds = %block_411aa5
  %loadMem_411ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 33
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5957 to i64*
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 1
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %5960 to i64*
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 15
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %5963 to i64*
  %5964 = load i64, i64* %RBP.i415
  %5965 = sub i64 %5964, 8
  %5966 = load i64, i64* %PC.i413
  %5967 = add i64 %5966, 3
  store i64 %5967, i64* %PC.i413
  %5968 = inttoptr i64 %5965 to i32*
  %5969 = load i32, i32* %5968
  %5970 = zext i32 %5969 to i64
  store i64 %5970, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_411ab0, %struct.Memory** %MEMORY
  %loadMem_411ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 33
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 1
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %5976 to i64*
  %5977 = load i64, i64* %RAX.i412
  %5978 = load i64, i64* %PC.i411
  %5979 = add i64 %5978, 3
  store i64 %5979, i64* %PC.i411
  %5980 = trunc i64 %5977 to i32
  %5981 = sub i32 %5980, 20
  %5982 = zext i32 %5981 to i64
  store i64 %5982, i64* %RAX.i412, align 8
  %5983 = icmp ult i32 %5980, 20
  %5984 = zext i1 %5983 to i8
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5984, i8* %5985, align 1
  %5986 = and i32 %5981, 255
  %5987 = call i32 @llvm.ctpop.i32(i32 %5986)
  %5988 = trunc i32 %5987 to i8
  %5989 = and i8 %5988, 1
  %5990 = xor i8 %5989, 1
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5990, i8* %5991, align 1
  %5992 = xor i64 20, %5977
  %5993 = trunc i64 %5992 to i32
  %5994 = xor i32 %5993, %5981
  %5995 = lshr i32 %5994, 4
  %5996 = trunc i32 %5995 to i8
  %5997 = and i8 %5996, 1
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5997, i8* %5998, align 1
  %5999 = icmp eq i32 %5981, 0
  %6000 = zext i1 %5999 to i8
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6000, i8* %6001, align 1
  %6002 = lshr i32 %5981, 31
  %6003 = trunc i32 %6002 to i8
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6003, i8* %6004, align 1
  %6005 = lshr i32 %5980, 31
  %6006 = xor i32 %6002, %6005
  %6007 = add i32 %6006, %6005
  %6008 = icmp eq i32 %6007, 2
  %6009 = zext i1 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6009, i8* %6010, align 1
  store %struct.Memory* %loadMem_411ab3, %struct.Memory** %MEMORY
  %loadMem_411ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 33
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %6013 to i64*
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6015 = getelementptr inbounds %struct.GPR, %struct.GPR* %6014, i32 0, i32 5
  %6016 = getelementptr inbounds %struct.Reg, %struct.Reg* %6015, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %6016 to i64*
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 15
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %6019 to i64*
  %6020 = load i64, i64* %RBP.i410
  %6021 = sub i64 %6020, 24
  %6022 = load i64, i64* %PC.i408
  %6023 = add i64 %6022, 4
  store i64 %6023, i64* %PC.i408
  %6024 = inttoptr i64 %6021 to i64*
  %6025 = load i64, i64* %6024
  store i64 %6025, i64* %RCX.i409, align 8
  store %struct.Memory* %loadMem_411ab6, %struct.Memory** %MEMORY
  %loadMem_411aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 33
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %6028 to i64*
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 7
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %6031 to i64*
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 15
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %6034 to i64*
  %6035 = load i64, i64* %RBP.i407
  %6036 = sub i64 %6035, 32
  %6037 = load i64, i64* %PC.i405
  %6038 = add i64 %6037, 4
  store i64 %6038, i64* %PC.i405
  %6039 = inttoptr i64 %6036 to i32*
  %6040 = load i32, i32* %6039
  %6041 = sext i32 %6040 to i64
  store i64 %6041, i64* %RDX.i406, align 8
  store %struct.Memory* %loadMem_411aba, %struct.Memory** %MEMORY
  %loadMem_411abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 33
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %6044 to i64*
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 1
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %6047 to i32*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 5
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 7
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %6053 to i64*
  %6054 = load i64, i64* %RCX.i403
  %6055 = load i64, i64* %RDX.i404
  %6056 = mul i64 %6055, 4
  %6057 = add i64 %6056, %6054
  %6058 = load i32, i32* %EAX.i402
  %6059 = zext i32 %6058 to i64
  %6060 = load i64, i64* %PC.i401
  %6061 = add i64 %6060, 3
  store i64 %6061, i64* %PC.i401
  %6062 = inttoptr i64 %6057 to i32*
  store i32 %6058, i32* %6062
  store %struct.Memory* %loadMem_411abe, %struct.Memory** %MEMORY
  br label %block_.L_411ac1

block_.L_411ac1:                                  ; preds = %block_411ab0, %block_411aa5
  %loadMem_411ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 33
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %6065 to i64*
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 1
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %6068 to i64*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 15
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %6071 to i64*
  %6072 = load i64, i64* %RBP.i400
  %6073 = sub i64 %6072, 32
  %6074 = load i64, i64* %PC.i398
  %6075 = add i64 %6074, 3
  store i64 %6075, i64* %PC.i398
  %6076 = inttoptr i64 %6073 to i32*
  %6077 = load i32, i32* %6076
  %6078 = zext i32 %6077 to i64
  store i64 %6078, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_411ac1, %struct.Memory** %MEMORY
  %loadMem_411ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6080 = getelementptr inbounds %struct.GPR, %struct.GPR* %6079, i32 0, i32 33
  %6081 = getelementptr inbounds %struct.Reg, %struct.Reg* %6080, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %6081 to i64*
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 1
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %6084 to i64*
  %6085 = load i64, i64* %RAX.i397
  %6086 = load i64, i64* %PC.i396
  %6087 = add i64 %6086, 3
  store i64 %6087, i64* %PC.i396
  %6088 = trunc i64 %6085 to i32
  %6089 = add i32 1, %6088
  %6090 = zext i32 %6089 to i64
  store i64 %6090, i64* %RAX.i397, align 8
  %6091 = icmp ult i32 %6089, %6088
  %6092 = icmp ult i32 %6089, 1
  %6093 = or i1 %6091, %6092
  %6094 = zext i1 %6093 to i8
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6094, i8* %6095, align 1
  %6096 = and i32 %6089, 255
  %6097 = call i32 @llvm.ctpop.i32(i32 %6096)
  %6098 = trunc i32 %6097 to i8
  %6099 = and i8 %6098, 1
  %6100 = xor i8 %6099, 1
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6100, i8* %6101, align 1
  %6102 = xor i64 1, %6085
  %6103 = trunc i64 %6102 to i32
  %6104 = xor i32 %6103, %6089
  %6105 = lshr i32 %6104, 4
  %6106 = trunc i32 %6105 to i8
  %6107 = and i8 %6106, 1
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6107, i8* %6108, align 1
  %6109 = icmp eq i32 %6089, 0
  %6110 = zext i1 %6109 to i8
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6110, i8* %6111, align 1
  %6112 = lshr i32 %6089, 31
  %6113 = trunc i32 %6112 to i8
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6113, i8* %6114, align 1
  %6115 = lshr i32 %6088, 31
  %6116 = xor i32 %6112, %6115
  %6117 = add i32 %6116, %6112
  %6118 = icmp eq i32 %6117, 2
  %6119 = zext i1 %6118 to i8
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6119, i8* %6120, align 1
  store %struct.Memory* %loadMem_411ac4, %struct.Memory** %MEMORY
  %loadMem_411ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6122 = getelementptr inbounds %struct.GPR, %struct.GPR* %6121, i32 0, i32 33
  %6123 = getelementptr inbounds %struct.Reg, %struct.Reg* %6122, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %6123 to i64*
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 1
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %6126 to i32*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 15
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %6129 to i64*
  %6130 = load i64, i64* %RBP.i395
  %6131 = sub i64 %6130, 32
  %6132 = load i32, i32* %EAX.i394
  %6133 = zext i32 %6132 to i64
  %6134 = load i64, i64* %PC.i393
  %6135 = add i64 %6134, 3
  store i64 %6135, i64* %PC.i393
  %6136 = inttoptr i64 %6131 to i32*
  store i32 %6132, i32* %6136
  store %struct.Memory* %loadMem_411ac7, %struct.Memory** %MEMORY
  %loadMem_411aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6138 = getelementptr inbounds %struct.GPR, %struct.GPR* %6137, i32 0, i32 33
  %6139 = getelementptr inbounds %struct.Reg, %struct.Reg* %6138, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %6139 to i64*
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6141 = getelementptr inbounds %struct.GPR, %struct.GPR* %6140, i32 0, i32 1
  %6142 = getelementptr inbounds %struct.Reg, %struct.Reg* %6141, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %6142 to i64*
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6144 = getelementptr inbounds %struct.GPR, %struct.GPR* %6143, i32 0, i32 15
  %6145 = getelementptr inbounds %struct.Reg, %struct.Reg* %6144, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %6145 to i64*
  %6146 = load i64, i64* %RBP.i392
  %6147 = sub i64 %6146, 32
  %6148 = load i64, i64* %PC.i390
  %6149 = add i64 %6148, 3
  store i64 %6149, i64* %PC.i390
  %6150 = inttoptr i64 %6147 to i32*
  %6151 = load i32, i32* %6150
  %6152 = zext i32 %6151 to i64
  store i64 %6152, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_411aca, %struct.Memory** %MEMORY
  %loadMem_411acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 33
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %6155 to i64*
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 1
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %EAX.i388 = bitcast %union.anon* %6158 to i32*
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6160 = getelementptr inbounds %struct.GPR, %struct.GPR* %6159, i32 0, i32 15
  %6161 = getelementptr inbounds %struct.Reg, %struct.Reg* %6160, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %6161 to i64*
  %6162 = load i32, i32* %EAX.i388
  %6163 = zext i32 %6162 to i64
  %6164 = load i64, i64* %RBP.i389
  %6165 = sub i64 %6164, 16
  %6166 = load i64, i64* %PC.i387
  %6167 = add i64 %6166, 3
  store i64 %6167, i64* %PC.i387
  %6168 = inttoptr i64 %6165 to i32*
  %6169 = load i32, i32* %6168
  %6170 = sub i32 %6162, %6169
  %6171 = icmp ult i32 %6162, %6169
  %6172 = zext i1 %6171 to i8
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6172, i8* %6173, align 1
  %6174 = and i32 %6170, 255
  %6175 = call i32 @llvm.ctpop.i32(i32 %6174)
  %6176 = trunc i32 %6175 to i8
  %6177 = and i8 %6176, 1
  %6178 = xor i8 %6177, 1
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6178, i8* %6179, align 1
  %6180 = xor i32 %6169, %6162
  %6181 = xor i32 %6180, %6170
  %6182 = lshr i32 %6181, 4
  %6183 = trunc i32 %6182 to i8
  %6184 = and i8 %6183, 1
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6184, i8* %6185, align 1
  %6186 = icmp eq i32 %6170, 0
  %6187 = zext i1 %6186 to i8
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6187, i8* %6188, align 1
  %6189 = lshr i32 %6170, 31
  %6190 = trunc i32 %6189 to i8
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6190, i8* %6191, align 1
  %6192 = lshr i32 %6162, 31
  %6193 = lshr i32 %6169, 31
  %6194 = xor i32 %6193, %6192
  %6195 = xor i32 %6189, %6192
  %6196 = add i32 %6195, %6194
  %6197 = icmp eq i32 %6196, 2
  %6198 = zext i1 %6197 to i8
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6198, i8* %6199, align 1
  store %struct.Memory* %loadMem_411acd, %struct.Memory** %MEMORY
  %loadMem_411ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 33
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %6202 to i64*
  %6203 = load i64, i64* %PC.i386
  %6204 = add i64 %6203, 17
  %6205 = load i64, i64* %PC.i386
  %6206 = add i64 %6205, 6
  %6207 = load i64, i64* %PC.i386
  %6208 = add i64 %6207, 6
  store i64 %6208, i64* %PC.i386
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6210 = load i8, i8* %6209, align 1
  %6211 = icmp ne i8 %6210, 0
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6213 = load i8, i8* %6212, align 1
  %6214 = icmp ne i8 %6213, 0
  %6215 = xor i1 %6211, %6214
  %6216 = zext i1 %6215 to i8
  store i8 %6216, i8* %BRANCH_TAKEN, align 1
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6218 = select i1 %6215, i64 %6204, i64 %6206
  store i64 %6218, i64* %6217, align 8
  store %struct.Memory* %loadMem_411ad0, %struct.Memory** %MEMORY
  %loadBr_411ad0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411ad0 = icmp eq i8 %loadBr_411ad0, 1
  br i1 %cmpBr_411ad0, label %block_.L_411ae1, label %block_411ad6

block_411ad6:                                     ; preds = %block_.L_411ac1
  %loadMem_411ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 1
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %6224 to i64*
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 15
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %6227 to i64*
  %6228 = load i64, i64* %RBP.i385
  %6229 = sub i64 %6228, 32
  %6230 = load i64, i64* %PC.i383
  %6231 = add i64 %6230, 3
  store i64 %6231, i64* %PC.i383
  %6232 = inttoptr i64 %6229 to i32*
  %6233 = load i32, i32* %6232
  %6234 = zext i32 %6233 to i64
  store i64 %6234, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_411ad6, %struct.Memory** %MEMORY
  %loadMem_411ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 33
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 1
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %EAX.i381 = bitcast %union.anon* %6240 to i32*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 15
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %6243 to i64*
  %6244 = load i64, i64* %RBP.i382
  %6245 = sub i64 %6244, 4
  %6246 = load i32, i32* %EAX.i381
  %6247 = zext i32 %6246 to i64
  %6248 = load i64, i64* %PC.i380
  %6249 = add i64 %6248, 3
  store i64 %6249, i64* %PC.i380
  %6250 = inttoptr i64 %6245 to i32*
  store i32 %6246, i32* %6250
  store %struct.Memory* %loadMem_411ad9, %struct.Memory** %MEMORY
  %loadMem_411adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 33
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %6253 to i64*
  %6254 = load i64, i64* %PC.i379
  %6255 = add i64 %6254, 703
  %6256 = load i64, i64* %PC.i379
  %6257 = add i64 %6256, 5
  store i64 %6257, i64* %PC.i379
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6255, i64* %6258, align 8
  store %struct.Memory* %loadMem_411adc, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411ae1:                                  ; preds = %block_.L_411ac1
  %loadMem_411ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6260 = getelementptr inbounds %struct.GPR, %struct.GPR* %6259, i32 0, i32 33
  %6261 = getelementptr inbounds %struct.Reg, %struct.Reg* %6260, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %6261 to i64*
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 1
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %6264 to i64*
  %6265 = load i64, i64* %PC.i377
  %6266 = add i64 %6265, 7
  store i64 %6266, i64* %PC.i377
  %6267 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %6268 = zext i32 %6267 to i64
  store i64 %6268, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_411ae1, %struct.Memory** %MEMORY
  %loadMem_411ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 33
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %6271 to i64*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 5
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %6274 to i64*
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 15
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %6277 to i64*
  %6278 = load i64, i64* %RBP.i376
  %6279 = sub i64 %6278, 8
  %6280 = load i64, i64* %PC.i374
  %6281 = add i64 %6280, 3
  store i64 %6281, i64* %PC.i374
  %6282 = inttoptr i64 %6279 to i32*
  %6283 = load i32, i32* %6282
  %6284 = zext i32 %6283 to i64
  store i64 %6284, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_411ae8, %struct.Memory** %MEMORY
  %loadMem_411aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 33
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %6287 to i64*
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 5
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %6290 to i64*
  %6291 = load i64, i64* %RCX.i373
  %6292 = load i64, i64* %PC.i372
  %6293 = add i64 %6292, 3
  store i64 %6293, i64* %PC.i372
  %6294 = trunc i64 %6291 to i32
  %6295 = sub i32 %6294, 20
  %6296 = zext i32 %6295 to i64
  store i64 %6296, i64* %RCX.i373, align 8
  %6297 = icmp ult i32 %6294, 20
  %6298 = zext i1 %6297 to i8
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6298, i8* %6299, align 1
  %6300 = and i32 %6295, 255
  %6301 = call i32 @llvm.ctpop.i32(i32 %6300)
  %6302 = trunc i32 %6301 to i8
  %6303 = and i8 %6302, 1
  %6304 = xor i8 %6303, 1
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6304, i8* %6305, align 1
  %6306 = xor i64 20, %6291
  %6307 = trunc i64 %6306 to i32
  %6308 = xor i32 %6307, %6295
  %6309 = lshr i32 %6308, 4
  %6310 = trunc i32 %6309 to i8
  %6311 = and i8 %6310, 1
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6311, i8* %6312, align 1
  %6313 = icmp eq i32 %6295, 0
  %6314 = zext i1 %6313 to i8
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6314, i8* %6315, align 1
  %6316 = lshr i32 %6295, 31
  %6317 = trunc i32 %6316 to i8
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6317, i8* %6318, align 1
  %6319 = lshr i32 %6294, 31
  %6320 = xor i32 %6316, %6319
  %6321 = add i32 %6320, %6319
  %6322 = icmp eq i32 %6321, 2
  %6323 = zext i1 %6322 to i8
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6323, i8* %6324, align 1
  store %struct.Memory* %loadMem_411aeb, %struct.Memory** %MEMORY
  %loadMem_411aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 33
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %6327 to i64*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 5
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %ECX.i370 = bitcast %union.anon* %6330 to i32*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 7
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %6333 to i64*
  %6334 = load i32, i32* %ECX.i370
  %6335 = zext i32 %6334 to i64
  %6336 = load i64, i64* %PC.i369
  %6337 = add i64 %6336, 3
  store i64 %6337, i64* %PC.i369
  %6338 = shl i64 %6335, 32
  %6339 = ashr exact i64 %6338, 32
  store i64 %6339, i64* %RDX.i371, align 8
  store %struct.Memory* %loadMem_411aee, %struct.Memory** %MEMORY
  %loadMem_411af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6341 = getelementptr inbounds %struct.GPR, %struct.GPR* %6340, i32 0, i32 33
  %6342 = getelementptr inbounds %struct.Reg, %struct.Reg* %6341, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %6342 to i64*
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6344 = getelementptr inbounds %struct.GPR, %struct.GPR* %6343, i32 0, i32 1
  %6345 = getelementptr inbounds %struct.Reg, %struct.Reg* %6344, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %6345 to i32*
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 7
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %6348 to i64*
  %6349 = load i64, i64* %RDX.i368
  %6350 = mul i64 %6349, 4
  %6351 = add i64 %6350, 11185584
  %6352 = load i32, i32* %EAX.i367
  %6353 = zext i32 %6352 to i64
  %6354 = load i64, i64* %PC.i366
  %6355 = add i64 %6354, 7
  store i64 %6355, i64* %PC.i366
  %6356 = inttoptr i64 %6351 to i32*
  store i32 %6352, i32* %6356
  store %struct.Memory* %loadMem_411af1, %struct.Memory** %MEMORY
  %loadMem_411af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 33
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %PC.i365
  %6361 = add i64 %6360, 277
  %6362 = load i64, i64* %PC.i365
  %6363 = add i64 %6362, 5
  store i64 %6363, i64* %PC.i365
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6361, i64* %6364, align 8
  store %struct.Memory* %loadMem_411af8, %struct.Memory** %MEMORY
  br label %block_.L_411c0d

block_.L_411afd:                                  ; preds = %block_411a88, %block_.L_411a6e
  %loadMem_411afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 33
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 1
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %6370 to i64*
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 15
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %6373 to i64*
  %6374 = load i64, i64* %RBP.i364
  %6375 = sub i64 %6374, 8
  %6376 = load i64, i64* %PC.i362
  %6377 = add i64 %6376, 3
  store i64 %6377, i64* %PC.i362
  %6378 = inttoptr i64 %6375 to i32*
  %6379 = load i32, i32* %6378
  %6380 = zext i32 %6379 to i64
  store i64 %6380, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_411afd, %struct.Memory** %MEMORY
  %loadMem_411b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 33
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %6383 to i64*
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 1
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %6386 to i64*
  %6387 = load i64, i64* %RAX.i361
  %6388 = load i64, i64* %PC.i360
  %6389 = add i64 %6388, 3
  store i64 %6389, i64* %PC.i360
  %6390 = trunc i64 %6387 to i32
  %6391 = sub i32 %6390, 20
  %6392 = zext i32 %6391 to i64
  store i64 %6392, i64* %RAX.i361, align 8
  %6393 = icmp ult i32 %6390, 20
  %6394 = zext i1 %6393 to i8
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6394, i8* %6395, align 1
  %6396 = and i32 %6391, 255
  %6397 = call i32 @llvm.ctpop.i32(i32 %6396)
  %6398 = trunc i32 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = xor i8 %6399, 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6400, i8* %6401, align 1
  %6402 = xor i64 20, %6387
  %6403 = trunc i64 %6402 to i32
  %6404 = xor i32 %6403, %6391
  %6405 = lshr i32 %6404, 4
  %6406 = trunc i32 %6405 to i8
  %6407 = and i8 %6406, 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6407, i8* %6408, align 1
  %6409 = icmp eq i32 %6391, 0
  %6410 = zext i1 %6409 to i8
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6410, i8* %6411, align 1
  %6412 = lshr i32 %6391, 31
  %6413 = trunc i32 %6412 to i8
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6413, i8* %6414, align 1
  %6415 = lshr i32 %6390, 31
  %6416 = xor i32 %6412, %6415
  %6417 = add i32 %6416, %6415
  %6418 = icmp eq i32 %6417, 2
  %6419 = zext i1 %6418 to i8
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6419, i8* %6420, align 1
  store %struct.Memory* %loadMem_411b00, %struct.Memory** %MEMORY
  %loadMem_411b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 33
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 1
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %6426 to i32*
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6428 = getelementptr inbounds %struct.GPR, %struct.GPR* %6427, i32 0, i32 5
  %6429 = getelementptr inbounds %struct.Reg, %struct.Reg* %6428, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %6429 to i64*
  %6430 = load i32, i32* %EAX.i358
  %6431 = zext i32 %6430 to i64
  %6432 = load i64, i64* %PC.i357
  %6433 = add i64 %6432, 3
  store i64 %6433, i64* %PC.i357
  %6434 = shl i64 %6431, 32
  %6435 = ashr exact i64 %6434, 32
  store i64 %6435, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_411b03, %struct.Memory** %MEMORY
  %loadMem_411b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 33
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 1
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %6441 to i64*
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 5
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %6444 to i64*
  %6445 = load i64, i64* %RCX.i356
  %6446 = add i64 %6445, 12099168
  %6447 = load i64, i64* %PC.i354
  %6448 = add i64 %6447, 8
  store i64 %6448, i64* %PC.i354
  %6449 = inttoptr i64 %6446 to i8*
  %6450 = load i8, i8* %6449
  %6451 = zext i8 %6450 to i64
  store i64 %6451, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_411b06, %struct.Memory** %MEMORY
  %loadMem_411b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 33
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 1
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %6457 to i32*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 15
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %6460 to i64*
  %6461 = load i32, i32* %EAX.i352
  %6462 = zext i32 %6461 to i64
  %6463 = load i64, i64* %RBP.i353
  %6464 = sub i64 %6463, 12
  %6465 = load i64, i64* %PC.i351
  %6466 = add i64 %6465, 3
  store i64 %6466, i64* %PC.i351
  %6467 = inttoptr i64 %6464 to i32*
  %6468 = load i32, i32* %6467
  %6469 = sub i32 %6461, %6468
  %6470 = icmp ult i32 %6461, %6468
  %6471 = zext i1 %6470 to i8
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6471, i8* %6472, align 1
  %6473 = and i32 %6469, 255
  %6474 = call i32 @llvm.ctpop.i32(i32 %6473)
  %6475 = trunc i32 %6474 to i8
  %6476 = and i8 %6475, 1
  %6477 = xor i8 %6476, 1
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6477, i8* %6478, align 1
  %6479 = xor i32 %6468, %6461
  %6480 = xor i32 %6479, %6469
  %6481 = lshr i32 %6480, 4
  %6482 = trunc i32 %6481 to i8
  %6483 = and i8 %6482, 1
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6483, i8* %6484, align 1
  %6485 = icmp eq i32 %6469, 0
  %6486 = zext i1 %6485 to i8
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6486, i8* %6487, align 1
  %6488 = lshr i32 %6469, 31
  %6489 = trunc i32 %6488 to i8
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6489, i8* %6490, align 1
  %6491 = lshr i32 %6461, 31
  %6492 = lshr i32 %6468, 31
  %6493 = xor i32 %6492, %6491
  %6494 = xor i32 %6488, %6491
  %6495 = add i32 %6494, %6493
  %6496 = icmp eq i32 %6495, 2
  %6497 = zext i1 %6496 to i8
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6497, i8* %6498, align 1
  store %struct.Memory* %loadMem_411b0e, %struct.Memory** %MEMORY
  %loadMem_411b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 33
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %6501 to i64*
  %6502 = load i64, i64* %PC.i350
  %6503 = add i64 %6502, 247
  %6504 = load i64, i64* %PC.i350
  %6505 = add i64 %6504, 6
  %6506 = load i64, i64* %PC.i350
  %6507 = add i64 %6506, 6
  store i64 %6507, i64* %PC.i350
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6509 = load i8, i8* %6508, align 1
  %6510 = icmp eq i8 %6509, 0
  %6511 = zext i1 %6510 to i8
  store i8 %6511, i8* %BRANCH_TAKEN, align 1
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6513 = select i1 %6510, i64 %6503, i64 %6505
  store i64 %6513, i64* %6512, align 8
  store %struct.Memory* %loadMem_411b11, %struct.Memory** %MEMORY
  %loadBr_411b11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411b11 = icmp eq i8 %loadBr_411b11, 1
  br i1 %cmpBr_411b11, label %block_.L_411c08, label %block_411b17

block_411b17:                                     ; preds = %block_.L_411afd
  %loadMem_411b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 33
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %6516 to i64*
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 1
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %6519 to i64*
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 15
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %6522 to i64*
  %6523 = load i64, i64* %RBP.i349
  %6524 = sub i64 %6523, 8
  %6525 = load i64, i64* %PC.i347
  %6526 = add i64 %6525, 3
  store i64 %6526, i64* %PC.i347
  %6527 = inttoptr i64 %6524 to i32*
  %6528 = load i32, i32* %6527
  %6529 = zext i32 %6528 to i64
  store i64 %6529, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_411b17, %struct.Memory** %MEMORY
  %loadMem_411b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 33
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %6532 to i64*
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6534 = getelementptr inbounds %struct.GPR, %struct.GPR* %6533, i32 0, i32 1
  %6535 = getelementptr inbounds %struct.Reg, %struct.Reg* %6534, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %6535 to i64*
  %6536 = load i64, i64* %RAX.i346
  %6537 = load i64, i64* %PC.i345
  %6538 = add i64 %6537, 3
  store i64 %6538, i64* %PC.i345
  %6539 = trunc i64 %6536 to i32
  %6540 = sub i32 %6539, 20
  %6541 = zext i32 %6540 to i64
  store i64 %6541, i64* %RAX.i346, align 8
  %6542 = icmp ult i32 %6539, 20
  %6543 = zext i1 %6542 to i8
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6543, i8* %6544, align 1
  %6545 = and i32 %6540, 255
  %6546 = call i32 @llvm.ctpop.i32(i32 %6545)
  %6547 = trunc i32 %6546 to i8
  %6548 = and i8 %6547, 1
  %6549 = xor i8 %6548, 1
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6549, i8* %6550, align 1
  %6551 = xor i64 20, %6536
  %6552 = trunc i64 %6551 to i32
  %6553 = xor i32 %6552, %6540
  %6554 = lshr i32 %6553, 4
  %6555 = trunc i32 %6554 to i8
  %6556 = and i8 %6555, 1
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6556, i8* %6557, align 1
  %6558 = icmp eq i32 %6540, 0
  %6559 = zext i1 %6558 to i8
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6559, i8* %6560, align 1
  %6561 = lshr i32 %6540, 31
  %6562 = trunc i32 %6561 to i8
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6562, i8* %6563, align 1
  %6564 = lshr i32 %6539, 31
  %6565 = xor i32 %6561, %6564
  %6566 = add i32 %6565, %6564
  %6567 = icmp eq i32 %6566, 2
  %6568 = zext i1 %6567 to i8
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6568, i8* %6569, align 1
  store %struct.Memory* %loadMem_411b1a, %struct.Memory** %MEMORY
  %loadMem_411b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 33
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %6572 to i64*
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 1
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %6575 to i32*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 5
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %6578 to i64*
  %6579 = load i32, i32* %EAX.i343
  %6580 = zext i32 %6579 to i64
  %6581 = load i64, i64* %PC.i342
  %6582 = add i64 %6581, 3
  store i64 %6582, i64* %PC.i342
  %6583 = shl i64 %6580, 32
  %6584 = ashr exact i64 %6583, 32
  store i64 %6584, i64* %RCX.i344, align 8
  store %struct.Memory* %loadMem_411b1d, %struct.Memory** %MEMORY
  %loadMem_411b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 33
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 1
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %6590 to i64*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 5
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %6593 to i64*
  %6594 = load i64, i64* %RCX.i341
  %6595 = mul i64 %6594, 4
  %6596 = add i64 %6595, 11187184
  %6597 = load i64, i64* %PC.i339
  %6598 = add i64 %6597, 7
  store i64 %6598, i64* %PC.i339
  %6599 = inttoptr i64 %6596 to i32*
  %6600 = load i32, i32* %6599
  %6601 = zext i32 %6600 to i64
  store i64 %6601, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_411b20, %struct.Memory** %MEMORY
  %loadMem_411b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6603 = getelementptr inbounds %struct.GPR, %struct.GPR* %6602, i32 0, i32 33
  %6604 = getelementptr inbounds %struct.Reg, %struct.Reg* %6603, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %6604 to i64*
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6606 = getelementptr inbounds %struct.GPR, %struct.GPR* %6605, i32 0, i32 1
  %6607 = getelementptr inbounds %struct.Reg, %struct.Reg* %6606, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %6607 to i32*
  %6608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6609 = getelementptr inbounds %struct.GPR, %struct.GPR* %6608, i32 0, i32 15
  %6610 = getelementptr inbounds %struct.Reg, %struct.Reg* %6609, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %6610 to i64*
  %6611 = load i64, i64* %RBP.i338
  %6612 = sub i64 %6611, 56
  %6613 = load i32, i32* %EAX.i337
  %6614 = zext i32 %6613 to i64
  %6615 = load i64, i64* %PC.i336
  %6616 = add i64 %6615, 3
  store i64 %6616, i64* %PC.i336
  %6617 = inttoptr i64 %6612 to i32*
  store i32 %6613, i32* %6617
  store %struct.Memory* %loadMem_411b27, %struct.Memory** %MEMORY
  %loadMem_411b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 33
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %6620 to i64*
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 15
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %6623 to i64*
  %6624 = load i64, i64* %RBP.i335
  %6625 = sub i64 %6624, 28
  %6626 = load i64, i64* %PC.i334
  %6627 = add i64 %6626, 7
  store i64 %6627, i64* %PC.i334
  %6628 = inttoptr i64 %6625 to i32*
  store i32 0, i32* %6628
  store %struct.Memory* %loadMem_411b2a, %struct.Memory** %MEMORY
  br label %block_.L_411b31

block_.L_411b31:                                  ; preds = %block_.L_411bf5, %block_411b17
  %loadMem_411b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 33
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %6631 to i64*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 1
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %6634 to i64*
  %6635 = load i64, i64* %PC.i332
  %6636 = add i64 %6635, 10
  store i64 %6636, i64* %PC.i332
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_411b31, %struct.Memory** %MEMORY
  %loadMem_411b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 33
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %6639 to i64*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 5
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %6642 to i64*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 15
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %6645 to i64*
  %6646 = load i64, i64* %RBP.i331
  %6647 = sub i64 %6646, 28
  %6648 = load i64, i64* %PC.i329
  %6649 = add i64 %6648, 3
  store i64 %6649, i64* %PC.i329
  %6650 = inttoptr i64 %6647 to i32*
  %6651 = load i32, i32* %6650
  %6652 = zext i32 %6651 to i64
  store i64 %6652, i64* %RCX.i330, align 8
  store %struct.Memory* %loadMem_411b3b, %struct.Memory** %MEMORY
  %loadMem_411b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %6655 to i64*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 7
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %6658 to i64*
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 15
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %6661 to i64*
  %6662 = load i64, i64* %RBP.i328
  %6663 = sub i64 %6662, 56
  %6664 = load i64, i64* %PC.i326
  %6665 = add i64 %6664, 4
  store i64 %6665, i64* %PC.i326
  %6666 = inttoptr i64 %6663 to i32*
  %6667 = load i32, i32* %6666
  %6668 = sext i32 %6667 to i64
  store i64 %6668, i64* %RDX.i327, align 8
  store %struct.Memory* %loadMem_411b3e, %struct.Memory** %MEMORY
  %loadMem_411b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 33
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %6671 to i64*
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 7
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %6674 to i64*
  %6675 = load i64, i64* %RDX.i325
  %6676 = load i64, i64* %PC.i324
  %6677 = add i64 %6676, 7
  store i64 %6677, i64* %PC.i324
  %6678 = sext i64 %6675 to i128
  %6679 = and i128 %6678, -18446744073709551616
  %6680 = zext i64 %6675 to i128
  %6681 = or i128 %6679, %6680
  %6682 = mul i128 744, %6681
  %6683 = trunc i128 %6682 to i64
  store i64 %6683, i64* %RDX.i325, align 8
  %6684 = sext i64 %6683 to i128
  %6685 = icmp ne i128 %6684, %6682
  %6686 = zext i1 %6685 to i8
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6686, i8* %6687, align 1
  %6688 = trunc i128 %6682 to i32
  %6689 = and i32 %6688, 255
  %6690 = call i32 @llvm.ctpop.i32(i32 %6689)
  %6691 = trunc i32 %6690 to i8
  %6692 = and i8 %6691, 1
  %6693 = xor i8 %6692, 1
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6693, i8* %6694, align 1
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6695, align 1
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6696, align 1
  %6697 = lshr i64 %6683, 63
  %6698 = trunc i64 %6697 to i8
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6698, i8* %6699, align 1
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6686, i8* %6700, align 1
  store %struct.Memory* %loadMem_411b42, %struct.Memory** %MEMORY
  %loadMem_411b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 33
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %6703 to i64*
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 1
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %6706 to i64*
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6708 = getelementptr inbounds %struct.GPR, %struct.GPR* %6707, i32 0, i32 7
  %6709 = getelementptr inbounds %struct.Reg, %struct.Reg* %6708, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %6709 to i64*
  %6710 = load i64, i64* %RAX.i322
  %6711 = load i64, i64* %RDX.i323
  %6712 = load i64, i64* %PC.i321
  %6713 = add i64 %6712, 3
  store i64 %6713, i64* %PC.i321
  %6714 = add i64 %6711, %6710
  store i64 %6714, i64* %RAX.i322, align 8
  %6715 = icmp ult i64 %6714, %6710
  %6716 = icmp ult i64 %6714, %6711
  %6717 = or i1 %6715, %6716
  %6718 = zext i1 %6717 to i8
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6718, i8* %6719, align 1
  %6720 = trunc i64 %6714 to i32
  %6721 = and i32 %6720, 255
  %6722 = call i32 @llvm.ctpop.i32(i32 %6721)
  %6723 = trunc i32 %6722 to i8
  %6724 = and i8 %6723, 1
  %6725 = xor i8 %6724, 1
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6725, i8* %6726, align 1
  %6727 = xor i64 %6711, %6710
  %6728 = xor i64 %6727, %6714
  %6729 = lshr i64 %6728, 4
  %6730 = trunc i64 %6729 to i8
  %6731 = and i8 %6730, 1
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6731, i8* %6732, align 1
  %6733 = icmp eq i64 %6714, 0
  %6734 = zext i1 %6733 to i8
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6734, i8* %6735, align 1
  %6736 = lshr i64 %6714, 63
  %6737 = trunc i64 %6736 to i8
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6737, i8* %6738, align 1
  %6739 = lshr i64 %6710, 63
  %6740 = lshr i64 %6711, 63
  %6741 = xor i64 %6736, %6739
  %6742 = xor i64 %6736, %6740
  %6743 = add i64 %6741, %6742
  %6744 = icmp eq i64 %6743, 2
  %6745 = zext i1 %6744 to i8
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6745, i8* %6746, align 1
  store %struct.Memory* %loadMem_411b49, %struct.Memory** %MEMORY
  %loadMem_411b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 33
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %6749 to i64*
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 5
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %ECX.i319 = bitcast %union.anon* %6752 to i32*
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6754 = getelementptr inbounds %struct.GPR, %struct.GPR* %6753, i32 0, i32 1
  %6755 = getelementptr inbounds %struct.Reg, %struct.Reg* %6754, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %6755 to i64*
  %6756 = load i32, i32* %ECX.i319
  %6757 = zext i32 %6756 to i64
  %6758 = load i64, i64* %RAX.i320
  %6759 = add i64 %6758, 12
  %6760 = load i64, i64* %PC.i318
  %6761 = add i64 %6760, 3
  store i64 %6761, i64* %PC.i318
  %6762 = inttoptr i64 %6759 to i32*
  %6763 = load i32, i32* %6762
  %6764 = sub i32 %6756, %6763
  %6765 = icmp ult i32 %6756, %6763
  %6766 = zext i1 %6765 to i8
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6766, i8* %6767, align 1
  %6768 = and i32 %6764, 255
  %6769 = call i32 @llvm.ctpop.i32(i32 %6768)
  %6770 = trunc i32 %6769 to i8
  %6771 = and i8 %6770, 1
  %6772 = xor i8 %6771, 1
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6772, i8* %6773, align 1
  %6774 = xor i32 %6763, %6756
  %6775 = xor i32 %6774, %6764
  %6776 = lshr i32 %6775, 4
  %6777 = trunc i32 %6776 to i8
  %6778 = and i8 %6777, 1
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6778, i8* %6779, align 1
  %6780 = icmp eq i32 %6764, 0
  %6781 = zext i1 %6780 to i8
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6781, i8* %6782, align 1
  %6783 = lshr i32 %6764, 31
  %6784 = trunc i32 %6783 to i8
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6784, i8* %6785, align 1
  %6786 = lshr i32 %6756, 31
  %6787 = lshr i32 %6763, 31
  %6788 = xor i32 %6787, %6786
  %6789 = xor i32 %6783, %6786
  %6790 = add i32 %6789, %6788
  %6791 = icmp eq i32 %6790, 2
  %6792 = zext i1 %6791 to i8
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6792, i8* %6793, align 1
  store %struct.Memory* %loadMem_411b4c, %struct.Memory** %MEMORY
  %loadMem_411b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 33
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6796 to i64*
  %6797 = load i64, i64* %PC.i317
  %6798 = add i64 %6797, 180
  %6799 = load i64, i64* %PC.i317
  %6800 = add i64 %6799, 6
  %6801 = load i64, i64* %PC.i317
  %6802 = add i64 %6801, 6
  store i64 %6802, i64* %PC.i317
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6804 = load i8, i8* %6803, align 1
  %6805 = icmp ne i8 %6804, 0
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6807 = load i8, i8* %6806, align 1
  %6808 = icmp ne i8 %6807, 0
  %6809 = xor i1 %6805, %6808
  %6810 = xor i1 %6809, true
  %6811 = zext i1 %6810 to i8
  store i8 %6811, i8* %BRANCH_TAKEN, align 1
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6813 = select i1 %6809, i64 %6800, i64 %6798
  store i64 %6813, i64* %6812, align 8
  store %struct.Memory* %loadMem_411b4f, %struct.Memory** %MEMORY
  %loadBr_411b4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411b4f = icmp eq i8 %loadBr_411b4f, 1
  br i1 %cmpBr_411b4f, label %block_.L_411c03, label %block_411b55

block_411b55:                                     ; preds = %block_.L_411b31
  %loadMem_411b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 33
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6816 to i64*
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 1
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %6819 to i64*
  %6820 = load i64, i64* %PC.i315
  %6821 = add i64 %6820, 10
  store i64 %6821, i64* %PC.i315
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_411b55, %struct.Memory** %MEMORY
  %loadMem_411b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 33
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %6824 to i64*
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 5
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %6827 to i64*
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 15
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %6830 to i64*
  %6831 = load i64, i64* %RBP.i314
  %6832 = sub i64 %6831, 56
  %6833 = load i64, i64* %PC.i312
  %6834 = add i64 %6833, 4
  store i64 %6834, i64* %PC.i312
  %6835 = inttoptr i64 %6832 to i32*
  %6836 = load i32, i32* %6835
  %6837 = sext i32 %6836 to i64
  store i64 %6837, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_411b5f, %struct.Memory** %MEMORY
  %loadMem_411b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6839 = getelementptr inbounds %struct.GPR, %struct.GPR* %6838, i32 0, i32 33
  %6840 = getelementptr inbounds %struct.Reg, %struct.Reg* %6839, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %6840 to i64*
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 5
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %6843 to i64*
  %6844 = load i64, i64* %RCX.i311
  %6845 = load i64, i64* %PC.i310
  %6846 = add i64 %6845, 7
  store i64 %6846, i64* %PC.i310
  %6847 = sext i64 %6844 to i128
  %6848 = and i128 %6847, -18446744073709551616
  %6849 = zext i64 %6844 to i128
  %6850 = or i128 %6848, %6849
  %6851 = mul i128 744, %6850
  %6852 = trunc i128 %6851 to i64
  store i64 %6852, i64* %RCX.i311, align 8
  %6853 = sext i64 %6852 to i128
  %6854 = icmp ne i128 %6853, %6851
  %6855 = zext i1 %6854 to i8
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6855, i8* %6856, align 1
  %6857 = trunc i128 %6851 to i32
  %6858 = and i32 %6857, 255
  %6859 = call i32 @llvm.ctpop.i32(i32 %6858)
  %6860 = trunc i32 %6859 to i8
  %6861 = and i8 %6860, 1
  %6862 = xor i8 %6861, 1
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6862, i8* %6863, align 1
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6864, align 1
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6865, align 1
  %6866 = lshr i64 %6852, 63
  %6867 = trunc i64 %6866 to i8
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6867, i8* %6868, align 1
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6855, i8* %6869, align 1
  store %struct.Memory* %loadMem_411b63, %struct.Memory** %MEMORY
  %loadMem_411b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 33
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6872 to i64*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 1
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %6875 to i64*
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 5
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %6878 to i64*
  %6879 = load i64, i64* %RAX.i308
  %6880 = load i64, i64* %RCX.i309
  %6881 = load i64, i64* %PC.i307
  %6882 = add i64 %6881, 3
  store i64 %6882, i64* %PC.i307
  %6883 = add i64 %6880, %6879
  store i64 %6883, i64* %RAX.i308, align 8
  %6884 = icmp ult i64 %6883, %6879
  %6885 = icmp ult i64 %6883, %6880
  %6886 = or i1 %6884, %6885
  %6887 = zext i1 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6887, i8* %6888, align 1
  %6889 = trunc i64 %6883 to i32
  %6890 = and i32 %6889, 255
  %6891 = call i32 @llvm.ctpop.i32(i32 %6890)
  %6892 = trunc i32 %6891 to i8
  %6893 = and i8 %6892, 1
  %6894 = xor i8 %6893, 1
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6894, i8* %6895, align 1
  %6896 = xor i64 %6880, %6879
  %6897 = xor i64 %6896, %6883
  %6898 = lshr i64 %6897, 4
  %6899 = trunc i64 %6898 to i8
  %6900 = and i8 %6899, 1
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6900, i8* %6901, align 1
  %6902 = icmp eq i64 %6883, 0
  %6903 = zext i1 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6903, i8* %6904, align 1
  %6905 = lshr i64 %6883, 63
  %6906 = trunc i64 %6905 to i8
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6906, i8* %6907, align 1
  %6908 = lshr i64 %6879, 63
  %6909 = lshr i64 %6880, 63
  %6910 = xor i64 %6905, %6908
  %6911 = xor i64 %6905, %6909
  %6912 = add i64 %6910, %6911
  %6913 = icmp eq i64 %6912, 2
  %6914 = zext i1 %6913 to i8
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6914, i8* %6915, align 1
  store %struct.Memory* %loadMem_411b6a, %struct.Memory** %MEMORY
  %loadMem_411b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 33
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6918 to i64*
  %6919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6920 = getelementptr inbounds %struct.GPR, %struct.GPR* %6919, i32 0, i32 5
  %6921 = getelementptr inbounds %struct.Reg, %struct.Reg* %6920, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %6921 to i64*
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6923 = getelementptr inbounds %struct.GPR, %struct.GPR* %6922, i32 0, i32 15
  %6924 = getelementptr inbounds %struct.Reg, %struct.Reg* %6923, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6924 to i64*
  %6925 = load i64, i64* %RBP.i306
  %6926 = sub i64 %6925, 28
  %6927 = load i64, i64* %PC.i304
  %6928 = add i64 %6927, 4
  store i64 %6928, i64* %PC.i304
  %6929 = inttoptr i64 %6926 to i32*
  %6930 = load i32, i32* %6929
  %6931 = sext i32 %6930 to i64
  store i64 %6931, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_411b6d, %struct.Memory** %MEMORY
  %loadMem_411b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 33
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %6934 to i64*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 1
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %6937 to i64*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 5
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %6940 to i64*
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 7
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %6943 to i64*
  %6944 = load i64, i64* %RAX.i301
  %6945 = load i64, i64* %RCX.i302
  %6946 = mul i64 %6945, 4
  %6947 = add i64 %6944, 16
  %6948 = add i64 %6947, %6946
  %6949 = load i64, i64* %PC.i300
  %6950 = add i64 %6949, 4
  store i64 %6950, i64* %PC.i300
  %6951 = inttoptr i64 %6948 to i32*
  %6952 = load i32, i32* %6951
  %6953 = zext i32 %6952 to i64
  store i64 %6953, i64* %RDX.i303, align 8
  store %struct.Memory* %loadMem_411b71, %struct.Memory** %MEMORY
  %loadMem_411b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 33
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6956 to i64*
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6958 = getelementptr inbounds %struct.GPR, %struct.GPR* %6957, i32 0, i32 7
  %6959 = getelementptr inbounds %struct.Reg, %struct.Reg* %6958, i32 0, i32 0
  %EDX.i298 = bitcast %union.anon* %6959 to i32*
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6961 = getelementptr inbounds %struct.GPR, %struct.GPR* %6960, i32 0, i32 15
  %6962 = getelementptr inbounds %struct.Reg, %struct.Reg* %6961, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %6962 to i64*
  %6963 = load i64, i64* %RBP.i299
  %6964 = sub i64 %6963, 60
  %6965 = load i32, i32* %EDX.i298
  %6966 = zext i32 %6965 to i64
  %6967 = load i64, i64* %PC.i297
  %6968 = add i64 %6967, 3
  store i64 %6968, i64* %PC.i297
  %6969 = inttoptr i64 %6964 to i32*
  store i32 %6965, i32* %6969
  store %struct.Memory* %loadMem_411b75, %struct.Memory** %MEMORY
  %loadMem_411b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 33
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %6972 to i64*
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 1
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %6975 to i64*
  %6976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6977 = getelementptr inbounds %struct.GPR, %struct.GPR* %6976, i32 0, i32 15
  %6978 = getelementptr inbounds %struct.Reg, %struct.Reg* %6977, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %6978 to i64*
  %6979 = load i64, i64* %RBP.i296
  %6980 = sub i64 %6979, 60
  %6981 = load i64, i64* %PC.i294
  %6982 = add i64 %6981, 4
  store i64 %6982, i64* %PC.i294
  %6983 = inttoptr i64 %6980 to i32*
  %6984 = load i32, i32* %6983
  %6985 = sext i32 %6984 to i64
  store i64 %6985, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_411b78, %struct.Memory** %MEMORY
  %loadMem_411b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 33
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %6988 to i64*
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 1
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 7
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %6994 to i64*
  %6995 = load i64, i64* %RAX.i292
  %6996 = add i64 %6995, 12099168
  %6997 = load i64, i64* %PC.i291
  %6998 = add i64 %6997, 8
  store i64 %6998, i64* %PC.i291
  %6999 = inttoptr i64 %6996 to i8*
  %7000 = load i8, i8* %6999
  %7001 = zext i8 %7000 to i64
  store i64 %7001, i64* %RDX.i293, align 8
  store %struct.Memory* %loadMem_411b7c, %struct.Memory** %MEMORY
  %loadMem_411b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 33
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %7004 to i64*
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 7
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %EDX.i290 = bitcast %union.anon* %7007 to i32*
  %7008 = load i32, i32* %EDX.i290
  %7009 = zext i32 %7008 to i64
  %7010 = load i64, i64* %PC.i289
  %7011 = add i64 %7010, 3
  store i64 %7011, i64* %PC.i289
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7012, align 1
  %7013 = and i32 %7008, 255
  %7014 = call i32 @llvm.ctpop.i32(i32 %7013)
  %7015 = trunc i32 %7014 to i8
  %7016 = and i8 %7015, 1
  %7017 = xor i8 %7016, 1
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7017, i8* %7018, align 1
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7019, align 1
  %7020 = icmp eq i32 %7008, 0
  %7021 = zext i1 %7020 to i8
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7021, i8* %7022, align 1
  %7023 = lshr i32 %7008, 31
  %7024 = trunc i32 %7023 to i8
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7024, i8* %7025, align 1
  %7026 = lshr i32 %7008, 31
  %7027 = xor i32 %7023, %7026
  %7028 = add i32 %7027, %7026
  %7029 = icmp eq i32 %7028, 2
  %7030 = zext i1 %7029 to i8
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7030, i8* %7031, align 1
  store %struct.Memory* %loadMem_411b84, %struct.Memory** %MEMORY
  %loadMem_411b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 33
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %7034 to i64*
  %7035 = load i64, i64* %PC.i288
  %7036 = add i64 %7035, 105
  %7037 = load i64, i64* %PC.i288
  %7038 = add i64 %7037, 6
  %7039 = load i64, i64* %PC.i288
  %7040 = add i64 %7039, 6
  store i64 %7040, i64* %PC.i288
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7042 = load i8, i8* %7041, align 1
  %7043 = icmp eq i8 %7042, 0
  %7044 = zext i1 %7043 to i8
  store i8 %7044, i8* %BRANCH_TAKEN, align 1
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7046 = select i1 %7043, i64 %7036, i64 %7038
  store i64 %7046, i64* %7045, align 8
  store %struct.Memory* %loadMem_411b87, %struct.Memory** %MEMORY
  %loadBr_411b87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411b87 = icmp eq i8 %loadBr_411b87, 1
  br i1 %cmpBr_411b87, label %block_.L_411bf0, label %block_411b8d

block_411b8d:                                     ; preds = %block_411b55
  %loadMem_411b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 33
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %7049 to i64*
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7051 = getelementptr inbounds %struct.GPR, %struct.GPR* %7050, i32 0, i32 1
  %7052 = getelementptr inbounds %struct.Reg, %struct.Reg* %7051, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %7052 to i64*
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7054 = getelementptr inbounds %struct.GPR, %struct.GPR* %7053, i32 0, i32 15
  %7055 = getelementptr inbounds %struct.Reg, %struct.Reg* %7054, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %7055 to i64*
  %7056 = load i64, i64* %RBP.i287
  %7057 = sub i64 %7056, 60
  %7058 = load i64, i64* %PC.i285
  %7059 = add i64 %7058, 4
  store i64 %7059, i64* %PC.i285
  %7060 = inttoptr i64 %7057 to i32*
  %7061 = load i32, i32* %7060
  %7062 = sext i32 %7061 to i64
  store i64 %7062, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_411b8d, %struct.Memory** %MEMORY
  %loadMem_411b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 33
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %7065 to i64*
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 1
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %7068 to i64*
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 5
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %7071 to i64*
  %7072 = load i64, i64* %RAX.i283
  %7073 = mul i64 %7072, 4
  %7074 = add i64 %7073, 11185584
  %7075 = load i64, i64* %PC.i282
  %7076 = add i64 %7075, 7
  store i64 %7076, i64* %PC.i282
  %7077 = inttoptr i64 %7074 to i32*
  %7078 = load i32, i32* %7077
  %7079 = zext i32 %7078 to i64
  store i64 %7079, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_411b91, %struct.Memory** %MEMORY
  %loadMem_411b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7081 = getelementptr inbounds %struct.GPR, %struct.GPR* %7080, i32 0, i32 33
  %7082 = getelementptr inbounds %struct.Reg, %struct.Reg* %7081, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %7082 to i64*
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7084 = getelementptr inbounds %struct.GPR, %struct.GPR* %7083, i32 0, i32 5
  %7085 = getelementptr inbounds %struct.Reg, %struct.Reg* %7084, i32 0, i32 0
  %ECX.i281 = bitcast %union.anon* %7085 to i32*
  %7086 = load i32, i32* %ECX.i281
  %7087 = zext i32 %7086 to i64
  %7088 = load i64, i64* %PC.i280
  %7089 = add i64 %7088, 7
  store i64 %7089, i64* %PC.i280
  %7090 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %7091 = sub i32 %7086, %7090
  %7092 = icmp ult i32 %7086, %7090
  %7093 = zext i1 %7092 to i8
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7093, i8* %7094, align 1
  %7095 = and i32 %7091, 255
  %7096 = call i32 @llvm.ctpop.i32(i32 %7095)
  %7097 = trunc i32 %7096 to i8
  %7098 = and i8 %7097, 1
  %7099 = xor i8 %7098, 1
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7099, i8* %7100, align 1
  %7101 = xor i32 %7090, %7086
  %7102 = xor i32 %7101, %7091
  %7103 = lshr i32 %7102, 4
  %7104 = trunc i32 %7103 to i8
  %7105 = and i8 %7104, 1
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7105, i8* %7106, align 1
  %7107 = icmp eq i32 %7091, 0
  %7108 = zext i1 %7107 to i8
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7108, i8* %7109, align 1
  %7110 = lshr i32 %7091, 31
  %7111 = trunc i32 %7110 to i8
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7111, i8* %7112, align 1
  %7113 = lshr i32 %7086, 31
  %7114 = lshr i32 %7090, 31
  %7115 = xor i32 %7114, %7113
  %7116 = xor i32 %7110, %7113
  %7117 = add i32 %7116, %7115
  %7118 = icmp eq i32 %7117, 2
  %7119 = zext i1 %7118 to i8
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7119, i8* %7120, align 1
  store %struct.Memory* %loadMem_411b98, %struct.Memory** %MEMORY
  %loadMem_411b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 33
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %7123 to i64*
  %7124 = load i64, i64* %PC.i279
  %7125 = add i64 %7124, 81
  %7126 = load i64, i64* %PC.i279
  %7127 = add i64 %7126, 6
  %7128 = load i64, i64* %PC.i279
  %7129 = add i64 %7128, 6
  store i64 %7129, i64* %PC.i279
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7131 = load i8, i8* %7130, align 1
  store i8 %7131, i8* %BRANCH_TAKEN, align 1
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7133 = icmp ne i8 %7131, 0
  %7134 = select i1 %7133, i64 %7125, i64 %7127
  store i64 %7134, i64* %7132, align 8
  store %struct.Memory* %loadMem_411b9f, %struct.Memory** %MEMORY
  %loadBr_411b9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411b9f = icmp eq i8 %loadBr_411b9f, 1
  br i1 %cmpBr_411b9f, label %block_.L_411bf0, label %block_411ba5

block_411ba5:                                     ; preds = %block_411b8d
  %loadMem_411ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 15
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %7140 to i64*
  %7141 = load i64, i64* %RBP.i278
  %7142 = sub i64 %7141, 24
  %7143 = load i64, i64* %PC.i277
  %7144 = add i64 %7143, 5
  store i64 %7144, i64* %PC.i277
  %7145 = inttoptr i64 %7142 to i64*
  %7146 = load i64, i64* %7145
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7147, align 1
  %7148 = trunc i64 %7146 to i32
  %7149 = and i32 %7148, 255
  %7150 = call i32 @llvm.ctpop.i32(i32 %7149)
  %7151 = trunc i32 %7150 to i8
  %7152 = and i8 %7151, 1
  %7153 = xor i8 %7152, 1
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7153, i8* %7154, align 1
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7155, align 1
  %7156 = icmp eq i64 %7146, 0
  %7157 = zext i1 %7156 to i8
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7157, i8* %7158, align 1
  %7159 = lshr i64 %7146, 63
  %7160 = trunc i64 %7159 to i8
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7160, i8* %7161, align 1
  %7162 = lshr i64 %7146, 63
  %7163 = xor i64 %7159, %7162
  %7164 = add i64 %7163, %7162
  %7165 = icmp eq i64 %7164, 2
  %7166 = zext i1 %7165 to i8
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7166, i8* %7167, align 1
  store %struct.Memory* %loadMem_411ba5, %struct.Memory** %MEMORY
  %loadMem_411baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 33
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %7170 to i64*
  %7171 = load i64, i64* %PC.i276
  %7172 = add i64 %7171, 20
  %7173 = load i64, i64* %PC.i276
  %7174 = add i64 %7173, 6
  %7175 = load i64, i64* %PC.i276
  %7176 = add i64 %7175, 6
  store i64 %7176, i64* %PC.i276
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7178 = load i8, i8* %7177, align 1
  store i8 %7178, i8* %BRANCH_TAKEN, align 1
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7180 = icmp ne i8 %7178, 0
  %7181 = select i1 %7180, i64 %7172, i64 %7174
  store i64 %7181, i64* %7179, align 8
  store %struct.Memory* %loadMem_411baa, %struct.Memory** %MEMORY
  %loadBr_411baa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411baa = icmp eq i8 %loadBr_411baa, 1
  br i1 %cmpBr_411baa, label %block_.L_411bbe, label %block_411bb0

block_411bb0:                                     ; preds = %block_411ba5
  %loadMem_411bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 33
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %7184 to i64*
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 1
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %7187 to i64*
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7189 = getelementptr inbounds %struct.GPR, %struct.GPR* %7188, i32 0, i32 15
  %7190 = getelementptr inbounds %struct.Reg, %struct.Reg* %7189, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %7190 to i64*
  %7191 = load i64, i64* %RBP.i275
  %7192 = sub i64 %7191, 60
  %7193 = load i64, i64* %PC.i273
  %7194 = add i64 %7193, 3
  store i64 %7194, i64* %PC.i273
  %7195 = inttoptr i64 %7192 to i32*
  %7196 = load i32, i32* %7195
  %7197 = zext i32 %7196 to i64
  store i64 %7197, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_411bb0, %struct.Memory** %MEMORY
  %loadMem_411bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 33
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %7200 to i64*
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 5
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %7203 to i64*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 15
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %7206 to i64*
  %7207 = load i64, i64* %RBP.i272
  %7208 = sub i64 %7207, 24
  %7209 = load i64, i64* %PC.i270
  %7210 = add i64 %7209, 4
  store i64 %7210, i64* %PC.i270
  %7211 = inttoptr i64 %7208 to i64*
  %7212 = load i64, i64* %7211
  store i64 %7212, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_411bb3, %struct.Memory** %MEMORY
  %loadMem_411bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7214 = getelementptr inbounds %struct.GPR, %struct.GPR* %7213, i32 0, i32 33
  %7215 = getelementptr inbounds %struct.Reg, %struct.Reg* %7214, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %7215 to i64*
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7217 = getelementptr inbounds %struct.GPR, %struct.GPR* %7216, i32 0, i32 7
  %7218 = getelementptr inbounds %struct.Reg, %struct.Reg* %7217, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %7218 to i64*
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7220 = getelementptr inbounds %struct.GPR, %struct.GPR* %7219, i32 0, i32 15
  %7221 = getelementptr inbounds %struct.Reg, %struct.Reg* %7220, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %7221 to i64*
  %7222 = load i64, i64* %RBP.i269
  %7223 = sub i64 %7222, 32
  %7224 = load i64, i64* %PC.i267
  %7225 = add i64 %7224, 4
  store i64 %7225, i64* %PC.i267
  %7226 = inttoptr i64 %7223 to i32*
  %7227 = load i32, i32* %7226
  %7228 = sext i32 %7227 to i64
  store i64 %7228, i64* %RDX.i268, align 8
  store %struct.Memory* %loadMem_411bb7, %struct.Memory** %MEMORY
  %loadMem_411bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 33
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 1
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %7234 to i32*
  %7235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7236 = getelementptr inbounds %struct.GPR, %struct.GPR* %7235, i32 0, i32 5
  %7237 = getelementptr inbounds %struct.Reg, %struct.Reg* %7236, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %7237 to i64*
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7239 = getelementptr inbounds %struct.GPR, %struct.GPR* %7238, i32 0, i32 7
  %7240 = getelementptr inbounds %struct.Reg, %struct.Reg* %7239, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %7240 to i64*
  %7241 = load i64, i64* %RCX.i265
  %7242 = load i64, i64* %RDX.i266
  %7243 = mul i64 %7242, 4
  %7244 = add i64 %7243, %7241
  %7245 = load i32, i32* %EAX.i264
  %7246 = zext i32 %7245 to i64
  %7247 = load i64, i64* %PC.i263
  %7248 = add i64 %7247, 3
  store i64 %7248, i64* %PC.i263
  %7249 = inttoptr i64 %7244 to i32*
  store i32 %7245, i32* %7249
  store %struct.Memory* %loadMem_411bbb, %struct.Memory** %MEMORY
  br label %block_.L_411bbe

block_.L_411bbe:                                  ; preds = %block_411bb0, %block_411ba5
  %loadMem_411bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 33
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %7252 to i64*
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7254 = getelementptr inbounds %struct.GPR, %struct.GPR* %7253, i32 0, i32 1
  %7255 = getelementptr inbounds %struct.Reg, %struct.Reg* %7254, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %7255 to i64*
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 15
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %7258 to i64*
  %7259 = load i64, i64* %RBP.i262
  %7260 = sub i64 %7259, 32
  %7261 = load i64, i64* %PC.i260
  %7262 = add i64 %7261, 3
  store i64 %7262, i64* %PC.i260
  %7263 = inttoptr i64 %7260 to i32*
  %7264 = load i32, i32* %7263
  %7265 = zext i32 %7264 to i64
  store i64 %7265, i64* %RAX.i261, align 8
  store %struct.Memory* %loadMem_411bbe, %struct.Memory** %MEMORY
  %loadMem_411bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 33
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 1
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %7271 to i64*
  %7272 = load i64, i64* %RAX.i259
  %7273 = load i64, i64* %PC.i258
  %7274 = add i64 %7273, 3
  store i64 %7274, i64* %PC.i258
  %7275 = trunc i64 %7272 to i32
  %7276 = add i32 1, %7275
  %7277 = zext i32 %7276 to i64
  store i64 %7277, i64* %RAX.i259, align 8
  %7278 = icmp ult i32 %7276, %7275
  %7279 = icmp ult i32 %7276, 1
  %7280 = or i1 %7278, %7279
  %7281 = zext i1 %7280 to i8
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7281, i8* %7282, align 1
  %7283 = and i32 %7276, 255
  %7284 = call i32 @llvm.ctpop.i32(i32 %7283)
  %7285 = trunc i32 %7284 to i8
  %7286 = and i8 %7285, 1
  %7287 = xor i8 %7286, 1
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7287, i8* %7288, align 1
  %7289 = xor i64 1, %7272
  %7290 = trunc i64 %7289 to i32
  %7291 = xor i32 %7290, %7276
  %7292 = lshr i32 %7291, 4
  %7293 = trunc i32 %7292 to i8
  %7294 = and i8 %7293, 1
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7294, i8* %7295, align 1
  %7296 = icmp eq i32 %7276, 0
  %7297 = zext i1 %7296 to i8
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7297, i8* %7298, align 1
  %7299 = lshr i32 %7276, 31
  %7300 = trunc i32 %7299 to i8
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7300, i8* %7301, align 1
  %7302 = lshr i32 %7275, 31
  %7303 = xor i32 %7299, %7302
  %7304 = add i32 %7303, %7299
  %7305 = icmp eq i32 %7304, 2
  %7306 = zext i1 %7305 to i8
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7306, i8* %7307, align 1
  store %struct.Memory* %loadMem_411bc1, %struct.Memory** %MEMORY
  %loadMem_411bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 33
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 1
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %7313 to i32*
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 15
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %7316 to i64*
  %7317 = load i64, i64* %RBP.i257
  %7318 = sub i64 %7317, 32
  %7319 = load i32, i32* %EAX.i256
  %7320 = zext i32 %7319 to i64
  %7321 = load i64, i64* %PC.i255
  %7322 = add i64 %7321, 3
  store i64 %7322, i64* %PC.i255
  %7323 = inttoptr i64 %7318 to i32*
  store i32 %7319, i32* %7323
  store %struct.Memory* %loadMem_411bc4, %struct.Memory** %MEMORY
  %loadMem_411bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7325 = getelementptr inbounds %struct.GPR, %struct.GPR* %7324, i32 0, i32 33
  %7326 = getelementptr inbounds %struct.Reg, %struct.Reg* %7325, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %7326 to i64*
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 1
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 15
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %7332 to i64*
  %7333 = load i64, i64* %RBP.i254
  %7334 = sub i64 %7333, 32
  %7335 = load i64, i64* %PC.i252
  %7336 = add i64 %7335, 3
  store i64 %7336, i64* %PC.i252
  %7337 = inttoptr i64 %7334 to i32*
  %7338 = load i32, i32* %7337
  %7339 = zext i32 %7338 to i64
  store i64 %7339, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_411bc7, %struct.Memory** %MEMORY
  %loadMem_411bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7341 = getelementptr inbounds %struct.GPR, %struct.GPR* %7340, i32 0, i32 33
  %7342 = getelementptr inbounds %struct.Reg, %struct.Reg* %7341, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %7342 to i64*
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 1
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %7345 to i32*
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 15
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %7348 to i64*
  %7349 = load i32, i32* %EAX.i250
  %7350 = zext i32 %7349 to i64
  %7351 = load i64, i64* %RBP.i251
  %7352 = sub i64 %7351, 16
  %7353 = load i64, i64* %PC.i249
  %7354 = add i64 %7353, 3
  store i64 %7354, i64* %PC.i249
  %7355 = inttoptr i64 %7352 to i32*
  %7356 = load i32, i32* %7355
  %7357 = sub i32 %7349, %7356
  %7358 = icmp ult i32 %7349, %7356
  %7359 = zext i1 %7358 to i8
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7359, i8* %7360, align 1
  %7361 = and i32 %7357, 255
  %7362 = call i32 @llvm.ctpop.i32(i32 %7361)
  %7363 = trunc i32 %7362 to i8
  %7364 = and i8 %7363, 1
  %7365 = xor i8 %7364, 1
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7365, i8* %7366, align 1
  %7367 = xor i32 %7356, %7349
  %7368 = xor i32 %7367, %7357
  %7369 = lshr i32 %7368, 4
  %7370 = trunc i32 %7369 to i8
  %7371 = and i8 %7370, 1
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7371, i8* %7372, align 1
  %7373 = icmp eq i32 %7357, 0
  %7374 = zext i1 %7373 to i8
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7374, i8* %7375, align 1
  %7376 = lshr i32 %7357, 31
  %7377 = trunc i32 %7376 to i8
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7377, i8* %7378, align 1
  %7379 = lshr i32 %7349, 31
  %7380 = lshr i32 %7356, 31
  %7381 = xor i32 %7380, %7379
  %7382 = xor i32 %7376, %7379
  %7383 = add i32 %7382, %7381
  %7384 = icmp eq i32 %7383, 2
  %7385 = zext i1 %7384 to i8
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7385, i8* %7386, align 1
  store %struct.Memory* %loadMem_411bca, %struct.Memory** %MEMORY
  %loadMem_411bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7388 = getelementptr inbounds %struct.GPR, %struct.GPR* %7387, i32 0, i32 33
  %7389 = getelementptr inbounds %struct.Reg, %struct.Reg* %7388, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %7389 to i64*
  %7390 = load i64, i64* %PC.i248
  %7391 = add i64 %7390, 17
  %7392 = load i64, i64* %PC.i248
  %7393 = add i64 %7392, 6
  %7394 = load i64, i64* %PC.i248
  %7395 = add i64 %7394, 6
  store i64 %7395, i64* %PC.i248
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7397 = load i8, i8* %7396, align 1
  %7398 = icmp ne i8 %7397, 0
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7400 = load i8, i8* %7399, align 1
  %7401 = icmp ne i8 %7400, 0
  %7402 = xor i1 %7398, %7401
  %7403 = zext i1 %7402 to i8
  store i8 %7403, i8* %BRANCH_TAKEN, align 1
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7405 = select i1 %7402, i64 %7391, i64 %7393
  store i64 %7405, i64* %7404, align 8
  store %struct.Memory* %loadMem_411bcd, %struct.Memory** %MEMORY
  %loadBr_411bcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411bcd = icmp eq i8 %loadBr_411bcd, 1
  br i1 %cmpBr_411bcd, label %block_.L_411bde, label %block_411bd3

block_411bd3:                                     ; preds = %block_.L_411bbe
  %loadMem_411bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 33
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 1
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %7411 to i64*
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7413 = getelementptr inbounds %struct.GPR, %struct.GPR* %7412, i32 0, i32 15
  %7414 = getelementptr inbounds %struct.Reg, %struct.Reg* %7413, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %7414 to i64*
  %7415 = load i64, i64* %RBP.i247
  %7416 = sub i64 %7415, 32
  %7417 = load i64, i64* %PC.i245
  %7418 = add i64 %7417, 3
  store i64 %7418, i64* %PC.i245
  %7419 = inttoptr i64 %7416 to i32*
  %7420 = load i32, i32* %7419
  %7421 = zext i32 %7420 to i64
  store i64 %7421, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_411bd3, %struct.Memory** %MEMORY
  %loadMem_411bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7423 = getelementptr inbounds %struct.GPR, %struct.GPR* %7422, i32 0, i32 33
  %7424 = getelementptr inbounds %struct.Reg, %struct.Reg* %7423, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %7424 to i64*
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7426 = getelementptr inbounds %struct.GPR, %struct.GPR* %7425, i32 0, i32 1
  %7427 = getelementptr inbounds %struct.Reg, %struct.Reg* %7426, i32 0, i32 0
  %EAX.i243 = bitcast %union.anon* %7427 to i32*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 15
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %7430 to i64*
  %7431 = load i64, i64* %RBP.i244
  %7432 = sub i64 %7431, 4
  %7433 = load i32, i32* %EAX.i243
  %7434 = zext i32 %7433 to i64
  %7435 = load i64, i64* %PC.i242
  %7436 = add i64 %7435, 3
  store i64 %7436, i64* %PC.i242
  %7437 = inttoptr i64 %7432 to i32*
  store i32 %7433, i32* %7437
  store %struct.Memory* %loadMem_411bd6, %struct.Memory** %MEMORY
  %loadMem_411bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 33
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %PC.i241
  %7442 = add i64 %7441, 450
  %7443 = load i64, i64* %PC.i241
  %7444 = add i64 %7443, 5
  store i64 %7444, i64* %PC.i241
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7442, i64* %7445, align 8
  store %struct.Memory* %loadMem_411bd9, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411bde:                                  ; preds = %block_.L_411bbe
  %loadMem_411bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7447 = getelementptr inbounds %struct.GPR, %struct.GPR* %7446, i32 0, i32 33
  %7448 = getelementptr inbounds %struct.Reg, %struct.Reg* %7447, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %7448 to i64*
  %7449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7450 = getelementptr inbounds %struct.GPR, %struct.GPR* %7449, i32 0, i32 1
  %7451 = getelementptr inbounds %struct.Reg, %struct.Reg* %7450, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %7451 to i64*
  %7452 = load i64, i64* %PC.i239
  %7453 = add i64 %7452, 7
  store i64 %7453, i64* %PC.i239
  %7454 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %7455 = zext i32 %7454 to i64
  store i64 %7455, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_411bde, %struct.Memory** %MEMORY
  %loadMem_411be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7457 = getelementptr inbounds %struct.GPR, %struct.GPR* %7456, i32 0, i32 33
  %7458 = getelementptr inbounds %struct.Reg, %struct.Reg* %7457, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %7458 to i64*
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 5
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %7461 to i64*
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7463 = getelementptr inbounds %struct.GPR, %struct.GPR* %7462, i32 0, i32 15
  %7464 = getelementptr inbounds %struct.Reg, %struct.Reg* %7463, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %7464 to i64*
  %7465 = load i64, i64* %RBP.i238
  %7466 = sub i64 %7465, 60
  %7467 = load i64, i64* %PC.i236
  %7468 = add i64 %7467, 4
  store i64 %7468, i64* %PC.i236
  %7469 = inttoptr i64 %7466 to i32*
  %7470 = load i32, i32* %7469
  %7471 = sext i32 %7470 to i64
  store i64 %7471, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_411be5, %struct.Memory** %MEMORY
  %loadMem_411be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7473 = getelementptr inbounds %struct.GPR, %struct.GPR* %7472, i32 0, i32 33
  %7474 = getelementptr inbounds %struct.Reg, %struct.Reg* %7473, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %7474 to i64*
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 1
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %7477 to i32*
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 5
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %7480 to i64*
  %7481 = load i64, i64* %RCX.i235
  %7482 = mul i64 %7481, 4
  %7483 = add i64 %7482, 11185584
  %7484 = load i32, i32* %EAX.i234
  %7485 = zext i32 %7484 to i64
  %7486 = load i64, i64* %PC.i233
  %7487 = add i64 %7486, 7
  store i64 %7487, i64* %PC.i233
  %7488 = inttoptr i64 %7483 to i32*
  store i32 %7484, i32* %7488
  store %struct.Memory* %loadMem_411be9, %struct.Memory** %MEMORY
  br label %block_.L_411bf0

block_.L_411bf0:                                  ; preds = %block_.L_411bde, %block_411b8d, %block_411b55
  %loadMem_411bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7490 = getelementptr inbounds %struct.GPR, %struct.GPR* %7489, i32 0, i32 33
  %7491 = getelementptr inbounds %struct.Reg, %struct.Reg* %7490, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %7491 to i64*
  %7492 = load i64, i64* %PC.i232
  %7493 = add i64 %7492, 5
  %7494 = load i64, i64* %PC.i232
  %7495 = add i64 %7494, 5
  store i64 %7495, i64* %PC.i232
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7493, i64* %7496, align 8
  store %struct.Memory* %loadMem_411bf0, %struct.Memory** %MEMORY
  br label %block_.L_411bf5

block_.L_411bf5:                                  ; preds = %block_.L_411bf0
  %loadMem_411bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %7499 to i64*
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7501 = getelementptr inbounds %struct.GPR, %struct.GPR* %7500, i32 0, i32 1
  %7502 = getelementptr inbounds %struct.Reg, %struct.Reg* %7501, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %7502 to i64*
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 15
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %7505 to i64*
  %7506 = load i64, i64* %RBP.i231
  %7507 = sub i64 %7506, 28
  %7508 = load i64, i64* %PC.i229
  %7509 = add i64 %7508, 3
  store i64 %7509, i64* %PC.i229
  %7510 = inttoptr i64 %7507 to i32*
  %7511 = load i32, i32* %7510
  %7512 = zext i32 %7511 to i64
  store i64 %7512, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_411bf5, %struct.Memory** %MEMORY
  %loadMem_411bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %7515 to i64*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 1
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %7518 to i64*
  %7519 = load i64, i64* %RAX.i228
  %7520 = load i64, i64* %PC.i227
  %7521 = add i64 %7520, 3
  store i64 %7521, i64* %PC.i227
  %7522 = trunc i64 %7519 to i32
  %7523 = add i32 1, %7522
  %7524 = zext i32 %7523 to i64
  store i64 %7524, i64* %RAX.i228, align 8
  %7525 = icmp ult i32 %7523, %7522
  %7526 = icmp ult i32 %7523, 1
  %7527 = or i1 %7525, %7526
  %7528 = zext i1 %7527 to i8
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7528, i8* %7529, align 1
  %7530 = and i32 %7523, 255
  %7531 = call i32 @llvm.ctpop.i32(i32 %7530)
  %7532 = trunc i32 %7531 to i8
  %7533 = and i8 %7532, 1
  %7534 = xor i8 %7533, 1
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7534, i8* %7535, align 1
  %7536 = xor i64 1, %7519
  %7537 = trunc i64 %7536 to i32
  %7538 = xor i32 %7537, %7523
  %7539 = lshr i32 %7538, 4
  %7540 = trunc i32 %7539 to i8
  %7541 = and i8 %7540, 1
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7541, i8* %7542, align 1
  %7543 = icmp eq i32 %7523, 0
  %7544 = zext i1 %7543 to i8
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7544, i8* %7545, align 1
  %7546 = lshr i32 %7523, 31
  %7547 = trunc i32 %7546 to i8
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7547, i8* %7548, align 1
  %7549 = lshr i32 %7522, 31
  %7550 = xor i32 %7546, %7549
  %7551 = add i32 %7550, %7546
  %7552 = icmp eq i32 %7551, 2
  %7553 = zext i1 %7552 to i8
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7553, i8* %7554, align 1
  store %struct.Memory* %loadMem_411bf8, %struct.Memory** %MEMORY
  %loadMem_411bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 33
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %7557 to i64*
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7559 = getelementptr inbounds %struct.GPR, %struct.GPR* %7558, i32 0, i32 1
  %7560 = getelementptr inbounds %struct.Reg, %struct.Reg* %7559, i32 0, i32 0
  %EAX.i225 = bitcast %union.anon* %7560 to i32*
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 15
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %7563 to i64*
  %7564 = load i64, i64* %RBP.i226
  %7565 = sub i64 %7564, 28
  %7566 = load i32, i32* %EAX.i225
  %7567 = zext i32 %7566 to i64
  %7568 = load i64, i64* %PC.i224
  %7569 = add i64 %7568, 3
  store i64 %7569, i64* %PC.i224
  %7570 = inttoptr i64 %7565 to i32*
  store i32 %7566, i32* %7570
  store %struct.Memory* %loadMem_411bfb, %struct.Memory** %MEMORY
  %loadMem_411bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 33
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %7573 to i64*
  %7574 = load i64, i64* %PC.i223
  %7575 = add i64 %7574, -205
  %7576 = load i64, i64* %PC.i223
  %7577 = add i64 %7576, 5
  store i64 %7577, i64* %PC.i223
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7575, i64* %7578, align 8
  store %struct.Memory* %loadMem_411bfe, %struct.Memory** %MEMORY
  br label %block_.L_411b31

block_.L_411c03:                                  ; preds = %block_.L_411b31
  %loadMem_411c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 33
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %7581 to i64*
  %7582 = load i64, i64* %PC.i222
  %7583 = add i64 %7582, 5
  %7584 = load i64, i64* %PC.i222
  %7585 = add i64 %7584, 5
  store i64 %7585, i64* %PC.i222
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7583, i64* %7586, align 8
  store %struct.Memory* %loadMem_411c03, %struct.Memory** %MEMORY
  br label %block_.L_411c08

block_.L_411c08:                                  ; preds = %block_.L_411c03, %block_.L_411afd
  %loadMem_411c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7588 = getelementptr inbounds %struct.GPR, %struct.GPR* %7587, i32 0, i32 33
  %7589 = getelementptr inbounds %struct.Reg, %struct.Reg* %7588, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %7589 to i64*
  %7590 = load i64, i64* %PC.i221
  %7591 = add i64 %7590, 5
  %7592 = load i64, i64* %PC.i221
  %7593 = add i64 %7592, 5
  store i64 %7593, i64* %PC.i221
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7591, i64* %7594, align 8
  store %struct.Memory* %loadMem_411c08, %struct.Memory** %MEMORY
  br label %block_.L_411c0d

block_.L_411c0d:                                  ; preds = %block_.L_411c08, %block_.L_411ae1
  %loadMem_411c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7596 = getelementptr inbounds %struct.GPR, %struct.GPR* %7595, i32 0, i32 33
  %7597 = getelementptr inbounds %struct.Reg, %struct.Reg* %7596, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %7597 to i64*
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7599 = getelementptr inbounds %struct.GPR, %struct.GPR* %7598, i32 0, i32 1
  %7600 = getelementptr inbounds %struct.Reg, %struct.Reg* %7599, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %7600 to i64*
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7602 = getelementptr inbounds %struct.GPR, %struct.GPR* %7601, i32 0, i32 15
  %7603 = getelementptr inbounds %struct.Reg, %struct.Reg* %7602, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %7603 to i64*
  %7604 = load i64, i64* %RBP.i220
  %7605 = sub i64 %7604, 8
  %7606 = load i64, i64* %PC.i218
  %7607 = add i64 %7606, 3
  store i64 %7607, i64* %PC.i218
  %7608 = inttoptr i64 %7605 to i32*
  %7609 = load i32, i32* %7608
  %7610 = zext i32 %7609 to i64
  store i64 %7610, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_411c0d, %struct.Memory** %MEMORY
  %loadMem_411c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7612 = getelementptr inbounds %struct.GPR, %struct.GPR* %7611, i32 0, i32 33
  %7613 = getelementptr inbounds %struct.Reg, %struct.Reg* %7612, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7613 to i64*
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7615 = getelementptr inbounds %struct.GPR, %struct.GPR* %7614, i32 0, i32 1
  %7616 = getelementptr inbounds %struct.Reg, %struct.Reg* %7615, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %7616 to i64*
  %7617 = load i64, i64* %RAX.i217
  %7618 = load i64, i64* %PC.i216
  %7619 = add i64 %7618, 3
  store i64 %7619, i64* %PC.i216
  %7620 = trunc i64 %7617 to i32
  %7621 = add i32 1, %7620
  %7622 = zext i32 %7621 to i64
  store i64 %7622, i64* %RAX.i217, align 8
  %7623 = icmp ult i32 %7621, %7620
  %7624 = icmp ult i32 %7621, 1
  %7625 = or i1 %7623, %7624
  %7626 = zext i1 %7625 to i8
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7626, i8* %7627, align 1
  %7628 = and i32 %7621, 255
  %7629 = call i32 @llvm.ctpop.i32(i32 %7628)
  %7630 = trunc i32 %7629 to i8
  %7631 = and i8 %7630, 1
  %7632 = xor i8 %7631, 1
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7632, i8* %7633, align 1
  %7634 = xor i64 1, %7617
  %7635 = trunc i64 %7634 to i32
  %7636 = xor i32 %7635, %7621
  %7637 = lshr i32 %7636, 4
  %7638 = trunc i32 %7637 to i8
  %7639 = and i8 %7638, 1
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7639, i8* %7640, align 1
  %7641 = icmp eq i32 %7621, 0
  %7642 = zext i1 %7641 to i8
  %7643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7642, i8* %7643, align 1
  %7644 = lshr i32 %7621, 31
  %7645 = trunc i32 %7644 to i8
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7645, i8* %7646, align 1
  %7647 = lshr i32 %7620, 31
  %7648 = xor i32 %7644, %7647
  %7649 = add i32 %7648, %7644
  %7650 = icmp eq i32 %7649, 2
  %7651 = zext i1 %7650 to i8
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7651, i8* %7652, align 1
  store %struct.Memory* %loadMem_411c10, %struct.Memory** %MEMORY
  %loadMem_411c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7654 = getelementptr inbounds %struct.GPR, %struct.GPR* %7653, i32 0, i32 33
  %7655 = getelementptr inbounds %struct.Reg, %struct.Reg* %7654, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %7655 to i64*
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7657 = getelementptr inbounds %struct.GPR, %struct.GPR* %7656, i32 0, i32 1
  %7658 = getelementptr inbounds %struct.Reg, %struct.Reg* %7657, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %7658 to i32*
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7660 = getelementptr inbounds %struct.GPR, %struct.GPR* %7659, i32 0, i32 5
  %7661 = getelementptr inbounds %struct.Reg, %struct.Reg* %7660, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %7661 to i64*
  %7662 = load i32, i32* %EAX.i214
  %7663 = zext i32 %7662 to i64
  %7664 = load i64, i64* %PC.i213
  %7665 = add i64 %7664, 3
  store i64 %7665, i64* %PC.i213
  %7666 = shl i64 %7663, 32
  %7667 = ashr exact i64 %7666, 32
  store i64 %7667, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_411c13, %struct.Memory** %MEMORY
  %loadMem_411c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 33
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %7670 to i64*
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7672 = getelementptr inbounds %struct.GPR, %struct.GPR* %7671, i32 0, i32 1
  %7673 = getelementptr inbounds %struct.Reg, %struct.Reg* %7672, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %7673 to i64*
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7675 = getelementptr inbounds %struct.GPR, %struct.GPR* %7674, i32 0, i32 5
  %7676 = getelementptr inbounds %struct.Reg, %struct.Reg* %7675, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %7676 to i64*
  %7677 = load i64, i64* %RCX.i212
  %7678 = add i64 %7677, 12099168
  %7679 = load i64, i64* %PC.i210
  %7680 = add i64 %7679, 8
  store i64 %7680, i64* %PC.i210
  %7681 = inttoptr i64 %7678 to i8*
  %7682 = load i8, i8* %7681
  %7683 = zext i8 %7682 to i64
  store i64 %7683, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_411c16, %struct.Memory** %MEMORY
  %loadMem_411c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 33
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %7686 to i64*
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7688 = getelementptr inbounds %struct.GPR, %struct.GPR* %7687, i32 0, i32 1
  %7689 = getelementptr inbounds %struct.Reg, %struct.Reg* %7688, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %7689 to i32*
  %7690 = load i32, i32* %EAX.i209
  %7691 = zext i32 %7690 to i64
  %7692 = load i64, i64* %PC.i208
  %7693 = add i64 %7692, 3
  store i64 %7693, i64* %PC.i208
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7694, align 1
  %7695 = and i32 %7690, 255
  %7696 = call i32 @llvm.ctpop.i32(i32 %7695)
  %7697 = trunc i32 %7696 to i8
  %7698 = and i8 %7697, 1
  %7699 = xor i8 %7698, 1
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7699, i8* %7700, align 1
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7701, align 1
  %7702 = icmp eq i32 %7690, 0
  %7703 = zext i1 %7702 to i8
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7703, i8* %7704, align 1
  %7705 = lshr i32 %7690, 31
  %7706 = trunc i32 %7705 to i8
  %7707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7706, i8* %7707, align 1
  %7708 = lshr i32 %7690, 31
  %7709 = xor i32 %7705, %7708
  %7710 = add i32 %7709, %7708
  %7711 = icmp eq i32 %7710, 2
  %7712 = zext i1 %7711 to i8
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7712, i8* %7713, align 1
  store %struct.Memory* %loadMem_411c1e, %struct.Memory** %MEMORY
  %loadMem_411c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7715 = getelementptr inbounds %struct.GPR, %struct.GPR* %7714, i32 0, i32 33
  %7716 = getelementptr inbounds %struct.Reg, %struct.Reg* %7715, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %7716 to i64*
  %7717 = load i64, i64* %PC.i207
  %7718 = add i64 %7717, 100
  %7719 = load i64, i64* %PC.i207
  %7720 = add i64 %7719, 6
  %7721 = load i64, i64* %PC.i207
  %7722 = add i64 %7721, 6
  store i64 %7722, i64* %PC.i207
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7724 = load i8, i8* %7723, align 1
  %7725 = icmp eq i8 %7724, 0
  %7726 = zext i1 %7725 to i8
  store i8 %7726, i8* %BRANCH_TAKEN, align 1
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7728 = select i1 %7725, i64 %7718, i64 %7720
  store i64 %7728, i64* %7727, align 8
  store %struct.Memory* %loadMem_411c21, %struct.Memory** %MEMORY
  %loadBr_411c21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c21 = icmp eq i8 %loadBr_411c21, 1
  br i1 %cmpBr_411c21, label %block_.L_411c85, label %block_411c27

block_411c27:                                     ; preds = %block_.L_411c0d
  %loadMem_411c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7730 = getelementptr inbounds %struct.GPR, %struct.GPR* %7729, i32 0, i32 33
  %7731 = getelementptr inbounds %struct.Reg, %struct.Reg* %7730, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %7731 to i64*
  %7732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7733 = getelementptr inbounds %struct.GPR, %struct.GPR* %7732, i32 0, i32 1
  %7734 = getelementptr inbounds %struct.Reg, %struct.Reg* %7733, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %7734 to i64*
  %7735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7736 = getelementptr inbounds %struct.GPR, %struct.GPR* %7735, i32 0, i32 15
  %7737 = getelementptr inbounds %struct.Reg, %struct.Reg* %7736, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %7737 to i64*
  %7738 = load i64, i64* %RBP.i206
  %7739 = sub i64 %7738, 8
  %7740 = load i64, i64* %PC.i204
  %7741 = add i64 %7740, 3
  store i64 %7741, i64* %PC.i204
  %7742 = inttoptr i64 %7739 to i32*
  %7743 = load i32, i32* %7742
  %7744 = zext i32 %7743 to i64
  store i64 %7744, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_411c27, %struct.Memory** %MEMORY
  %loadMem_411c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7746 = getelementptr inbounds %struct.GPR, %struct.GPR* %7745, i32 0, i32 33
  %7747 = getelementptr inbounds %struct.Reg, %struct.Reg* %7746, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %7747 to i64*
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7749 = getelementptr inbounds %struct.GPR, %struct.GPR* %7748, i32 0, i32 1
  %7750 = getelementptr inbounds %struct.Reg, %struct.Reg* %7749, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %7750 to i64*
  %7751 = load i64, i64* %RAX.i203
  %7752 = load i64, i64* %PC.i202
  %7753 = add i64 %7752, 3
  store i64 %7753, i64* %PC.i202
  %7754 = trunc i64 %7751 to i32
  %7755 = add i32 1, %7754
  %7756 = zext i32 %7755 to i64
  store i64 %7756, i64* %RAX.i203, align 8
  %7757 = icmp ult i32 %7755, %7754
  %7758 = icmp ult i32 %7755, 1
  %7759 = or i1 %7757, %7758
  %7760 = zext i1 %7759 to i8
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7760, i8* %7761, align 1
  %7762 = and i32 %7755, 255
  %7763 = call i32 @llvm.ctpop.i32(i32 %7762)
  %7764 = trunc i32 %7763 to i8
  %7765 = and i8 %7764, 1
  %7766 = xor i8 %7765, 1
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7766, i8* %7767, align 1
  %7768 = xor i64 1, %7751
  %7769 = trunc i64 %7768 to i32
  %7770 = xor i32 %7769, %7755
  %7771 = lshr i32 %7770, 4
  %7772 = trunc i32 %7771 to i8
  %7773 = and i8 %7772, 1
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7773, i8* %7774, align 1
  %7775 = icmp eq i32 %7755, 0
  %7776 = zext i1 %7775 to i8
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7776, i8* %7777, align 1
  %7778 = lshr i32 %7755, 31
  %7779 = trunc i32 %7778 to i8
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7779, i8* %7780, align 1
  %7781 = lshr i32 %7754, 31
  %7782 = xor i32 %7778, %7781
  %7783 = add i32 %7782, %7778
  %7784 = icmp eq i32 %7783, 2
  %7785 = zext i1 %7784 to i8
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7785, i8* %7786, align 1
  store %struct.Memory* %loadMem_411c2a, %struct.Memory** %MEMORY
  %loadMem_411c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 33
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7789 to i64*
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 1
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %7792 to i32*
  %7793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7794 = getelementptr inbounds %struct.GPR, %struct.GPR* %7793, i32 0, i32 5
  %7795 = getelementptr inbounds %struct.Reg, %struct.Reg* %7794, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %7795 to i64*
  %7796 = load i32, i32* %EAX.i200
  %7797 = zext i32 %7796 to i64
  %7798 = load i64, i64* %PC.i199
  %7799 = add i64 %7798, 3
  store i64 %7799, i64* %PC.i199
  %7800 = shl i64 %7797, 32
  %7801 = ashr exact i64 %7800, 32
  store i64 %7801, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_411c2d, %struct.Memory** %MEMORY
  %loadMem_411c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7803 = getelementptr inbounds %struct.GPR, %struct.GPR* %7802, i32 0, i32 33
  %7804 = getelementptr inbounds %struct.Reg, %struct.Reg* %7803, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %7804 to i64*
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7806 = getelementptr inbounds %struct.GPR, %struct.GPR* %7805, i32 0, i32 1
  %7807 = getelementptr inbounds %struct.Reg, %struct.Reg* %7806, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %7807 to i64*
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 5
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %7810 to i64*
  %7811 = load i64, i64* %RCX.i198
  %7812 = mul i64 %7811, 4
  %7813 = add i64 %7812, 11185584
  %7814 = load i64, i64* %PC.i196
  %7815 = add i64 %7814, 7
  store i64 %7815, i64* %PC.i196
  %7816 = inttoptr i64 %7813 to i32*
  %7817 = load i32, i32* %7816
  %7818 = zext i32 %7817 to i64
  store i64 %7818, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_411c30, %struct.Memory** %MEMORY
  %loadMem_411c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7820 = getelementptr inbounds %struct.GPR, %struct.GPR* %7819, i32 0, i32 33
  %7821 = getelementptr inbounds %struct.Reg, %struct.Reg* %7820, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %7821 to i64*
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7823 = getelementptr inbounds %struct.GPR, %struct.GPR* %7822, i32 0, i32 1
  %7824 = getelementptr inbounds %struct.Reg, %struct.Reg* %7823, i32 0, i32 0
  %EAX.i195 = bitcast %union.anon* %7824 to i32*
  %7825 = load i32, i32* %EAX.i195
  %7826 = zext i32 %7825 to i64
  %7827 = load i64, i64* %PC.i194
  %7828 = add i64 %7827, 7
  store i64 %7828, i64* %PC.i194
  %7829 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %7830 = sub i32 %7825, %7829
  %7831 = icmp ult i32 %7825, %7829
  %7832 = zext i1 %7831 to i8
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7832, i8* %7833, align 1
  %7834 = and i32 %7830, 255
  %7835 = call i32 @llvm.ctpop.i32(i32 %7834)
  %7836 = trunc i32 %7835 to i8
  %7837 = and i8 %7836, 1
  %7838 = xor i8 %7837, 1
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7838, i8* %7839, align 1
  %7840 = xor i32 %7829, %7825
  %7841 = xor i32 %7840, %7830
  %7842 = lshr i32 %7841, 4
  %7843 = trunc i32 %7842 to i8
  %7844 = and i8 %7843, 1
  %7845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7844, i8* %7845, align 1
  %7846 = icmp eq i32 %7830, 0
  %7847 = zext i1 %7846 to i8
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7847, i8* %7848, align 1
  %7849 = lshr i32 %7830, 31
  %7850 = trunc i32 %7849 to i8
  %7851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7850, i8* %7851, align 1
  %7852 = lshr i32 %7825, 31
  %7853 = lshr i32 %7829, 31
  %7854 = xor i32 %7853, %7852
  %7855 = xor i32 %7849, %7852
  %7856 = add i32 %7855, %7854
  %7857 = icmp eq i32 %7856, 2
  %7858 = zext i1 %7857 to i8
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7858, i8* %7859, align 1
  store %struct.Memory* %loadMem_411c37, %struct.Memory** %MEMORY
  %loadMem_411c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7861 = getelementptr inbounds %struct.GPR, %struct.GPR* %7860, i32 0, i32 33
  %7862 = getelementptr inbounds %struct.Reg, %struct.Reg* %7861, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7862 to i64*
  %7863 = load i64, i64* %PC.i193
  %7864 = add i64 %7863, 71
  %7865 = load i64, i64* %PC.i193
  %7866 = add i64 %7865, 6
  %7867 = load i64, i64* %PC.i193
  %7868 = add i64 %7867, 6
  store i64 %7868, i64* %PC.i193
  %7869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7870 = load i8, i8* %7869, align 1
  store i8 %7870, i8* %BRANCH_TAKEN, align 1
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7872 = icmp ne i8 %7870, 0
  %7873 = select i1 %7872, i64 %7864, i64 %7866
  store i64 %7873, i64* %7871, align 8
  store %struct.Memory* %loadMem_411c3e, %struct.Memory** %MEMORY
  %loadBr_411c3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c3e = icmp eq i8 %loadBr_411c3e, 1
  br i1 %cmpBr_411c3e, label %block_.L_411c85, label %block_411c44

block_411c44:                                     ; preds = %block_411c27
  %loadMem_411c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7875 = getelementptr inbounds %struct.GPR, %struct.GPR* %7874, i32 0, i32 33
  %7876 = getelementptr inbounds %struct.Reg, %struct.Reg* %7875, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %7876 to i64*
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7878 = getelementptr inbounds %struct.GPR, %struct.GPR* %7877, i32 0, i32 15
  %7879 = getelementptr inbounds %struct.Reg, %struct.Reg* %7878, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7879 to i64*
  %7880 = load i64, i64* %RBP.i192
  %7881 = sub i64 %7880, 24
  %7882 = load i64, i64* %PC.i191
  %7883 = add i64 %7882, 5
  store i64 %7883, i64* %PC.i191
  %7884 = inttoptr i64 %7881 to i64*
  %7885 = load i64, i64* %7884
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7886, align 1
  %7887 = trunc i64 %7885 to i32
  %7888 = and i32 %7887, 255
  %7889 = call i32 @llvm.ctpop.i32(i32 %7888)
  %7890 = trunc i32 %7889 to i8
  %7891 = and i8 %7890, 1
  %7892 = xor i8 %7891, 1
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7892, i8* %7893, align 1
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7894, align 1
  %7895 = icmp eq i64 %7885, 0
  %7896 = zext i1 %7895 to i8
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7896, i8* %7897, align 1
  %7898 = lshr i64 %7885, 63
  %7899 = trunc i64 %7898 to i8
  %7900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7899, i8* %7900, align 1
  %7901 = lshr i64 %7885, 63
  %7902 = xor i64 %7898, %7901
  %7903 = add i64 %7902, %7901
  %7904 = icmp eq i64 %7903, 2
  %7905 = zext i1 %7904 to i8
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7905, i8* %7906, align 1
  store %struct.Memory* %loadMem_411c44, %struct.Memory** %MEMORY
  %loadMem_411c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7908 = getelementptr inbounds %struct.GPR, %struct.GPR* %7907, i32 0, i32 33
  %7909 = getelementptr inbounds %struct.Reg, %struct.Reg* %7908, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7909 to i64*
  %7910 = load i64, i64* %PC.i190
  %7911 = add i64 %7910, 23
  %7912 = load i64, i64* %PC.i190
  %7913 = add i64 %7912, 6
  %7914 = load i64, i64* %PC.i190
  %7915 = add i64 %7914, 6
  store i64 %7915, i64* %PC.i190
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7917 = load i8, i8* %7916, align 1
  store i8 %7917, i8* %BRANCH_TAKEN, align 1
  %7918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7919 = icmp ne i8 %7917, 0
  %7920 = select i1 %7919, i64 %7911, i64 %7913
  store i64 %7920, i64* %7918, align 8
  store %struct.Memory* %loadMem_411c49, %struct.Memory** %MEMORY
  %loadBr_411c49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c49 = icmp eq i8 %loadBr_411c49, 1
  br i1 %cmpBr_411c49, label %block_.L_411c60, label %block_411c4f

block_411c4f:                                     ; preds = %block_411c44
  %loadMem_411c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7922 = getelementptr inbounds %struct.GPR, %struct.GPR* %7921, i32 0, i32 33
  %7923 = getelementptr inbounds %struct.Reg, %struct.Reg* %7922, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7923 to i64*
  %7924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7925 = getelementptr inbounds %struct.GPR, %struct.GPR* %7924, i32 0, i32 1
  %7926 = getelementptr inbounds %struct.Reg, %struct.Reg* %7925, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %7926 to i64*
  %7927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7928 = getelementptr inbounds %struct.GPR, %struct.GPR* %7927, i32 0, i32 15
  %7929 = getelementptr inbounds %struct.Reg, %struct.Reg* %7928, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %7929 to i64*
  %7930 = load i64, i64* %RBP.i189
  %7931 = sub i64 %7930, 8
  %7932 = load i64, i64* %PC.i187
  %7933 = add i64 %7932, 3
  store i64 %7933, i64* %PC.i187
  %7934 = inttoptr i64 %7931 to i32*
  %7935 = load i32, i32* %7934
  %7936 = zext i32 %7935 to i64
  store i64 %7936, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_411c4f, %struct.Memory** %MEMORY
  %loadMem_411c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 33
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %7939 to i64*
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7941 = getelementptr inbounds %struct.GPR, %struct.GPR* %7940, i32 0, i32 1
  %7942 = getelementptr inbounds %struct.Reg, %struct.Reg* %7941, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %7942 to i64*
  %7943 = load i64, i64* %RAX.i186
  %7944 = load i64, i64* %PC.i185
  %7945 = add i64 %7944, 3
  store i64 %7945, i64* %PC.i185
  %7946 = trunc i64 %7943 to i32
  %7947 = add i32 1, %7946
  %7948 = zext i32 %7947 to i64
  store i64 %7948, i64* %RAX.i186, align 8
  %7949 = icmp ult i32 %7947, %7946
  %7950 = icmp ult i32 %7947, 1
  %7951 = or i1 %7949, %7950
  %7952 = zext i1 %7951 to i8
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7952, i8* %7953, align 1
  %7954 = and i32 %7947, 255
  %7955 = call i32 @llvm.ctpop.i32(i32 %7954)
  %7956 = trunc i32 %7955 to i8
  %7957 = and i8 %7956, 1
  %7958 = xor i8 %7957, 1
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7958, i8* %7959, align 1
  %7960 = xor i64 1, %7943
  %7961 = trunc i64 %7960 to i32
  %7962 = xor i32 %7961, %7947
  %7963 = lshr i32 %7962, 4
  %7964 = trunc i32 %7963 to i8
  %7965 = and i8 %7964, 1
  %7966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7965, i8* %7966, align 1
  %7967 = icmp eq i32 %7947, 0
  %7968 = zext i1 %7967 to i8
  %7969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7968, i8* %7969, align 1
  %7970 = lshr i32 %7947, 31
  %7971 = trunc i32 %7970 to i8
  %7972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7971, i8* %7972, align 1
  %7973 = lshr i32 %7946, 31
  %7974 = xor i32 %7970, %7973
  %7975 = add i32 %7974, %7970
  %7976 = icmp eq i32 %7975, 2
  %7977 = zext i1 %7976 to i8
  %7978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7977, i8* %7978, align 1
  store %struct.Memory* %loadMem_411c52, %struct.Memory** %MEMORY
  %loadMem_411c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7980 = getelementptr inbounds %struct.GPR, %struct.GPR* %7979, i32 0, i32 33
  %7981 = getelementptr inbounds %struct.Reg, %struct.Reg* %7980, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7981 to i64*
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7983 = getelementptr inbounds %struct.GPR, %struct.GPR* %7982, i32 0, i32 5
  %7984 = getelementptr inbounds %struct.Reg, %struct.Reg* %7983, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %7984 to i64*
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7986 = getelementptr inbounds %struct.GPR, %struct.GPR* %7985, i32 0, i32 15
  %7987 = getelementptr inbounds %struct.Reg, %struct.Reg* %7986, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %7987 to i64*
  %7988 = load i64, i64* %RBP.i184
  %7989 = sub i64 %7988, 24
  %7990 = load i64, i64* %PC.i182
  %7991 = add i64 %7990, 4
  store i64 %7991, i64* %PC.i182
  %7992 = inttoptr i64 %7989 to i64*
  %7993 = load i64, i64* %7992
  store i64 %7993, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_411c55, %struct.Memory** %MEMORY
  %loadMem_411c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7995 = getelementptr inbounds %struct.GPR, %struct.GPR* %7994, i32 0, i32 33
  %7996 = getelementptr inbounds %struct.Reg, %struct.Reg* %7995, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7996 to i64*
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7998 = getelementptr inbounds %struct.GPR, %struct.GPR* %7997, i32 0, i32 7
  %7999 = getelementptr inbounds %struct.Reg, %struct.Reg* %7998, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %7999 to i64*
  %8000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8001 = getelementptr inbounds %struct.GPR, %struct.GPR* %8000, i32 0, i32 15
  %8002 = getelementptr inbounds %struct.Reg, %struct.Reg* %8001, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %8002 to i64*
  %8003 = load i64, i64* %RBP.i181
  %8004 = sub i64 %8003, 32
  %8005 = load i64, i64* %PC.i179
  %8006 = add i64 %8005, 4
  store i64 %8006, i64* %PC.i179
  %8007 = inttoptr i64 %8004 to i32*
  %8008 = load i32, i32* %8007
  %8009 = sext i32 %8008 to i64
  store i64 %8009, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_411c59, %struct.Memory** %MEMORY
  %loadMem_411c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 33
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %8012 to i64*
  %8013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8014 = getelementptr inbounds %struct.GPR, %struct.GPR* %8013, i32 0, i32 1
  %8015 = getelementptr inbounds %struct.Reg, %struct.Reg* %8014, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %8015 to i32*
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8017 = getelementptr inbounds %struct.GPR, %struct.GPR* %8016, i32 0, i32 5
  %8018 = getelementptr inbounds %struct.Reg, %struct.Reg* %8017, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %8018 to i64*
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8020 = getelementptr inbounds %struct.GPR, %struct.GPR* %8019, i32 0, i32 7
  %8021 = getelementptr inbounds %struct.Reg, %struct.Reg* %8020, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %8021 to i64*
  %8022 = load i64, i64* %RCX.i177
  %8023 = load i64, i64* %RDX.i178
  %8024 = mul i64 %8023, 4
  %8025 = add i64 %8024, %8022
  %8026 = load i32, i32* %EAX.i176
  %8027 = zext i32 %8026 to i64
  %8028 = load i64, i64* %PC.i175
  %8029 = add i64 %8028, 3
  store i64 %8029, i64* %PC.i175
  %8030 = inttoptr i64 %8025 to i32*
  store i32 %8026, i32* %8030
  store %struct.Memory* %loadMem_411c5d, %struct.Memory** %MEMORY
  br label %block_.L_411c60

block_.L_411c60:                                  ; preds = %block_411c4f, %block_411c44
  %loadMem_411c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 33
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %8033 to i64*
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8035 = getelementptr inbounds %struct.GPR, %struct.GPR* %8034, i32 0, i32 1
  %8036 = getelementptr inbounds %struct.Reg, %struct.Reg* %8035, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %8036 to i64*
  %8037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8038 = getelementptr inbounds %struct.GPR, %struct.GPR* %8037, i32 0, i32 15
  %8039 = getelementptr inbounds %struct.Reg, %struct.Reg* %8038, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %8039 to i64*
  %8040 = load i64, i64* %RBP.i174
  %8041 = sub i64 %8040, 32
  %8042 = load i64, i64* %PC.i172
  %8043 = add i64 %8042, 3
  store i64 %8043, i64* %PC.i172
  %8044 = inttoptr i64 %8041 to i32*
  %8045 = load i32, i32* %8044
  %8046 = zext i32 %8045 to i64
  store i64 %8046, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_411c60, %struct.Memory** %MEMORY
  %loadMem_411c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 33
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %8049 to i64*
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8051 = getelementptr inbounds %struct.GPR, %struct.GPR* %8050, i32 0, i32 1
  %8052 = getelementptr inbounds %struct.Reg, %struct.Reg* %8051, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %8052 to i64*
  %8053 = load i64, i64* %RAX.i171
  %8054 = load i64, i64* %PC.i170
  %8055 = add i64 %8054, 3
  store i64 %8055, i64* %PC.i170
  %8056 = trunc i64 %8053 to i32
  %8057 = add i32 1, %8056
  %8058 = zext i32 %8057 to i64
  store i64 %8058, i64* %RAX.i171, align 8
  %8059 = icmp ult i32 %8057, %8056
  %8060 = icmp ult i32 %8057, 1
  %8061 = or i1 %8059, %8060
  %8062 = zext i1 %8061 to i8
  %8063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8062, i8* %8063, align 1
  %8064 = and i32 %8057, 255
  %8065 = call i32 @llvm.ctpop.i32(i32 %8064)
  %8066 = trunc i32 %8065 to i8
  %8067 = and i8 %8066, 1
  %8068 = xor i8 %8067, 1
  %8069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8068, i8* %8069, align 1
  %8070 = xor i64 1, %8053
  %8071 = trunc i64 %8070 to i32
  %8072 = xor i32 %8071, %8057
  %8073 = lshr i32 %8072, 4
  %8074 = trunc i32 %8073 to i8
  %8075 = and i8 %8074, 1
  %8076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8075, i8* %8076, align 1
  %8077 = icmp eq i32 %8057, 0
  %8078 = zext i1 %8077 to i8
  %8079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8078, i8* %8079, align 1
  %8080 = lshr i32 %8057, 31
  %8081 = trunc i32 %8080 to i8
  %8082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8081, i8* %8082, align 1
  %8083 = lshr i32 %8056, 31
  %8084 = xor i32 %8080, %8083
  %8085 = add i32 %8084, %8080
  %8086 = icmp eq i32 %8085, 2
  %8087 = zext i1 %8086 to i8
  %8088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8087, i8* %8088, align 1
  store %struct.Memory* %loadMem_411c63, %struct.Memory** %MEMORY
  %loadMem_411c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8090 = getelementptr inbounds %struct.GPR, %struct.GPR* %8089, i32 0, i32 33
  %8091 = getelementptr inbounds %struct.Reg, %struct.Reg* %8090, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %8091 to i64*
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 1
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %8094 to i32*
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 15
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %8097 to i64*
  %8098 = load i64, i64* %RBP.i169
  %8099 = sub i64 %8098, 32
  %8100 = load i32, i32* %EAX.i168
  %8101 = zext i32 %8100 to i64
  %8102 = load i64, i64* %PC.i167
  %8103 = add i64 %8102, 3
  store i64 %8103, i64* %PC.i167
  %8104 = inttoptr i64 %8099 to i32*
  store i32 %8100, i32* %8104
  store %struct.Memory* %loadMem_411c66, %struct.Memory** %MEMORY
  %loadMem_411c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8106 = getelementptr inbounds %struct.GPR, %struct.GPR* %8105, i32 0, i32 33
  %8107 = getelementptr inbounds %struct.Reg, %struct.Reg* %8106, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %8107 to i64*
  %8108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8109 = getelementptr inbounds %struct.GPR, %struct.GPR* %8108, i32 0, i32 1
  %8110 = getelementptr inbounds %struct.Reg, %struct.Reg* %8109, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %8110 to i64*
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8112 = getelementptr inbounds %struct.GPR, %struct.GPR* %8111, i32 0, i32 15
  %8113 = getelementptr inbounds %struct.Reg, %struct.Reg* %8112, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %8113 to i64*
  %8114 = load i64, i64* %RBP.i166
  %8115 = sub i64 %8114, 32
  %8116 = load i64, i64* %PC.i164
  %8117 = add i64 %8116, 3
  store i64 %8117, i64* %PC.i164
  %8118 = inttoptr i64 %8115 to i32*
  %8119 = load i32, i32* %8118
  %8120 = zext i32 %8119 to i64
  store i64 %8120, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_411c69, %struct.Memory** %MEMORY
  %loadMem_411c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8122 = getelementptr inbounds %struct.GPR, %struct.GPR* %8121, i32 0, i32 33
  %8123 = getelementptr inbounds %struct.Reg, %struct.Reg* %8122, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %8123 to i64*
  %8124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8125 = getelementptr inbounds %struct.GPR, %struct.GPR* %8124, i32 0, i32 1
  %8126 = getelementptr inbounds %struct.Reg, %struct.Reg* %8125, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %8126 to i32*
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 15
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %8129 to i64*
  %8130 = load i32, i32* %EAX.i162
  %8131 = zext i32 %8130 to i64
  %8132 = load i64, i64* %RBP.i163
  %8133 = sub i64 %8132, 16
  %8134 = load i64, i64* %PC.i161
  %8135 = add i64 %8134, 3
  store i64 %8135, i64* %PC.i161
  %8136 = inttoptr i64 %8133 to i32*
  %8137 = load i32, i32* %8136
  %8138 = sub i32 %8130, %8137
  %8139 = icmp ult i32 %8130, %8137
  %8140 = zext i1 %8139 to i8
  %8141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8140, i8* %8141, align 1
  %8142 = and i32 %8138, 255
  %8143 = call i32 @llvm.ctpop.i32(i32 %8142)
  %8144 = trunc i32 %8143 to i8
  %8145 = and i8 %8144, 1
  %8146 = xor i8 %8145, 1
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8146, i8* %8147, align 1
  %8148 = xor i32 %8137, %8130
  %8149 = xor i32 %8148, %8138
  %8150 = lshr i32 %8149, 4
  %8151 = trunc i32 %8150 to i8
  %8152 = and i8 %8151, 1
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8152, i8* %8153, align 1
  %8154 = icmp eq i32 %8138, 0
  %8155 = zext i1 %8154 to i8
  %8156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8155, i8* %8156, align 1
  %8157 = lshr i32 %8138, 31
  %8158 = trunc i32 %8157 to i8
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8158, i8* %8159, align 1
  %8160 = lshr i32 %8130, 31
  %8161 = lshr i32 %8137, 31
  %8162 = xor i32 %8161, %8160
  %8163 = xor i32 %8157, %8160
  %8164 = add i32 %8163, %8162
  %8165 = icmp eq i32 %8164, 2
  %8166 = zext i1 %8165 to i8
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8166, i8* %8167, align 1
  store %struct.Memory* %loadMem_411c6c, %struct.Memory** %MEMORY
  %loadMem_411c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 33
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %8170 to i64*
  %8171 = load i64, i64* %PC.i160
  %8172 = add i64 %8171, 17
  %8173 = load i64, i64* %PC.i160
  %8174 = add i64 %8173, 6
  %8175 = load i64, i64* %PC.i160
  %8176 = add i64 %8175, 6
  store i64 %8176, i64* %PC.i160
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8178 = load i8, i8* %8177, align 1
  %8179 = icmp ne i8 %8178, 0
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8181 = load i8, i8* %8180, align 1
  %8182 = icmp ne i8 %8181, 0
  %8183 = xor i1 %8179, %8182
  %8184 = zext i1 %8183 to i8
  store i8 %8184, i8* %BRANCH_TAKEN, align 1
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8186 = select i1 %8183, i64 %8172, i64 %8174
  store i64 %8186, i64* %8185, align 8
  store %struct.Memory* %loadMem_411c6f, %struct.Memory** %MEMORY
  %loadBr_411c6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c6f = icmp eq i8 %loadBr_411c6f, 1
  br i1 %cmpBr_411c6f, label %block_.L_411c80, label %block_411c75

block_411c75:                                     ; preds = %block_.L_411c60
  %loadMem_411c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8188 = getelementptr inbounds %struct.GPR, %struct.GPR* %8187, i32 0, i32 33
  %8189 = getelementptr inbounds %struct.Reg, %struct.Reg* %8188, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %8189 to i64*
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8191 = getelementptr inbounds %struct.GPR, %struct.GPR* %8190, i32 0, i32 1
  %8192 = getelementptr inbounds %struct.Reg, %struct.Reg* %8191, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %8192 to i64*
  %8193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8194 = getelementptr inbounds %struct.GPR, %struct.GPR* %8193, i32 0, i32 15
  %8195 = getelementptr inbounds %struct.Reg, %struct.Reg* %8194, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %8195 to i64*
  %8196 = load i64, i64* %RBP.i159
  %8197 = sub i64 %8196, 32
  %8198 = load i64, i64* %PC.i157
  %8199 = add i64 %8198, 3
  store i64 %8199, i64* %PC.i157
  %8200 = inttoptr i64 %8197 to i32*
  %8201 = load i32, i32* %8200
  %8202 = zext i32 %8201 to i64
  store i64 %8202, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_411c75, %struct.Memory** %MEMORY
  %loadMem_411c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8204 = getelementptr inbounds %struct.GPR, %struct.GPR* %8203, i32 0, i32 33
  %8205 = getelementptr inbounds %struct.Reg, %struct.Reg* %8204, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %8205 to i64*
  %8206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8207 = getelementptr inbounds %struct.GPR, %struct.GPR* %8206, i32 0, i32 1
  %8208 = getelementptr inbounds %struct.Reg, %struct.Reg* %8207, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %8208 to i32*
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8210 = getelementptr inbounds %struct.GPR, %struct.GPR* %8209, i32 0, i32 15
  %8211 = getelementptr inbounds %struct.Reg, %struct.Reg* %8210, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %8211 to i64*
  %8212 = load i64, i64* %RBP.i156
  %8213 = sub i64 %8212, 4
  %8214 = load i32, i32* %EAX.i155
  %8215 = zext i32 %8214 to i64
  %8216 = load i64, i64* %PC.i154
  %8217 = add i64 %8216, 3
  store i64 %8217, i64* %PC.i154
  %8218 = inttoptr i64 %8213 to i32*
  store i32 %8214, i32* %8218
  store %struct.Memory* %loadMem_411c78, %struct.Memory** %MEMORY
  %loadMem_411c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8220 = getelementptr inbounds %struct.GPR, %struct.GPR* %8219, i32 0, i32 33
  %8221 = getelementptr inbounds %struct.Reg, %struct.Reg* %8220, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %8221 to i64*
  %8222 = load i64, i64* %PC.i153
  %8223 = add i64 %8222, 288
  %8224 = load i64, i64* %PC.i153
  %8225 = add i64 %8224, 5
  store i64 %8225, i64* %PC.i153
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8223, i64* %8226, align 8
  store %struct.Memory* %loadMem_411c7b, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411c80:                                  ; preds = %block_.L_411c60
  %loadMem_411c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 33
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %8229 to i64*
  %8230 = load i64, i64* %PC.i152
  %8231 = add i64 %8230, 277
  %8232 = load i64, i64* %PC.i152
  %8233 = add i64 %8232, 5
  store i64 %8233, i64* %PC.i152
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8231, i64* %8234, align 8
  store %struct.Memory* %loadMem_411c80, %struct.Memory** %MEMORY
  br label %block_.L_411d95

block_.L_411c85:                                  ; preds = %block_411c27, %block_.L_411c0d
  %loadMem_411c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8236 = getelementptr inbounds %struct.GPR, %struct.GPR* %8235, i32 0, i32 33
  %8237 = getelementptr inbounds %struct.Reg, %struct.Reg* %8236, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %8237 to i64*
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8239 = getelementptr inbounds %struct.GPR, %struct.GPR* %8238, i32 0, i32 1
  %8240 = getelementptr inbounds %struct.Reg, %struct.Reg* %8239, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %8240 to i64*
  %8241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8242 = getelementptr inbounds %struct.GPR, %struct.GPR* %8241, i32 0, i32 15
  %8243 = getelementptr inbounds %struct.Reg, %struct.Reg* %8242, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %8243 to i64*
  %8244 = load i64, i64* %RBP.i151
  %8245 = sub i64 %8244, 8
  %8246 = load i64, i64* %PC.i149
  %8247 = add i64 %8246, 3
  store i64 %8247, i64* %PC.i149
  %8248 = inttoptr i64 %8245 to i32*
  %8249 = load i32, i32* %8248
  %8250 = zext i32 %8249 to i64
  store i64 %8250, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_411c85, %struct.Memory** %MEMORY
  %loadMem_411c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 33
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %8253 to i64*
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8255 = getelementptr inbounds %struct.GPR, %struct.GPR* %8254, i32 0, i32 1
  %8256 = getelementptr inbounds %struct.Reg, %struct.Reg* %8255, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %8256 to i64*
  %8257 = load i64, i64* %RAX.i148
  %8258 = load i64, i64* %PC.i147
  %8259 = add i64 %8258, 3
  store i64 %8259, i64* %PC.i147
  %8260 = trunc i64 %8257 to i32
  %8261 = add i32 1, %8260
  %8262 = zext i32 %8261 to i64
  store i64 %8262, i64* %RAX.i148, align 8
  %8263 = icmp ult i32 %8261, %8260
  %8264 = icmp ult i32 %8261, 1
  %8265 = or i1 %8263, %8264
  %8266 = zext i1 %8265 to i8
  %8267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8266, i8* %8267, align 1
  %8268 = and i32 %8261, 255
  %8269 = call i32 @llvm.ctpop.i32(i32 %8268)
  %8270 = trunc i32 %8269 to i8
  %8271 = and i8 %8270, 1
  %8272 = xor i8 %8271, 1
  %8273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8272, i8* %8273, align 1
  %8274 = xor i64 1, %8257
  %8275 = trunc i64 %8274 to i32
  %8276 = xor i32 %8275, %8261
  %8277 = lshr i32 %8276, 4
  %8278 = trunc i32 %8277 to i8
  %8279 = and i8 %8278, 1
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8279, i8* %8280, align 1
  %8281 = icmp eq i32 %8261, 0
  %8282 = zext i1 %8281 to i8
  %8283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8282, i8* %8283, align 1
  %8284 = lshr i32 %8261, 31
  %8285 = trunc i32 %8284 to i8
  %8286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8285, i8* %8286, align 1
  %8287 = lshr i32 %8260, 31
  %8288 = xor i32 %8284, %8287
  %8289 = add i32 %8288, %8284
  %8290 = icmp eq i32 %8289, 2
  %8291 = zext i1 %8290 to i8
  %8292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8291, i8* %8292, align 1
  store %struct.Memory* %loadMem_411c88, %struct.Memory** %MEMORY
  %loadMem_411c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8294 = getelementptr inbounds %struct.GPR, %struct.GPR* %8293, i32 0, i32 33
  %8295 = getelementptr inbounds %struct.Reg, %struct.Reg* %8294, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %8295 to i64*
  %8296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8297 = getelementptr inbounds %struct.GPR, %struct.GPR* %8296, i32 0, i32 1
  %8298 = getelementptr inbounds %struct.Reg, %struct.Reg* %8297, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %8298 to i32*
  %8299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8300 = getelementptr inbounds %struct.GPR, %struct.GPR* %8299, i32 0, i32 5
  %8301 = getelementptr inbounds %struct.Reg, %struct.Reg* %8300, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %8301 to i64*
  %8302 = load i32, i32* %EAX.i145
  %8303 = zext i32 %8302 to i64
  %8304 = load i64, i64* %PC.i144
  %8305 = add i64 %8304, 3
  store i64 %8305, i64* %PC.i144
  %8306 = shl i64 %8303, 32
  %8307 = ashr exact i64 %8306, 32
  store i64 %8307, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_411c8b, %struct.Memory** %MEMORY
  %loadMem_411c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8309 = getelementptr inbounds %struct.GPR, %struct.GPR* %8308, i32 0, i32 33
  %8310 = getelementptr inbounds %struct.Reg, %struct.Reg* %8309, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %8310 to i64*
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8312 = getelementptr inbounds %struct.GPR, %struct.GPR* %8311, i32 0, i32 1
  %8313 = getelementptr inbounds %struct.Reg, %struct.Reg* %8312, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %8313 to i64*
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8315 = getelementptr inbounds %struct.GPR, %struct.GPR* %8314, i32 0, i32 5
  %8316 = getelementptr inbounds %struct.Reg, %struct.Reg* %8315, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %8316 to i64*
  %8317 = load i64, i64* %RCX.i143
  %8318 = add i64 %8317, 12099168
  %8319 = load i64, i64* %PC.i141
  %8320 = add i64 %8319, 8
  store i64 %8320, i64* %PC.i141
  %8321 = inttoptr i64 %8318 to i8*
  %8322 = load i8, i8* %8321
  %8323 = zext i8 %8322 to i64
  store i64 %8323, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_411c8e, %struct.Memory** %MEMORY
  %loadMem_411c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8325 = getelementptr inbounds %struct.GPR, %struct.GPR* %8324, i32 0, i32 33
  %8326 = getelementptr inbounds %struct.Reg, %struct.Reg* %8325, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %8326 to i64*
  %8327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8328 = getelementptr inbounds %struct.GPR, %struct.GPR* %8327, i32 0, i32 1
  %8329 = getelementptr inbounds %struct.Reg, %struct.Reg* %8328, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %8329 to i32*
  %8330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8331 = getelementptr inbounds %struct.GPR, %struct.GPR* %8330, i32 0, i32 15
  %8332 = getelementptr inbounds %struct.Reg, %struct.Reg* %8331, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %8332 to i64*
  %8333 = load i32, i32* %EAX.i139
  %8334 = zext i32 %8333 to i64
  %8335 = load i64, i64* %RBP.i140
  %8336 = sub i64 %8335, 12
  %8337 = load i64, i64* %PC.i138
  %8338 = add i64 %8337, 3
  store i64 %8338, i64* %PC.i138
  %8339 = inttoptr i64 %8336 to i32*
  %8340 = load i32, i32* %8339
  %8341 = sub i32 %8333, %8340
  %8342 = icmp ult i32 %8333, %8340
  %8343 = zext i1 %8342 to i8
  %8344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8343, i8* %8344, align 1
  %8345 = and i32 %8341, 255
  %8346 = call i32 @llvm.ctpop.i32(i32 %8345)
  %8347 = trunc i32 %8346 to i8
  %8348 = and i8 %8347, 1
  %8349 = xor i8 %8348, 1
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8349, i8* %8350, align 1
  %8351 = xor i32 %8340, %8333
  %8352 = xor i32 %8351, %8341
  %8353 = lshr i32 %8352, 4
  %8354 = trunc i32 %8353 to i8
  %8355 = and i8 %8354, 1
  %8356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8355, i8* %8356, align 1
  %8357 = icmp eq i32 %8341, 0
  %8358 = zext i1 %8357 to i8
  %8359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8358, i8* %8359, align 1
  %8360 = lshr i32 %8341, 31
  %8361 = trunc i32 %8360 to i8
  %8362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8361, i8* %8362, align 1
  %8363 = lshr i32 %8333, 31
  %8364 = lshr i32 %8340, 31
  %8365 = xor i32 %8364, %8363
  %8366 = xor i32 %8360, %8363
  %8367 = add i32 %8366, %8365
  %8368 = icmp eq i32 %8367, 2
  %8369 = zext i1 %8368 to i8
  %8370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8369, i8* %8370, align 1
  store %struct.Memory* %loadMem_411c96, %struct.Memory** %MEMORY
  %loadMem_411c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8372 = getelementptr inbounds %struct.GPR, %struct.GPR* %8371, i32 0, i32 33
  %8373 = getelementptr inbounds %struct.Reg, %struct.Reg* %8372, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %8373 to i64*
  %8374 = load i64, i64* %PC.i137
  %8375 = add i64 %8374, 247
  %8376 = load i64, i64* %PC.i137
  %8377 = add i64 %8376, 6
  %8378 = load i64, i64* %PC.i137
  %8379 = add i64 %8378, 6
  store i64 %8379, i64* %PC.i137
  %8380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8381 = load i8, i8* %8380, align 1
  %8382 = icmp eq i8 %8381, 0
  %8383 = zext i1 %8382 to i8
  store i8 %8383, i8* %BRANCH_TAKEN, align 1
  %8384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8385 = select i1 %8382, i64 %8375, i64 %8377
  store i64 %8385, i64* %8384, align 8
  store %struct.Memory* %loadMem_411c99, %struct.Memory** %MEMORY
  %loadBr_411c99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c99 = icmp eq i8 %loadBr_411c99, 1
  br i1 %cmpBr_411c99, label %block_.L_411d90, label %block_411c9f

block_411c9f:                                     ; preds = %block_.L_411c85
  %loadMem_411c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8387 = getelementptr inbounds %struct.GPR, %struct.GPR* %8386, i32 0, i32 33
  %8388 = getelementptr inbounds %struct.Reg, %struct.Reg* %8387, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %8388 to i64*
  %8389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8390 = getelementptr inbounds %struct.GPR, %struct.GPR* %8389, i32 0, i32 1
  %8391 = getelementptr inbounds %struct.Reg, %struct.Reg* %8390, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %8391 to i64*
  %8392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8393 = getelementptr inbounds %struct.GPR, %struct.GPR* %8392, i32 0, i32 15
  %8394 = getelementptr inbounds %struct.Reg, %struct.Reg* %8393, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %8394 to i64*
  %8395 = load i64, i64* %RBP.i136
  %8396 = sub i64 %8395, 8
  %8397 = load i64, i64* %PC.i134
  %8398 = add i64 %8397, 3
  store i64 %8398, i64* %PC.i134
  %8399 = inttoptr i64 %8396 to i32*
  %8400 = load i32, i32* %8399
  %8401 = zext i32 %8400 to i64
  store i64 %8401, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_411c9f, %struct.Memory** %MEMORY
  %loadMem_411ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8403 = getelementptr inbounds %struct.GPR, %struct.GPR* %8402, i32 0, i32 33
  %8404 = getelementptr inbounds %struct.Reg, %struct.Reg* %8403, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %8404 to i64*
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8406 = getelementptr inbounds %struct.GPR, %struct.GPR* %8405, i32 0, i32 1
  %8407 = getelementptr inbounds %struct.Reg, %struct.Reg* %8406, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %8407 to i64*
  %8408 = load i64, i64* %RAX.i133
  %8409 = load i64, i64* %PC.i132
  %8410 = add i64 %8409, 3
  store i64 %8410, i64* %PC.i132
  %8411 = trunc i64 %8408 to i32
  %8412 = add i32 1, %8411
  %8413 = zext i32 %8412 to i64
  store i64 %8413, i64* %RAX.i133, align 8
  %8414 = icmp ult i32 %8412, %8411
  %8415 = icmp ult i32 %8412, 1
  %8416 = or i1 %8414, %8415
  %8417 = zext i1 %8416 to i8
  %8418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8417, i8* %8418, align 1
  %8419 = and i32 %8412, 255
  %8420 = call i32 @llvm.ctpop.i32(i32 %8419)
  %8421 = trunc i32 %8420 to i8
  %8422 = and i8 %8421, 1
  %8423 = xor i8 %8422, 1
  %8424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8423, i8* %8424, align 1
  %8425 = xor i64 1, %8408
  %8426 = trunc i64 %8425 to i32
  %8427 = xor i32 %8426, %8412
  %8428 = lshr i32 %8427, 4
  %8429 = trunc i32 %8428 to i8
  %8430 = and i8 %8429, 1
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8430, i8* %8431, align 1
  %8432 = icmp eq i32 %8412, 0
  %8433 = zext i1 %8432 to i8
  %8434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8433, i8* %8434, align 1
  %8435 = lshr i32 %8412, 31
  %8436 = trunc i32 %8435 to i8
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8436, i8* %8437, align 1
  %8438 = lshr i32 %8411, 31
  %8439 = xor i32 %8435, %8438
  %8440 = add i32 %8439, %8435
  %8441 = icmp eq i32 %8440, 2
  %8442 = zext i1 %8441 to i8
  %8443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8442, i8* %8443, align 1
  store %struct.Memory* %loadMem_411ca2, %struct.Memory** %MEMORY
  %loadMem_411ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8445 = getelementptr inbounds %struct.GPR, %struct.GPR* %8444, i32 0, i32 33
  %8446 = getelementptr inbounds %struct.Reg, %struct.Reg* %8445, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %8446 to i64*
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8448 = getelementptr inbounds %struct.GPR, %struct.GPR* %8447, i32 0, i32 1
  %8449 = getelementptr inbounds %struct.Reg, %struct.Reg* %8448, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %8449 to i32*
  %8450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8451 = getelementptr inbounds %struct.GPR, %struct.GPR* %8450, i32 0, i32 5
  %8452 = getelementptr inbounds %struct.Reg, %struct.Reg* %8451, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %8452 to i64*
  %8453 = load i32, i32* %EAX.i130
  %8454 = zext i32 %8453 to i64
  %8455 = load i64, i64* %PC.i129
  %8456 = add i64 %8455, 3
  store i64 %8456, i64* %PC.i129
  %8457 = shl i64 %8454, 32
  %8458 = ashr exact i64 %8457, 32
  store i64 %8458, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_411ca5, %struct.Memory** %MEMORY
  %loadMem_411ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8460 = getelementptr inbounds %struct.GPR, %struct.GPR* %8459, i32 0, i32 33
  %8461 = getelementptr inbounds %struct.Reg, %struct.Reg* %8460, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %8461 to i64*
  %8462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8463 = getelementptr inbounds %struct.GPR, %struct.GPR* %8462, i32 0, i32 1
  %8464 = getelementptr inbounds %struct.Reg, %struct.Reg* %8463, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %8464 to i64*
  %8465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8466 = getelementptr inbounds %struct.GPR, %struct.GPR* %8465, i32 0, i32 5
  %8467 = getelementptr inbounds %struct.Reg, %struct.Reg* %8466, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %8467 to i64*
  %8468 = load i64, i64* %RCX.i128
  %8469 = mul i64 %8468, 4
  %8470 = add i64 %8469, 11187184
  %8471 = load i64, i64* %PC.i126
  %8472 = add i64 %8471, 7
  store i64 %8472, i64* %PC.i126
  %8473 = inttoptr i64 %8470 to i32*
  %8474 = load i32, i32* %8473
  %8475 = zext i32 %8474 to i64
  store i64 %8475, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_411ca8, %struct.Memory** %MEMORY
  %loadMem_411caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8477 = getelementptr inbounds %struct.GPR, %struct.GPR* %8476, i32 0, i32 33
  %8478 = getelementptr inbounds %struct.Reg, %struct.Reg* %8477, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %8478 to i64*
  %8479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8480 = getelementptr inbounds %struct.GPR, %struct.GPR* %8479, i32 0, i32 1
  %8481 = getelementptr inbounds %struct.Reg, %struct.Reg* %8480, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %8481 to i32*
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8483 = getelementptr inbounds %struct.GPR, %struct.GPR* %8482, i32 0, i32 15
  %8484 = getelementptr inbounds %struct.Reg, %struct.Reg* %8483, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %8484 to i64*
  %8485 = load i64, i64* %RBP.i125
  %8486 = sub i64 %8485, 64
  %8487 = load i32, i32* %EAX.i124
  %8488 = zext i32 %8487 to i64
  %8489 = load i64, i64* %PC.i123
  %8490 = add i64 %8489, 3
  store i64 %8490, i64* %PC.i123
  %8491 = inttoptr i64 %8486 to i32*
  store i32 %8487, i32* %8491
  store %struct.Memory* %loadMem_411caf, %struct.Memory** %MEMORY
  %loadMem_411cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8493 = getelementptr inbounds %struct.GPR, %struct.GPR* %8492, i32 0, i32 33
  %8494 = getelementptr inbounds %struct.Reg, %struct.Reg* %8493, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %8494 to i64*
  %8495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8496 = getelementptr inbounds %struct.GPR, %struct.GPR* %8495, i32 0, i32 15
  %8497 = getelementptr inbounds %struct.Reg, %struct.Reg* %8496, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %8497 to i64*
  %8498 = load i64, i64* %RBP.i122
  %8499 = sub i64 %8498, 28
  %8500 = load i64, i64* %PC.i121
  %8501 = add i64 %8500, 7
  store i64 %8501, i64* %PC.i121
  %8502 = inttoptr i64 %8499 to i32*
  store i32 0, i32* %8502
  store %struct.Memory* %loadMem_411cb2, %struct.Memory** %MEMORY
  br label %block_.L_411cb9

block_.L_411cb9:                                  ; preds = %block_.L_411d7d, %block_411c9f
  %loadMem_411cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8504 = getelementptr inbounds %struct.GPR, %struct.GPR* %8503, i32 0, i32 33
  %8505 = getelementptr inbounds %struct.Reg, %struct.Reg* %8504, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %8505 to i64*
  %8506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8507 = getelementptr inbounds %struct.GPR, %struct.GPR* %8506, i32 0, i32 1
  %8508 = getelementptr inbounds %struct.Reg, %struct.Reg* %8507, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %8508 to i64*
  %8509 = load i64, i64* %PC.i119
  %8510 = add i64 %8509, 10
  store i64 %8510, i64* %PC.i119
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_411cb9, %struct.Memory** %MEMORY
  %loadMem_411cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8512 = getelementptr inbounds %struct.GPR, %struct.GPR* %8511, i32 0, i32 33
  %8513 = getelementptr inbounds %struct.Reg, %struct.Reg* %8512, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %8513 to i64*
  %8514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8515 = getelementptr inbounds %struct.GPR, %struct.GPR* %8514, i32 0, i32 5
  %8516 = getelementptr inbounds %struct.Reg, %struct.Reg* %8515, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %8516 to i64*
  %8517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8518 = getelementptr inbounds %struct.GPR, %struct.GPR* %8517, i32 0, i32 15
  %8519 = getelementptr inbounds %struct.Reg, %struct.Reg* %8518, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %8519 to i64*
  %8520 = load i64, i64* %RBP.i118
  %8521 = sub i64 %8520, 28
  %8522 = load i64, i64* %PC.i116
  %8523 = add i64 %8522, 3
  store i64 %8523, i64* %PC.i116
  %8524 = inttoptr i64 %8521 to i32*
  %8525 = load i32, i32* %8524
  %8526 = zext i32 %8525 to i64
  store i64 %8526, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_411cc3, %struct.Memory** %MEMORY
  %loadMem_411cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8528 = getelementptr inbounds %struct.GPR, %struct.GPR* %8527, i32 0, i32 33
  %8529 = getelementptr inbounds %struct.Reg, %struct.Reg* %8528, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %8529 to i64*
  %8530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8531 = getelementptr inbounds %struct.GPR, %struct.GPR* %8530, i32 0, i32 7
  %8532 = getelementptr inbounds %struct.Reg, %struct.Reg* %8531, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %8532 to i64*
  %8533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8534 = getelementptr inbounds %struct.GPR, %struct.GPR* %8533, i32 0, i32 15
  %8535 = getelementptr inbounds %struct.Reg, %struct.Reg* %8534, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %8535 to i64*
  %8536 = load i64, i64* %RBP.i115
  %8537 = sub i64 %8536, 64
  %8538 = load i64, i64* %PC.i113
  %8539 = add i64 %8538, 4
  store i64 %8539, i64* %PC.i113
  %8540 = inttoptr i64 %8537 to i32*
  %8541 = load i32, i32* %8540
  %8542 = sext i32 %8541 to i64
  store i64 %8542, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_411cc6, %struct.Memory** %MEMORY
  %loadMem_411cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8544 = getelementptr inbounds %struct.GPR, %struct.GPR* %8543, i32 0, i32 33
  %8545 = getelementptr inbounds %struct.Reg, %struct.Reg* %8544, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %8545 to i64*
  %8546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8547 = getelementptr inbounds %struct.GPR, %struct.GPR* %8546, i32 0, i32 7
  %8548 = getelementptr inbounds %struct.Reg, %struct.Reg* %8547, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %8548 to i64*
  %8549 = load i64, i64* %RDX.i112
  %8550 = load i64, i64* %PC.i111
  %8551 = add i64 %8550, 7
  store i64 %8551, i64* %PC.i111
  %8552 = sext i64 %8549 to i128
  %8553 = and i128 %8552, -18446744073709551616
  %8554 = zext i64 %8549 to i128
  %8555 = or i128 %8553, %8554
  %8556 = mul i128 744, %8555
  %8557 = trunc i128 %8556 to i64
  store i64 %8557, i64* %RDX.i112, align 8
  %8558 = sext i64 %8557 to i128
  %8559 = icmp ne i128 %8558, %8556
  %8560 = zext i1 %8559 to i8
  %8561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8560, i8* %8561, align 1
  %8562 = trunc i128 %8556 to i32
  %8563 = and i32 %8562, 255
  %8564 = call i32 @llvm.ctpop.i32(i32 %8563)
  %8565 = trunc i32 %8564 to i8
  %8566 = and i8 %8565, 1
  %8567 = xor i8 %8566, 1
  %8568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8567, i8* %8568, align 1
  %8569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8569, align 1
  %8570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8570, align 1
  %8571 = lshr i64 %8557, 63
  %8572 = trunc i64 %8571 to i8
  %8573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8572, i8* %8573, align 1
  %8574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8560, i8* %8574, align 1
  store %struct.Memory* %loadMem_411cca, %struct.Memory** %MEMORY
  %loadMem_411cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8576 = getelementptr inbounds %struct.GPR, %struct.GPR* %8575, i32 0, i32 33
  %8577 = getelementptr inbounds %struct.Reg, %struct.Reg* %8576, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %8577 to i64*
  %8578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8579 = getelementptr inbounds %struct.GPR, %struct.GPR* %8578, i32 0, i32 1
  %8580 = getelementptr inbounds %struct.Reg, %struct.Reg* %8579, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %8580 to i64*
  %8581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8582 = getelementptr inbounds %struct.GPR, %struct.GPR* %8581, i32 0, i32 7
  %8583 = getelementptr inbounds %struct.Reg, %struct.Reg* %8582, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %8583 to i64*
  %8584 = load i64, i64* %RAX.i109
  %8585 = load i64, i64* %RDX.i110
  %8586 = load i64, i64* %PC.i108
  %8587 = add i64 %8586, 3
  store i64 %8587, i64* %PC.i108
  %8588 = add i64 %8585, %8584
  store i64 %8588, i64* %RAX.i109, align 8
  %8589 = icmp ult i64 %8588, %8584
  %8590 = icmp ult i64 %8588, %8585
  %8591 = or i1 %8589, %8590
  %8592 = zext i1 %8591 to i8
  %8593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8592, i8* %8593, align 1
  %8594 = trunc i64 %8588 to i32
  %8595 = and i32 %8594, 255
  %8596 = call i32 @llvm.ctpop.i32(i32 %8595)
  %8597 = trunc i32 %8596 to i8
  %8598 = and i8 %8597, 1
  %8599 = xor i8 %8598, 1
  %8600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8599, i8* %8600, align 1
  %8601 = xor i64 %8585, %8584
  %8602 = xor i64 %8601, %8588
  %8603 = lshr i64 %8602, 4
  %8604 = trunc i64 %8603 to i8
  %8605 = and i8 %8604, 1
  %8606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8605, i8* %8606, align 1
  %8607 = icmp eq i64 %8588, 0
  %8608 = zext i1 %8607 to i8
  %8609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8608, i8* %8609, align 1
  %8610 = lshr i64 %8588, 63
  %8611 = trunc i64 %8610 to i8
  %8612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8611, i8* %8612, align 1
  %8613 = lshr i64 %8584, 63
  %8614 = lshr i64 %8585, 63
  %8615 = xor i64 %8610, %8613
  %8616 = xor i64 %8610, %8614
  %8617 = add i64 %8615, %8616
  %8618 = icmp eq i64 %8617, 2
  %8619 = zext i1 %8618 to i8
  %8620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8619, i8* %8620, align 1
  store %struct.Memory* %loadMem_411cd1, %struct.Memory** %MEMORY
  %loadMem_411cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8622 = getelementptr inbounds %struct.GPR, %struct.GPR* %8621, i32 0, i32 33
  %8623 = getelementptr inbounds %struct.Reg, %struct.Reg* %8622, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8623 to i64*
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8625 = getelementptr inbounds %struct.GPR, %struct.GPR* %8624, i32 0, i32 5
  %8626 = getelementptr inbounds %struct.Reg, %struct.Reg* %8625, i32 0, i32 0
  %ECX.i106 = bitcast %union.anon* %8626 to i32*
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8628 = getelementptr inbounds %struct.GPR, %struct.GPR* %8627, i32 0, i32 1
  %8629 = getelementptr inbounds %struct.Reg, %struct.Reg* %8628, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %8629 to i64*
  %8630 = load i32, i32* %ECX.i106
  %8631 = zext i32 %8630 to i64
  %8632 = load i64, i64* %RAX.i107
  %8633 = add i64 %8632, 12
  %8634 = load i64, i64* %PC.i105
  %8635 = add i64 %8634, 3
  store i64 %8635, i64* %PC.i105
  %8636 = inttoptr i64 %8633 to i32*
  %8637 = load i32, i32* %8636
  %8638 = sub i32 %8630, %8637
  %8639 = icmp ult i32 %8630, %8637
  %8640 = zext i1 %8639 to i8
  %8641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8640, i8* %8641, align 1
  %8642 = and i32 %8638, 255
  %8643 = call i32 @llvm.ctpop.i32(i32 %8642)
  %8644 = trunc i32 %8643 to i8
  %8645 = and i8 %8644, 1
  %8646 = xor i8 %8645, 1
  %8647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8646, i8* %8647, align 1
  %8648 = xor i32 %8637, %8630
  %8649 = xor i32 %8648, %8638
  %8650 = lshr i32 %8649, 4
  %8651 = trunc i32 %8650 to i8
  %8652 = and i8 %8651, 1
  %8653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8652, i8* %8653, align 1
  %8654 = icmp eq i32 %8638, 0
  %8655 = zext i1 %8654 to i8
  %8656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8655, i8* %8656, align 1
  %8657 = lshr i32 %8638, 31
  %8658 = trunc i32 %8657 to i8
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8658, i8* %8659, align 1
  %8660 = lshr i32 %8630, 31
  %8661 = lshr i32 %8637, 31
  %8662 = xor i32 %8661, %8660
  %8663 = xor i32 %8657, %8660
  %8664 = add i32 %8663, %8662
  %8665 = icmp eq i32 %8664, 2
  %8666 = zext i1 %8665 to i8
  %8667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8666, i8* %8667, align 1
  store %struct.Memory* %loadMem_411cd4, %struct.Memory** %MEMORY
  %loadMem_411cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8669 = getelementptr inbounds %struct.GPR, %struct.GPR* %8668, i32 0, i32 33
  %8670 = getelementptr inbounds %struct.Reg, %struct.Reg* %8669, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %8670 to i64*
  %8671 = load i64, i64* %PC.i104
  %8672 = add i64 %8671, 180
  %8673 = load i64, i64* %PC.i104
  %8674 = add i64 %8673, 6
  %8675 = load i64, i64* %PC.i104
  %8676 = add i64 %8675, 6
  store i64 %8676, i64* %PC.i104
  %8677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8678 = load i8, i8* %8677, align 1
  %8679 = icmp ne i8 %8678, 0
  %8680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8681 = load i8, i8* %8680, align 1
  %8682 = icmp ne i8 %8681, 0
  %8683 = xor i1 %8679, %8682
  %8684 = xor i1 %8683, true
  %8685 = zext i1 %8684 to i8
  store i8 %8685, i8* %BRANCH_TAKEN, align 1
  %8686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8687 = select i1 %8683, i64 %8674, i64 %8672
  store i64 %8687, i64* %8686, align 8
  store %struct.Memory* %loadMem_411cd7, %struct.Memory** %MEMORY
  %loadBr_411cd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411cd7 = icmp eq i8 %loadBr_411cd7, 1
  br i1 %cmpBr_411cd7, label %block_.L_411d8b, label %block_411cdd

block_411cdd:                                     ; preds = %block_.L_411cb9
  %loadMem_411cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8689 = getelementptr inbounds %struct.GPR, %struct.GPR* %8688, i32 0, i32 33
  %8690 = getelementptr inbounds %struct.Reg, %struct.Reg* %8689, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %8690 to i64*
  %8691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8692 = getelementptr inbounds %struct.GPR, %struct.GPR* %8691, i32 0, i32 1
  %8693 = getelementptr inbounds %struct.Reg, %struct.Reg* %8692, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %8693 to i64*
  %8694 = load i64, i64* %PC.i102
  %8695 = add i64 %8694, 10
  store i64 %8695, i64* %PC.i102
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_411cdd, %struct.Memory** %MEMORY
  %loadMem_411ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8697 = getelementptr inbounds %struct.GPR, %struct.GPR* %8696, i32 0, i32 33
  %8698 = getelementptr inbounds %struct.Reg, %struct.Reg* %8697, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8698 to i64*
  %8699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8700 = getelementptr inbounds %struct.GPR, %struct.GPR* %8699, i32 0, i32 5
  %8701 = getelementptr inbounds %struct.Reg, %struct.Reg* %8700, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %8701 to i64*
  %8702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8703 = getelementptr inbounds %struct.GPR, %struct.GPR* %8702, i32 0, i32 15
  %8704 = getelementptr inbounds %struct.Reg, %struct.Reg* %8703, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %8704 to i64*
  %8705 = load i64, i64* %RBP.i101
  %8706 = sub i64 %8705, 64
  %8707 = load i64, i64* %PC.i99
  %8708 = add i64 %8707, 4
  store i64 %8708, i64* %PC.i99
  %8709 = inttoptr i64 %8706 to i32*
  %8710 = load i32, i32* %8709
  %8711 = sext i32 %8710 to i64
  store i64 %8711, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_411ce7, %struct.Memory** %MEMORY
  %loadMem_411ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8713 = getelementptr inbounds %struct.GPR, %struct.GPR* %8712, i32 0, i32 33
  %8714 = getelementptr inbounds %struct.Reg, %struct.Reg* %8713, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8714 to i64*
  %8715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8716 = getelementptr inbounds %struct.GPR, %struct.GPR* %8715, i32 0, i32 5
  %8717 = getelementptr inbounds %struct.Reg, %struct.Reg* %8716, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %8717 to i64*
  %8718 = load i64, i64* %RCX.i98
  %8719 = load i64, i64* %PC.i97
  %8720 = add i64 %8719, 7
  store i64 %8720, i64* %PC.i97
  %8721 = sext i64 %8718 to i128
  %8722 = and i128 %8721, -18446744073709551616
  %8723 = zext i64 %8718 to i128
  %8724 = or i128 %8722, %8723
  %8725 = mul i128 744, %8724
  %8726 = trunc i128 %8725 to i64
  store i64 %8726, i64* %RCX.i98, align 8
  %8727 = sext i64 %8726 to i128
  %8728 = icmp ne i128 %8727, %8725
  %8729 = zext i1 %8728 to i8
  %8730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8729, i8* %8730, align 1
  %8731 = trunc i128 %8725 to i32
  %8732 = and i32 %8731, 255
  %8733 = call i32 @llvm.ctpop.i32(i32 %8732)
  %8734 = trunc i32 %8733 to i8
  %8735 = and i8 %8734, 1
  %8736 = xor i8 %8735, 1
  %8737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8736, i8* %8737, align 1
  %8738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8738, align 1
  %8739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8739, align 1
  %8740 = lshr i64 %8726, 63
  %8741 = trunc i64 %8740 to i8
  %8742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8741, i8* %8742, align 1
  %8743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8729, i8* %8743, align 1
  store %struct.Memory* %loadMem_411ceb, %struct.Memory** %MEMORY
  %loadMem_411cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8745 = getelementptr inbounds %struct.GPR, %struct.GPR* %8744, i32 0, i32 33
  %8746 = getelementptr inbounds %struct.Reg, %struct.Reg* %8745, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8746 to i64*
  %8747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8748 = getelementptr inbounds %struct.GPR, %struct.GPR* %8747, i32 0, i32 1
  %8749 = getelementptr inbounds %struct.Reg, %struct.Reg* %8748, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %8749 to i64*
  %8750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8751 = getelementptr inbounds %struct.GPR, %struct.GPR* %8750, i32 0, i32 5
  %8752 = getelementptr inbounds %struct.Reg, %struct.Reg* %8751, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %8752 to i64*
  %8753 = load i64, i64* %RAX.i95
  %8754 = load i64, i64* %RCX.i96
  %8755 = load i64, i64* %PC.i94
  %8756 = add i64 %8755, 3
  store i64 %8756, i64* %PC.i94
  %8757 = add i64 %8754, %8753
  store i64 %8757, i64* %RAX.i95, align 8
  %8758 = icmp ult i64 %8757, %8753
  %8759 = icmp ult i64 %8757, %8754
  %8760 = or i1 %8758, %8759
  %8761 = zext i1 %8760 to i8
  %8762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8761, i8* %8762, align 1
  %8763 = trunc i64 %8757 to i32
  %8764 = and i32 %8763, 255
  %8765 = call i32 @llvm.ctpop.i32(i32 %8764)
  %8766 = trunc i32 %8765 to i8
  %8767 = and i8 %8766, 1
  %8768 = xor i8 %8767, 1
  %8769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8768, i8* %8769, align 1
  %8770 = xor i64 %8754, %8753
  %8771 = xor i64 %8770, %8757
  %8772 = lshr i64 %8771, 4
  %8773 = trunc i64 %8772 to i8
  %8774 = and i8 %8773, 1
  %8775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8774, i8* %8775, align 1
  %8776 = icmp eq i64 %8757, 0
  %8777 = zext i1 %8776 to i8
  %8778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8777, i8* %8778, align 1
  %8779 = lshr i64 %8757, 63
  %8780 = trunc i64 %8779 to i8
  %8781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8780, i8* %8781, align 1
  %8782 = lshr i64 %8753, 63
  %8783 = lshr i64 %8754, 63
  %8784 = xor i64 %8779, %8782
  %8785 = xor i64 %8779, %8783
  %8786 = add i64 %8784, %8785
  %8787 = icmp eq i64 %8786, 2
  %8788 = zext i1 %8787 to i8
  %8789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8788, i8* %8789, align 1
  store %struct.Memory* %loadMem_411cf2, %struct.Memory** %MEMORY
  %loadMem_411cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8791 = getelementptr inbounds %struct.GPR, %struct.GPR* %8790, i32 0, i32 33
  %8792 = getelementptr inbounds %struct.Reg, %struct.Reg* %8791, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %8792 to i64*
  %8793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8794 = getelementptr inbounds %struct.GPR, %struct.GPR* %8793, i32 0, i32 5
  %8795 = getelementptr inbounds %struct.Reg, %struct.Reg* %8794, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %8795 to i64*
  %8796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8797 = getelementptr inbounds %struct.GPR, %struct.GPR* %8796, i32 0, i32 15
  %8798 = getelementptr inbounds %struct.Reg, %struct.Reg* %8797, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %8798 to i64*
  %8799 = load i64, i64* %RBP.i93
  %8800 = sub i64 %8799, 28
  %8801 = load i64, i64* %PC.i91
  %8802 = add i64 %8801, 4
  store i64 %8802, i64* %PC.i91
  %8803 = inttoptr i64 %8800 to i32*
  %8804 = load i32, i32* %8803
  %8805 = sext i32 %8804 to i64
  store i64 %8805, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_411cf5, %struct.Memory** %MEMORY
  %loadMem_411cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8807 = getelementptr inbounds %struct.GPR, %struct.GPR* %8806, i32 0, i32 33
  %8808 = getelementptr inbounds %struct.Reg, %struct.Reg* %8807, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %8808 to i64*
  %8809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8810 = getelementptr inbounds %struct.GPR, %struct.GPR* %8809, i32 0, i32 1
  %8811 = getelementptr inbounds %struct.Reg, %struct.Reg* %8810, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %8811 to i64*
  %8812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8813 = getelementptr inbounds %struct.GPR, %struct.GPR* %8812, i32 0, i32 5
  %8814 = getelementptr inbounds %struct.Reg, %struct.Reg* %8813, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %8814 to i64*
  %8815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8816 = getelementptr inbounds %struct.GPR, %struct.GPR* %8815, i32 0, i32 7
  %8817 = getelementptr inbounds %struct.Reg, %struct.Reg* %8816, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %8817 to i64*
  %8818 = load i64, i64* %RAX.i88
  %8819 = load i64, i64* %RCX.i89
  %8820 = mul i64 %8819, 4
  %8821 = add i64 %8818, 16
  %8822 = add i64 %8821, %8820
  %8823 = load i64, i64* %PC.i87
  %8824 = add i64 %8823, 4
  store i64 %8824, i64* %PC.i87
  %8825 = inttoptr i64 %8822 to i32*
  %8826 = load i32, i32* %8825
  %8827 = zext i32 %8826 to i64
  store i64 %8827, i64* %RDX.i90, align 8
  store %struct.Memory* %loadMem_411cf9, %struct.Memory** %MEMORY
  %loadMem_411cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8829 = getelementptr inbounds %struct.GPR, %struct.GPR* %8828, i32 0, i32 33
  %8830 = getelementptr inbounds %struct.Reg, %struct.Reg* %8829, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8830 to i64*
  %8831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8832 = getelementptr inbounds %struct.GPR, %struct.GPR* %8831, i32 0, i32 7
  %8833 = getelementptr inbounds %struct.Reg, %struct.Reg* %8832, i32 0, i32 0
  %EDX.i85 = bitcast %union.anon* %8833 to i32*
  %8834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8835 = getelementptr inbounds %struct.GPR, %struct.GPR* %8834, i32 0, i32 15
  %8836 = getelementptr inbounds %struct.Reg, %struct.Reg* %8835, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %8836 to i64*
  %8837 = load i64, i64* %RBP.i86
  %8838 = sub i64 %8837, 68
  %8839 = load i32, i32* %EDX.i85
  %8840 = zext i32 %8839 to i64
  %8841 = load i64, i64* %PC.i84
  %8842 = add i64 %8841, 3
  store i64 %8842, i64* %PC.i84
  %8843 = inttoptr i64 %8838 to i32*
  store i32 %8839, i32* %8843
  store %struct.Memory* %loadMem_411cfd, %struct.Memory** %MEMORY
  %loadMem_411d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8845 = getelementptr inbounds %struct.GPR, %struct.GPR* %8844, i32 0, i32 33
  %8846 = getelementptr inbounds %struct.Reg, %struct.Reg* %8845, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8846 to i64*
  %8847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8848 = getelementptr inbounds %struct.GPR, %struct.GPR* %8847, i32 0, i32 1
  %8849 = getelementptr inbounds %struct.Reg, %struct.Reg* %8848, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %8849 to i64*
  %8850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8851 = getelementptr inbounds %struct.GPR, %struct.GPR* %8850, i32 0, i32 15
  %8852 = getelementptr inbounds %struct.Reg, %struct.Reg* %8851, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %8852 to i64*
  %8853 = load i64, i64* %RBP.i83
  %8854 = sub i64 %8853, 68
  %8855 = load i64, i64* %PC.i81
  %8856 = add i64 %8855, 4
  store i64 %8856, i64* %PC.i81
  %8857 = inttoptr i64 %8854 to i32*
  %8858 = load i32, i32* %8857
  %8859 = sext i32 %8858 to i64
  store i64 %8859, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_411d00, %struct.Memory** %MEMORY
  %loadMem_411d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8861 = getelementptr inbounds %struct.GPR, %struct.GPR* %8860, i32 0, i32 33
  %8862 = getelementptr inbounds %struct.Reg, %struct.Reg* %8861, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8862 to i64*
  %8863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8864 = getelementptr inbounds %struct.GPR, %struct.GPR* %8863, i32 0, i32 1
  %8865 = getelementptr inbounds %struct.Reg, %struct.Reg* %8864, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %8865 to i64*
  %8866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8867 = getelementptr inbounds %struct.GPR, %struct.GPR* %8866, i32 0, i32 7
  %8868 = getelementptr inbounds %struct.Reg, %struct.Reg* %8867, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %8868 to i64*
  %8869 = load i64, i64* %RAX.i79
  %8870 = add i64 %8869, 12099168
  %8871 = load i64, i64* %PC.i78
  %8872 = add i64 %8871, 8
  store i64 %8872, i64* %PC.i78
  %8873 = inttoptr i64 %8870 to i8*
  %8874 = load i8, i8* %8873
  %8875 = zext i8 %8874 to i64
  store i64 %8875, i64* %RDX.i80, align 8
  store %struct.Memory* %loadMem_411d04, %struct.Memory** %MEMORY
  %loadMem_411d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8877 = getelementptr inbounds %struct.GPR, %struct.GPR* %8876, i32 0, i32 33
  %8878 = getelementptr inbounds %struct.Reg, %struct.Reg* %8877, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8878 to i64*
  %8879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8880 = getelementptr inbounds %struct.GPR, %struct.GPR* %8879, i32 0, i32 7
  %8881 = getelementptr inbounds %struct.Reg, %struct.Reg* %8880, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %8881 to i32*
  %8882 = load i32, i32* %EDX.i
  %8883 = zext i32 %8882 to i64
  %8884 = load i64, i64* %PC.i77
  %8885 = add i64 %8884, 3
  store i64 %8885, i64* %PC.i77
  %8886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8886, align 1
  %8887 = and i32 %8882, 255
  %8888 = call i32 @llvm.ctpop.i32(i32 %8887)
  %8889 = trunc i32 %8888 to i8
  %8890 = and i8 %8889, 1
  %8891 = xor i8 %8890, 1
  %8892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8891, i8* %8892, align 1
  %8893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8893, align 1
  %8894 = icmp eq i32 %8882, 0
  %8895 = zext i1 %8894 to i8
  %8896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8895, i8* %8896, align 1
  %8897 = lshr i32 %8882, 31
  %8898 = trunc i32 %8897 to i8
  %8899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8898, i8* %8899, align 1
  %8900 = lshr i32 %8882, 31
  %8901 = xor i32 %8897, %8900
  %8902 = add i32 %8901, %8900
  %8903 = icmp eq i32 %8902, 2
  %8904 = zext i1 %8903 to i8
  %8905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8904, i8* %8905, align 1
  store %struct.Memory* %loadMem_411d0c, %struct.Memory** %MEMORY
  %loadMem_411d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8907 = getelementptr inbounds %struct.GPR, %struct.GPR* %8906, i32 0, i32 33
  %8908 = getelementptr inbounds %struct.Reg, %struct.Reg* %8907, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %8908 to i64*
  %8909 = load i64, i64* %PC.i76
  %8910 = add i64 %8909, 105
  %8911 = load i64, i64* %PC.i76
  %8912 = add i64 %8911, 6
  %8913 = load i64, i64* %PC.i76
  %8914 = add i64 %8913, 6
  store i64 %8914, i64* %PC.i76
  %8915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8916 = load i8, i8* %8915, align 1
  %8917 = icmp eq i8 %8916, 0
  %8918 = zext i1 %8917 to i8
  store i8 %8918, i8* %BRANCH_TAKEN, align 1
  %8919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8920 = select i1 %8917, i64 %8910, i64 %8912
  store i64 %8920, i64* %8919, align 8
  store %struct.Memory* %loadMem_411d0f, %struct.Memory** %MEMORY
  %loadBr_411d0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411d0f = icmp eq i8 %loadBr_411d0f, 1
  br i1 %cmpBr_411d0f, label %block_.L_411d78, label %block_411d15

block_411d15:                                     ; preds = %block_411cdd
  %loadMem_411d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8922 = getelementptr inbounds %struct.GPR, %struct.GPR* %8921, i32 0, i32 33
  %8923 = getelementptr inbounds %struct.Reg, %struct.Reg* %8922, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %8923 to i64*
  %8924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8925 = getelementptr inbounds %struct.GPR, %struct.GPR* %8924, i32 0, i32 1
  %8926 = getelementptr inbounds %struct.Reg, %struct.Reg* %8925, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %8926 to i64*
  %8927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8928 = getelementptr inbounds %struct.GPR, %struct.GPR* %8927, i32 0, i32 15
  %8929 = getelementptr inbounds %struct.Reg, %struct.Reg* %8928, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %8929 to i64*
  %8930 = load i64, i64* %RBP.i75
  %8931 = sub i64 %8930, 68
  %8932 = load i64, i64* %PC.i73
  %8933 = add i64 %8932, 4
  store i64 %8933, i64* %PC.i73
  %8934 = inttoptr i64 %8931 to i32*
  %8935 = load i32, i32* %8934
  %8936 = sext i32 %8935 to i64
  store i64 %8936, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_411d15, %struct.Memory** %MEMORY
  %loadMem_411d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8938 = getelementptr inbounds %struct.GPR, %struct.GPR* %8937, i32 0, i32 33
  %8939 = getelementptr inbounds %struct.Reg, %struct.Reg* %8938, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %8939 to i64*
  %8940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8941 = getelementptr inbounds %struct.GPR, %struct.GPR* %8940, i32 0, i32 1
  %8942 = getelementptr inbounds %struct.Reg, %struct.Reg* %8941, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %8942 to i64*
  %8943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8944 = getelementptr inbounds %struct.GPR, %struct.GPR* %8943, i32 0, i32 5
  %8945 = getelementptr inbounds %struct.Reg, %struct.Reg* %8944, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %8945 to i64*
  %8946 = load i64, i64* %RAX.i71
  %8947 = mul i64 %8946, 4
  %8948 = add i64 %8947, 11185584
  %8949 = load i64, i64* %PC.i70
  %8950 = add i64 %8949, 7
  store i64 %8950, i64* %PC.i70
  %8951 = inttoptr i64 %8948 to i32*
  %8952 = load i32, i32* %8951
  %8953 = zext i32 %8952 to i64
  store i64 %8953, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_411d19, %struct.Memory** %MEMORY
  %loadMem_411d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8955 = getelementptr inbounds %struct.GPR, %struct.GPR* %8954, i32 0, i32 33
  %8956 = getelementptr inbounds %struct.Reg, %struct.Reg* %8955, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8956 to i64*
  %8957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8958 = getelementptr inbounds %struct.GPR, %struct.GPR* %8957, i32 0, i32 5
  %8959 = getelementptr inbounds %struct.Reg, %struct.Reg* %8958, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8959 to i32*
  %8960 = load i32, i32* %ECX.i
  %8961 = zext i32 %8960 to i64
  %8962 = load i64, i64* %PC.i69
  %8963 = add i64 %8962, 7
  store i64 %8963, i64* %PC.i69
  %8964 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %8965 = sub i32 %8960, %8964
  %8966 = icmp ult i32 %8960, %8964
  %8967 = zext i1 %8966 to i8
  %8968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8967, i8* %8968, align 1
  %8969 = and i32 %8965, 255
  %8970 = call i32 @llvm.ctpop.i32(i32 %8969)
  %8971 = trunc i32 %8970 to i8
  %8972 = and i8 %8971, 1
  %8973 = xor i8 %8972, 1
  %8974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8973, i8* %8974, align 1
  %8975 = xor i32 %8964, %8960
  %8976 = xor i32 %8975, %8965
  %8977 = lshr i32 %8976, 4
  %8978 = trunc i32 %8977 to i8
  %8979 = and i8 %8978, 1
  %8980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8979, i8* %8980, align 1
  %8981 = icmp eq i32 %8965, 0
  %8982 = zext i1 %8981 to i8
  %8983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8982, i8* %8983, align 1
  %8984 = lshr i32 %8965, 31
  %8985 = trunc i32 %8984 to i8
  %8986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8985, i8* %8986, align 1
  %8987 = lshr i32 %8960, 31
  %8988 = lshr i32 %8964, 31
  %8989 = xor i32 %8988, %8987
  %8990 = xor i32 %8984, %8987
  %8991 = add i32 %8990, %8989
  %8992 = icmp eq i32 %8991, 2
  %8993 = zext i1 %8992 to i8
  %8994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8993, i8* %8994, align 1
  store %struct.Memory* %loadMem_411d20, %struct.Memory** %MEMORY
  %loadMem_411d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8996 = getelementptr inbounds %struct.GPR, %struct.GPR* %8995, i32 0, i32 33
  %8997 = getelementptr inbounds %struct.Reg, %struct.Reg* %8996, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %8997 to i64*
  %8998 = load i64, i64* %PC.i68
  %8999 = add i64 %8998, 81
  %9000 = load i64, i64* %PC.i68
  %9001 = add i64 %9000, 6
  %9002 = load i64, i64* %PC.i68
  %9003 = add i64 %9002, 6
  store i64 %9003, i64* %PC.i68
  %9004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9005 = load i8, i8* %9004, align 1
  store i8 %9005, i8* %BRANCH_TAKEN, align 1
  %9006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9007 = icmp ne i8 %9005, 0
  %9008 = select i1 %9007, i64 %8999, i64 %9001
  store i64 %9008, i64* %9006, align 8
  store %struct.Memory* %loadMem_411d27, %struct.Memory** %MEMORY
  %loadBr_411d27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411d27 = icmp eq i8 %loadBr_411d27, 1
  br i1 %cmpBr_411d27, label %block_.L_411d78, label %block_411d2d

block_411d2d:                                     ; preds = %block_411d15
  %loadMem_411d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9010 = getelementptr inbounds %struct.GPR, %struct.GPR* %9009, i32 0, i32 33
  %9011 = getelementptr inbounds %struct.Reg, %struct.Reg* %9010, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %9011 to i64*
  %9012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9013 = getelementptr inbounds %struct.GPR, %struct.GPR* %9012, i32 0, i32 15
  %9014 = getelementptr inbounds %struct.Reg, %struct.Reg* %9013, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %9014 to i64*
  %9015 = load i64, i64* %RBP.i67
  %9016 = sub i64 %9015, 24
  %9017 = load i64, i64* %PC.i66
  %9018 = add i64 %9017, 5
  store i64 %9018, i64* %PC.i66
  %9019 = inttoptr i64 %9016 to i64*
  %9020 = load i64, i64* %9019
  %9021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9021, align 1
  %9022 = trunc i64 %9020 to i32
  %9023 = and i32 %9022, 255
  %9024 = call i32 @llvm.ctpop.i32(i32 %9023)
  %9025 = trunc i32 %9024 to i8
  %9026 = and i8 %9025, 1
  %9027 = xor i8 %9026, 1
  %9028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9027, i8* %9028, align 1
  %9029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9029, align 1
  %9030 = icmp eq i64 %9020, 0
  %9031 = zext i1 %9030 to i8
  %9032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9031, i8* %9032, align 1
  %9033 = lshr i64 %9020, 63
  %9034 = trunc i64 %9033 to i8
  %9035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9034, i8* %9035, align 1
  %9036 = lshr i64 %9020, 63
  %9037 = xor i64 %9033, %9036
  %9038 = add i64 %9037, %9036
  %9039 = icmp eq i64 %9038, 2
  %9040 = zext i1 %9039 to i8
  %9041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9040, i8* %9041, align 1
  store %struct.Memory* %loadMem_411d2d, %struct.Memory** %MEMORY
  %loadMem_411d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9043 = getelementptr inbounds %struct.GPR, %struct.GPR* %9042, i32 0, i32 33
  %9044 = getelementptr inbounds %struct.Reg, %struct.Reg* %9043, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %9044 to i64*
  %9045 = load i64, i64* %PC.i65
  %9046 = add i64 %9045, 20
  %9047 = load i64, i64* %PC.i65
  %9048 = add i64 %9047, 6
  %9049 = load i64, i64* %PC.i65
  %9050 = add i64 %9049, 6
  store i64 %9050, i64* %PC.i65
  %9051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9052 = load i8, i8* %9051, align 1
  store i8 %9052, i8* %BRANCH_TAKEN, align 1
  %9053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9054 = icmp ne i8 %9052, 0
  %9055 = select i1 %9054, i64 %9046, i64 %9048
  store i64 %9055, i64* %9053, align 8
  store %struct.Memory* %loadMem_411d32, %struct.Memory** %MEMORY
  %loadBr_411d32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411d32 = icmp eq i8 %loadBr_411d32, 1
  br i1 %cmpBr_411d32, label %block_.L_411d46, label %block_411d38

block_411d38:                                     ; preds = %block_411d2d
  %loadMem_411d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9057 = getelementptr inbounds %struct.GPR, %struct.GPR* %9056, i32 0, i32 33
  %9058 = getelementptr inbounds %struct.Reg, %struct.Reg* %9057, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %9058 to i64*
  %9059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9060 = getelementptr inbounds %struct.GPR, %struct.GPR* %9059, i32 0, i32 1
  %9061 = getelementptr inbounds %struct.Reg, %struct.Reg* %9060, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %9061 to i64*
  %9062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9063 = getelementptr inbounds %struct.GPR, %struct.GPR* %9062, i32 0, i32 15
  %9064 = getelementptr inbounds %struct.Reg, %struct.Reg* %9063, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %9064 to i64*
  %9065 = load i64, i64* %RBP.i64
  %9066 = sub i64 %9065, 68
  %9067 = load i64, i64* %PC.i62
  %9068 = add i64 %9067, 3
  store i64 %9068, i64* %PC.i62
  %9069 = inttoptr i64 %9066 to i32*
  %9070 = load i32, i32* %9069
  %9071 = zext i32 %9070 to i64
  store i64 %9071, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_411d38, %struct.Memory** %MEMORY
  %loadMem_411d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9073 = getelementptr inbounds %struct.GPR, %struct.GPR* %9072, i32 0, i32 33
  %9074 = getelementptr inbounds %struct.Reg, %struct.Reg* %9073, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %9074 to i64*
  %9075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9076 = getelementptr inbounds %struct.GPR, %struct.GPR* %9075, i32 0, i32 5
  %9077 = getelementptr inbounds %struct.Reg, %struct.Reg* %9076, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %9077 to i64*
  %9078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9079 = getelementptr inbounds %struct.GPR, %struct.GPR* %9078, i32 0, i32 15
  %9080 = getelementptr inbounds %struct.Reg, %struct.Reg* %9079, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %9080 to i64*
  %9081 = load i64, i64* %RBP.i61
  %9082 = sub i64 %9081, 24
  %9083 = load i64, i64* %PC.i59
  %9084 = add i64 %9083, 4
  store i64 %9084, i64* %PC.i59
  %9085 = inttoptr i64 %9082 to i64*
  %9086 = load i64, i64* %9085
  store i64 %9086, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_411d3b, %struct.Memory** %MEMORY
  %loadMem_411d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9088 = getelementptr inbounds %struct.GPR, %struct.GPR* %9087, i32 0, i32 33
  %9089 = getelementptr inbounds %struct.Reg, %struct.Reg* %9088, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %9089 to i64*
  %9090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9091 = getelementptr inbounds %struct.GPR, %struct.GPR* %9090, i32 0, i32 7
  %9092 = getelementptr inbounds %struct.Reg, %struct.Reg* %9091, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %9092 to i64*
  %9093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9094 = getelementptr inbounds %struct.GPR, %struct.GPR* %9093, i32 0, i32 15
  %9095 = getelementptr inbounds %struct.Reg, %struct.Reg* %9094, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %9095 to i64*
  %9096 = load i64, i64* %RBP.i58
  %9097 = sub i64 %9096, 32
  %9098 = load i64, i64* %PC.i56
  %9099 = add i64 %9098, 4
  store i64 %9099, i64* %PC.i56
  %9100 = inttoptr i64 %9097 to i32*
  %9101 = load i32, i32* %9100
  %9102 = sext i32 %9101 to i64
  store i64 %9102, i64* %RDX.i57, align 8
  store %struct.Memory* %loadMem_411d3f, %struct.Memory** %MEMORY
  %loadMem_411d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9104 = getelementptr inbounds %struct.GPR, %struct.GPR* %9103, i32 0, i32 33
  %9105 = getelementptr inbounds %struct.Reg, %struct.Reg* %9104, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %9105 to i64*
  %9106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9107 = getelementptr inbounds %struct.GPR, %struct.GPR* %9106, i32 0, i32 1
  %9108 = getelementptr inbounds %struct.Reg, %struct.Reg* %9107, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %9108 to i32*
  %9109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9110 = getelementptr inbounds %struct.GPR, %struct.GPR* %9109, i32 0, i32 5
  %9111 = getelementptr inbounds %struct.Reg, %struct.Reg* %9110, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %9111 to i64*
  %9112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9113 = getelementptr inbounds %struct.GPR, %struct.GPR* %9112, i32 0, i32 7
  %9114 = getelementptr inbounds %struct.Reg, %struct.Reg* %9113, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9114 to i64*
  %9115 = load i64, i64* %RCX.i55
  %9116 = load i64, i64* %RDX.i
  %9117 = mul i64 %9116, 4
  %9118 = add i64 %9117, %9115
  %9119 = load i32, i32* %EAX.i54
  %9120 = zext i32 %9119 to i64
  %9121 = load i64, i64* %PC.i53
  %9122 = add i64 %9121, 3
  store i64 %9122, i64* %PC.i53
  %9123 = inttoptr i64 %9118 to i32*
  store i32 %9119, i32* %9123
  store %struct.Memory* %loadMem_411d43, %struct.Memory** %MEMORY
  br label %block_.L_411d46

block_.L_411d46:                                  ; preds = %block_411d38, %block_411d2d
  %loadMem_411d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9125 = getelementptr inbounds %struct.GPR, %struct.GPR* %9124, i32 0, i32 33
  %9126 = getelementptr inbounds %struct.Reg, %struct.Reg* %9125, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %9126 to i64*
  %9127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9128 = getelementptr inbounds %struct.GPR, %struct.GPR* %9127, i32 0, i32 1
  %9129 = getelementptr inbounds %struct.Reg, %struct.Reg* %9128, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %9129 to i64*
  %9130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9131 = getelementptr inbounds %struct.GPR, %struct.GPR* %9130, i32 0, i32 15
  %9132 = getelementptr inbounds %struct.Reg, %struct.Reg* %9131, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %9132 to i64*
  %9133 = load i64, i64* %RBP.i52
  %9134 = sub i64 %9133, 32
  %9135 = load i64, i64* %PC.i50
  %9136 = add i64 %9135, 3
  store i64 %9136, i64* %PC.i50
  %9137 = inttoptr i64 %9134 to i32*
  %9138 = load i32, i32* %9137
  %9139 = zext i32 %9138 to i64
  store i64 %9139, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_411d46, %struct.Memory** %MEMORY
  %loadMem_411d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9141 = getelementptr inbounds %struct.GPR, %struct.GPR* %9140, i32 0, i32 33
  %9142 = getelementptr inbounds %struct.Reg, %struct.Reg* %9141, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %9142 to i64*
  %9143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9144 = getelementptr inbounds %struct.GPR, %struct.GPR* %9143, i32 0, i32 1
  %9145 = getelementptr inbounds %struct.Reg, %struct.Reg* %9144, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %9145 to i64*
  %9146 = load i64, i64* %RAX.i49
  %9147 = load i64, i64* %PC.i48
  %9148 = add i64 %9147, 3
  store i64 %9148, i64* %PC.i48
  %9149 = trunc i64 %9146 to i32
  %9150 = add i32 1, %9149
  %9151 = zext i32 %9150 to i64
  store i64 %9151, i64* %RAX.i49, align 8
  %9152 = icmp ult i32 %9150, %9149
  %9153 = icmp ult i32 %9150, 1
  %9154 = or i1 %9152, %9153
  %9155 = zext i1 %9154 to i8
  %9156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9155, i8* %9156, align 1
  %9157 = and i32 %9150, 255
  %9158 = call i32 @llvm.ctpop.i32(i32 %9157)
  %9159 = trunc i32 %9158 to i8
  %9160 = and i8 %9159, 1
  %9161 = xor i8 %9160, 1
  %9162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9161, i8* %9162, align 1
  %9163 = xor i64 1, %9146
  %9164 = trunc i64 %9163 to i32
  %9165 = xor i32 %9164, %9150
  %9166 = lshr i32 %9165, 4
  %9167 = trunc i32 %9166 to i8
  %9168 = and i8 %9167, 1
  %9169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9168, i8* %9169, align 1
  %9170 = icmp eq i32 %9150, 0
  %9171 = zext i1 %9170 to i8
  %9172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9171, i8* %9172, align 1
  %9173 = lshr i32 %9150, 31
  %9174 = trunc i32 %9173 to i8
  %9175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9174, i8* %9175, align 1
  %9176 = lshr i32 %9149, 31
  %9177 = xor i32 %9173, %9176
  %9178 = add i32 %9177, %9173
  %9179 = icmp eq i32 %9178, 2
  %9180 = zext i1 %9179 to i8
  %9181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9180, i8* %9181, align 1
  store %struct.Memory* %loadMem_411d49, %struct.Memory** %MEMORY
  %loadMem_411d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9183 = getelementptr inbounds %struct.GPR, %struct.GPR* %9182, i32 0, i32 33
  %9184 = getelementptr inbounds %struct.Reg, %struct.Reg* %9183, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %9184 to i64*
  %9185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9186 = getelementptr inbounds %struct.GPR, %struct.GPR* %9185, i32 0, i32 1
  %9187 = getelementptr inbounds %struct.Reg, %struct.Reg* %9186, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %9187 to i32*
  %9188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9189 = getelementptr inbounds %struct.GPR, %struct.GPR* %9188, i32 0, i32 15
  %9190 = getelementptr inbounds %struct.Reg, %struct.Reg* %9189, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %9190 to i64*
  %9191 = load i64, i64* %RBP.i47
  %9192 = sub i64 %9191, 32
  %9193 = load i32, i32* %EAX.i46
  %9194 = zext i32 %9193 to i64
  %9195 = load i64, i64* %PC.i45
  %9196 = add i64 %9195, 3
  store i64 %9196, i64* %PC.i45
  %9197 = inttoptr i64 %9192 to i32*
  store i32 %9193, i32* %9197
  store %struct.Memory* %loadMem_411d4c, %struct.Memory** %MEMORY
  %loadMem_411d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9199 = getelementptr inbounds %struct.GPR, %struct.GPR* %9198, i32 0, i32 33
  %9200 = getelementptr inbounds %struct.Reg, %struct.Reg* %9199, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %9200 to i64*
  %9201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9202 = getelementptr inbounds %struct.GPR, %struct.GPR* %9201, i32 0, i32 1
  %9203 = getelementptr inbounds %struct.Reg, %struct.Reg* %9202, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %9203 to i64*
  %9204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9205 = getelementptr inbounds %struct.GPR, %struct.GPR* %9204, i32 0, i32 15
  %9206 = getelementptr inbounds %struct.Reg, %struct.Reg* %9205, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %9206 to i64*
  %9207 = load i64, i64* %RBP.i44
  %9208 = sub i64 %9207, 32
  %9209 = load i64, i64* %PC.i42
  %9210 = add i64 %9209, 3
  store i64 %9210, i64* %PC.i42
  %9211 = inttoptr i64 %9208 to i32*
  %9212 = load i32, i32* %9211
  %9213 = zext i32 %9212 to i64
  store i64 %9213, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_411d4f, %struct.Memory** %MEMORY
  %loadMem_411d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9215 = getelementptr inbounds %struct.GPR, %struct.GPR* %9214, i32 0, i32 33
  %9216 = getelementptr inbounds %struct.Reg, %struct.Reg* %9215, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %9216 to i64*
  %9217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9218 = getelementptr inbounds %struct.GPR, %struct.GPR* %9217, i32 0, i32 1
  %9219 = getelementptr inbounds %struct.Reg, %struct.Reg* %9218, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %9219 to i32*
  %9220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9221 = getelementptr inbounds %struct.GPR, %struct.GPR* %9220, i32 0, i32 15
  %9222 = getelementptr inbounds %struct.Reg, %struct.Reg* %9221, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %9222 to i64*
  %9223 = load i32, i32* %EAX.i40
  %9224 = zext i32 %9223 to i64
  %9225 = load i64, i64* %RBP.i41
  %9226 = sub i64 %9225, 16
  %9227 = load i64, i64* %PC.i39
  %9228 = add i64 %9227, 3
  store i64 %9228, i64* %PC.i39
  %9229 = inttoptr i64 %9226 to i32*
  %9230 = load i32, i32* %9229
  %9231 = sub i32 %9223, %9230
  %9232 = icmp ult i32 %9223, %9230
  %9233 = zext i1 %9232 to i8
  %9234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9233, i8* %9234, align 1
  %9235 = and i32 %9231, 255
  %9236 = call i32 @llvm.ctpop.i32(i32 %9235)
  %9237 = trunc i32 %9236 to i8
  %9238 = and i8 %9237, 1
  %9239 = xor i8 %9238, 1
  %9240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9239, i8* %9240, align 1
  %9241 = xor i32 %9230, %9223
  %9242 = xor i32 %9241, %9231
  %9243 = lshr i32 %9242, 4
  %9244 = trunc i32 %9243 to i8
  %9245 = and i8 %9244, 1
  %9246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9245, i8* %9246, align 1
  %9247 = icmp eq i32 %9231, 0
  %9248 = zext i1 %9247 to i8
  %9249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9248, i8* %9249, align 1
  %9250 = lshr i32 %9231, 31
  %9251 = trunc i32 %9250 to i8
  %9252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9251, i8* %9252, align 1
  %9253 = lshr i32 %9223, 31
  %9254 = lshr i32 %9230, 31
  %9255 = xor i32 %9254, %9253
  %9256 = xor i32 %9250, %9253
  %9257 = add i32 %9256, %9255
  %9258 = icmp eq i32 %9257, 2
  %9259 = zext i1 %9258 to i8
  %9260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9259, i8* %9260, align 1
  store %struct.Memory* %loadMem_411d52, %struct.Memory** %MEMORY
  %loadMem_411d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9262 = getelementptr inbounds %struct.GPR, %struct.GPR* %9261, i32 0, i32 33
  %9263 = getelementptr inbounds %struct.Reg, %struct.Reg* %9262, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %9263 to i64*
  %9264 = load i64, i64* %PC.i38
  %9265 = add i64 %9264, 17
  %9266 = load i64, i64* %PC.i38
  %9267 = add i64 %9266, 6
  %9268 = load i64, i64* %PC.i38
  %9269 = add i64 %9268, 6
  store i64 %9269, i64* %PC.i38
  %9270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9271 = load i8, i8* %9270, align 1
  %9272 = icmp ne i8 %9271, 0
  %9273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %9274 = load i8, i8* %9273, align 1
  %9275 = icmp ne i8 %9274, 0
  %9276 = xor i1 %9272, %9275
  %9277 = zext i1 %9276 to i8
  store i8 %9277, i8* %BRANCH_TAKEN, align 1
  %9278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9279 = select i1 %9276, i64 %9265, i64 %9267
  store i64 %9279, i64* %9278, align 8
  store %struct.Memory* %loadMem_411d55, %struct.Memory** %MEMORY
  %loadBr_411d55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411d55 = icmp eq i8 %loadBr_411d55, 1
  br i1 %cmpBr_411d55, label %block_.L_411d66, label %block_411d5b

block_411d5b:                                     ; preds = %block_.L_411d46
  %loadMem_411d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9281 = getelementptr inbounds %struct.GPR, %struct.GPR* %9280, i32 0, i32 33
  %9282 = getelementptr inbounds %struct.Reg, %struct.Reg* %9281, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %9282 to i64*
  %9283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9284 = getelementptr inbounds %struct.GPR, %struct.GPR* %9283, i32 0, i32 1
  %9285 = getelementptr inbounds %struct.Reg, %struct.Reg* %9284, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %9285 to i64*
  %9286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9287 = getelementptr inbounds %struct.GPR, %struct.GPR* %9286, i32 0, i32 15
  %9288 = getelementptr inbounds %struct.Reg, %struct.Reg* %9287, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %9288 to i64*
  %9289 = load i64, i64* %RBP.i37
  %9290 = sub i64 %9289, 32
  %9291 = load i64, i64* %PC.i35
  %9292 = add i64 %9291, 3
  store i64 %9292, i64* %PC.i35
  %9293 = inttoptr i64 %9290 to i32*
  %9294 = load i32, i32* %9293
  %9295 = zext i32 %9294 to i64
  store i64 %9295, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_411d5b, %struct.Memory** %MEMORY
  %loadMem_411d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9297 = getelementptr inbounds %struct.GPR, %struct.GPR* %9296, i32 0, i32 33
  %9298 = getelementptr inbounds %struct.Reg, %struct.Reg* %9297, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %9298 to i64*
  %9299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9300 = getelementptr inbounds %struct.GPR, %struct.GPR* %9299, i32 0, i32 1
  %9301 = getelementptr inbounds %struct.Reg, %struct.Reg* %9300, i32 0, i32 0
  %EAX.i33 = bitcast %union.anon* %9301 to i32*
  %9302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9303 = getelementptr inbounds %struct.GPR, %struct.GPR* %9302, i32 0, i32 15
  %9304 = getelementptr inbounds %struct.Reg, %struct.Reg* %9303, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %9304 to i64*
  %9305 = load i64, i64* %RBP.i34
  %9306 = sub i64 %9305, 4
  %9307 = load i32, i32* %EAX.i33
  %9308 = zext i32 %9307 to i64
  %9309 = load i64, i64* %PC.i32
  %9310 = add i64 %9309, 3
  store i64 %9310, i64* %PC.i32
  %9311 = inttoptr i64 %9306 to i32*
  store i32 %9307, i32* %9311
  store %struct.Memory* %loadMem_411d5e, %struct.Memory** %MEMORY
  %loadMem_411d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9313 = getelementptr inbounds %struct.GPR, %struct.GPR* %9312, i32 0, i32 33
  %9314 = getelementptr inbounds %struct.Reg, %struct.Reg* %9313, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %9314 to i64*
  %9315 = load i64, i64* %PC.i31
  %9316 = add i64 %9315, 58
  %9317 = load i64, i64* %PC.i31
  %9318 = add i64 %9317, 5
  store i64 %9318, i64* %PC.i31
  %9319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9316, i64* %9319, align 8
  store %struct.Memory* %loadMem_411d61, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411d66:                                  ; preds = %block_.L_411d46
  %loadMem_411d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9321 = getelementptr inbounds %struct.GPR, %struct.GPR* %9320, i32 0, i32 33
  %9322 = getelementptr inbounds %struct.Reg, %struct.Reg* %9321, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %9322 to i64*
  %9323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9324 = getelementptr inbounds %struct.GPR, %struct.GPR* %9323, i32 0, i32 1
  %9325 = getelementptr inbounds %struct.Reg, %struct.Reg* %9324, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %9325 to i64*
  %9326 = load i64, i64* %PC.i29
  %9327 = add i64 %9326, 7
  store i64 %9327, i64* %PC.i29
  %9328 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %9329 = zext i32 %9328 to i64
  store i64 %9329, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_411d66, %struct.Memory** %MEMORY
  %loadMem_411d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9331 = getelementptr inbounds %struct.GPR, %struct.GPR* %9330, i32 0, i32 33
  %9332 = getelementptr inbounds %struct.Reg, %struct.Reg* %9331, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %9332 to i64*
  %9333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9334 = getelementptr inbounds %struct.GPR, %struct.GPR* %9333, i32 0, i32 5
  %9335 = getelementptr inbounds %struct.Reg, %struct.Reg* %9334, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %9335 to i64*
  %9336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9337 = getelementptr inbounds %struct.GPR, %struct.GPR* %9336, i32 0, i32 15
  %9338 = getelementptr inbounds %struct.Reg, %struct.Reg* %9337, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %9338 to i64*
  %9339 = load i64, i64* %RBP.i28
  %9340 = sub i64 %9339, 68
  %9341 = load i64, i64* %PC.i26
  %9342 = add i64 %9341, 4
  store i64 %9342, i64* %PC.i26
  %9343 = inttoptr i64 %9340 to i32*
  %9344 = load i32, i32* %9343
  %9345 = sext i32 %9344 to i64
  store i64 %9345, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_411d6d, %struct.Memory** %MEMORY
  %loadMem_411d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9347 = getelementptr inbounds %struct.GPR, %struct.GPR* %9346, i32 0, i32 33
  %9348 = getelementptr inbounds %struct.Reg, %struct.Reg* %9347, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %9348 to i64*
  %9349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9350 = getelementptr inbounds %struct.GPR, %struct.GPR* %9349, i32 0, i32 1
  %9351 = getelementptr inbounds %struct.Reg, %struct.Reg* %9350, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %9351 to i32*
  %9352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9353 = getelementptr inbounds %struct.GPR, %struct.GPR* %9352, i32 0, i32 5
  %9354 = getelementptr inbounds %struct.Reg, %struct.Reg* %9353, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %9354 to i64*
  %9355 = load i64, i64* %RCX.i
  %9356 = mul i64 %9355, 4
  %9357 = add i64 %9356, 11185584
  %9358 = load i32, i32* %EAX.i25
  %9359 = zext i32 %9358 to i64
  %9360 = load i64, i64* %PC.i24
  %9361 = add i64 %9360, 7
  store i64 %9361, i64* %PC.i24
  %9362 = inttoptr i64 %9357 to i32*
  store i32 %9358, i32* %9362
  store %struct.Memory* %loadMem_411d71, %struct.Memory** %MEMORY
  br label %block_.L_411d78

block_.L_411d78:                                  ; preds = %block_.L_411d66, %block_411d15, %block_411cdd
  %loadMem_411d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9364 = getelementptr inbounds %struct.GPR, %struct.GPR* %9363, i32 0, i32 33
  %9365 = getelementptr inbounds %struct.Reg, %struct.Reg* %9364, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %9365 to i64*
  %9366 = load i64, i64* %PC.i23
  %9367 = add i64 %9366, 5
  %9368 = load i64, i64* %PC.i23
  %9369 = add i64 %9368, 5
  store i64 %9369, i64* %PC.i23
  %9370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9367, i64* %9370, align 8
  store %struct.Memory* %loadMem_411d78, %struct.Memory** %MEMORY
  br label %block_.L_411d7d

block_.L_411d7d:                                  ; preds = %block_.L_411d78
  %loadMem_411d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9372 = getelementptr inbounds %struct.GPR, %struct.GPR* %9371, i32 0, i32 33
  %9373 = getelementptr inbounds %struct.Reg, %struct.Reg* %9372, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %9373 to i64*
  %9374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9375 = getelementptr inbounds %struct.GPR, %struct.GPR* %9374, i32 0, i32 1
  %9376 = getelementptr inbounds %struct.Reg, %struct.Reg* %9375, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %9376 to i64*
  %9377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9378 = getelementptr inbounds %struct.GPR, %struct.GPR* %9377, i32 0, i32 15
  %9379 = getelementptr inbounds %struct.Reg, %struct.Reg* %9378, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %9379 to i64*
  %9380 = load i64, i64* %RBP.i22
  %9381 = sub i64 %9380, 28
  %9382 = load i64, i64* %PC.i20
  %9383 = add i64 %9382, 3
  store i64 %9383, i64* %PC.i20
  %9384 = inttoptr i64 %9381 to i32*
  %9385 = load i32, i32* %9384
  %9386 = zext i32 %9385 to i64
  store i64 %9386, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_411d7d, %struct.Memory** %MEMORY
  %loadMem_411d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9388 = getelementptr inbounds %struct.GPR, %struct.GPR* %9387, i32 0, i32 33
  %9389 = getelementptr inbounds %struct.Reg, %struct.Reg* %9388, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %9389 to i64*
  %9390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9391 = getelementptr inbounds %struct.GPR, %struct.GPR* %9390, i32 0, i32 1
  %9392 = getelementptr inbounds %struct.Reg, %struct.Reg* %9391, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %9392 to i64*
  %9393 = load i64, i64* %RAX.i19
  %9394 = load i64, i64* %PC.i18
  %9395 = add i64 %9394, 3
  store i64 %9395, i64* %PC.i18
  %9396 = trunc i64 %9393 to i32
  %9397 = add i32 1, %9396
  %9398 = zext i32 %9397 to i64
  store i64 %9398, i64* %RAX.i19, align 8
  %9399 = icmp ult i32 %9397, %9396
  %9400 = icmp ult i32 %9397, 1
  %9401 = or i1 %9399, %9400
  %9402 = zext i1 %9401 to i8
  %9403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9402, i8* %9403, align 1
  %9404 = and i32 %9397, 255
  %9405 = call i32 @llvm.ctpop.i32(i32 %9404)
  %9406 = trunc i32 %9405 to i8
  %9407 = and i8 %9406, 1
  %9408 = xor i8 %9407, 1
  %9409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9408, i8* %9409, align 1
  %9410 = xor i64 1, %9393
  %9411 = trunc i64 %9410 to i32
  %9412 = xor i32 %9411, %9397
  %9413 = lshr i32 %9412, 4
  %9414 = trunc i32 %9413 to i8
  %9415 = and i8 %9414, 1
  %9416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9415, i8* %9416, align 1
  %9417 = icmp eq i32 %9397, 0
  %9418 = zext i1 %9417 to i8
  %9419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9418, i8* %9419, align 1
  %9420 = lshr i32 %9397, 31
  %9421 = trunc i32 %9420 to i8
  %9422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9421, i8* %9422, align 1
  %9423 = lshr i32 %9396, 31
  %9424 = xor i32 %9420, %9423
  %9425 = add i32 %9424, %9420
  %9426 = icmp eq i32 %9425, 2
  %9427 = zext i1 %9426 to i8
  %9428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9427, i8* %9428, align 1
  store %struct.Memory* %loadMem_411d80, %struct.Memory** %MEMORY
  %loadMem_411d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9430 = getelementptr inbounds %struct.GPR, %struct.GPR* %9429, i32 0, i32 33
  %9431 = getelementptr inbounds %struct.Reg, %struct.Reg* %9430, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %9431 to i64*
  %9432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9433 = getelementptr inbounds %struct.GPR, %struct.GPR* %9432, i32 0, i32 1
  %9434 = getelementptr inbounds %struct.Reg, %struct.Reg* %9433, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %9434 to i32*
  %9435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9436 = getelementptr inbounds %struct.GPR, %struct.GPR* %9435, i32 0, i32 15
  %9437 = getelementptr inbounds %struct.Reg, %struct.Reg* %9436, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %9437 to i64*
  %9438 = load i64, i64* %RBP.i17
  %9439 = sub i64 %9438, 28
  %9440 = load i32, i32* %EAX.i16
  %9441 = zext i32 %9440 to i64
  %9442 = load i64, i64* %PC.i15
  %9443 = add i64 %9442, 3
  store i64 %9443, i64* %PC.i15
  %9444 = inttoptr i64 %9439 to i32*
  store i32 %9440, i32* %9444
  store %struct.Memory* %loadMem_411d83, %struct.Memory** %MEMORY
  %loadMem_411d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9446 = getelementptr inbounds %struct.GPR, %struct.GPR* %9445, i32 0, i32 33
  %9447 = getelementptr inbounds %struct.Reg, %struct.Reg* %9446, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %9447 to i64*
  %9448 = load i64, i64* %PC.i14
  %9449 = add i64 %9448, -205
  %9450 = load i64, i64* %PC.i14
  %9451 = add i64 %9450, 5
  store i64 %9451, i64* %PC.i14
  %9452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9449, i64* %9452, align 8
  store %struct.Memory* %loadMem_411d86, %struct.Memory** %MEMORY
  br label %block_.L_411cb9

block_.L_411d8b:                                  ; preds = %block_.L_411cb9
  %loadMem_411d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9454 = getelementptr inbounds %struct.GPR, %struct.GPR* %9453, i32 0, i32 33
  %9455 = getelementptr inbounds %struct.Reg, %struct.Reg* %9454, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %9455 to i64*
  %9456 = load i64, i64* %PC.i13
  %9457 = add i64 %9456, 5
  %9458 = load i64, i64* %PC.i13
  %9459 = add i64 %9458, 5
  store i64 %9459, i64* %PC.i13
  %9460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9457, i64* %9460, align 8
  store %struct.Memory* %loadMem_411d8b, %struct.Memory** %MEMORY
  br label %block_.L_411d90

block_.L_411d90:                                  ; preds = %block_.L_411d8b, %block_.L_411c85
  %loadMem_411d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9462 = getelementptr inbounds %struct.GPR, %struct.GPR* %9461, i32 0, i32 33
  %9463 = getelementptr inbounds %struct.Reg, %struct.Reg* %9462, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %9463 to i64*
  %9464 = load i64, i64* %PC.i12
  %9465 = add i64 %9464, 5
  %9466 = load i64, i64* %PC.i12
  %9467 = add i64 %9466, 5
  store i64 %9467, i64* %PC.i12
  %9468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9465, i64* %9468, align 8
  store %struct.Memory* %loadMem_411d90, %struct.Memory** %MEMORY
  br label %block_.L_411d95

block_.L_411d95:                                  ; preds = %block_.L_411d90, %block_.L_411c80
  %loadMem_411d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9470 = getelementptr inbounds %struct.GPR, %struct.GPR* %9469, i32 0, i32 33
  %9471 = getelementptr inbounds %struct.Reg, %struct.Reg* %9470, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %9471 to i64*
  %9472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9473 = getelementptr inbounds %struct.GPR, %struct.GPR* %9472, i32 0, i32 1
  %9474 = getelementptr inbounds %struct.Reg, %struct.Reg* %9473, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %9474 to i64*
  %9475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9476 = getelementptr inbounds %struct.GPR, %struct.GPR* %9475, i32 0, i32 15
  %9477 = getelementptr inbounds %struct.Reg, %struct.Reg* %9476, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %9477 to i64*
  %9478 = load i64, i64* %RBP.i11
  %9479 = sub i64 %9478, 32
  %9480 = load i64, i64* %PC.i9
  %9481 = add i64 %9480, 3
  store i64 %9481, i64* %PC.i9
  %9482 = inttoptr i64 %9479 to i32*
  %9483 = load i32, i32* %9482
  %9484 = zext i32 %9483 to i64
  store i64 %9484, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_411d95, %struct.Memory** %MEMORY
  %loadMem_411d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9486 = getelementptr inbounds %struct.GPR, %struct.GPR* %9485, i32 0, i32 33
  %9487 = getelementptr inbounds %struct.Reg, %struct.Reg* %9486, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9487 to i64*
  %9488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9489 = getelementptr inbounds %struct.GPR, %struct.GPR* %9488, i32 0, i32 1
  %9490 = getelementptr inbounds %struct.Reg, %struct.Reg* %9489, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9490 to i32*
  %9491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9492 = getelementptr inbounds %struct.GPR, %struct.GPR* %9491, i32 0, i32 15
  %9493 = getelementptr inbounds %struct.Reg, %struct.Reg* %9492, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %9493 to i64*
  %9494 = load i64, i64* %RBP.i8
  %9495 = sub i64 %9494, 4
  %9496 = load i32, i32* %EAX.i
  %9497 = zext i32 %9496 to i64
  %9498 = load i64, i64* %PC.i7
  %9499 = add i64 %9498, 3
  store i64 %9499, i64* %PC.i7
  %9500 = inttoptr i64 %9495 to i32*
  store i32 %9496, i32* %9500
  store %struct.Memory* %loadMem_411d98, %struct.Memory** %MEMORY
  br label %block_.L_411d9b

block_.L_411d9b:                                  ; preds = %block_.L_411d95, %block_411d5b, %block_411c75, %block_411bd3, %block_411ad6, %block_411a34, %block_411937, %block_411895, %block_411798, %block_4116f3, %block_4116d9
  %loadMem_411d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9502 = getelementptr inbounds %struct.GPR, %struct.GPR* %9501, i32 0, i32 33
  %9503 = getelementptr inbounds %struct.Reg, %struct.Reg* %9502, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9503 to i64*
  %9504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9505 = getelementptr inbounds %struct.GPR, %struct.GPR* %9504, i32 0, i32 1
  %9506 = getelementptr inbounds %struct.Reg, %struct.Reg* %9505, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9506 to i64*
  %9507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9508 = getelementptr inbounds %struct.GPR, %struct.GPR* %9507, i32 0, i32 15
  %9509 = getelementptr inbounds %struct.Reg, %struct.Reg* %9508, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %9509 to i64*
  %9510 = load i64, i64* %RBP.i6
  %9511 = sub i64 %9510, 4
  %9512 = load i64, i64* %PC.i5
  %9513 = add i64 %9512, 3
  store i64 %9513, i64* %PC.i5
  %9514 = inttoptr i64 %9511 to i32*
  %9515 = load i32, i32* %9514
  %9516 = zext i32 %9515 to i64
  store i64 %9516, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_411d9b, %struct.Memory** %MEMORY
  %loadMem_411d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9518 = getelementptr inbounds %struct.GPR, %struct.GPR* %9517, i32 0, i32 33
  %9519 = getelementptr inbounds %struct.Reg, %struct.Reg* %9518, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9519 to i64*
  %9520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9521 = getelementptr inbounds %struct.GPR, %struct.GPR* %9520, i32 0, i32 13
  %9522 = getelementptr inbounds %struct.Reg, %struct.Reg* %9521, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9522 to i64*
  %9523 = load i64, i64* %RSP.i
  %9524 = load i64, i64* %PC.i4
  %9525 = add i64 %9524, 4
  store i64 %9525, i64* %PC.i4
  %9526 = add i64 112, %9523
  store i64 %9526, i64* %RSP.i, align 8
  %9527 = icmp ult i64 %9526, %9523
  %9528 = icmp ult i64 %9526, 112
  %9529 = or i1 %9527, %9528
  %9530 = zext i1 %9529 to i8
  %9531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9530, i8* %9531, align 1
  %9532 = trunc i64 %9526 to i32
  %9533 = and i32 %9532, 255
  %9534 = call i32 @llvm.ctpop.i32(i32 %9533)
  %9535 = trunc i32 %9534 to i8
  %9536 = and i8 %9535, 1
  %9537 = xor i8 %9536, 1
  %9538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9537, i8* %9538, align 1
  %9539 = xor i64 112, %9523
  %9540 = xor i64 %9539, %9526
  %9541 = lshr i64 %9540, 4
  %9542 = trunc i64 %9541 to i8
  %9543 = and i8 %9542, 1
  %9544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9543, i8* %9544, align 1
  %9545 = icmp eq i64 %9526, 0
  %9546 = zext i1 %9545 to i8
  %9547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9546, i8* %9547, align 1
  %9548 = lshr i64 %9526, 63
  %9549 = trunc i64 %9548 to i8
  %9550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9549, i8* %9550, align 1
  %9551 = lshr i64 %9523, 63
  %9552 = xor i64 %9548, %9551
  %9553 = add i64 %9552, %9548
  %9554 = icmp eq i64 %9553, 2
  %9555 = zext i1 %9554 to i8
  %9556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9555, i8* %9556, align 1
  store %struct.Memory* %loadMem_411d9e, %struct.Memory** %MEMORY
  %loadMem_411da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9558 = getelementptr inbounds %struct.GPR, %struct.GPR* %9557, i32 0, i32 33
  %9559 = getelementptr inbounds %struct.Reg, %struct.Reg* %9558, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9559 to i64*
  %9560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9561 = getelementptr inbounds %struct.GPR, %struct.GPR* %9560, i32 0, i32 15
  %9562 = getelementptr inbounds %struct.Reg, %struct.Reg* %9561, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9562 to i64*
  %9563 = load i64, i64* %PC.i2
  %9564 = add i64 %9563, 1
  store i64 %9564, i64* %PC.i2
  %9565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9566 = load i64, i64* %9565, align 8
  %9567 = add i64 %9566, 8
  %9568 = inttoptr i64 %9566 to i64*
  %9569 = load i64, i64* %9568
  store i64 %9569, i64* %RBP.i3, align 8
  store i64 %9567, i64* %9565, align 8
  store %struct.Memory* %loadMem_411da2, %struct.Memory** %MEMORY
  %loadMem_411da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9571 = getelementptr inbounds %struct.GPR, %struct.GPR* %9570, i32 0, i32 33
  %9572 = getelementptr inbounds %struct.Reg, %struct.Reg* %9571, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9572 to i64*
  %9573 = load i64, i64* %PC.i1
  %9574 = add i64 %9573, 1
  store i64 %9574, i64* %PC.i1
  %9575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9577 = load i64, i64* %9576, align 8
  %9578 = inttoptr i64 %9577 to i64*
  %9579 = load i64, i64* %9578
  store i64 %9579, i64* %9575, align 8
  %9580 = add i64 %9577, 8
  store i64 %9580, i64* %9576, align 8
  store %struct.Memory* %loadMem_411da3, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_411da3
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_jne_.L_4115e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41163f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x63b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1595, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_je_.L_411653(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_411658(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4116b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x63c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1596, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_jne_.L_4116e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fastlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_4116e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_411d9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4116e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x14__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jle_.L_41170d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.slow_approxlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x99da04(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_jne_.L_4117bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4117bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411783(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jl_.L_4117a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4118cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4118ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
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

define %struct.Memory* @routine_jge_.L_4118c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4118b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4118b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411880(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_4118a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4118b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4117f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4118ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_41195e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_41195e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411922(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_411942(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_411a6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_411a69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_411a64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_411a51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411a51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411a1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_411a3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_411a56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_411992(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_411a69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_411afd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411afd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411ac1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_411ae1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_411c0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_411c08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_411c03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_411bf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411bf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411bbe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_411bde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_411bf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_411b31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_411c08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_411c85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411c85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411c60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_411c80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_411d95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_411d90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_411d8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_411d78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411d78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411d46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_411d66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_411d7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_411cb9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_411d90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
