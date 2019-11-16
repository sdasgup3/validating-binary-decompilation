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
%G_0x27951__rip__type = type <{ [4 x i8] }>
%G__0x45882f_type = type <{ [8 x i8] }>
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
@G_0x27951__rip_ = global %G_0x27951__rip__type zeroinitializer
@G__0x45882f = global %G__0x45882f_type zeroinitializer

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

declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @MSAExpand(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42cb00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42cb00, %struct.Memory** %MEMORY
  %loadMem_42cb01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i904 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i905 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i904
  %27 = load i64, i64* %PC.i903
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i903
  store i64 %26, i64* %RBP.i905, align 8
  store %struct.Memory* %loadMem_42cb01, %struct.Memory** %MEMORY
  %loadMem_42cb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i902 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i902
  %36 = load i64, i64* %PC.i901
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i901
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i902, align 8
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
  store %struct.Memory* %loadMem_42cb04, %struct.Memory** %MEMORY
  %loadMem_42cb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i900 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i899
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i899
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RAX.i900, align 8
  store %struct.Memory* %loadMem_42cb08, %struct.Memory** %MEMORY
  %loadMem_42cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RSI.i898 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i897
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC.i897
  store i64 162, i64* %RSI.i898, align 8
  store %struct.Memory* %loadMem_42cb12, %struct.Memory** %MEMORY
  %loadMem_42cb17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RDI.i895 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i896
  %93 = sub i64 %92, 8
  %94 = load i64, i64* %RDI.i895
  %95 = load i64, i64* %PC.i894
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i894
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_42cb17, %struct.Memory** %MEMORY
  %loadMem_42cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDI.i892 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i893
  %108 = sub i64 %107, 8
  %109 = load i64, i64* %PC.i891
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC.i891
  %111 = inttoptr i64 %108 to i64*
  %112 = load i64, i64* %111
  store i64 %112, i64* %RDI.i892, align 8
  store %struct.Memory* %loadMem_42cb1b, %struct.Memory** %MEMORY
  %loadMem_42cb1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RCX.i889 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RDI.i890 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RDI.i890
  %123 = add i64 %122, 324
  %124 = load i64, i64* %PC.i888
  %125 = add i64 %124, 6
  store i64 %125, i64* %PC.i888
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RCX.i889, align 8
  store %struct.Memory* %loadMem_42cb1f, %struct.Memory** %MEMORY
  %loadMem_42cb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 11
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RDI.i886 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i887
  %139 = sub i64 %138, 8
  %140 = load i64, i64* %PC.i885
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i885
  %142 = inttoptr i64 %139 to i64*
  %143 = load i64, i64* %142
  store i64 %143, i64* %RDI.i886, align 8
  store %struct.Memory* %loadMem_42cb25, %struct.Memory** %MEMORY
  %loadMem_42cb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RCX.i883 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RDI.i884 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RCX.i883
  %154 = load i64, i64* %RDI.i884
  %155 = add i64 %154, 320
  %156 = load i64, i64* %PC.i882
  %157 = add i64 %156, 6
  store i64 %157, i64* %PC.i882
  %158 = trunc i64 %153 to i32
  %159 = inttoptr i64 %155 to i32*
  %160 = load i32, i32* %159
  %161 = add i32 %160, %158
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RCX.i883, align 8
  %163 = icmp ult i32 %161, %158
  %164 = icmp ult i32 %161, %160
  %165 = or i1 %163, %164
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %166, i8* %167, align 1
  %168 = and i32 %161, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %172, i8* %173, align 1
  %174 = xor i32 %160, %158
  %175 = xor i32 %174, %161
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %178, i8* %179, align 1
  %180 = icmp eq i32 %161, 0
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %181, i8* %182, align 1
  %183 = lshr i32 %161, 31
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %184, i8* %185, align 1
  %186 = lshr i32 %158, 31
  %187 = lshr i32 %160, 31
  %188 = xor i32 %183, %186
  %189 = xor i32 %183, %187
  %190 = add i32 %188, %189
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1
  store %struct.Memory* %loadMem_42cb29, %struct.Memory** %MEMORY
  %loadMem_42cb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %ECX.i880 = bitcast %union.anon* %199 to i32*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 11
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RDI.i881 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RDI.i881
  %204 = add i64 %203, 320
  %205 = load i32, i32* %ECX.i880
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %PC.i879
  %208 = add i64 %207, 6
  store i64 %208, i64* %PC.i879
  %209 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %209
  store %struct.Memory* %loadMem_42cb2f, %struct.Memory** %MEMORY
  %loadMem_42cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 11
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RDI.i877 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RBP.i878
  %220 = sub i64 %219, 8
  %221 = load i64, i64* %PC.i876
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC.i876
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223
  store i64 %224, i64* %RDI.i877, align 8
  store %struct.Memory* %loadMem_42cb35, %struct.Memory** %MEMORY
  %loadMem_42cb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RDI.i875 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RDI.i875
  %232 = load i64, i64* %PC.i874
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC.i874
  %234 = inttoptr i64 %231 to i64*
  %235 = load i64, i64* %234
  store i64 %235, i64* %RDI.i875, align 8
  store %struct.Memory* %loadMem_42cb39, %struct.Memory** %MEMORY
  %loadMem_42cb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 7
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RDX.i872 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i873
  %246 = sub i64 %245, 8
  %247 = load i64, i64* %PC.i871
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i871
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249
  store i64 %250, i64* %RDX.i872, align 8
  store %struct.Memory* %loadMem_42cb3c, %struct.Memory** %MEMORY
  %loadMem_42cb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 7
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RDX.i870 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %RDX.i870
  %258 = add i64 %257, 320
  %259 = load i64, i64* %PC.i869
  %260 = add i64 %259, 7
  store i64 %260, i64* %PC.i869
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %RDX.i870, align 8
  store %struct.Memory* %loadMem_42cb40, %struct.Memory** %MEMORY
  %loadMem_42cb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 7
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %RDX.i868 = bitcast %union.anon* %269 to i64*
  %270 = load i64, i64* %RDX.i868
  %271 = load i64, i64* %PC.i867
  %272 = add i64 %271, 4
  store i64 %272, i64* %PC.i867
  %273 = shl i64 %270, 2
  %274 = icmp slt i64 %273, 0
  %275 = shl i64 %273, 1
  store i64 %275, i64* %RDX.i868, align 8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %277 = zext i1 %274 to i8
  store i8 %277, i8* %276, align 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %279 = trunc i64 %275 to i32
  %280 = and i32 %279, 254
  %281 = call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %278, align 1
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %285, align 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %287 = icmp eq i64 %275, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %286, align 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %290 = lshr i64 %275, 63
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %289, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %292, align 1
  store %struct.Memory* %loadMem_42cb47, %struct.Memory** %MEMORY
  %loadMem_42cb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 11
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %RDI.i865 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 15
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %RBP.i866
  %303 = sub i64 %302, 24
  %304 = load i64, i64* %RDI.i865
  %305 = load i64, i64* %PC.i864
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC.i864
  %307 = inttoptr i64 %303 to i64*
  store i64 %304, i64* %307
  store %struct.Memory* %loadMem_42cb4b, %struct.Memory** %MEMORY
  %loadMem_42cb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 11
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RDI.i863 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %RAX.i862
  %318 = load i64, i64* %PC.i861
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i861
  store i64 %317, i64* %RDI.i863, align 8
  store %struct.Memory* %loadMem_42cb4f, %struct.Memory** %MEMORY
  %loadMem_42cb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %RBP.i860
  %330 = sub i64 %329, 24
  %331 = load i64, i64* %PC.i858
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC.i858
  %333 = inttoptr i64 %330 to i64*
  %334 = load i64, i64* %333
  store i64 %334, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_42cb52, %struct.Memory** %MEMORY
  %loadMem_42cb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 7
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RDX.i856 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 15
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RBP.i857
  %345 = sub i64 %344, 32
  %346 = load i64, i64* %RDX.i856
  %347 = load i64, i64* %PC.i855
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC.i855
  %349 = inttoptr i64 %345 to i64*
  store i64 %346, i64* %349
  store %struct.Memory* %loadMem_42cb56, %struct.Memory** %MEMORY
  %loadMem_42cb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RDX.i854 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %RAX.i853
  %360 = load i64, i64* %PC.i852
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC.i852
  store i64 %359, i64* %RDX.i854, align 8
  store %struct.Memory* %loadMem_42cb5a, %struct.Memory** %MEMORY
  %loadMem_42cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 15
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RBP.i851
  %372 = sub i64 %371, 32
  %373 = load i64, i64* %PC.i849
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC.i849
  %375 = inttoptr i64 %372 to i64*
  %376 = load i64, i64* %375
  store i64 %376, i64* %RCX.i850, align 8
  store %struct.Memory* %loadMem_42cb5d, %struct.Memory** %MEMORY
  %loadMem1_42cb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %PC.i848
  %381 = add i64 %380, 103759
  %382 = load i64, i64* %PC.i848
  %383 = add i64 %382, 5
  %384 = load i64, i64* %PC.i848
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC.i848
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add i64 %387, -8
  %389 = inttoptr i64 %388 to i64*
  store i64 %383, i64* %389
  store i64 %388, i64* %386, align 8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %381, i64* %390, align 8
  store %struct.Memory* %loadMem1_42cb61, %struct.Memory** %MEMORY
  %loadMem2_42cb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cb61 = load i64, i64* %3
  %call2_42cb61 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cb61, %struct.Memory* %loadMem2_42cb61)
  store %struct.Memory* %call2_42cb61, %struct.Memory** %MEMORY
  %loadMem_42cb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 11
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RDI.i847 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i846
  %398 = add i64 %397, 10
  store i64 %398, i64* %PC.i846
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i847, align 8
  store %struct.Memory* %loadMem_42cb66, %struct.Memory** %MEMORY
  %loadMem_42cb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RSI.i845 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i844
  %406 = add i64 %405, 5
  store i64 %406, i64* %PC.i844
  store i64 163, i64* %RSI.i845, align 8
  store %struct.Memory* %loadMem_42cb70, %struct.Memory** %MEMORY
  %loadMem_42cb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RCX.i842 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 15
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %RBP.i843
  %417 = sub i64 %416, 8
  %418 = load i64, i64* %PC.i841
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC.i841
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420
  store i64 %421, i64* %RCX.i842, align 8
  store %struct.Memory* %loadMem_42cb75, %struct.Memory** %MEMORY
  %loadMem_42cb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RCX.i840
  %432 = load i64, i64* %RAX.i839
  %433 = load i64, i64* %PC.i838
  %434 = add i64 %433, 3
  store i64 %434, i64* %PC.i838
  %435 = inttoptr i64 %431 to i64*
  store i64 %432, i64* %435
  store %struct.Memory* %loadMem_42cb79, %struct.Memory** %MEMORY
  %loadMem_42cb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i837
  %446 = sub i64 %445, 8
  %447 = load i64, i64* %PC.i835
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC.i835
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_42cb7c, %struct.Memory** %MEMORY
  %loadMem_42cb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RAX.i834
  %458 = add i64 %457, 8
  %459 = load i64, i64* %PC.i833
  %460 = add i64 %459, 4
  store i64 %460, i64* %PC.i833
  %461 = inttoptr i64 %458 to i64*
  %462 = load i64, i64* %461
  store i64 %462, i64* %RAX.i834, align 8
  store %struct.Memory* %loadMem_42cb80, %struct.Memory** %MEMORY
  %loadMem_42cb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 5
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 15
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RBP.i832
  %473 = sub i64 %472, 8
  %474 = load i64, i64* %PC.i830
  %475 = add i64 %474, 4
  store i64 %475, i64* %PC.i830
  %476 = inttoptr i64 %473 to i64*
  %477 = load i64, i64* %476
  store i64 %477, i64* %RCX.i831, align 8
  store %struct.Memory* %loadMem_42cb84, %struct.Memory** %MEMORY
  %loadMem_42cb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 5
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RCX.i829 = bitcast %union.anon* %483 to i64*
  %484 = load i64, i64* %RCX.i829
  %485 = add i64 %484, 320
  %486 = load i64, i64* %PC.i828
  %487 = add i64 %486, 7
  store i64 %487, i64* %PC.i828
  %488 = inttoptr i64 %485 to i32*
  %489 = load i32, i32* %488
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i829, align 8
  store %struct.Memory* %loadMem_42cb88, %struct.Memory** %MEMORY
  %loadMem_42cb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 5
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RCX.i827 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %RCX.i827
  %498 = load i64, i64* %PC.i826
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC.i826
  %500 = shl i64 %497, 2
  %501 = icmp slt i64 %500, 0
  %502 = shl i64 %500, 1
  store i64 %502, i64* %RCX.i827, align 8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %504 = zext i1 %501 to i8
  store i8 %504, i8* %503, align 1
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %506 = trunc i64 %502 to i32
  %507 = and i32 %506, 254
  %508 = call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %505, align 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %512, align 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %514 = icmp eq i64 %502, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %513, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %517 = lshr i64 %502, 63
  %518 = trunc i64 %517 to i8
  store i8 %518, i8* %516, align 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %519, align 1
  store %struct.Memory* %loadMem_42cb8f, %struct.Memory** %MEMORY
  %loadMem_42cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 7
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RDX.i825 = bitcast %union.anon* %528 to i64*
  %529 = load i64, i64* %RAX.i824
  %530 = load i64, i64* %PC.i823
  %531 = add i64 %530, 3
  store i64 %531, i64* %PC.i823
  store i64 %529, i64* %RDX.i825, align 8
  store %struct.Memory* %loadMem_42cb93, %struct.Memory** %MEMORY
  %loadMem1_42cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %PC.i822
  %536 = add i64 %535, 103706
  %537 = load i64, i64* %PC.i822
  %538 = add i64 %537, 5
  %539 = load i64, i64* %PC.i822
  %540 = add i64 %539, 5
  store i64 %540, i64* %PC.i822
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 %538, i64* %544
  store i64 %543, i64* %541, align 8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %536, i64* %545, align 8
  store %struct.Memory* %loadMem1_42cb96, %struct.Memory** %MEMORY
  %loadMem2_42cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cb96 = load i64, i64* %3
  %call2_42cb96 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cb96, %struct.Memory* %loadMem2_42cb96)
  store %struct.Memory* %call2_42cb96, %struct.Memory** %MEMORY
  %loadMem_42cb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 11
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RDI.i821 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %PC.i820
  %553 = add i64 %552, 10
  store i64 %553, i64* %PC.i820
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i821, align 8
  store %struct.Memory* %loadMem_42cb9b, %struct.Memory** %MEMORY
  %loadMem_42cba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 9
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RSI.i819 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %PC.i818
  %561 = add i64 %560, 5
  store i64 %561, i64* %PC.i818
  store i64 164, i64* %RSI.i819, align 8
  store %struct.Memory* %loadMem_42cba5, %struct.Memory** %MEMORY
  %loadMem_42cbaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 5
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RCX.i816 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 15
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RBP.i817
  %572 = sub i64 %571, 8
  %573 = load i64, i64* %PC.i815
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC.i815
  %575 = inttoptr i64 %572 to i64*
  %576 = load i64, i64* %575
  store i64 %576, i64* %RCX.i816, align 8
  store %struct.Memory* %loadMem_42cbaa, %struct.Memory** %MEMORY
  %loadMem_42cbae = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 5
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %RCX.i814
  %587 = add i64 %586, 8
  %588 = load i64, i64* %RAX.i813
  %589 = load i64, i64* %PC.i812
  %590 = add i64 %589, 4
  store i64 %590, i64* %PC.i812
  %591 = inttoptr i64 %587 to i64*
  store i64 %588, i64* %591
  store %struct.Memory* %loadMem_42cbae, %struct.Memory** %MEMORY
  %loadMem_42cbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 15
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RBP.i811
  %602 = sub i64 %601, 8
  %603 = load i64, i64* %PC.i809
  %604 = add i64 %603, 4
  store i64 %604, i64* %PC.i809
  %605 = inttoptr i64 %602 to i64*
  %606 = load i64, i64* %605
  store i64 %606, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_42cbb2, %struct.Memory** %MEMORY
  %loadMem_42cbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RAX.i808
  %614 = add i64 %613, 328
  %615 = load i64, i64* %PC.i807
  %616 = add i64 %615, 7
  store i64 %616, i64* %PC.i807
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_42cbb6, %struct.Memory** %MEMORY
  %loadMem_42cbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 5
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RCX.i805 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 15
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %RBP.i806
  %629 = sub i64 %628, 8
  %630 = load i64, i64* %PC.i804
  %631 = add i64 %630, 4
  store i64 %631, i64* %PC.i804
  %632 = inttoptr i64 %629 to i64*
  %633 = load i64, i64* %632
  store i64 %633, i64* %RCX.i805, align 8
  store %struct.Memory* %loadMem_42cbbd, %struct.Memory** %MEMORY
  %loadMem_42cbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 5
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %RCX.i803
  %641 = add i64 %640, 320
  %642 = load i64, i64* %PC.i802
  %643 = add i64 %642, 7
  store i64 %643, i64* %PC.i802
  %644 = inttoptr i64 %641 to i32*
  %645 = load i32, i32* %644
  %646 = sext i32 %645 to i64
  store i64 %646, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_42cbc1, %struct.Memory** %MEMORY
  %loadMem_42cbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 5
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RCX.i801 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RCX.i801
  %654 = load i64, i64* %PC.i800
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC.i800
  %656 = shl i64 %653, 2
  %657 = icmp slt i64 %656, 0
  %658 = shl i64 %656, 1
  store i64 %658, i64* %RCX.i801, align 8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %660 = zext i1 %657 to i8
  store i8 %660, i8* %659, align 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %662 = trunc i64 %658 to i32
  %663 = and i32 %662, 254
  %664 = call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %661, align 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %668, align 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %670 = icmp eq i64 %658, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %669, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %673 = lshr i64 %658, 63
  %674 = trunc i64 %673 to i8
  store i8 %674, i8* %672, align 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %675, align 1
  store %struct.Memory* %loadMem_42cbc8, %struct.Memory** %MEMORY
  %loadMem_42cbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 7
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RDX.i799 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RAX.i798
  %686 = load i64, i64* %PC.i797
  %687 = add i64 %686, 3
  store i64 %687, i64* %PC.i797
  store i64 %685, i64* %RDX.i799, align 8
  store %struct.Memory* %loadMem_42cbcc, %struct.Memory** %MEMORY
  %loadMem1_42cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %PC.i796
  %692 = add i64 %691, 103649
  %693 = load i64, i64* %PC.i796
  %694 = add i64 %693, 5
  %695 = load i64, i64* %PC.i796
  %696 = add i64 %695, 5
  store i64 %696, i64* %PC.i796
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = add i64 %698, -8
  %700 = inttoptr i64 %699 to i64*
  store i64 %694, i64* %700
  store i64 %699, i64* %697, align 8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %692, i64* %701, align 8
  store %struct.Memory* %loadMem1_42cbcf, %struct.Memory** %MEMORY
  %loadMem2_42cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cbcf = load i64, i64* %3
  %call2_42cbcf = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cbcf, %struct.Memory* %loadMem2_42cbcf)
  store %struct.Memory* %call2_42cbcf, %struct.Memory** %MEMORY
  %loadMem_42cbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 11
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RDI.i795 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %PC.i794
  %709 = add i64 %708, 10
  store i64 %709, i64* %PC.i794
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i795, align 8
  store %struct.Memory* %loadMem_42cbd4, %struct.Memory** %MEMORY
  %loadMem_42cbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 9
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RSI.i793 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %PC.i792
  %717 = add i64 %716, 5
  store i64 %717, i64* %PC.i792
  store i64 165, i64* %RSI.i793, align 8
  store %struct.Memory* %loadMem_42cbde, %struct.Memory** %MEMORY
  %loadMem_42cbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 5
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RCX.i790 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 15
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %RBP.i791
  %728 = sub i64 %727, 8
  %729 = load i64, i64* %PC.i789
  %730 = add i64 %729, 4
  store i64 %730, i64* %PC.i789
  %731 = inttoptr i64 %728 to i64*
  %732 = load i64, i64* %731
  store i64 %732, i64* %RCX.i790, align 8
  store %struct.Memory* %loadMem_42cbe3, %struct.Memory** %MEMORY
  %loadMem_42cbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RCX.i788
  %743 = add i64 %742, 328
  %744 = load i64, i64* %RAX.i787
  %745 = load i64, i64* %PC.i786
  %746 = add i64 %745, 7
  store i64 %746, i64* %PC.i786
  %747 = inttoptr i64 %743 to i64*
  store i64 %744, i64* %747
  store %struct.Memory* %loadMem_42cbe7, %struct.Memory** %MEMORY
  %loadMem_42cbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 1
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 15
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %RBP.i785
  %758 = sub i64 %757, 8
  %759 = load i64, i64* %PC.i783
  %760 = add i64 %759, 4
  store i64 %760, i64* %PC.i783
  %761 = inttoptr i64 %758 to i64*
  %762 = load i64, i64* %761
  store i64 %762, i64* %RAX.i784, align 8
  store %struct.Memory* %loadMem_42cbee, %struct.Memory** %MEMORY
  %loadMem_42cbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RAX.i782 = bitcast %union.anon* %768 to i64*
  %769 = load i64, i64* %RAX.i782
  %770 = add i64 %769, 16
  %771 = load i64, i64* %PC.i781
  %772 = add i64 %771, 4
  store i64 %772, i64* %PC.i781
  %773 = inttoptr i64 %770 to i64*
  %774 = load i64, i64* %773
  store i64 %774, i64* %RAX.i782, align 8
  store %struct.Memory* %loadMem_42cbf2, %struct.Memory** %MEMORY
  %loadMem_42cbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 5
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 15
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %783 to i64*
  %784 = load i64, i64* %RBP.i780
  %785 = sub i64 %784, 8
  %786 = load i64, i64* %PC.i778
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC.i778
  %788 = inttoptr i64 %785 to i64*
  %789 = load i64, i64* %788
  store i64 %789, i64* %RCX.i779, align 8
  store %struct.Memory* %loadMem_42cbf6, %struct.Memory** %MEMORY
  %loadMem_42cbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 5
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RCX.i777
  %797 = add i64 %796, 320
  %798 = load i64, i64* %PC.i776
  %799 = add i64 %798, 7
  store i64 %799, i64* %PC.i776
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800
  %802 = sext i32 %801 to i64
  store i64 %802, i64* %RCX.i777, align 8
  store %struct.Memory* %loadMem_42cbfa, %struct.Memory** %MEMORY
  %loadMem_42cc01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 5
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RCX.i775 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RCX.i775
  %810 = load i64, i64* %PC.i774
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC.i774
  %812 = shl i64 %809, 1
  %813 = icmp slt i64 %812, 0
  %814 = shl i64 %812, 1
  store i64 %814, i64* %RCX.i775, align 8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %816 = zext i1 %813 to i8
  store i8 %816, i8* %815, align 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %818 = trunc i64 %814 to i32
  %819 = and i32 %818, 254
  %820 = call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %817, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %824, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %826 = icmp eq i64 %814, 0
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %825, align 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %829 = lshr i64 %814, 63
  %830 = trunc i64 %829 to i8
  store i8 %830, i8* %828, align 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %831, align 1
  store %struct.Memory* %loadMem_42cc01, %struct.Memory** %MEMORY
  %loadMem_42cc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 7
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RDX.i773 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %RAX.i772
  %842 = load i64, i64* %PC.i771
  %843 = add i64 %842, 3
  store i64 %843, i64* %PC.i771
  store i64 %841, i64* %RDX.i773, align 8
  store %struct.Memory* %loadMem_42cc05, %struct.Memory** %MEMORY
  %loadMem1_42cc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %PC.i770
  %848 = add i64 %847, 103592
  %849 = load i64, i64* %PC.i770
  %850 = add i64 %849, 5
  %851 = load i64, i64* %PC.i770
  %852 = add i64 %851, 5
  store i64 %852, i64* %PC.i770
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = add i64 %854, -8
  %856 = inttoptr i64 %855 to i64*
  store i64 %850, i64* %856
  store i64 %855, i64* %853, align 8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %848, i64* %857, align 8
  store %struct.Memory* %loadMem1_42cc08, %struct.Memory** %MEMORY
  %loadMem2_42cc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cc08 = load i64, i64* %3
  %call2_42cc08 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cc08, %struct.Memory* %loadMem2_42cc08)
  store %struct.Memory* %call2_42cc08, %struct.Memory** %MEMORY
  %loadMem_42cc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 5
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i769
  %868 = sub i64 %867, 8
  %869 = load i64, i64* %PC.i767
  %870 = add i64 %869, 4
  store i64 %870, i64* %PC.i767
  %871 = inttoptr i64 %868 to i64*
  %872 = load i64, i64* %871
  store i64 %872, i64* %RCX.i768, align 8
  store %struct.Memory* %loadMem_42cc0d, %struct.Memory** %MEMORY
  %loadMem_42cc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 1
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 5
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RCX.i766 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RCX.i766
  %883 = add i64 %882, 16
  %884 = load i64, i64* %RAX.i765
  %885 = load i64, i64* %PC.i764
  %886 = add i64 %885, 4
  store i64 %886, i64* %PC.i764
  %887 = inttoptr i64 %883 to i64*
  store i64 %884, i64* %887
  store %struct.Memory* %loadMem_42cc11, %struct.Memory** %MEMORY
  %loadMem_42cc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 15
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RBP.i763
  %898 = sub i64 %897, 8
  %899 = load i64, i64* %PC.i761
  %900 = add i64 %899, 4
  store i64 %900, i64* %PC.i761
  %901 = inttoptr i64 %898 to i64*
  %902 = load i64, i64* %901
  store i64 %902, i64* %RAX.i762, align 8
  store %struct.Memory* %loadMem_42cc15, %struct.Memory** %MEMORY
  %loadMem_42cc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 1
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %RAX.i760
  %910 = add i64 %909, 112
  %911 = load i64, i64* %PC.i759
  %912 = add i64 %911, 5
  store i64 %912, i64* %PC.i759
  %913 = inttoptr i64 %910 to i64*
  %914 = load i64, i64* %913
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %915, align 1
  %916 = trunc i64 %914 to i32
  %917 = and i32 %916, 255
  %918 = call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %921, i8* %922, align 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %923, align 1
  %924 = icmp eq i64 %914, 0
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %925, i8* %926, align 1
  %927 = lshr i64 %914, 63
  %928 = trunc i64 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %928, i8* %929, align 1
  %930 = lshr i64 %914, 63
  %931 = xor i64 %927, %930
  %932 = add i64 %931, %930
  %933 = icmp eq i64 %932, 2
  %934 = zext i1 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %934, i8* %935, align 1
  store %struct.Memory* %loadMem_42cc19, %struct.Memory** %MEMORY
  %loadMem_42cc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %PC.i758
  %940 = add i64 %939, 120
  %941 = load i64, i64* %PC.i758
  %942 = add i64 %941, 6
  %943 = load i64, i64* %PC.i758
  %944 = add i64 %943, 6
  store i64 %944, i64* %PC.i758
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %946 = load i8, i8* %945, align 1
  store i8 %946, i8* %BRANCH_TAKEN, align 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %948 = icmp ne i8 %946, 0
  %949 = select i1 %948, i64 %940, i64 %942
  store i64 %949, i64* %947, align 8
  store %struct.Memory* %loadMem_42cc1e, %struct.Memory** %MEMORY
  %loadBr_42cc1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cc1e = icmp eq i8 %loadBr_42cc1e, 1
  br i1 %cmpBr_42cc1e, label %block_.L_42cc96, label %block_42cc24

block_42cc24:                                     ; preds = %entry
  %loadMem_42cc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 11
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RDI.i757 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %PC.i756
  %957 = add i64 %956, 10
  store i64 %957, i64* %PC.i756
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i757, align 8
  store %struct.Memory* %loadMem_42cc24, %struct.Memory** %MEMORY
  %loadMem_42cc2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 9
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RSI.i755 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %PC.i754
  %965 = add i64 %964, 5
  store i64 %965, i64* %PC.i754
  store i64 168, i64* %RSI.i755, align 8
  store %struct.Memory* %loadMem_42cc2e, %struct.Memory** %MEMORY
  %loadMem_42cc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 1
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 15
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %RBP.i753
  %976 = sub i64 %975, 8
  %977 = load i64, i64* %PC.i751
  %978 = add i64 %977, 4
  store i64 %978, i64* %PC.i751
  %979 = inttoptr i64 %976 to i64*
  %980 = load i64, i64* %979
  store i64 %980, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_42cc33, %struct.Memory** %MEMORY
  %loadMem_42cc37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RAX.i750
  %988 = add i64 %987, 112
  %989 = load i64, i64* %PC.i749
  %990 = add i64 %989, 4
  store i64 %990, i64* %PC.i749
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991
  store i64 %992, i64* %RAX.i750, align 8
  store %struct.Memory* %loadMem_42cc37, %struct.Memory** %MEMORY
  %loadMem_42cc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RCX.i747 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i748
  %1003 = sub i64 %1002, 8
  %1004 = load i64, i64* %PC.i746
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %PC.i746
  %1006 = inttoptr i64 %1003 to i64*
  %1007 = load i64, i64* %1006
  store i64 %1007, i64* %RCX.i747, align 8
  store %struct.Memory* %loadMem_42cc3b, %struct.Memory** %MEMORY
  %loadMem_42cc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 5
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RCX.i745 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %RCX.i745
  %1015 = add i64 %1014, 320
  %1016 = load i64, i64* %PC.i744
  %1017 = add i64 %1016, 7
  store i64 %1017, i64* %PC.i744
  %1018 = inttoptr i64 %1015 to i32*
  %1019 = load i32, i32* %1018
  %1020 = sext i32 %1019 to i64
  store i64 %1020, i64* %RCX.i745, align 8
  store %struct.Memory* %loadMem_42cc3f, %struct.Memory** %MEMORY
  %loadMem_42cc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 5
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RCX.i743 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RCX.i743
  %1028 = load i64, i64* %PC.i742
  %1029 = add i64 %1028, 4
  store i64 %1029, i64* %PC.i742
  %1030 = shl i64 %1027, 2
  %1031 = icmp slt i64 %1030, 0
  %1032 = shl i64 %1030, 1
  store i64 %1032, i64* %RCX.i743, align 8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1034 = zext i1 %1031 to i8
  store i8 %1034, i8* %1033, align 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1036 = trunc i64 %1032 to i32
  %1037 = and i32 %1036, 254
  %1038 = call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %1035, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1042, align 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1044 = icmp eq i64 %1032, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %1043, align 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1047 = lshr i64 %1032, 63
  %1048 = trunc i64 %1047 to i8
  store i8 %1048, i8* %1046, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1049, align 1
  store %struct.Memory* %loadMem_42cc46, %struct.Memory** %MEMORY
  %loadMem_42cc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 1
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 7
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RDX.i741 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %RAX.i740
  %1060 = load i64, i64* %PC.i739
  %1061 = add i64 %1060, 3
  store i64 %1061, i64* %PC.i739
  store i64 %1059, i64* %RDX.i741, align 8
  store %struct.Memory* %loadMem_42cc4a, %struct.Memory** %MEMORY
  %loadMem1_42cc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 33
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %PC.i738
  %1066 = add i64 %1065, 103523
  %1067 = load i64, i64* %PC.i738
  %1068 = add i64 %1067, 5
  %1069 = load i64, i64* %PC.i738
  %1070 = add i64 %1069, 5
  store i64 %1070, i64* %PC.i738
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1072 = load i64, i64* %1071, align 8
  %1073 = add i64 %1072, -8
  %1074 = inttoptr i64 %1073 to i64*
  store i64 %1068, i64* %1074
  store i64 %1073, i64* %1071, align 8
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1066, i64* %1075, align 8
  store %struct.Memory* %loadMem1_42cc4d, %struct.Memory** %MEMORY
  %loadMem2_42cc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cc4d = load i64, i64* %3
  %call2_42cc4d = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cc4d, %struct.Memory* %loadMem2_42cc4d)
  store %struct.Memory* %call2_42cc4d, %struct.Memory** %MEMORY
  %loadMem_42cc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 11
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RDI.i737 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %PC.i736
  %1083 = add i64 %1082, 10
  store i64 %1083, i64* %PC.i736
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i737, align 8
  store %struct.Memory* %loadMem_42cc52, %struct.Memory** %MEMORY
  %loadMem_42cc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 9
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RSI.i735 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %PC.i734
  %1091 = add i64 %1090, 5
  store i64 %1091, i64* %PC.i734
  store i64 169, i64* %RSI.i735, align 8
  store %struct.Memory* %loadMem_42cc5c, %struct.Memory** %MEMORY
  %loadMem_42cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 5
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 15
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %RBP.i733
  %1102 = sub i64 %1101, 8
  %1103 = load i64, i64* %PC.i731
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC.i731
  %1105 = inttoptr i64 %1102 to i64*
  %1106 = load i64, i64* %1105
  store i64 %1106, i64* %RCX.i732, align 8
  store %struct.Memory* %loadMem_42cc61, %struct.Memory** %MEMORY
  %loadMem_42cc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 5
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RCX.i730
  %1117 = add i64 %1116, 112
  %1118 = load i64, i64* %RAX.i729
  %1119 = load i64, i64* %PC.i728
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i728
  %1121 = inttoptr i64 %1117 to i64*
  store i64 %1118, i64* %1121
  store %struct.Memory* %loadMem_42cc65, %struct.Memory** %MEMORY
  %loadMem_42cc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RBP.i727
  %1132 = sub i64 %1131, 8
  %1133 = load i64, i64* %PC.i725
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC.i725
  %1135 = inttoptr i64 %1132 to i64*
  %1136 = load i64, i64* %1135
  store i64 %1136, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_42cc69, %struct.Memory** %MEMORY
  %loadMem_42cc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %RAX.i724
  %1144 = add i64 %1143, 336
  %1145 = load i64, i64* %PC.i723
  %1146 = add i64 %1145, 7
  store i64 %1146, i64* %PC.i723
  %1147 = inttoptr i64 %1144 to i64*
  %1148 = load i64, i64* %1147
  store i64 %1148, i64* %RAX.i724, align 8
  store %struct.Memory* %loadMem_42cc6d, %struct.Memory** %MEMORY
  %loadMem_42cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 5
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RBP.i722
  %1159 = sub i64 %1158, 8
  %1160 = load i64, i64* %PC.i720
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %PC.i720
  %1162 = inttoptr i64 %1159 to i64*
  %1163 = load i64, i64* %1162
  store i64 %1163, i64* %RCX.i721, align 8
  store %struct.Memory* %loadMem_42cc74, %struct.Memory** %MEMORY
  %loadMem_42cc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 5
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RCX.i719
  %1171 = add i64 %1170, 320
  %1172 = load i64, i64* %PC.i718
  %1173 = add i64 %1172, 7
  store i64 %1173, i64* %PC.i718
  %1174 = inttoptr i64 %1171 to i32*
  %1175 = load i32, i32* %1174
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_42cc78, %struct.Memory** %MEMORY
  %loadMem_42cc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 5
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RCX.i717 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RCX.i717
  %1184 = load i64, i64* %PC.i716
  %1185 = add i64 %1184, 4
  store i64 %1185, i64* %PC.i716
  %1186 = shl i64 %1183, 1
  %1187 = icmp slt i64 %1186, 0
  %1188 = shl i64 %1186, 1
  store i64 %1188, i64* %RCX.i717, align 8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1190 = zext i1 %1187 to i8
  store i8 %1190, i8* %1189, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1192 = trunc i64 %1188 to i32
  %1193 = and i32 %1192, 254
  %1194 = call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %1191, align 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1198, align 1
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1200 = icmp eq i64 %1188, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %1199, align 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1203 = lshr i64 %1188, 63
  %1204 = trunc i64 %1203 to i8
  store i8 %1204, i8* %1202, align 1
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1205, align 1
  store %struct.Memory* %loadMem_42cc7f, %struct.Memory** %MEMORY
  %loadMem_42cc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 1
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 7
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RDX.i715 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RAX.i714
  %1216 = load i64, i64* %PC.i713
  %1217 = add i64 %1216, 3
  store i64 %1217, i64* %PC.i713
  store i64 %1215, i64* %RDX.i715, align 8
  store %struct.Memory* %loadMem_42cc83, %struct.Memory** %MEMORY
  %loadMem1_42cc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1220 to i64*
  %1221 = load i64, i64* %PC.i712
  %1222 = add i64 %1221, 103466
  %1223 = load i64, i64* %PC.i712
  %1224 = add i64 %1223, 5
  %1225 = load i64, i64* %PC.i712
  %1226 = add i64 %1225, 5
  store i64 %1226, i64* %PC.i712
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1228 = load i64, i64* %1227, align 8
  %1229 = add i64 %1228, -8
  %1230 = inttoptr i64 %1229 to i64*
  store i64 %1224, i64* %1230
  store i64 %1229, i64* %1227, align 8
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1222, i64* %1231, align 8
  store %struct.Memory* %loadMem1_42cc86, %struct.Memory** %MEMORY
  %loadMem2_42cc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cc86 = load i64, i64* %3
  %call2_42cc86 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cc86, %struct.Memory* %loadMem2_42cc86)
  store %struct.Memory* %call2_42cc86, %struct.Memory** %MEMORY
  %loadMem_42cc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 5
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RBP.i711
  %1242 = sub i64 %1241, 8
  %1243 = load i64, i64* %PC.i709
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC.i709
  %1245 = inttoptr i64 %1242 to i64*
  %1246 = load i64, i64* %1245
  store i64 %1246, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_42cc8b, %struct.Memory** %MEMORY
  %loadMem_42cc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 5
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RCX.i708
  %1257 = add i64 %1256, 336
  %1258 = load i64, i64* %RAX.i707
  %1259 = load i64, i64* %PC.i706
  %1260 = add i64 %1259, 7
  store i64 %1260, i64* %PC.i706
  %1261 = inttoptr i64 %1257 to i64*
  store i64 %1258, i64* %1261
  store %struct.Memory* %loadMem_42cc8f, %struct.Memory** %MEMORY
  br label %block_.L_42cc96

block_.L_42cc96:                                  ; preds = %block_42cc24, %entry
  %loadMem_42cc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 1
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 15
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1270 to i64*
  %1271 = load i64, i64* %RBP.i705
  %1272 = sub i64 %1271, 8
  %1273 = load i64, i64* %PC.i703
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i703
  %1275 = inttoptr i64 %1272 to i64*
  %1276 = load i64, i64* %1275
  store i64 %1276, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_42cc96, %struct.Memory** %MEMORY
  %loadMem_42cc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 1
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1282 to i64*
  %1283 = load i64, i64* %RAX.i702
  %1284 = add i64 %1283, 120
  %1285 = load i64, i64* %PC.i701
  %1286 = add i64 %1285, 5
  store i64 %1286, i64* %PC.i701
  %1287 = inttoptr i64 %1284 to i64*
  %1288 = load i64, i64* %1287
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1289, align 1
  %1290 = trunc i64 %1288 to i32
  %1291 = and i32 %1290, 255
  %1292 = call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1295, i8* %1296, align 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1297, align 1
  %1298 = icmp eq i64 %1288, 0
  %1299 = zext i1 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1299, i8* %1300, align 1
  %1301 = lshr i64 %1288, 63
  %1302 = trunc i64 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i64 %1288, 63
  %1305 = xor i64 %1301, %1304
  %1306 = add i64 %1305, %1304
  %1307 = icmp eq i64 %1306, 2
  %1308 = zext i1 %1307 to i8
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1308, i8* %1309, align 1
  store %struct.Memory* %loadMem_42cc9a, %struct.Memory** %MEMORY
  %loadMem_42cc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %PC.i700
  %1314 = add i64 %1313, 120
  %1315 = load i64, i64* %PC.i700
  %1316 = add i64 %1315, 6
  %1317 = load i64, i64* %PC.i700
  %1318 = add i64 %1317, 6
  store i64 %1318, i64* %PC.i700
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1320 = load i8, i8* %1319, align 1
  store i8 %1320, i8* %BRANCH_TAKEN, align 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1322 = icmp ne i8 %1320, 0
  %1323 = select i1 %1322, i64 %1314, i64 %1316
  store i64 %1323, i64* %1321, align 8
  store %struct.Memory* %loadMem_42cc9f, %struct.Memory** %MEMORY
  %loadBr_42cc9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cc9f = icmp eq i8 %loadBr_42cc9f, 1
  br i1 %cmpBr_42cc9f, label %block_.L_42cd17, label %block_42cca5

block_42cca5:                                     ; preds = %block_.L_42cc96
  %loadMem_42cca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 11
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RDI.i699 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %PC.i698
  %1331 = add i64 %1330, 10
  store i64 %1331, i64* %PC.i698
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i699, align 8
  store %struct.Memory* %loadMem_42cca5, %struct.Memory** %MEMORY
  %loadMem_42ccaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 9
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RSI.i697 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %PC.i696
  %1339 = add i64 %1338, 5
  store i64 %1339, i64* %PC.i696
  store i64 172, i64* %RSI.i697, align 8
  store %struct.Memory* %loadMem_42ccaf, %struct.Memory** %MEMORY
  %loadMem_42ccb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 15
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %RBP.i695
  %1350 = sub i64 %1349, 8
  %1351 = load i64, i64* %PC.i693
  %1352 = add i64 %1351, 4
  store i64 %1352, i64* %PC.i693
  %1353 = inttoptr i64 %1350 to i64*
  %1354 = load i64, i64* %1353
  store i64 %1354, i64* %RAX.i694, align 8
  store %struct.Memory* %loadMem_42ccb4, %struct.Memory** %MEMORY
  %loadMem_42ccb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 1
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RAX.i692
  %1362 = add i64 %1361, 120
  %1363 = load i64, i64* %PC.i691
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %PC.i691
  %1365 = inttoptr i64 %1362 to i64*
  %1366 = load i64, i64* %1365
  store i64 %1366, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_42ccb8, %struct.Memory** %MEMORY
  %loadMem_42ccbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 5
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 15
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %RBP.i690
  %1377 = sub i64 %1376, 8
  %1378 = load i64, i64* %PC.i688
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %PC.i688
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380
  store i64 %1381, i64* %RCX.i689, align 8
  store %struct.Memory* %loadMem_42ccbc, %struct.Memory** %MEMORY
  %loadMem_42ccc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 5
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RCX.i687
  %1389 = add i64 %1388, 320
  %1390 = load i64, i64* %PC.i686
  %1391 = add i64 %1390, 7
  store i64 %1391, i64* %PC.i686
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i687, align 8
  store %struct.Memory* %loadMem_42ccc0, %struct.Memory** %MEMORY
  %loadMem_42ccc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 5
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RCX.i685
  %1402 = load i64, i64* %PC.i684
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC.i684
  %1404 = shl i64 %1401, 2
  %1405 = icmp slt i64 %1404, 0
  %1406 = shl i64 %1404, 1
  store i64 %1406, i64* %RCX.i685, align 8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1408 = zext i1 %1405 to i8
  store i8 %1408, i8* %1407, align 1
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1410 = trunc i64 %1406 to i32
  %1411 = and i32 %1410, 254
  %1412 = call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %1409, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1416, align 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1418 = icmp eq i64 %1406, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %1417, align 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1421 = lshr i64 %1406, 63
  %1422 = trunc i64 %1421 to i8
  store i8 %1422, i8* %1420, align 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1423, align 1
  store %struct.Memory* %loadMem_42ccc7, %struct.Memory** %MEMORY
  %loadMem_42cccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 7
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RAX.i682
  %1434 = load i64, i64* %PC.i681
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %PC.i681
  store i64 %1433, i64* %RDX.i683, align 8
  store %struct.Memory* %loadMem_42cccb, %struct.Memory** %MEMORY
  %loadMem1_42ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %PC.i680
  %1440 = add i64 %1439, 103394
  %1441 = load i64, i64* %PC.i680
  %1442 = add i64 %1441, 5
  %1443 = load i64, i64* %PC.i680
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %PC.i680
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1446 = load i64, i64* %1445, align 8
  %1447 = add i64 %1446, -8
  %1448 = inttoptr i64 %1447 to i64*
  store i64 %1442, i64* %1448
  store i64 %1447, i64* %1445, align 8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1440, i64* %1449, align 8
  store %struct.Memory* %loadMem1_42ccce, %struct.Memory** %MEMORY
  %loadMem2_42ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ccce = load i64, i64* %3
  %call2_42ccce = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42ccce, %struct.Memory* %loadMem2_42ccce)
  store %struct.Memory* %call2_42ccce, %struct.Memory** %MEMORY
  %loadMem_42ccd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 11
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RDI.i679 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %PC.i678
  %1457 = add i64 %1456, 10
  store i64 %1457, i64* %PC.i678
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i679, align 8
  store %struct.Memory* %loadMem_42ccd3, %struct.Memory** %MEMORY
  %loadMem_42ccdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 9
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RSI.i677 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i676
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC.i676
  store i64 173, i64* %RSI.i677, align 8
  store %struct.Memory* %loadMem_42ccdd, %struct.Memory** %MEMORY
  %loadMem_42cce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 5
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 15
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %RBP.i675
  %1476 = sub i64 %1475, 8
  %1477 = load i64, i64* %PC.i673
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i673
  %1479 = inttoptr i64 %1476 to i64*
  %1480 = load i64, i64* %1479
  store i64 %1480, i64* %RCX.i674, align 8
  store %struct.Memory* %loadMem_42cce2, %struct.Memory** %MEMORY
  %loadMem_42cce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 5
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RCX.i672
  %1491 = add i64 %1490, 120
  %1492 = load i64, i64* %RAX.i671
  %1493 = load i64, i64* %PC.i670
  %1494 = add i64 %1493, 4
  store i64 %1494, i64* %PC.i670
  %1495 = inttoptr i64 %1491 to i64*
  store i64 %1492, i64* %1495
  store %struct.Memory* %loadMem_42cce6, %struct.Memory** %MEMORY
  %loadMem_42ccea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RBP.i669
  %1506 = sub i64 %1505, 8
  %1507 = load i64, i64* %PC.i667
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC.i667
  %1509 = inttoptr i64 %1506 to i64*
  %1510 = load i64, i64* %1509
  store i64 %1510, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_42ccea, %struct.Memory** %MEMORY
  %loadMem_42ccee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %RAX.i666
  %1518 = add i64 %1517, 344
  %1519 = load i64, i64* %PC.i665
  %1520 = add i64 %1519, 7
  store i64 %1520, i64* %PC.i665
  %1521 = inttoptr i64 %1518 to i64*
  %1522 = load i64, i64* %1521
  store i64 %1522, i64* %RAX.i666, align 8
  store %struct.Memory* %loadMem_42ccee, %struct.Memory** %MEMORY
  %loadMem_42ccf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 5
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 15
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RBP.i664
  %1533 = sub i64 %1532, 8
  %1534 = load i64, i64* %PC.i662
  %1535 = add i64 %1534, 4
  store i64 %1535, i64* %PC.i662
  %1536 = inttoptr i64 %1533 to i64*
  %1537 = load i64, i64* %1536
  store i64 %1537, i64* %RCX.i663, align 8
  store %struct.Memory* %loadMem_42ccf5, %struct.Memory** %MEMORY
  %loadMem_42ccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 5
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %RCX.i661
  %1545 = add i64 %1544, 320
  %1546 = load i64, i64* %PC.i660
  %1547 = add i64 %1546, 7
  store i64 %1547, i64* %PC.i660
  %1548 = inttoptr i64 %1545 to i32*
  %1549 = load i32, i32* %1548
  %1550 = sext i32 %1549 to i64
  store i64 %1550, i64* %RCX.i661, align 8
  store %struct.Memory* %loadMem_42ccf9, %struct.Memory** %MEMORY
  %loadMem_42cd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 33
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 5
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RCX.i659
  %1558 = load i64, i64* %PC.i658
  %1559 = add i64 %1558, 4
  store i64 %1559, i64* %PC.i658
  %1560 = shl i64 %1557, 1
  %1561 = icmp slt i64 %1560, 0
  %1562 = shl i64 %1560, 1
  store i64 %1562, i64* %RCX.i659, align 8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1564 = zext i1 %1561 to i8
  store i8 %1564, i8* %1563, align 1
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1566 = trunc i64 %1562 to i32
  %1567 = and i32 %1566, 254
  %1568 = call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %1565, align 1
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1572, align 1
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1574 = icmp eq i64 %1562, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %1573, align 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1577 = lshr i64 %1562, 63
  %1578 = trunc i64 %1577 to i8
  store i8 %1578, i8* %1576, align 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1579, align 1
  store %struct.Memory* %loadMem_42cd00, %struct.Memory** %MEMORY
  %loadMem_42cd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 1
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 7
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %1588 to i64*
  %1589 = load i64, i64* %RAX.i656
  %1590 = load i64, i64* %PC.i655
  %1591 = add i64 %1590, 3
  store i64 %1591, i64* %PC.i655
  store i64 %1589, i64* %RDX.i657, align 8
  store %struct.Memory* %loadMem_42cd04, %struct.Memory** %MEMORY
  %loadMem1_42cd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %PC.i654
  %1596 = add i64 %1595, 103337
  %1597 = load i64, i64* %PC.i654
  %1598 = add i64 %1597, 5
  %1599 = load i64, i64* %PC.i654
  %1600 = add i64 %1599, 5
  store i64 %1600, i64* %PC.i654
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1602 = load i64, i64* %1601, align 8
  %1603 = add i64 %1602, -8
  %1604 = inttoptr i64 %1603 to i64*
  store i64 %1598, i64* %1604
  store i64 %1603, i64* %1601, align 8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1596, i64* %1605, align 8
  store %struct.Memory* %loadMem1_42cd07, %struct.Memory** %MEMORY
  %loadMem2_42cd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cd07 = load i64, i64* %3
  %call2_42cd07 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cd07, %struct.Memory* %loadMem2_42cd07)
  store %struct.Memory* %call2_42cd07, %struct.Memory** %MEMORY
  %loadMem_42cd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 5
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 15
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %RBP.i653
  %1616 = sub i64 %1615, 8
  %1617 = load i64, i64* %PC.i651
  %1618 = add i64 %1617, 4
  store i64 %1618, i64* %PC.i651
  %1619 = inttoptr i64 %1616 to i64*
  %1620 = load i64, i64* %1619
  store i64 %1620, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_42cd0c, %struct.Memory** %MEMORY
  %loadMem_42cd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 1
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 5
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %1629 to i64*
  %1630 = load i64, i64* %RCX.i650
  %1631 = add i64 %1630, 344
  %1632 = load i64, i64* %RAX.i649
  %1633 = load i64, i64* %PC.i648
  %1634 = add i64 %1633, 7
  store i64 %1634, i64* %PC.i648
  %1635 = inttoptr i64 %1631 to i64*
  store i64 %1632, i64* %1635
  store %struct.Memory* %loadMem_42cd10, %struct.Memory** %MEMORY
  br label %block_.L_42cd17

block_.L_42cd17:                                  ; preds = %block_42cca5, %block_.L_42cc96
  %loadMem_42cd17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 1
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 15
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %RBP.i647
  %1646 = sub i64 %1645, 8
  %1647 = load i64, i64* %PC.i645
  %1648 = add i64 %1647, 4
  store i64 %1648, i64* %PC.i645
  %1649 = inttoptr i64 %1646 to i64*
  %1650 = load i64, i64* %1649
  store i64 %1650, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_42cd17, %struct.Memory** %MEMORY
  %loadMem_42cd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 1
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %RAX.i644
  %1658 = add i64 %1657, 96
  %1659 = load i64, i64* %PC.i643
  %1660 = add i64 %1659, 5
  store i64 %1660, i64* %PC.i643
  %1661 = inttoptr i64 %1658 to i64*
  %1662 = load i64, i64* %1661
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1663, align 1
  %1664 = trunc i64 %1662 to i32
  %1665 = and i32 %1664, 255
  %1666 = call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1669, i8* %1670, align 1
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1671, align 1
  %1672 = icmp eq i64 %1662, 0
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1673, i8* %1674, align 1
  %1675 = lshr i64 %1662, 63
  %1676 = trunc i64 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1676, i8* %1677, align 1
  %1678 = lshr i64 %1662, 63
  %1679 = xor i64 %1675, %1678
  %1680 = add i64 %1679, %1678
  %1681 = icmp eq i64 %1680, 2
  %1682 = zext i1 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1682, i8* %1683, align 1
  store %struct.Memory* %loadMem_42cd1b, %struct.Memory** %MEMORY
  %loadMem_42cd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %1686 to i64*
  %1687 = load i64, i64* %PC.i642
  %1688 = add i64 %1687, 60
  %1689 = load i64, i64* %PC.i642
  %1690 = add i64 %1689, 6
  %1691 = load i64, i64* %PC.i642
  %1692 = add i64 %1691, 6
  store i64 %1692, i64* %PC.i642
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1694 = load i8, i8* %1693, align 1
  store i8 %1694, i8* %BRANCH_TAKEN, align 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1696 = icmp ne i8 %1694, 0
  %1697 = select i1 %1696, i64 %1688, i64 %1690
  store i64 %1697, i64* %1695, align 8
  store %struct.Memory* %loadMem_42cd20, %struct.Memory** %MEMORY
  %loadBr_42cd20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cd20 = icmp eq i8 %loadBr_42cd20, 1
  br i1 %cmpBr_42cd20, label %block_.L_42cd5c, label %block_42cd26

block_42cd26:                                     ; preds = %block_.L_42cd17
  %loadMem_42cd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 11
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RDI.i641 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i640
  %1705 = add i64 %1704, 10
  store i64 %1705, i64* %PC.i640
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i641, align 8
  store %struct.Memory* %loadMem_42cd26, %struct.Memory** %MEMORY
  %loadMem_42cd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 9
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RSI.i639 = bitcast %union.anon* %1711 to i64*
  %1712 = load i64, i64* %PC.i638
  %1713 = add i64 %1712, 5
  store i64 %1713, i64* %PC.i638
  store i64 176, i64* %RSI.i639, align 8
  store %struct.Memory* %loadMem_42cd30, %struct.Memory** %MEMORY
  %loadMem_42cd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 1
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 15
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %RBP.i637
  %1724 = sub i64 %1723, 8
  %1725 = load i64, i64* %PC.i635
  %1726 = add i64 %1725, 4
  store i64 %1726, i64* %PC.i635
  %1727 = inttoptr i64 %1724 to i64*
  %1728 = load i64, i64* %1727
  store i64 %1728, i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_42cd35, %struct.Memory** %MEMORY
  %loadMem_42cd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RAX.i634
  %1736 = add i64 %1735, 96
  %1737 = load i64, i64* %PC.i633
  %1738 = add i64 %1737, 4
  store i64 %1738, i64* %PC.i633
  %1739 = inttoptr i64 %1736 to i64*
  %1740 = load i64, i64* %1739
  store i64 %1740, i64* %RAX.i634, align 8
  store %struct.Memory* %loadMem_42cd39, %struct.Memory** %MEMORY
  %loadMem_42cd3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 5
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 15
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %RBP.i632
  %1751 = sub i64 %1750, 8
  %1752 = load i64, i64* %PC.i630
  %1753 = add i64 %1752, 4
  store i64 %1753, i64* %PC.i630
  %1754 = inttoptr i64 %1751 to i64*
  %1755 = load i64, i64* %1754
  store i64 %1755, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_42cd3d, %struct.Memory** %MEMORY
  %loadMem_42cd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 5
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RCX.i629
  %1763 = add i64 %1762, 320
  %1764 = load i64, i64* %PC.i628
  %1765 = add i64 %1764, 7
  store i64 %1765, i64* %PC.i628
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766
  %1768 = sext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_42cd41, %struct.Memory** %MEMORY
  %loadMem_42cd48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 5
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %RCX.i627
  %1776 = load i64, i64* %PC.i626
  %1777 = add i64 %1776, 4
  store i64 %1777, i64* %PC.i626
  %1778 = shl i64 %1775, 2
  %1779 = icmp slt i64 %1778, 0
  %1780 = shl i64 %1778, 1
  store i64 %1780, i64* %RCX.i627, align 8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1782 = zext i1 %1779 to i8
  store i8 %1782, i8* %1781, align 1
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1784 = trunc i64 %1780 to i32
  %1785 = and i32 %1784, 254
  %1786 = call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %1783, align 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1790, align 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1792 = icmp eq i64 %1780, 0
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %1791, align 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1795 = lshr i64 %1780, 63
  %1796 = trunc i64 %1795 to i8
  store i8 %1796, i8* %1794, align 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1797, align 1
  store %struct.Memory* %loadMem_42cd48, %struct.Memory** %MEMORY
  %loadMem_42cd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 1
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 7
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RDX.i625 = bitcast %union.anon* %1806 to i64*
  %1807 = load i64, i64* %RAX.i624
  %1808 = load i64, i64* %PC.i623
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC.i623
  store i64 %1807, i64* %RDX.i625, align 8
  store %struct.Memory* %loadMem_42cd4c, %struct.Memory** %MEMORY
  %loadMem1_42cd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %PC.i622
  %1814 = add i64 %1813, 103265
  %1815 = load i64, i64* %PC.i622
  %1816 = add i64 %1815, 5
  %1817 = load i64, i64* %PC.i622
  %1818 = add i64 %1817, 5
  store i64 %1818, i64* %PC.i622
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1820 = load i64, i64* %1819, align 8
  %1821 = add i64 %1820, -8
  %1822 = inttoptr i64 %1821 to i64*
  store i64 %1816, i64* %1822
  store i64 %1821, i64* %1819, align 8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1814, i64* %1823, align 8
  store %struct.Memory* %loadMem1_42cd4f, %struct.Memory** %MEMORY
  %loadMem2_42cd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cd4f = load i64, i64* %3
  %call2_42cd4f = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cd4f, %struct.Memory* %loadMem2_42cd4f)
  store %struct.Memory* %call2_42cd4f, %struct.Memory** %MEMORY
  %loadMem_42cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 5
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 15
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RBP.i621
  %1834 = sub i64 %1833, 8
  %1835 = load i64, i64* %PC.i619
  %1836 = add i64 %1835, 4
  store i64 %1836, i64* %PC.i619
  %1837 = inttoptr i64 %1834 to i64*
  %1838 = load i64, i64* %1837
  store i64 %1838, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_42cd54, %struct.Memory** %MEMORY
  %loadMem_42cd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 1
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 5
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %1847 to i64*
  %1848 = load i64, i64* %RCX.i618
  %1849 = add i64 %1848, 96
  %1850 = load i64, i64* %RAX.i617
  %1851 = load i64, i64* %PC.i616
  %1852 = add i64 %1851, 4
  store i64 %1852, i64* %PC.i616
  %1853 = inttoptr i64 %1849 to i64*
  store i64 %1850, i64* %1853
  store %struct.Memory* %loadMem_42cd58, %struct.Memory** %MEMORY
  br label %block_.L_42cd5c

block_.L_42cd5c:                                  ; preds = %block_42cd26, %block_.L_42cd17
  %loadMem_42cd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 1
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 15
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %RBP.i615
  %1864 = sub i64 %1863, 8
  %1865 = load i64, i64* %PC.i613
  %1866 = add i64 %1865, 4
  store i64 %1866, i64* %PC.i613
  %1867 = inttoptr i64 %1864 to i64*
  %1868 = load i64, i64* %1867
  store i64 %1868, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_42cd5c, %struct.Memory** %MEMORY
  %loadMem_42cd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 1
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %RAX.i612
  %1876 = add i64 %1875, 104
  %1877 = load i64, i64* %PC.i611
  %1878 = add i64 %1877, 5
  store i64 %1878, i64* %PC.i611
  %1879 = inttoptr i64 %1876 to i64*
  %1880 = load i64, i64* %1879
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1881, align 1
  %1882 = trunc i64 %1880 to i32
  %1883 = and i32 %1882, 255
  %1884 = call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1887, i8* %1888, align 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1889, align 1
  %1890 = icmp eq i64 %1880, 0
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1891, i8* %1892, align 1
  %1893 = lshr i64 %1880, 63
  %1894 = trunc i64 %1893 to i8
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1894, i8* %1895, align 1
  %1896 = lshr i64 %1880, 63
  %1897 = xor i64 %1893, %1896
  %1898 = add i64 %1897, %1896
  %1899 = icmp eq i64 %1898, 2
  %1900 = zext i1 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1900, i8* %1901, align 1
  store %struct.Memory* %loadMem_42cd60, %struct.Memory** %MEMORY
  %loadMem_42cd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %PC.i610
  %1906 = add i64 %1905, 60
  %1907 = load i64, i64* %PC.i610
  %1908 = add i64 %1907, 6
  %1909 = load i64, i64* %PC.i610
  %1910 = add i64 %1909, 6
  store i64 %1910, i64* %PC.i610
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1912 = load i8, i8* %1911, align 1
  store i8 %1912, i8* %BRANCH_TAKEN, align 1
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1914 = icmp ne i8 %1912, 0
  %1915 = select i1 %1914, i64 %1906, i64 %1908
  store i64 %1915, i64* %1913, align 8
  store %struct.Memory* %loadMem_42cd65, %struct.Memory** %MEMORY
  %loadBr_42cd65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cd65 = icmp eq i8 %loadBr_42cd65, 1
  br i1 %cmpBr_42cd65, label %block_.L_42cda1, label %block_42cd6b

block_42cd6b:                                     ; preds = %block_.L_42cd5c
  %loadMem_42cd6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 11
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RDI.i609 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %PC.i608
  %1923 = add i64 %1922, 10
  store i64 %1923, i64* %PC.i608
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i609, align 8
  store %struct.Memory* %loadMem_42cd6b, %struct.Memory** %MEMORY
  %loadMem_42cd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 9
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RSI.i607 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %PC.i606
  %1931 = add i64 %1930, 5
  store i64 %1931, i64* %PC.i606
  store i64 178, i64* %RSI.i607, align 8
  store %struct.Memory* %loadMem_42cd75, %struct.Memory** %MEMORY
  %loadMem_42cd7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 1
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RBP.i605
  %1942 = sub i64 %1941, 8
  %1943 = load i64, i64* %PC.i603
  %1944 = add i64 %1943, 4
  store i64 %1944, i64* %PC.i603
  %1945 = inttoptr i64 %1942 to i64*
  %1946 = load i64, i64* %1945
  store i64 %1946, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_42cd7a, %struct.Memory** %MEMORY
  %loadMem_42cd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 1
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RAX.i602
  %1954 = add i64 %1953, 104
  %1955 = load i64, i64* %PC.i601
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i601
  %1957 = inttoptr i64 %1954 to i64*
  %1958 = load i64, i64* %1957
  store i64 %1958, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_42cd7e, %struct.Memory** %MEMORY
  %loadMem_42cd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 5
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RBP.i600
  %1969 = sub i64 %1968, 8
  %1970 = load i64, i64* %PC.i598
  %1971 = add i64 %1970, 4
  store i64 %1971, i64* %PC.i598
  %1972 = inttoptr i64 %1969 to i64*
  %1973 = load i64, i64* %1972
  store i64 %1973, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_42cd82, %struct.Memory** %MEMORY
  %loadMem_42cd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 5
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %RCX.i597
  %1981 = add i64 %1980, 320
  %1982 = load i64, i64* %PC.i596
  %1983 = add i64 %1982, 7
  store i64 %1983, i64* %PC.i596
  %1984 = inttoptr i64 %1981 to i32*
  %1985 = load i32, i32* %1984
  %1986 = sext i32 %1985 to i64
  store i64 %1986, i64* %RCX.i597, align 8
  store %struct.Memory* %loadMem_42cd86, %struct.Memory** %MEMORY
  %loadMem_42cd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 5
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %RCX.i595
  %1994 = load i64, i64* %PC.i594
  %1995 = add i64 %1994, 4
  store i64 %1995, i64* %PC.i594
  %1996 = shl i64 %1993, 2
  %1997 = icmp slt i64 %1996, 0
  %1998 = shl i64 %1996, 1
  store i64 %1998, i64* %RCX.i595, align 8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2000 = zext i1 %1997 to i8
  store i8 %2000, i8* %1999, align 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2002 = trunc i64 %1998 to i32
  %2003 = and i32 %2002, 254
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %2001, align 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2008, align 1
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2010 = icmp eq i64 %1998, 0
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %2009, align 1
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2013 = lshr i64 %1998, 63
  %2014 = trunc i64 %2013 to i8
  store i8 %2014, i8* %2012, align 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2015, align 1
  store %struct.Memory* %loadMem_42cd8d, %struct.Memory** %MEMORY
  %loadMem_42cd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 1
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 7
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %2024 to i64*
  %2025 = load i64, i64* %RAX.i592
  %2026 = load i64, i64* %PC.i591
  %2027 = add i64 %2026, 3
  store i64 %2027, i64* %PC.i591
  store i64 %2025, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_42cd91, %struct.Memory** %MEMORY
  %loadMem1_42cd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %PC.i590
  %2032 = add i64 %2031, 103196
  %2033 = load i64, i64* %PC.i590
  %2034 = add i64 %2033, 5
  %2035 = load i64, i64* %PC.i590
  %2036 = add i64 %2035, 5
  store i64 %2036, i64* %PC.i590
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2038 = load i64, i64* %2037, align 8
  %2039 = add i64 %2038, -8
  %2040 = inttoptr i64 %2039 to i64*
  store i64 %2034, i64* %2040
  store i64 %2039, i64* %2037, align 8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2032, i64* %2041, align 8
  store %struct.Memory* %loadMem1_42cd94, %struct.Memory** %MEMORY
  %loadMem2_42cd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cd94 = load i64, i64* %3
  %call2_42cd94 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cd94, %struct.Memory* %loadMem2_42cd94)
  store %struct.Memory* %call2_42cd94, %struct.Memory** %MEMORY
  %loadMem_42cd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 5
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 15
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RBP.i589
  %2052 = sub i64 %2051, 8
  %2053 = load i64, i64* %PC.i587
  %2054 = add i64 %2053, 4
  store i64 %2054, i64* %PC.i587
  %2055 = inttoptr i64 %2052 to i64*
  %2056 = load i64, i64* %2055
  store i64 %2056, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_42cd99, %struct.Memory** %MEMORY
  %loadMem_42cd9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 5
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RCX.i586
  %2067 = add i64 %2066, 104
  %2068 = load i64, i64* %RAX.i585
  %2069 = load i64, i64* %PC.i584
  %2070 = add i64 %2069, 4
  store i64 %2070, i64* %PC.i584
  %2071 = inttoptr i64 %2067 to i64*
  store i64 %2068, i64* %2071
  store %struct.Memory* %loadMem_42cd9d, %struct.Memory** %MEMORY
  br label %block_.L_42cda1

block_.L_42cda1:                                  ; preds = %block_42cd6b, %block_.L_42cd5c
  %loadMem_42cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 1
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RBP.i583
  %2082 = sub i64 %2081, 8
  %2083 = load i64, i64* %PC.i581
  %2084 = add i64 %2083, 4
  store i64 %2084, i64* %PC.i581
  %2085 = inttoptr i64 %2082 to i64*
  %2086 = load i64, i64* %2085
  store i64 %2086, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_42cda1, %struct.Memory** %MEMORY
  %loadMem_42cda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 1
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 5
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %RAX.i579
  %2097 = add i64 %2096, 320
  %2098 = load i64, i64* %PC.i578
  %2099 = add i64 %2098, 6
  store i64 %2099, i64* %PC.i578
  %2100 = inttoptr i64 %2097 to i32*
  %2101 = load i32, i32* %2100
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RCX.i580, align 8
  store %struct.Memory* %loadMem_42cda5, %struct.Memory** %MEMORY
  %loadMem_42cdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 33
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 1
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 15
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %RBP.i577
  %2113 = sub i64 %2112, 8
  %2114 = load i64, i64* %PC.i575
  %2115 = add i64 %2114, 4
  store i64 %2115, i64* %PC.i575
  %2116 = inttoptr i64 %2113 to i64*
  %2117 = load i64, i64* %2116
  store i64 %2117, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_42cdab, %struct.Memory** %MEMORY
  %loadMem_42cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 1
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 5
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RCX.i574
  %2128 = load i64, i64* %RAX.i573
  %2129 = add i64 %2128, 324
  %2130 = load i64, i64* %PC.i572
  %2131 = add i64 %2130, 6
  store i64 %2131, i64* %PC.i572
  %2132 = trunc i64 %2127 to i32
  %2133 = inttoptr i64 %2129 to i32*
  %2134 = load i32, i32* %2133
  %2135 = sub i32 %2132, %2134
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RCX.i574, align 8
  %2137 = icmp ult i32 %2132, %2134
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2138, i8* %2139, align 1
  %2140 = and i32 %2135, 255
  %2141 = call i32 @llvm.ctpop.i32(i32 %2140)
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2144, i8* %2145, align 1
  %2146 = xor i32 %2134, %2132
  %2147 = xor i32 %2146, %2135
  %2148 = lshr i32 %2147, 4
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2150, i8* %2151, align 1
  %2152 = icmp eq i32 %2135, 0
  %2153 = zext i1 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2153, i8* %2154, align 1
  %2155 = lshr i32 %2135, 31
  %2156 = trunc i32 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2156, i8* %2157, align 1
  %2158 = lshr i32 %2132, 31
  %2159 = lshr i32 %2134, 31
  %2160 = xor i32 %2159, %2158
  %2161 = xor i32 %2155, %2158
  %2162 = add i32 %2161, %2160
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2164, i8* %2165, align 1
  store %struct.Memory* %loadMem_42cdaf, %struct.Memory** %MEMORY
  %loadMem_42cdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 33
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 5
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2171 to i32*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 15
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2174 to i64*
  %2175 = load i64, i64* %RBP.i571
  %2176 = sub i64 %2175, 12
  %2177 = load i32, i32* %ECX.i
  %2178 = zext i32 %2177 to i64
  %2179 = load i64, i64* %PC.i570
  %2180 = add i64 %2179, 3
  store i64 %2180, i64* %PC.i570
  %2181 = inttoptr i64 %2176 to i32*
  store i32 %2177, i32* %2181
  store %struct.Memory* %loadMem_42cdb5, %struct.Memory** %MEMORY
  br label %block_.L_42cdb8

block_.L_42cdb8:                                  ; preds = %block_.L_42cff3, %block_.L_42cda1
  %loadMem_42cdb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 1
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 15
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %2190 to i64*
  %2191 = load i64, i64* %RBP.i569
  %2192 = sub i64 %2191, 12
  %2193 = load i64, i64* %PC.i567
  %2194 = add i64 %2193, 3
  store i64 %2194, i64* %PC.i567
  %2195 = inttoptr i64 %2192 to i32*
  %2196 = load i32, i32* %2195
  %2197 = zext i32 %2196 to i64
  store i64 %2197, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_42cdb8, %struct.Memory** %MEMORY
  %loadMem_42cdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 5
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 15
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %2206 to i64*
  %2207 = load i64, i64* %RBP.i566
  %2208 = sub i64 %2207, 8
  %2209 = load i64, i64* %PC.i564
  %2210 = add i64 %2209, 4
  store i64 %2210, i64* %PC.i564
  %2211 = inttoptr i64 %2208 to i64*
  %2212 = load i64, i64* %2211
  store i64 %2212, i64* %RCX.i565, align 8
  store %struct.Memory* %loadMem_42cdbb, %struct.Memory** %MEMORY
  %loadMem_42cdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 1
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %EAX.i562 = bitcast %union.anon* %2218 to i32*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 5
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %2221 to i64*
  %2222 = load i32, i32* %EAX.i562
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %RCX.i563
  %2225 = add i64 %2224, 320
  %2226 = load i64, i64* %PC.i561
  %2227 = add i64 %2226, 6
  store i64 %2227, i64* %PC.i561
  %2228 = inttoptr i64 %2225 to i32*
  %2229 = load i32, i32* %2228
  %2230 = sub i32 %2222, %2229
  %2231 = icmp ult i32 %2222, %2229
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2232, i8* %2233, align 1
  %2234 = and i32 %2230, 255
  %2235 = call i32 @llvm.ctpop.i32(i32 %2234)
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2238, i8* %2239, align 1
  %2240 = xor i32 %2229, %2222
  %2241 = xor i32 %2240, %2230
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2244, i8* %2245, align 1
  %2246 = icmp eq i32 %2230, 0
  %2247 = zext i1 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2247, i8* %2248, align 1
  %2249 = lshr i32 %2230, 31
  %2250 = trunc i32 %2249 to i8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2250, i8* %2251, align 1
  %2252 = lshr i32 %2222, 31
  %2253 = lshr i32 %2229, 31
  %2254 = xor i32 %2253, %2252
  %2255 = xor i32 %2249, %2252
  %2256 = add i32 %2255, %2254
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2258, i8* %2259, align 1
  store %struct.Memory* %loadMem_42cdbf, %struct.Memory** %MEMORY
  %loadMem_42cdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2262 to i64*
  %2263 = load i64, i64* %PC.i560
  %2264 = add i64 %2263, 572
  %2265 = load i64, i64* %PC.i560
  %2266 = add i64 %2265, 6
  %2267 = load i64, i64* %PC.i560
  %2268 = add i64 %2267, 6
  store i64 %2268, i64* %PC.i560
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2270 = load i8, i8* %2269, align 1
  %2271 = icmp ne i8 %2270, 0
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2273 = load i8, i8* %2272, align 1
  %2274 = icmp ne i8 %2273, 0
  %2275 = xor i1 %2271, %2274
  %2276 = xor i1 %2275, true
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %BRANCH_TAKEN, align 1
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2279 = select i1 %2275, i64 %2266, i64 %2264
  store i64 %2279, i64* %2278, align 8
  store %struct.Memory* %loadMem_42cdc5, %struct.Memory** %MEMORY
  %loadBr_42cdc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cdc5 = icmp eq i8 %loadBr_42cdc5, 1
  br i1 %cmpBr_42cdc5, label %block_.L_42d001, label %block_42cdcb

block_42cdcb:                                     ; preds = %block_.L_42cdb8
  %loadMem_42cdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2283, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2284 to %"class.std::bitset"*
  %2285 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2286 = load i64, i64* %PC.i559
  %2287 = add i64 %2286, ptrtoint (%G_0x27951__rip__type* @G_0x27951__rip_ to i64)
  %2288 = load i64, i64* %PC.i559
  %2289 = add i64 %2288, 8
  store i64 %2289, i64* %PC.i559
  %2290 = inttoptr i64 %2287 to float*
  %2291 = load float, float* %2290
  %2292 = bitcast i8* %2285 to float*
  store float %2291, float* %2292, align 1
  %2293 = getelementptr inbounds i8, i8* %2285, i64 4
  %2294 = bitcast i8* %2293 to float*
  store float 0.000000e+00, float* %2294, align 1
  %2295 = getelementptr inbounds i8, i8* %2285, i64 8
  %2296 = bitcast i8* %2295 to float*
  store float 0.000000e+00, float* %2296, align 1
  %2297 = getelementptr inbounds i8, i8* %2285, i64 12
  %2298 = bitcast i8* %2297 to float*
  store float 0.000000e+00, float* %2298, align 1
  store %struct.Memory* %loadMem_42cdcb, %struct.Memory** %MEMORY
  %loadMem_42cdd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 15
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RBP.i558
  %2309 = sub i64 %2308, 8
  %2310 = load i64, i64* %PC.i556
  %2311 = add i64 %2310, 4
  store i64 %2311, i64* %PC.i556
  %2312 = inttoptr i64 %2309 to i64*
  %2313 = load i64, i64* %2312
  store i64 %2313, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_42cdd3, %struct.Memory** %MEMORY
  %loadMem_42cdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 1
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RAX.i555
  %2321 = add i64 %2320, 8
  %2322 = load i64, i64* %PC.i554
  %2323 = add i64 %2322, 4
  store i64 %2323, i64* %PC.i554
  %2324 = inttoptr i64 %2321 to i64*
  %2325 = load i64, i64* %2324
  store i64 %2325, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_42cdd7, %struct.Memory** %MEMORY
  %loadMem_42cddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 5
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 15
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %RBP.i553
  %2336 = sub i64 %2335, 12
  %2337 = load i64, i64* %PC.i551
  %2338 = add i64 %2337, 4
  store i64 %2338, i64* %PC.i551
  %2339 = inttoptr i64 %2336 to i32*
  %2340 = load i32, i32* %2339
  %2341 = sext i32 %2340 to i64
  store i64 %2341, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_42cddb, %struct.Memory** %MEMORY
  %loadMem_42cddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 1
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 5
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %2350 to i64*
  %2351 = load i64, i64* %RAX.i549
  %2352 = load i64, i64* %RCX.i550
  %2353 = mul i64 %2352, 8
  %2354 = add i64 %2353, %2351
  %2355 = load i64, i64* %PC.i548
  %2356 = add i64 %2355, 8
  store i64 %2356, i64* %PC.i548
  %2357 = inttoptr i64 %2354 to i64*
  store i64 0, i64* %2357
  store %struct.Memory* %loadMem_42cddf, %struct.Memory** %MEMORY
  %loadMem_42cde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 33
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 1
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 15
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %2366 to i64*
  %2367 = load i64, i64* %RBP.i547
  %2368 = sub i64 %2367, 8
  %2369 = load i64, i64* %PC.i545
  %2370 = add i64 %2369, 4
  store i64 %2370, i64* %PC.i545
  %2371 = inttoptr i64 %2368 to i64*
  %2372 = load i64, i64* %2371
  store i64 %2372, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_42cde7, %struct.Memory** %MEMORY
  %loadMem_42cdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 1
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %2378 to i64*
  %2379 = load i64, i64* %RAX.i544
  %2380 = add i64 %2379, 16
  %2381 = load i64, i64* %PC.i543
  %2382 = add i64 %2381, 4
  store i64 %2382, i64* %PC.i543
  %2383 = inttoptr i64 %2380 to i64*
  %2384 = load i64, i64* %2383
  store i64 %2384, i64* %RAX.i544, align 8
  store %struct.Memory* %loadMem_42cdeb, %struct.Memory** %MEMORY
  %loadMem_42cdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 5
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 15
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RBP.i542
  %2395 = sub i64 %2394, 12
  %2396 = load i64, i64* %PC.i540
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %PC.i540
  %2398 = inttoptr i64 %2395 to i32*
  %2399 = load i32, i32* %2398
  %2400 = sext i32 %2399 to i64
  store i64 %2400, i64* %RCX.i541, align 8
  store %struct.Memory* %loadMem_42cdef, %struct.Memory** %MEMORY
  %loadMem_42cdf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 5
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2410, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2411 to %union.vec128_t*
  %2412 = load i64, i64* %RAX.i538
  %2413 = load i64, i64* %RCX.i539
  %2414 = mul i64 %2413, 4
  %2415 = add i64 %2414, %2412
  %2416 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2417 = load i64, i64* %PC.i537
  %2418 = add i64 %2417, 5
  store i64 %2418, i64* %PC.i537
  %2419 = bitcast i8* %2416 to <2 x float>*
  %2420 = load <2 x float>, <2 x float>* %2419, align 1
  %2421 = extractelement <2 x float> %2420, i32 0
  %2422 = inttoptr i64 %2415 to float*
  store float %2421, float* %2422
  store %struct.Memory* %loadMem_42cdf3, %struct.Memory** %MEMORY
  %loadMem_42cdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 1
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 15
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RBP.i536
  %2433 = sub i64 %2432, 8
  %2434 = load i64, i64* %PC.i534
  %2435 = add i64 %2434, 4
  store i64 %2435, i64* %PC.i534
  %2436 = inttoptr i64 %2433 to i64*
  %2437 = load i64, i64* %2436
  store i64 %2437, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_42cdf8, %struct.Memory** %MEMORY
  %loadMem_42cdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 1
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RAX.i533
  %2445 = add i64 %2444, 96
  %2446 = load i64, i64* %PC.i532
  %2447 = add i64 %2446, 5
  store i64 %2447, i64* %PC.i532
  %2448 = inttoptr i64 %2445 to i64*
  %2449 = load i64, i64* %2448
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2450, align 1
  %2451 = trunc i64 %2449 to i32
  %2452 = and i32 %2451, 255
  %2453 = call i32 @llvm.ctpop.i32(i32 %2452)
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2456, i8* %2457, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2458, align 1
  %2459 = icmp eq i64 %2449, 0
  %2460 = zext i1 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2460, i8* %2461, align 1
  %2462 = lshr i64 %2449, 63
  %2463 = trunc i64 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2463, i8* %2464, align 1
  %2465 = lshr i64 %2449, 63
  %2466 = xor i64 %2462, %2465
  %2467 = add i64 %2466, %2465
  %2468 = icmp eq i64 %2467, 2
  %2469 = zext i1 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2469, i8* %2470, align 1
  store %struct.Memory* %loadMem_42cdfc, %struct.Memory** %MEMORY
  %loadMem_42ce01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %PC.i531
  %2475 = add i64 %2474, 26
  %2476 = load i64, i64* %PC.i531
  %2477 = add i64 %2476, 6
  %2478 = load i64, i64* %PC.i531
  %2479 = add i64 %2478, 6
  store i64 %2479, i64* %PC.i531
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2481 = load i8, i8* %2480, align 1
  store i8 %2481, i8* %BRANCH_TAKEN, align 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2483 = icmp ne i8 %2481, 0
  %2484 = select i1 %2483, i64 %2475, i64 %2477
  store i64 %2484, i64* %2482, align 8
  store %struct.Memory* %loadMem_42ce01, %struct.Memory** %MEMORY
  %loadBr_42ce01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ce01 = icmp eq i8 %loadBr_42ce01, 1
  br i1 %cmpBr_42ce01, label %block_.L_42ce1b, label %block_42ce07

block_42ce07:                                     ; preds = %block_42cdcb
  %loadMem_42ce07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 1
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 15
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RBP.i530
  %2495 = sub i64 %2494, 8
  %2496 = load i64, i64* %PC.i528
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %PC.i528
  %2498 = inttoptr i64 %2495 to i64*
  %2499 = load i64, i64* %2498
  store i64 %2499, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_42ce07, %struct.Memory** %MEMORY
  %loadMem_42ce0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 1
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %RAX.i527
  %2507 = add i64 %2506, 96
  %2508 = load i64, i64* %PC.i526
  %2509 = add i64 %2508, 4
  store i64 %2509, i64* %PC.i526
  %2510 = inttoptr i64 %2507 to i64*
  %2511 = load i64, i64* %2510
  store i64 %2511, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_42ce0b, %struct.Memory** %MEMORY
  %loadMem_42ce0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 5
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 15
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %RBP.i525
  %2522 = sub i64 %2521, 12
  %2523 = load i64, i64* %PC.i523
  %2524 = add i64 %2523, 4
  store i64 %2524, i64* %PC.i523
  %2525 = inttoptr i64 %2522 to i32*
  %2526 = load i32, i32* %2525
  %2527 = sext i32 %2526 to i64
  store i64 %2527, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_42ce0f, %struct.Memory** %MEMORY
  %loadMem_42ce13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 1
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 5
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RAX.i521
  %2538 = load i64, i64* %RCX.i522
  %2539 = mul i64 %2538, 8
  %2540 = add i64 %2539, %2537
  %2541 = load i64, i64* %PC.i520
  %2542 = add i64 %2541, 8
  store i64 %2542, i64* %PC.i520
  %2543 = inttoptr i64 %2540 to i64*
  store i64 0, i64* %2543
  store %struct.Memory* %loadMem_42ce13, %struct.Memory** %MEMORY
  br label %block_.L_42ce1b

block_.L_42ce1b:                                  ; preds = %block_42ce07, %block_42cdcb
  %loadMem_42ce1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 1
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 15
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2552 to i64*
  %2553 = load i64, i64* %RBP.i519
  %2554 = sub i64 %2553, 8
  %2555 = load i64, i64* %PC.i517
  %2556 = add i64 %2555, 4
  store i64 %2556, i64* %PC.i517
  %2557 = inttoptr i64 %2554 to i64*
  %2558 = load i64, i64* %2557
  store i64 %2558, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_42ce1b, %struct.Memory** %MEMORY
  %loadMem_42ce1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 1
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %2564 to i64*
  %2565 = load i64, i64* %RAX.i516
  %2566 = add i64 %2565, 104
  %2567 = load i64, i64* %PC.i515
  %2568 = add i64 %2567, 5
  store i64 %2568, i64* %PC.i515
  %2569 = inttoptr i64 %2566 to i64*
  %2570 = load i64, i64* %2569
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2571, align 1
  %2572 = trunc i64 %2570 to i32
  %2573 = and i32 %2572, 255
  %2574 = call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2577, i8* %2578, align 1
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2579, align 1
  %2580 = icmp eq i64 %2570, 0
  %2581 = zext i1 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2581, i8* %2582, align 1
  %2583 = lshr i64 %2570, 63
  %2584 = trunc i64 %2583 to i8
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2584, i8* %2585, align 1
  %2586 = lshr i64 %2570, 63
  %2587 = xor i64 %2583, %2586
  %2588 = add i64 %2587, %2586
  %2589 = icmp eq i64 %2588, 2
  %2590 = zext i1 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2590, i8* %2591, align 1
  store %struct.Memory* %loadMem_42ce1f, %struct.Memory** %MEMORY
  %loadMem_42ce24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %PC.i514
  %2596 = add i64 %2595, 26
  %2597 = load i64, i64* %PC.i514
  %2598 = add i64 %2597, 6
  %2599 = load i64, i64* %PC.i514
  %2600 = add i64 %2599, 6
  store i64 %2600, i64* %PC.i514
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2602 = load i8, i8* %2601, align 1
  store i8 %2602, i8* %BRANCH_TAKEN, align 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2604 = icmp ne i8 %2602, 0
  %2605 = select i1 %2604, i64 %2596, i64 %2598
  store i64 %2605, i64* %2603, align 8
  store %struct.Memory* %loadMem_42ce24, %struct.Memory** %MEMORY
  %loadBr_42ce24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ce24 = icmp eq i8 %loadBr_42ce24, 1
  br i1 %cmpBr_42ce24, label %block_.L_42ce3e, label %block_42ce2a

block_42ce2a:                                     ; preds = %block_.L_42ce1b
  %loadMem_42ce2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 1
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 15
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %RBP.i513
  %2616 = sub i64 %2615, 8
  %2617 = load i64, i64* %PC.i511
  %2618 = add i64 %2617, 4
  store i64 %2618, i64* %PC.i511
  %2619 = inttoptr i64 %2616 to i64*
  %2620 = load i64, i64* %2619
  store i64 %2620, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_42ce2a, %struct.Memory** %MEMORY
  %loadMem_42ce2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RAX.i510
  %2628 = add i64 %2627, 104
  %2629 = load i64, i64* %PC.i509
  %2630 = add i64 %2629, 4
  store i64 %2630, i64* %PC.i509
  %2631 = inttoptr i64 %2628 to i64*
  %2632 = load i64, i64* %2631
  store i64 %2632, i64* %RAX.i510, align 8
  store %struct.Memory* %loadMem_42ce2e, %struct.Memory** %MEMORY
  %loadMem_42ce32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 5
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i508
  %2643 = sub i64 %2642, 12
  %2644 = load i64, i64* %PC.i506
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i506
  %2646 = inttoptr i64 %2643 to i32*
  %2647 = load i32, i32* %2646
  %2648 = sext i32 %2647 to i64
  store i64 %2648, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_42ce32, %struct.Memory** %MEMORY
  %loadMem_42ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 5
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RAX.i504
  %2659 = load i64, i64* %RCX.i505
  %2660 = mul i64 %2659, 8
  %2661 = add i64 %2660, %2658
  %2662 = load i64, i64* %PC.i503
  %2663 = add i64 %2662, 8
  store i64 %2663, i64* %PC.i503
  %2664 = inttoptr i64 %2661 to i64*
  store i64 0, i64* %2664
  store %struct.Memory* %loadMem_42ce36, %struct.Memory** %MEMORY
  br label %block_.L_42ce3e

block_.L_42ce3e:                                  ; preds = %block_42ce2a, %block_.L_42ce1b
  %loadMem_42ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 1
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 15
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RBP.i502
  %2675 = sub i64 %2674, 8
  %2676 = load i64, i64* %PC.i500
  %2677 = add i64 %2676, 4
  store i64 %2677, i64* %PC.i500
  %2678 = inttoptr i64 %2675 to i64*
  %2679 = load i64, i64* %2678
  store i64 %2679, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_42ce3e, %struct.Memory** %MEMORY
  %loadMem_42ce42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 1
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RAX.i499
  %2687 = add i64 %2686, 24
  %2688 = load i64, i64* %PC.i498
  %2689 = add i64 %2688, 4
  store i64 %2689, i64* %PC.i498
  %2690 = inttoptr i64 %2687 to i32*
  %2691 = load i32, i32* %2690
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2692, align 1
  %2693 = and i32 %2691, 255
  %2694 = call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2697, i8* %2698, align 1
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2699, align 1
  %2700 = icmp eq i32 %2691, 0
  %2701 = zext i1 %2700 to i8
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2701, i8* %2702, align 1
  %2703 = lshr i32 %2691, 31
  %2704 = trunc i32 %2703 to i8
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2704, i8* %2705, align 1
  %2706 = lshr i32 %2691, 31
  %2707 = xor i32 %2703, %2706
  %2708 = add i32 %2707, %2706
  %2709 = icmp eq i32 %2708, 2
  %2710 = zext i1 %2709 to i8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2710, i8* %2711, align 1
  store %struct.Memory* %loadMem_42ce42, %struct.Memory** %MEMORY
  %loadMem_42ce46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2714 to i64*
  %2715 = load i64, i64* %PC.i497
  %2716 = add i64 %2715, 83
  %2717 = load i64, i64* %PC.i497
  %2718 = add i64 %2717, 6
  %2719 = load i64, i64* %PC.i497
  %2720 = add i64 %2719, 6
  store i64 %2720, i64* %PC.i497
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2722 = load i8, i8* %2721, align 1
  store i8 %2722, i8* %BRANCH_TAKEN, align 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2724 = icmp ne i8 %2722, 0
  %2725 = select i1 %2724, i64 %2716, i64 %2718
  store i64 %2725, i64* %2723, align 8
  store %struct.Memory* %loadMem_42ce46, %struct.Memory** %MEMORY
  %loadBr_42ce46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ce46 = icmp eq i8 %loadBr_42ce46, 1
  br i1 %cmpBr_42ce46, label %block_.L_42ce99, label %block_42ce4c

block_42ce4c:                                     ; preds = %block_.L_42ce3e
  %loadMem_42ce4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 33
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2728 to i64*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 11
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RDI.i496 = bitcast %union.anon* %2731 to i64*
  %2732 = load i64, i64* %PC.i495
  %2733 = add i64 %2732, 10
  store i64 %2733, i64* %PC.i495
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i496, align 8
  store %struct.Memory* %loadMem_42ce4c, %struct.Memory** %MEMORY
  %loadMem_42ce56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 33
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 9
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %RSI.i494 = bitcast %union.anon* %2739 to i64*
  %2740 = load i64, i64* %PC.i493
  %2741 = add i64 %2740, 5
  store i64 %2741, i64* %PC.i493
  store i64 189, i64* %RSI.i494, align 8
  store %struct.Memory* %loadMem_42ce56, %struct.Memory** %MEMORY
  %loadMem_42ce5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i492
  %2752 = sub i64 %2751, 8
  %2753 = load i64, i64* %PC.i490
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i490
  %2755 = inttoptr i64 %2752 to i64*
  %2756 = load i64, i64* %2755
  store i64 %2756, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_42ce5b, %struct.Memory** %MEMORY
  %loadMem_42ce5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 1
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %RAX.i489
  %2764 = load i64, i64* %PC.i488
  %2765 = add i64 %2764, 3
  store i64 %2765, i64* %PC.i488
  %2766 = inttoptr i64 %2763 to i64*
  %2767 = load i64, i64* %2766
  store i64 %2767, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_42ce5f, %struct.Memory** %MEMORY
  %loadMem_42ce62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 5
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 15
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %RBP.i487
  %2778 = sub i64 %2777, 12
  %2779 = load i64, i64* %PC.i485
  %2780 = add i64 %2779, 4
  store i64 %2780, i64* %PC.i485
  %2781 = inttoptr i64 %2778 to i32*
  %2782 = load i32, i32* %2781
  %2783 = sext i32 %2782 to i64
  store i64 %2783, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_42ce62, %struct.Memory** %MEMORY
  %loadMem_42ce66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 1
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 5
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 7
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %RAX.i482
  %2797 = load i64, i64* %RCX.i483
  %2798 = mul i64 %2797, 8
  %2799 = add i64 %2798, %2796
  %2800 = load i64, i64* %PC.i481
  %2801 = add i64 %2800, 4
  store i64 %2801, i64* %PC.i481
  %2802 = inttoptr i64 %2799 to i64*
  %2803 = load i64, i64* %2802
  store i64 %2803, i64* %RDX.i484, align 8
  store %struct.Memory* %loadMem_42ce66, %struct.Memory** %MEMORY
  %loadMem_42ce6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 1
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 15
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %RBP.i480
  %2814 = sub i64 %2813, 8
  %2815 = load i64, i64* %PC.i478
  %2816 = add i64 %2815, 4
  store i64 %2816, i64* %PC.i478
  %2817 = inttoptr i64 %2814 to i64*
  %2818 = load i64, i64* %2817
  store i64 %2818, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_42ce6a, %struct.Memory** %MEMORY
  %loadMem_42ce6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 17
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %R8D.i476 = bitcast %union.anon* %2824 to i32*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %2827 to i64*
  %2828 = bitcast i32* %R8D.i476 to i64*
  %2829 = load i64, i64* %RAX.i477
  %2830 = add i64 %2829, 24
  %2831 = load i64, i64* %PC.i475
  %2832 = add i64 %2831, 4
  store i64 %2832, i64* %PC.i475
  %2833 = inttoptr i64 %2830 to i32*
  %2834 = load i32, i32* %2833
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %2828, align 8
  store %struct.Memory* %loadMem_42ce6e, %struct.Memory** %MEMORY
  %loadMem_42ce72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 17
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %R8D.i474 = bitcast %union.anon* %2841 to i32*
  %2842 = bitcast i32* %R8D.i474 to i64*
  %2843 = load i32, i32* %R8D.i474
  %2844 = zext i32 %2843 to i64
  %2845 = load i64, i64* %PC.i473
  %2846 = add i64 %2845, 4
  store i64 %2846, i64* %PC.i473
  %2847 = add i32 1, %2843
  %2848 = zext i32 %2847 to i64
  store i64 %2848, i64* %2842, align 8
  %2849 = icmp ult i32 %2847, %2843
  %2850 = icmp ult i32 %2847, 1
  %2851 = or i1 %2849, %2850
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2852, i8* %2853, align 1
  %2854 = and i32 %2847, 255
  %2855 = call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2858, i8* %2859, align 1
  %2860 = xor i64 1, %2844
  %2861 = trunc i64 %2860 to i32
  %2862 = xor i32 %2861, %2847
  %2863 = lshr i32 %2862, 4
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2865, i8* %2866, align 1
  %2867 = icmp eq i32 %2847, 0
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2868, i8* %2869, align 1
  %2870 = lshr i32 %2847, 31
  %2871 = trunc i32 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2871, i8* %2872, align 1
  %2873 = lshr i32 %2843, 31
  %2874 = xor i32 %2870, %2873
  %2875 = add i32 %2874, %2870
  %2876 = icmp eq i32 %2875, 2
  %2877 = zext i1 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2877, i8* %2878, align 1
  store %struct.Memory* %loadMem_42ce72, %struct.Memory** %MEMORY
  %loadMem_42ce76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 17
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %R8D.i471 = bitcast %union.anon* %2884 to i32*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 1
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %2887 to i64*
  %2888 = load i32, i32* %R8D.i471
  %2889 = zext i32 %2888 to i64
  %2890 = load i64, i64* %PC.i470
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %PC.i470
  %2892 = shl i64 %2889, 32
  %2893 = ashr exact i64 %2892, 32
  store i64 %2893, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_42ce76, %struct.Memory** %MEMORY
  %loadMem_42ce79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 1
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %RAX.i469
  %2901 = load i64, i64* %PC.i468
  %2902 = add i64 %2901, 4
  store i64 %2902, i64* %PC.i468
  store %struct.Memory* %loadMem_42ce79, %struct.Memory** %MEMORY
  %loadMem_42ce7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 1
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 5
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %2911 to i64*
  %2912 = load i64, i64* %RAX.i466
  %2913 = load i64, i64* %PC.i465
  %2914 = add i64 %2913, 3
  store i64 %2914, i64* %PC.i465
  store i64 %2912, i64* %RCX.i467, align 8
  store %struct.Memory* %loadMem_42ce7d, %struct.Memory** %MEMORY
  %loadMem1_42ce80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2917 to i64*
  %2918 = load i64, i64* %PC.i464
  %2919 = add i64 %2918, 102960
  %2920 = load i64, i64* %PC.i464
  %2921 = add i64 %2920, 5
  %2922 = load i64, i64* %PC.i464
  %2923 = add i64 %2922, 5
  store i64 %2923, i64* %PC.i464
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2925 = load i64, i64* %2924, align 8
  %2926 = add i64 %2925, -8
  %2927 = inttoptr i64 %2926 to i64*
  store i64 %2921, i64* %2927
  store i64 %2926, i64* %2924, align 8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2919, i64* %2928, align 8
  store %struct.Memory* %loadMem1_42ce80, %struct.Memory** %MEMORY
  %loadMem2_42ce80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ce80 = load i64, i64* %3
  %call2_42ce80 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42ce80, %struct.Memory* %loadMem2_42ce80)
  store %struct.Memory* %call2_42ce80, %struct.Memory** %MEMORY
  %loadMem_42ce85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 5
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 15
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RBP.i463
  %2939 = sub i64 %2938, 8
  %2940 = load i64, i64* %PC.i461
  %2941 = add i64 %2940, 4
  store i64 %2941, i64* %PC.i461
  %2942 = inttoptr i64 %2939 to i64*
  %2943 = load i64, i64* %2942
  store i64 %2943, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_42ce85, %struct.Memory** %MEMORY
  %loadMem_42ce89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 5
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RCX.i460
  %2951 = load i64, i64* %PC.i459
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i459
  %2953 = inttoptr i64 %2950 to i64*
  %2954 = load i64, i64* %2953
  store i64 %2954, i64* %RCX.i460, align 8
  store %struct.Memory* %loadMem_42ce89, %struct.Memory** %MEMORY
  %loadMem_42ce8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 7
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RDX.i457 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RBP.i458
  %2965 = sub i64 %2964, 12
  %2966 = load i64, i64* %PC.i456
  %2967 = add i64 %2966, 4
  store i64 %2967, i64* %PC.i456
  %2968 = inttoptr i64 %2965 to i32*
  %2969 = load i32, i32* %2968
  %2970 = sext i32 %2969 to i64
  store i64 %2970, i64* %RDX.i457, align 8
  store %struct.Memory* %loadMem_42ce8c, %struct.Memory** %MEMORY
  %loadMem_42ce90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 5
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 7
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %RDX.i455 = bitcast %union.anon* %2982 to i64*
  %2983 = load i64, i64* %RCX.i454
  %2984 = load i64, i64* %RDX.i455
  %2985 = mul i64 %2984, 8
  %2986 = add i64 %2985, %2983
  %2987 = load i64, i64* %RAX.i453
  %2988 = load i64, i64* %PC.i452
  %2989 = add i64 %2988, 4
  store i64 %2989, i64* %PC.i452
  %2990 = inttoptr i64 %2986 to i64*
  store i64 %2987, i64* %2990
  store %struct.Memory* %loadMem_42ce90, %struct.Memory** %MEMORY
  %loadMem_42ce94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2993 to i64*
  %2994 = load i64, i64* %PC.i451
  %2995 = add i64 %2994, 24
  %2996 = load i64, i64* %PC.i451
  %2997 = add i64 %2996, 5
  store i64 %2997, i64* %PC.i451
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2995, i64* %2998, align 8
  store %struct.Memory* %loadMem_42ce94, %struct.Memory** %MEMORY
  br label %block_.L_42ceac

block_.L_42ce99:                                  ; preds = %block_.L_42ce3e
  %loadMem_42ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 1
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 15
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RBP.i450
  %3009 = sub i64 %3008, 8
  %3010 = load i64, i64* %PC.i448
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i448
  %3012 = inttoptr i64 %3009 to i64*
  %3013 = load i64, i64* %3012
  store i64 %3013, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_42ce99, %struct.Memory** %MEMORY
  %loadMem_42ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 1
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RAX.i447
  %3021 = load i64, i64* %PC.i446
  %3022 = add i64 %3021, 3
  store i64 %3022, i64* %PC.i446
  %3023 = inttoptr i64 %3020 to i64*
  %3024 = load i64, i64* %3023
  store i64 %3024, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_42ce9d, %struct.Memory** %MEMORY
  %loadMem_42cea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %RBP.i445
  %3035 = sub i64 %3034, 12
  %3036 = load i64, i64* %PC.i443
  %3037 = add i64 %3036, 4
  store i64 %3037, i64* %PC.i443
  %3038 = inttoptr i64 %3035 to i32*
  %3039 = load i32, i32* %3038
  %3040 = sext i32 %3039 to i64
  store i64 %3040, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_42cea0, %struct.Memory** %MEMORY
  %loadMem_42cea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 1
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 5
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RAX.i441
  %3051 = load i64, i64* %RCX.i442
  %3052 = mul i64 %3051, 8
  %3053 = add i64 %3052, %3050
  %3054 = load i64, i64* %PC.i440
  %3055 = add i64 %3054, 8
  store i64 %3055, i64* %PC.i440
  %3056 = inttoptr i64 %3053 to i64*
  store i64 0, i64* %3056
  store %struct.Memory* %loadMem_42cea4, %struct.Memory** %MEMORY
  br label %block_.L_42ceac

block_.L_42ceac:                                  ; preds = %block_.L_42ce99, %block_42ce4c
  %loadMem_42ceac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 1
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RBP.i439
  %3067 = sub i64 %3066, 8
  %3068 = load i64, i64* %PC.i437
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %PC.i437
  %3070 = inttoptr i64 %3067 to i64*
  %3071 = load i64, i64* %3070
  store i64 %3071, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_42ceac, %struct.Memory** %MEMORY
  %loadMem_42ceb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %3077 to i64*
  %3078 = load i64, i64* %RAX.i436
  %3079 = add i64 %3078, 328
  %3080 = load i64, i64* %PC.i435
  %3081 = add i64 %3080, 7
  store i64 %3081, i64* %PC.i435
  %3082 = inttoptr i64 %3079 to i64*
  %3083 = load i64, i64* %3082
  store i64 %3083, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_42ceb0, %struct.Memory** %MEMORY
  %loadMem_42ceb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 5
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 15
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %RBP.i434
  %3094 = sub i64 %3093, 12
  %3095 = load i64, i64* %PC.i432
  %3096 = add i64 %3095, 4
  store i64 %3096, i64* %PC.i432
  %3097 = inttoptr i64 %3094 to i32*
  %3098 = load i32, i32* %3097
  %3099 = sext i32 %3098 to i64
  store i64 %3099, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_42ceb7, %struct.Memory** %MEMORY
  %loadMem_42cebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 1
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 5
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RAX.i430
  %3110 = load i64, i64* %RCX.i431
  %3111 = mul i64 %3110, 4
  %3112 = add i64 %3111, %3109
  %3113 = load i64, i64* %PC.i429
  %3114 = add i64 %3113, 7
  store i64 %3114, i64* %PC.i429
  %3115 = inttoptr i64 %3112 to i32*
  store i32 0, i32* %3115
  store %struct.Memory* %loadMem_42cebb, %struct.Memory** %MEMORY
  %loadMem_42cec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3118 to i64*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 1
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 15
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RBP.i428
  %3126 = sub i64 %3125, 8
  %3127 = load i64, i64* %PC.i426
  %3128 = add i64 %3127, 4
  store i64 %3128, i64* %PC.i426
  %3129 = inttoptr i64 %3126 to i64*
  %3130 = load i64, i64* %3129
  store i64 %3130, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_42cec2, %struct.Memory** %MEMORY
  %loadMem_42cec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 1
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %RAX.i425
  %3138 = add i64 %3137, 112
  %3139 = load i64, i64* %PC.i424
  %3140 = add i64 %3139, 5
  store i64 %3140, i64* %PC.i424
  %3141 = inttoptr i64 %3138 to i64*
  %3142 = load i64, i64* %3141
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3143, align 1
  %3144 = trunc i64 %3142 to i32
  %3145 = and i32 %3144, 255
  %3146 = call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3149, i8* %3150, align 1
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3151, align 1
  %3152 = icmp eq i64 %3142, 0
  %3153 = zext i1 %3152 to i8
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3153, i8* %3154, align 1
  %3155 = lshr i64 %3142, 63
  %3156 = trunc i64 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3156, i8* %3157, align 1
  %3158 = lshr i64 %3142, 63
  %3159 = xor i64 %3155, %3158
  %3160 = add i64 %3159, %3158
  %3161 = icmp eq i64 %3160, 2
  %3162 = zext i1 %3161 to i8
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3162, i8* %3163, align 1
  store %struct.Memory* %loadMem_42cec6, %struct.Memory** %MEMORY
  %loadMem_42cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %PC.i423
  %3168 = add i64 %3167, 141
  %3169 = load i64, i64* %PC.i423
  %3170 = add i64 %3169, 6
  %3171 = load i64, i64* %PC.i423
  %3172 = add i64 %3171, 6
  store i64 %3172, i64* %PC.i423
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3174 = load i8, i8* %3173, align 1
  store i8 %3174, i8* %BRANCH_TAKEN, align 1
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3176 = icmp ne i8 %3174, 0
  %3177 = select i1 %3176, i64 %3168, i64 %3170
  store i64 %3177, i64* %3175, align 8
  store %struct.Memory* %loadMem_42cecb, %struct.Memory** %MEMORY
  %loadBr_42cecb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cecb = icmp eq i8 %loadBr_42cecb, 1
  br i1 %cmpBr_42cecb, label %block_.L_42cf58, label %block_42ced1

block_42ced1:                                     ; preds = %block_.L_42ceac
  %loadMem_42ced1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 1
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 15
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RBP.i422
  %3188 = sub i64 %3187, 8
  %3189 = load i64, i64* %PC.i420
  %3190 = add i64 %3189, 4
  store i64 %3190, i64* %PC.i420
  %3191 = inttoptr i64 %3188 to i64*
  %3192 = load i64, i64* %3191
  store i64 %3192, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_42ced1, %struct.Memory** %MEMORY
  %loadMem_42ced5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 1
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RAX.i419
  %3200 = add i64 %3199, 24
  %3201 = load i64, i64* %PC.i418
  %3202 = add i64 %3201, 4
  store i64 %3202, i64* %PC.i418
  %3203 = inttoptr i64 %3200 to i32*
  %3204 = load i32, i32* %3203
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3205, align 1
  %3206 = and i32 %3204, 255
  %3207 = call i32 @llvm.ctpop.i32(i32 %3206)
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  %3210 = xor i8 %3209, 1
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3210, i8* %3211, align 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3212, align 1
  %3213 = icmp eq i32 %3204, 0
  %3214 = zext i1 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3214, i8* %3215, align 1
  %3216 = lshr i32 %3204, 31
  %3217 = trunc i32 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3204, 31
  %3220 = xor i32 %3216, %3219
  %3221 = add i32 %3220, %3219
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3223, i8* %3224, align 1
  store %struct.Memory* %loadMem_42ced5, %struct.Memory** %MEMORY
  %loadMem_42ced9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %PC.i417
  %3229 = add i64 %3228, 85
  %3230 = load i64, i64* %PC.i417
  %3231 = add i64 %3230, 6
  %3232 = load i64, i64* %PC.i417
  %3233 = add i64 %3232, 6
  store i64 %3233, i64* %PC.i417
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3235 = load i8, i8* %3234, align 1
  store i8 %3235, i8* %BRANCH_TAKEN, align 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3237 = icmp ne i8 %3235, 0
  %3238 = select i1 %3237, i64 %3229, i64 %3231
  store i64 %3238, i64* %3236, align 8
  store %struct.Memory* %loadMem_42ced9, %struct.Memory** %MEMORY
  %loadBr_42ced9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ced9 = icmp eq i8 %loadBr_42ced9, 1
  br i1 %cmpBr_42ced9, label %block_.L_42cf2e, label %block_42cedf

block_42cedf:                                     ; preds = %block_42ced1
  %loadMem_42cedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 11
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RDI.i416 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %PC.i415
  %3246 = add i64 %3245, 10
  store i64 %3246, i64* %PC.i415
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i416, align 8
  store %struct.Memory* %loadMem_42cedf, %struct.Memory** %MEMORY
  %loadMem_42cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 9
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RSI.i414 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %PC.i413
  %3254 = add i64 %3253, 5
  store i64 %3254, i64* %PC.i413
  store i64 195, i64* %RSI.i414, align 8
  store %struct.Memory* %loadMem_42cee9, %struct.Memory** %MEMORY
  %loadMem_42ceee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 1
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 15
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %3263 to i64*
  %3264 = load i64, i64* %RBP.i412
  %3265 = sub i64 %3264, 8
  %3266 = load i64, i64* %PC.i410
  %3267 = add i64 %3266, 4
  store i64 %3267, i64* %PC.i410
  %3268 = inttoptr i64 %3265 to i64*
  %3269 = load i64, i64* %3268
  store i64 %3269, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_42ceee, %struct.Memory** %MEMORY
  %loadMem_42cef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 1
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RAX.i409
  %3277 = add i64 %3276, 112
  %3278 = load i64, i64* %PC.i408
  %3279 = add i64 %3278, 4
  store i64 %3279, i64* %PC.i408
  %3280 = inttoptr i64 %3277 to i64*
  %3281 = load i64, i64* %3280
  store i64 %3281, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_42cef2, %struct.Memory** %MEMORY
  %loadMem_42cef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 33
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 5
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 15
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RBP.i407
  %3292 = sub i64 %3291, 12
  %3293 = load i64, i64* %PC.i405
  %3294 = add i64 %3293, 4
  store i64 %3294, i64* %PC.i405
  %3295 = inttoptr i64 %3292 to i32*
  %3296 = load i32, i32* %3295
  %3297 = sext i32 %3296 to i64
  store i64 %3297, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_42cef6, %struct.Memory** %MEMORY
  %loadMem_42cefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 1
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 5
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 7
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RAX.i402
  %3311 = load i64, i64* %RCX.i403
  %3312 = mul i64 %3311, 8
  %3313 = add i64 %3312, %3310
  %3314 = load i64, i64* %PC.i401
  %3315 = add i64 %3314, 4
  store i64 %3315, i64* %PC.i401
  %3316 = inttoptr i64 %3313 to i64*
  %3317 = load i64, i64* %3316
  store i64 %3317, i64* %RDX.i404, align 8
  store %struct.Memory* %loadMem_42cefa, %struct.Memory** %MEMORY
  %loadMem_42cefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 33
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 1
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 15
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RBP.i400
  %3328 = sub i64 %3327, 8
  %3329 = load i64, i64* %PC.i398
  %3330 = add i64 %3329, 4
  store i64 %3330, i64* %PC.i398
  %3331 = inttoptr i64 %3328 to i64*
  %3332 = load i64, i64* %3331
  store i64 %3332, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_42cefe, %struct.Memory** %MEMORY
  %loadMem_42cf02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 17
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %R8D.i396 = bitcast %union.anon* %3338 to i32*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %3341 to i64*
  %3342 = bitcast i32* %R8D.i396 to i64*
  %3343 = load i64, i64* %RAX.i397
  %3344 = add i64 %3343, 24
  %3345 = load i64, i64* %PC.i395
  %3346 = add i64 %3345, 4
  store i64 %3346, i64* %PC.i395
  %3347 = inttoptr i64 %3344 to i32*
  %3348 = load i32, i32* %3347
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %3342, align 8
  store %struct.Memory* %loadMem_42cf02, %struct.Memory** %MEMORY
  %loadMem_42cf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 17
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %R8D.i394 = bitcast %union.anon* %3355 to i32*
  %3356 = bitcast i32* %R8D.i394 to i64*
  %3357 = load i32, i32* %R8D.i394
  %3358 = zext i32 %3357 to i64
  %3359 = load i64, i64* %PC.i393
  %3360 = add i64 %3359, 4
  store i64 %3360, i64* %PC.i393
  %3361 = add i32 1, %3357
  %3362 = zext i32 %3361 to i64
  store i64 %3362, i64* %3356, align 8
  %3363 = icmp ult i32 %3361, %3357
  %3364 = icmp ult i32 %3361, 1
  %3365 = or i1 %3363, %3364
  %3366 = zext i1 %3365 to i8
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3366, i8* %3367, align 1
  %3368 = and i32 %3361, 255
  %3369 = call i32 @llvm.ctpop.i32(i32 %3368)
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = xor i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3372, i8* %3373, align 1
  %3374 = xor i64 1, %3358
  %3375 = trunc i64 %3374 to i32
  %3376 = xor i32 %3375, %3361
  %3377 = lshr i32 %3376, 4
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3379, i8* %3380, align 1
  %3381 = icmp eq i32 %3361, 0
  %3382 = zext i1 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3382, i8* %3383, align 1
  %3384 = lshr i32 %3361, 31
  %3385 = trunc i32 %3384 to i8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3385, i8* %3386, align 1
  %3387 = lshr i32 %3357, 31
  %3388 = xor i32 %3384, %3387
  %3389 = add i32 %3388, %3384
  %3390 = icmp eq i32 %3389, 2
  %3391 = zext i1 %3390 to i8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3391, i8* %3392, align 1
  store %struct.Memory* %loadMem_42cf06, %struct.Memory** %MEMORY
  %loadMem_42cf0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 17
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %R8D.i391 = bitcast %union.anon* %3398 to i32*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %3401 to i64*
  %3402 = load i32, i32* %R8D.i391
  %3403 = zext i32 %3402 to i64
  %3404 = load i64, i64* %PC.i390
  %3405 = add i64 %3404, 3
  store i64 %3405, i64* %PC.i390
  %3406 = shl i64 %3403, 32
  %3407 = ashr exact i64 %3406, 32
  store i64 %3407, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_42cf0a, %struct.Memory** %MEMORY
  %loadMem_42cf0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 1
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RAX.i389
  %3415 = load i64, i64* %PC.i388
  %3416 = add i64 %3415, 4
  store i64 %3416, i64* %PC.i388
  store %struct.Memory* %loadMem_42cf0d, %struct.Memory** %MEMORY
  %loadMem_42cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 5
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RAX.i386
  %3427 = load i64, i64* %PC.i385
  %3428 = add i64 %3427, 3
  store i64 %3428, i64* %PC.i385
  store i64 %3426, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_42cf11, %struct.Memory** %MEMORY
  %loadMem1_42cf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3431 to i64*
  %3432 = load i64, i64* %PC.i384
  %3433 = add i64 %3432, 102812
  %3434 = load i64, i64* %PC.i384
  %3435 = add i64 %3434, 5
  %3436 = load i64, i64* %PC.i384
  %3437 = add i64 %3436, 5
  store i64 %3437, i64* %PC.i384
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3439 = load i64, i64* %3438, align 8
  %3440 = add i64 %3439, -8
  %3441 = inttoptr i64 %3440 to i64*
  store i64 %3435, i64* %3441
  store i64 %3440, i64* %3438, align 8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3433, i64* %3442, align 8
  store %struct.Memory* %loadMem1_42cf14, %struct.Memory** %MEMORY
  %loadMem2_42cf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cf14 = load i64, i64* %3
  %call2_42cf14 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cf14, %struct.Memory* %loadMem2_42cf14)
  store %struct.Memory* %call2_42cf14, %struct.Memory** %MEMORY
  %loadMem_42cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 5
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i383
  %3453 = sub i64 %3452, 8
  %3454 = load i64, i64* %PC.i381
  %3455 = add i64 %3454, 4
  store i64 %3455, i64* %PC.i381
  %3456 = inttoptr i64 %3453 to i64*
  %3457 = load i64, i64* %3456
  store i64 %3457, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_42cf19, %struct.Memory** %MEMORY
  %loadMem_42cf1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 5
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %3463 to i64*
  %3464 = load i64, i64* %RCX.i380
  %3465 = add i64 %3464, 112
  %3466 = load i64, i64* %PC.i379
  %3467 = add i64 %3466, 4
  store i64 %3467, i64* %PC.i379
  %3468 = inttoptr i64 %3465 to i64*
  %3469 = load i64, i64* %3468
  store i64 %3469, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_42cf1d, %struct.Memory** %MEMORY
  %loadMem_42cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 7
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RDX.i377 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 15
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %RBP.i378
  %3480 = sub i64 %3479, 12
  %3481 = load i64, i64* %PC.i376
  %3482 = add i64 %3481, 4
  store i64 %3482, i64* %PC.i376
  %3483 = inttoptr i64 %3480 to i32*
  %3484 = load i32, i32* %3483
  %3485 = sext i32 %3484 to i64
  store i64 %3485, i64* %RDX.i377, align 8
  store %struct.Memory* %loadMem_42cf21, %struct.Memory** %MEMORY
  %loadMem_42cf25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 33
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 1
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 5
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 7
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RDX.i375 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RCX.i374
  %3499 = load i64, i64* %RDX.i375
  %3500 = mul i64 %3499, 8
  %3501 = add i64 %3500, %3498
  %3502 = load i64, i64* %RAX.i373
  %3503 = load i64, i64* %PC.i372
  %3504 = add i64 %3503, 4
  store i64 %3504, i64* %PC.i372
  %3505 = inttoptr i64 %3501 to i64*
  store i64 %3502, i64* %3505
  store %struct.Memory* %loadMem_42cf25, %struct.Memory** %MEMORY
  %loadMem_42cf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %PC.i371
  %3510 = add i64 %3509, 25
  %3511 = load i64, i64* %PC.i371
  %3512 = add i64 %3511, 5
  store i64 %3512, i64* %PC.i371
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3510, i64* %3513, align 8
  store %struct.Memory* %loadMem_42cf29, %struct.Memory** %MEMORY
  br label %block_.L_42cf42

block_.L_42cf2e:                                  ; preds = %block_42ced1
  %loadMem_42cf2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 1
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 15
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %RBP.i370
  %3524 = sub i64 %3523, 8
  %3525 = load i64, i64* %PC.i368
  %3526 = add i64 %3525, 4
  store i64 %3526, i64* %PC.i368
  %3527 = inttoptr i64 %3524 to i64*
  %3528 = load i64, i64* %3527
  store i64 %3528, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_42cf2e, %struct.Memory** %MEMORY
  %loadMem_42cf32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 33
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 1
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RAX.i367
  %3536 = add i64 %3535, 112
  %3537 = load i64, i64* %PC.i366
  %3538 = add i64 %3537, 4
  store i64 %3538, i64* %PC.i366
  %3539 = inttoptr i64 %3536 to i64*
  %3540 = load i64, i64* %3539
  store i64 %3540, i64* %RAX.i367, align 8
  store %struct.Memory* %loadMem_42cf32, %struct.Memory** %MEMORY
  %loadMem_42cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 5
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %RBP.i365
  %3551 = sub i64 %3550, 12
  %3552 = load i64, i64* %PC.i363
  %3553 = add i64 %3552, 4
  store i64 %3553, i64* %PC.i363
  %3554 = inttoptr i64 %3551 to i32*
  %3555 = load i32, i32* %3554
  %3556 = sext i32 %3555 to i64
  store i64 %3556, i64* %RCX.i364, align 8
  store %struct.Memory* %loadMem_42cf36, %struct.Memory** %MEMORY
  %loadMem_42cf3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %3559 to i64*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 1
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 5
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %3565 to i64*
  %3566 = load i64, i64* %RAX.i361
  %3567 = load i64, i64* %RCX.i362
  %3568 = mul i64 %3567, 8
  %3569 = add i64 %3568, %3566
  %3570 = load i64, i64* %PC.i360
  %3571 = add i64 %3570, 8
  store i64 %3571, i64* %PC.i360
  %3572 = inttoptr i64 %3569 to i64*
  store i64 0, i64* %3572
  store %struct.Memory* %loadMem_42cf3a, %struct.Memory** %MEMORY
  br label %block_.L_42cf42

block_.L_42cf42:                                  ; preds = %block_.L_42cf2e, %block_42cedf
  %loadMem_42cf42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 1
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 15
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %RBP.i359
  %3583 = sub i64 %3582, 8
  %3584 = load i64, i64* %PC.i357
  %3585 = add i64 %3584, 4
  store i64 %3585, i64* %PC.i357
  %3586 = inttoptr i64 %3583 to i64*
  %3587 = load i64, i64* %3586
  store i64 %3587, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_42cf42, %struct.Memory** %MEMORY
  %loadMem_42cf46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 33
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 1
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RAX.i356
  %3595 = add i64 %3594, 336
  %3596 = load i64, i64* %PC.i355
  %3597 = add i64 %3596, 7
  store i64 %3597, i64* %PC.i355
  %3598 = inttoptr i64 %3595 to i64*
  %3599 = load i64, i64* %3598
  store i64 %3599, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_42cf46, %struct.Memory** %MEMORY
  %loadMem_42cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 5
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 15
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3608 to i64*
  %3609 = load i64, i64* %RBP.i354
  %3610 = sub i64 %3609, 12
  %3611 = load i64, i64* %PC.i352
  %3612 = add i64 %3611, 4
  store i64 %3612, i64* %PC.i352
  %3613 = inttoptr i64 %3610 to i32*
  %3614 = load i32, i32* %3613
  %3615 = sext i32 %3614 to i64
  store i64 %3615, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_42cf4d, %struct.Memory** %MEMORY
  %loadMem_42cf51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 33
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 1
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 5
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %3624 to i64*
  %3625 = load i64, i64* %RAX.i350
  %3626 = load i64, i64* %RCX.i351
  %3627 = mul i64 %3626, 4
  %3628 = add i64 %3627, %3625
  %3629 = load i64, i64* %PC.i349
  %3630 = add i64 %3629, 7
  store i64 %3630, i64* %PC.i349
  %3631 = inttoptr i64 %3628 to i32*
  store i32 0, i32* %3631
  store %struct.Memory* %loadMem_42cf51, %struct.Memory** %MEMORY
  br label %block_.L_42cf58

block_.L_42cf58:                                  ; preds = %block_.L_42cf42, %block_.L_42ceac
  %loadMem_42cf58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 33
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3634 to i64*
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 1
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 15
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %3640 to i64*
  %3641 = load i64, i64* %RBP.i348
  %3642 = sub i64 %3641, 8
  %3643 = load i64, i64* %PC.i346
  %3644 = add i64 %3643, 4
  store i64 %3644, i64* %PC.i346
  %3645 = inttoptr i64 %3642 to i64*
  %3646 = load i64, i64* %3645
  store i64 %3646, i64* %RAX.i347, align 8
  store %struct.Memory* %loadMem_42cf58, %struct.Memory** %MEMORY
  %loadMem_42cf5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 1
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RAX.i345
  %3654 = add i64 %3653, 120
  %3655 = load i64, i64* %PC.i344
  %3656 = add i64 %3655, 5
  store i64 %3656, i64* %PC.i344
  %3657 = inttoptr i64 %3654 to i64*
  %3658 = load i64, i64* %3657
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3659, align 1
  %3660 = trunc i64 %3658 to i32
  %3661 = and i32 %3660, 255
  %3662 = call i32 @llvm.ctpop.i32(i32 %3661)
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = xor i8 %3664, 1
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3665, i8* %3666, align 1
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3667, align 1
  %3668 = icmp eq i64 %3658, 0
  %3669 = zext i1 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3669, i8* %3670, align 1
  %3671 = lshr i64 %3658, 63
  %3672 = trunc i64 %3671 to i8
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3672, i8* %3673, align 1
  %3674 = lshr i64 %3658, 63
  %3675 = xor i64 %3671, %3674
  %3676 = add i64 %3675, %3674
  %3677 = icmp eq i64 %3676, 2
  %3678 = zext i1 %3677 to i8
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3678, i8* %3679, align 1
  store %struct.Memory* %loadMem_42cf5c, %struct.Memory** %MEMORY
  %loadMem_42cf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3682 to i64*
  %3683 = load i64, i64* %PC.i343
  %3684 = add i64 %3683, 141
  %3685 = load i64, i64* %PC.i343
  %3686 = add i64 %3685, 6
  %3687 = load i64, i64* %PC.i343
  %3688 = add i64 %3687, 6
  store i64 %3688, i64* %PC.i343
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3690 = load i8, i8* %3689, align 1
  store i8 %3690, i8* %BRANCH_TAKEN, align 1
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3692 = icmp ne i8 %3690, 0
  %3693 = select i1 %3692, i64 %3684, i64 %3686
  store i64 %3693, i64* %3691, align 8
  store %struct.Memory* %loadMem_42cf61, %struct.Memory** %MEMORY
  %loadBr_42cf61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cf61 = icmp eq i8 %loadBr_42cf61, 1
  br i1 %cmpBr_42cf61, label %block_.L_42cfee, label %block_42cf67

block_42cf67:                                     ; preds = %block_.L_42cf58
  %loadMem_42cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 1
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 15
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %RBP.i342
  %3704 = sub i64 %3703, 8
  %3705 = load i64, i64* %PC.i340
  %3706 = add i64 %3705, 4
  store i64 %3706, i64* %PC.i340
  %3707 = inttoptr i64 %3704 to i64*
  %3708 = load i64, i64* %3707
  store i64 %3708, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_42cf67, %struct.Memory** %MEMORY
  %loadMem_42cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RAX.i339
  %3716 = add i64 %3715, 24
  %3717 = load i64, i64* %PC.i338
  %3718 = add i64 %3717, 4
  store i64 %3718, i64* %PC.i338
  %3719 = inttoptr i64 %3716 to i32*
  %3720 = load i32, i32* %3719
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3721, align 1
  %3722 = and i32 %3720, 255
  %3723 = call i32 @llvm.ctpop.i32(i32 %3722)
  %3724 = trunc i32 %3723 to i8
  %3725 = and i8 %3724, 1
  %3726 = xor i8 %3725, 1
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3726, i8* %3727, align 1
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3728, align 1
  %3729 = icmp eq i32 %3720, 0
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3730, i8* %3731, align 1
  %3732 = lshr i32 %3720, 31
  %3733 = trunc i32 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3733, i8* %3734, align 1
  %3735 = lshr i32 %3720, 31
  %3736 = xor i32 %3732, %3735
  %3737 = add i32 %3736, %3735
  %3738 = icmp eq i32 %3737, 2
  %3739 = zext i1 %3738 to i8
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3739, i8* %3740, align 1
  store %struct.Memory* %loadMem_42cf6b, %struct.Memory** %MEMORY
  %loadMem_42cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 33
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %PC.i337
  %3745 = add i64 %3744, 85
  %3746 = load i64, i64* %PC.i337
  %3747 = add i64 %3746, 6
  %3748 = load i64, i64* %PC.i337
  %3749 = add i64 %3748, 6
  store i64 %3749, i64* %PC.i337
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3751 = load i8, i8* %3750, align 1
  store i8 %3751, i8* %BRANCH_TAKEN, align 1
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3753 = icmp ne i8 %3751, 0
  %3754 = select i1 %3753, i64 %3745, i64 %3747
  store i64 %3754, i64* %3752, align 8
  store %struct.Memory* %loadMem_42cf6f, %struct.Memory** %MEMORY
  %loadBr_42cf6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cf6f = icmp eq i8 %loadBr_42cf6f, 1
  br i1 %cmpBr_42cf6f, label %block_.L_42cfc4, label %block_42cf75

block_42cf75:                                     ; preds = %block_42cf67
  %loadMem_42cf75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 11
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RDI.i336 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %PC.i335
  %3762 = add i64 %3761, 10
  store i64 %3762, i64* %PC.i335
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i336, align 8
  store %struct.Memory* %loadMem_42cf75, %struct.Memory** %MEMORY
  %loadMem_42cf7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 9
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RSI.i334 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %PC.i333
  %3770 = add i64 %3769, 5
  store i64 %3770, i64* %PC.i333
  store i64 201, i64* %RSI.i334, align 8
  store %struct.Memory* %loadMem_42cf7f, %struct.Memory** %MEMORY
  %loadMem_42cf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 1
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RBP.i332
  %3781 = sub i64 %3780, 8
  %3782 = load i64, i64* %PC.i330
  %3783 = add i64 %3782, 4
  store i64 %3783, i64* %PC.i330
  %3784 = inttoptr i64 %3781 to i64*
  %3785 = load i64, i64* %3784
  store i64 %3785, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_42cf84, %struct.Memory** %MEMORY
  %loadMem_42cf88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 33
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 1
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RAX.i329
  %3793 = add i64 %3792, 112
  %3794 = load i64, i64* %PC.i328
  %3795 = add i64 %3794, 4
  store i64 %3795, i64* %PC.i328
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_42cf88, %struct.Memory** %MEMORY
  %loadMem_42cf8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 5
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 15
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %RBP.i327
  %3808 = sub i64 %3807, 12
  %3809 = load i64, i64* %PC.i325
  %3810 = add i64 %3809, 4
  store i64 %3810, i64* %PC.i325
  %3811 = inttoptr i64 %3808 to i32*
  %3812 = load i32, i32* %3811
  %3813 = sext i32 %3812 to i64
  store i64 %3813, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_42cf8c, %struct.Memory** %MEMORY
  %loadMem_42cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 5
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 7
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RAX.i322
  %3827 = load i64, i64* %RCX.i323
  %3828 = mul i64 %3827, 8
  %3829 = add i64 %3828, %3826
  %3830 = load i64, i64* %PC.i321
  %3831 = add i64 %3830, 4
  store i64 %3831, i64* %PC.i321
  %3832 = inttoptr i64 %3829 to i64*
  %3833 = load i64, i64* %3832
  store i64 %3833, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_42cf90, %struct.Memory** %MEMORY
  %loadMem_42cf94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 33
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 1
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 15
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %3842 to i64*
  %3843 = load i64, i64* %RBP.i320
  %3844 = sub i64 %3843, 8
  %3845 = load i64, i64* %PC.i318
  %3846 = add i64 %3845, 4
  store i64 %3846, i64* %PC.i318
  %3847 = inttoptr i64 %3844 to i64*
  %3848 = load i64, i64* %3847
  store i64 %3848, i64* %RAX.i319, align 8
  store %struct.Memory* %loadMem_42cf94, %struct.Memory** %MEMORY
  %loadMem_42cf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 17
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %R8D.i316 = bitcast %union.anon* %3854 to i32*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 1
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %3857 to i64*
  %3858 = bitcast i32* %R8D.i316 to i64*
  %3859 = load i64, i64* %RAX.i317
  %3860 = add i64 %3859, 24
  %3861 = load i64, i64* %PC.i315
  %3862 = add i64 %3861, 4
  store i64 %3862, i64* %PC.i315
  %3863 = inttoptr i64 %3860 to i32*
  %3864 = load i32, i32* %3863
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %3858, align 8
  store %struct.Memory* %loadMem_42cf98, %struct.Memory** %MEMORY
  %loadMem_42cf9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 17
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %R8D.i314 = bitcast %union.anon* %3871 to i32*
  %3872 = bitcast i32* %R8D.i314 to i64*
  %3873 = load i32, i32* %R8D.i314
  %3874 = zext i32 %3873 to i64
  %3875 = load i64, i64* %PC.i313
  %3876 = add i64 %3875, 4
  store i64 %3876, i64* %PC.i313
  %3877 = add i32 1, %3873
  %3878 = zext i32 %3877 to i64
  store i64 %3878, i64* %3872, align 8
  %3879 = icmp ult i32 %3877, %3873
  %3880 = icmp ult i32 %3877, 1
  %3881 = or i1 %3879, %3880
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3882, i8* %3883, align 1
  %3884 = and i32 %3877, 255
  %3885 = call i32 @llvm.ctpop.i32(i32 %3884)
  %3886 = trunc i32 %3885 to i8
  %3887 = and i8 %3886, 1
  %3888 = xor i8 %3887, 1
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3888, i8* %3889, align 1
  %3890 = xor i64 1, %3874
  %3891 = trunc i64 %3890 to i32
  %3892 = xor i32 %3891, %3877
  %3893 = lshr i32 %3892, 4
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3895, i8* %3896, align 1
  %3897 = icmp eq i32 %3877, 0
  %3898 = zext i1 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3898, i8* %3899, align 1
  %3900 = lshr i32 %3877, 31
  %3901 = trunc i32 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3901, i8* %3902, align 1
  %3903 = lshr i32 %3873, 31
  %3904 = xor i32 %3900, %3903
  %3905 = add i32 %3904, %3900
  %3906 = icmp eq i32 %3905, 2
  %3907 = zext i1 %3906 to i8
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3907, i8* %3908, align 1
  store %struct.Memory* %loadMem_42cf9c, %struct.Memory** %MEMORY
  %loadMem_42cfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 17
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3914 to i32*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %3917 to i64*
  %3918 = load i32, i32* %R8D.i
  %3919 = zext i32 %3918 to i64
  %3920 = load i64, i64* %PC.i311
  %3921 = add i64 %3920, 3
  store i64 %3921, i64* %PC.i311
  %3922 = shl i64 %3919, 32
  %3923 = ashr exact i64 %3922, 32
  store i64 %3923, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_42cfa0, %struct.Memory** %MEMORY
  %loadMem_42cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 1
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %3929 to i64*
  %3930 = load i64, i64* %RAX.i310
  %3931 = load i64, i64* %PC.i309
  %3932 = add i64 %3931, 4
  store i64 %3932, i64* %PC.i309
  store %struct.Memory* %loadMem_42cfa3, %struct.Memory** %MEMORY
  %loadMem_42cfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 1
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 5
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %3941 to i64*
  %3942 = load i64, i64* %RAX.i307
  %3943 = load i64, i64* %PC.i306
  %3944 = add i64 %3943, 3
  store i64 %3944, i64* %PC.i306
  store i64 %3942, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_42cfa7, %struct.Memory** %MEMORY
  %loadMem1_42cfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %PC.i305
  %3949 = add i64 %3948, 102662
  %3950 = load i64, i64* %PC.i305
  %3951 = add i64 %3950, 5
  %3952 = load i64, i64* %PC.i305
  %3953 = add i64 %3952, 5
  store i64 %3953, i64* %PC.i305
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3955 = load i64, i64* %3954, align 8
  %3956 = add i64 %3955, -8
  %3957 = inttoptr i64 %3956 to i64*
  store i64 %3951, i64* %3957
  store i64 %3956, i64* %3954, align 8
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3949, i64* %3958, align 8
  store %struct.Memory* %loadMem1_42cfaa, %struct.Memory** %MEMORY
  %loadMem2_42cfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cfaa = load i64, i64* %3
  %call2_42cfaa = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42cfaa, %struct.Memory* %loadMem2_42cfaa)
  store %struct.Memory* %call2_42cfaa, %struct.Memory** %MEMORY
  %loadMem_42cfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 33
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 5
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 15
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %3967 to i64*
  %3968 = load i64, i64* %RBP.i304
  %3969 = sub i64 %3968, 8
  %3970 = load i64, i64* %PC.i302
  %3971 = add i64 %3970, 4
  store i64 %3971, i64* %PC.i302
  %3972 = inttoptr i64 %3969 to i64*
  %3973 = load i64, i64* %3972
  store i64 %3973, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_42cfaf, %struct.Memory** %MEMORY
  %loadMem_42cfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 5
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %3979 to i64*
  %3980 = load i64, i64* %RCX.i301
  %3981 = add i64 %3980, 120
  %3982 = load i64, i64* %PC.i300
  %3983 = add i64 %3982, 4
  store i64 %3983, i64* %PC.i300
  %3984 = inttoptr i64 %3981 to i64*
  %3985 = load i64, i64* %3984
  store i64 %3985, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_42cfb3, %struct.Memory** %MEMORY
  %loadMem_42cfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 7
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 15
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %RBP.i299
  %3996 = sub i64 %3995, 12
  %3997 = load i64, i64* %PC.i297
  %3998 = add i64 %3997, 4
  store i64 %3998, i64* %PC.i297
  %3999 = inttoptr i64 %3996 to i32*
  %4000 = load i32, i32* %3999
  %4001 = sext i32 %4000 to i64
  store i64 %4001, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_42cfb7, %struct.Memory** %MEMORY
  %loadMem_42cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 33
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 1
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 5
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 7
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %4013 to i64*
  %4014 = load i64, i64* %RCX.i295
  %4015 = load i64, i64* %RDX.i296
  %4016 = mul i64 %4015, 8
  %4017 = add i64 %4016, %4014
  %4018 = load i64, i64* %RAX.i294
  %4019 = load i64, i64* %PC.i293
  %4020 = add i64 %4019, 4
  store i64 %4020, i64* %PC.i293
  %4021 = inttoptr i64 %4017 to i64*
  store i64 %4018, i64* %4021
  store %struct.Memory* %loadMem_42cfbb, %struct.Memory** %MEMORY
  %loadMem_42cfbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4024 to i64*
  %4025 = load i64, i64* %PC.i292
  %4026 = add i64 %4025, 25
  %4027 = load i64, i64* %PC.i292
  %4028 = add i64 %4027, 5
  store i64 %4028, i64* %PC.i292
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4026, i64* %4029, align 8
  store %struct.Memory* %loadMem_42cfbf, %struct.Memory** %MEMORY
  br label %block_.L_42cfd8

block_.L_42cfc4:                                  ; preds = %block_42cf67
  %loadMem_42cfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 1
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 15
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RBP.i291
  %4040 = sub i64 %4039, 8
  %4041 = load i64, i64* %PC.i289
  %4042 = add i64 %4041, 4
  store i64 %4042, i64* %PC.i289
  %4043 = inttoptr i64 %4040 to i64*
  %4044 = load i64, i64* %4043
  store i64 %4044, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_42cfc4, %struct.Memory** %MEMORY
  %loadMem_42cfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 1
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RAX.i288
  %4052 = add i64 %4051, 120
  %4053 = load i64, i64* %PC.i287
  %4054 = add i64 %4053, 4
  store i64 %4054, i64* %PC.i287
  %4055 = inttoptr i64 %4052 to i64*
  %4056 = load i64, i64* %4055
  store i64 %4056, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_42cfc8, %struct.Memory** %MEMORY
  %loadMem_42cfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 5
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 15
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %4065 to i64*
  %4066 = load i64, i64* %RBP.i286
  %4067 = sub i64 %4066, 12
  %4068 = load i64, i64* %PC.i284
  %4069 = add i64 %4068, 4
  store i64 %4069, i64* %PC.i284
  %4070 = inttoptr i64 %4067 to i32*
  %4071 = load i32, i32* %4070
  %4072 = sext i32 %4071 to i64
  store i64 %4072, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_42cfcc, %struct.Memory** %MEMORY
  %loadMem_42cfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 1
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %4078 to i64*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 5
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %4081 to i64*
  %4082 = load i64, i64* %RAX.i282
  %4083 = load i64, i64* %RCX.i283
  %4084 = mul i64 %4083, 8
  %4085 = add i64 %4084, %4082
  %4086 = load i64, i64* %PC.i281
  %4087 = add i64 %4086, 8
  store i64 %4087, i64* %PC.i281
  %4088 = inttoptr i64 %4085 to i64*
  store i64 0, i64* %4088
  store %struct.Memory* %loadMem_42cfd0, %struct.Memory** %MEMORY
  br label %block_.L_42cfd8

block_.L_42cfd8:                                  ; preds = %block_.L_42cfc4, %block_42cf75
  %loadMem_42cfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 1
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 15
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4097 to i64*
  %4098 = load i64, i64* %RBP.i280
  %4099 = sub i64 %4098, 8
  %4100 = load i64, i64* %PC.i278
  %4101 = add i64 %4100, 4
  store i64 %4101, i64* %PC.i278
  %4102 = inttoptr i64 %4099 to i64*
  %4103 = load i64, i64* %4102
  store i64 %4103, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_42cfd8, %struct.Memory** %MEMORY
  %loadMem_42cfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 1
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RAX.i277
  %4111 = add i64 %4110, 344
  %4112 = load i64, i64* %PC.i276
  %4113 = add i64 %4112, 7
  store i64 %4113, i64* %PC.i276
  %4114 = inttoptr i64 %4111 to i64*
  %4115 = load i64, i64* %4114
  store i64 %4115, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_42cfdc, %struct.Memory** %MEMORY
  %loadMem_42cfe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 5
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 15
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %RBP.i275
  %4126 = sub i64 %4125, 12
  %4127 = load i64, i64* %PC.i273
  %4128 = add i64 %4127, 4
  store i64 %4128, i64* %PC.i273
  %4129 = inttoptr i64 %4126 to i32*
  %4130 = load i32, i32* %4129
  %4131 = sext i32 %4130 to i64
  store i64 %4131, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_42cfe3, %struct.Memory** %MEMORY
  %loadMem_42cfe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 5
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RAX.i271
  %4142 = load i64, i64* %RCX.i272
  %4143 = mul i64 %4142, 4
  %4144 = add i64 %4143, %4141
  %4145 = load i64, i64* %PC.i270
  %4146 = add i64 %4145, 7
  store i64 %4146, i64* %PC.i270
  %4147 = inttoptr i64 %4144 to i32*
  store i32 0, i32* %4147
  store %struct.Memory* %loadMem_42cfe7, %struct.Memory** %MEMORY
  br label %block_.L_42cfee

block_.L_42cfee:                                  ; preds = %block_.L_42cfd8, %block_.L_42cf58
  %loadMem_42cfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %PC.i269
  %4152 = add i64 %4151, 5
  %4153 = load i64, i64* %PC.i269
  %4154 = add i64 %4153, 5
  store i64 %4154, i64* %PC.i269
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4152, i64* %4155, align 8
  store %struct.Memory* %loadMem_42cfee, %struct.Memory** %MEMORY
  br label %block_.L_42cff3

block_.L_42cff3:                                  ; preds = %block_.L_42cfee
  %loadMem_42cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 15
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RBP.i268
  %4166 = sub i64 %4165, 12
  %4167 = load i64, i64* %PC.i266
  %4168 = add i64 %4167, 3
  store i64 %4168, i64* %PC.i266
  %4169 = inttoptr i64 %4166 to i32*
  %4170 = load i32, i32* %4169
  %4171 = zext i32 %4170 to i64
  store i64 %4171, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_42cff3, %struct.Memory** %MEMORY
  %loadMem_42cff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 33
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4174 to i64*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 1
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %4177 to i64*
  %4178 = load i64, i64* %RAX.i265
  %4179 = load i64, i64* %PC.i264
  %4180 = add i64 %4179, 3
  store i64 %4180, i64* %PC.i264
  %4181 = trunc i64 %4178 to i32
  %4182 = add i32 1, %4181
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RAX.i265, align 8
  %4184 = icmp ult i32 %4182, %4181
  %4185 = icmp ult i32 %4182, 1
  %4186 = or i1 %4184, %4185
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4187, i8* %4188, align 1
  %4189 = and i32 %4182, 255
  %4190 = call i32 @llvm.ctpop.i32(i32 %4189)
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = xor i8 %4192, 1
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4193, i8* %4194, align 1
  %4195 = xor i64 1, %4178
  %4196 = trunc i64 %4195 to i32
  %4197 = xor i32 %4196, %4182
  %4198 = lshr i32 %4197, 4
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4200, i8* %4201, align 1
  %4202 = icmp eq i32 %4182, 0
  %4203 = zext i1 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4203, i8* %4204, align 1
  %4205 = lshr i32 %4182, 31
  %4206 = trunc i32 %4205 to i8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4206, i8* %4207, align 1
  %4208 = lshr i32 %4181, 31
  %4209 = xor i32 %4205, %4208
  %4210 = add i32 %4209, %4205
  %4211 = icmp eq i32 %4210, 2
  %4212 = zext i1 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4212, i8* %4213, align 1
  store %struct.Memory* %loadMem_42cff6, %struct.Memory** %MEMORY
  %loadMem_42cff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 1
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %EAX.i262 = bitcast %union.anon* %4219 to i32*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 15
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %RBP.i263
  %4224 = sub i64 %4223, 12
  %4225 = load i32, i32* %EAX.i262
  %4226 = zext i32 %4225 to i64
  %4227 = load i64, i64* %PC.i261
  %4228 = add i64 %4227, 3
  store i64 %4228, i64* %PC.i261
  %4229 = inttoptr i64 %4224 to i32*
  store i32 %4225, i32* %4229
  store %struct.Memory* %loadMem_42cff9, %struct.Memory** %MEMORY
  %loadMem_42cffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %PC.i260
  %4234 = add i64 %4233, -580
  %4235 = load i64, i64* %PC.i260
  %4236 = add i64 %4235, 5
  store i64 %4236, i64* %PC.i260
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4234, i64* %4237, align 8
  store %struct.Memory* %loadMem_42cffc, %struct.Memory** %MEMORY
  br label %block_.L_42cdb8

block_.L_42d001:                                  ; preds = %block_.L_42cdb8
  %loadMem_42d001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 1
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 15
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %4246 to i64*
  %4247 = load i64, i64* %RBP.i259
  %4248 = sub i64 %4247, 8
  %4249 = load i64, i64* %PC.i257
  %4250 = add i64 %4249, 4
  store i64 %4250, i64* %PC.i257
  %4251 = inttoptr i64 %4248 to i64*
  %4252 = load i64, i64* %4251
  store i64 %4252, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_42d001, %struct.Memory** %MEMORY
  %loadMem_42d005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 1
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %RAX.i256
  %4260 = add i64 %4259, 224
  %4261 = load i64, i64* %PC.i255
  %4262 = add i64 %4261, 8
  store i64 %4262, i64* %PC.i255
  %4263 = inttoptr i64 %4260 to i64*
  %4264 = load i64, i64* %4263
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4265, align 1
  %4266 = trunc i64 %4264 to i32
  %4267 = and i32 %4266, 255
  %4268 = call i32 @llvm.ctpop.i32(i32 %4267)
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4271, i8* %4272, align 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4273, align 1
  %4274 = icmp eq i64 %4264, 0
  %4275 = zext i1 %4274 to i8
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4275, i8* %4276, align 1
  %4277 = lshr i64 %4264, 63
  %4278 = trunc i64 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4278, i8* %4279, align 1
  %4280 = lshr i64 %4264, 63
  %4281 = xor i64 %4277, %4280
  %4282 = add i64 %4281, %4280
  %4283 = icmp eq i64 %4282, 2
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4284, i8* %4285, align 1
  store %struct.Memory* %loadMem_42d005, %struct.Memory** %MEMORY
  %loadMem_42d00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %PC.i254
  %4290 = add i64 %4289, 250
  %4291 = load i64, i64* %PC.i254
  %4292 = add i64 %4291, 6
  %4293 = load i64, i64* %PC.i254
  %4294 = add i64 %4293, 6
  store i64 %4294, i64* %PC.i254
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4296 = load i8, i8* %4295, align 1
  store i8 %4296, i8* %BRANCH_TAKEN, align 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4298 = icmp ne i8 %4296, 0
  %4299 = select i1 %4298, i64 %4290, i64 %4292
  store i64 %4299, i64* %4297, align 8
  store %struct.Memory* %loadMem_42d00d, %struct.Memory** %MEMORY
  %loadBr_42d00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d00d = icmp eq i8 %loadBr_42d00d, 1
  br i1 %cmpBr_42d00d, label %block_.L_42d107, label %block_42d013

block_42d013:                                     ; preds = %block_.L_42d001
  %loadMem_42d013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 15
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RBP.i253
  %4307 = sub i64 %4306, 12
  %4308 = load i64, i64* %PC.i252
  %4309 = add i64 %4308, 7
  store i64 %4309, i64* %PC.i252
  %4310 = inttoptr i64 %4307 to i32*
  store i32 0, i32* %4310
  store %struct.Memory* %loadMem_42d013, %struct.Memory** %MEMORY
  br label %block_.L_42d01a

block_.L_42d01a:                                  ; preds = %block_.L_42d0f4, %block_42d013
  %loadMem_42d01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 1
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 15
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %4319 to i64*
  %4320 = load i64, i64* %RBP.i251
  %4321 = sub i64 %4320, 12
  %4322 = load i64, i64* %PC.i249
  %4323 = add i64 %4322, 3
  store i64 %4323, i64* %PC.i249
  %4324 = inttoptr i64 %4321 to i32*
  %4325 = load i32, i32* %4324
  %4326 = zext i32 %4325 to i64
  store i64 %4326, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_42d01a, %struct.Memory** %MEMORY
  %loadMem_42d01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 5
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 15
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RBP.i248
  %4337 = sub i64 %4336, 8
  %4338 = load i64, i64* %PC.i246
  %4339 = add i64 %4338, 4
  store i64 %4339, i64* %PC.i246
  %4340 = inttoptr i64 %4337 to i64*
  %4341 = load i64, i64* %4340
  store i64 %4341, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_42d01d, %struct.Memory** %MEMORY
  %loadMem_42d021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 33
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 1
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %4347 to i32*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 5
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %4350 to i64*
  %4351 = load i32, i32* %EAX.i244
  %4352 = zext i32 %4351 to i64
  %4353 = load i64, i64* %RCX.i245
  %4354 = add i64 %4353, 240
  %4355 = load i64, i64* %PC.i243
  %4356 = add i64 %4355, 6
  store i64 %4356, i64* %PC.i243
  %4357 = inttoptr i64 %4354 to i32*
  %4358 = load i32, i32* %4357
  %4359 = sub i32 %4351, %4358
  %4360 = icmp ult i32 %4351, %4358
  %4361 = zext i1 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4361, i8* %4362, align 1
  %4363 = and i32 %4359, 255
  %4364 = call i32 @llvm.ctpop.i32(i32 %4363)
  %4365 = trunc i32 %4364 to i8
  %4366 = and i8 %4365, 1
  %4367 = xor i8 %4366, 1
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4367, i8* %4368, align 1
  %4369 = xor i32 %4358, %4351
  %4370 = xor i32 %4369, %4359
  %4371 = lshr i32 %4370, 4
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4373, i8* %4374, align 1
  %4375 = icmp eq i32 %4359, 0
  %4376 = zext i1 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4376, i8* %4377, align 1
  %4378 = lshr i32 %4359, 31
  %4379 = trunc i32 %4378 to i8
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4379, i8* %4380, align 1
  %4381 = lshr i32 %4351, 31
  %4382 = lshr i32 %4358, 31
  %4383 = xor i32 %4382, %4381
  %4384 = xor i32 %4378, %4381
  %4385 = add i32 %4384, %4383
  %4386 = icmp eq i32 %4385, 2
  %4387 = zext i1 %4386 to i8
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4387, i8* %4388, align 1
  store %struct.Memory* %loadMem_42d021, %struct.Memory** %MEMORY
  %loadMem_42d027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4391 to i64*
  %4392 = load i64, i64* %PC.i242
  %4393 = add i64 %4392, 219
  %4394 = load i64, i64* %PC.i242
  %4395 = add i64 %4394, 6
  %4396 = load i64, i64* %PC.i242
  %4397 = add i64 %4396, 6
  store i64 %4397, i64* %PC.i242
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4399 = load i8, i8* %4398, align 1
  %4400 = icmp ne i8 %4399, 0
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4402 = load i8, i8* %4401, align 1
  %4403 = icmp ne i8 %4402, 0
  %4404 = xor i1 %4400, %4403
  %4405 = xor i1 %4404, true
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %BRANCH_TAKEN, align 1
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4408 = select i1 %4404, i64 %4395, i64 %4393
  store i64 %4408, i64* %4407, align 8
  store %struct.Memory* %loadMem_42d027, %struct.Memory** %MEMORY
  %loadBr_42d027 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d027 = icmp eq i8 %loadBr_42d027, 1
  br i1 %cmpBr_42d027, label %block_.L_42d102, label %block_42d02d

block_42d02d:                                     ; preds = %block_.L_42d01a
  %loadMem_42d02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 1
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 15
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RBP.i241
  %4419 = sub i64 %4418, 8
  %4420 = load i64, i64* %PC.i239
  %4421 = add i64 %4420, 4
  store i64 %4421, i64* %PC.i239
  %4422 = inttoptr i64 %4419 to i64*
  %4423 = load i64, i64* %4422
  store i64 %4423, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_42d02d, %struct.Memory** %MEMORY
  %loadMem_42d031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 1
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %RAX.i238
  %4431 = add i64 %4430, 224
  %4432 = load i64, i64* %PC.i237
  %4433 = add i64 %4432, 7
  store i64 %4433, i64* %PC.i237
  %4434 = inttoptr i64 %4431 to i64*
  %4435 = load i64, i64* %4434
  store i64 %4435, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_42d031, %struct.Memory** %MEMORY
  %loadMem_42d038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 5
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i236
  %4446 = sub i64 %4445, 12
  %4447 = load i64, i64* %PC.i234
  %4448 = add i64 %4447, 4
  store i64 %4448, i64* %PC.i234
  %4449 = inttoptr i64 %4446 to i32*
  %4450 = load i32, i32* %4449
  %4451 = sext i32 %4450 to i64
  store i64 %4451, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_42d038, %struct.Memory** %MEMORY
  %loadMem_42d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 1
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 5
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %4460 to i64*
  %4461 = load i64, i64* %RAX.i232
  %4462 = load i64, i64* %RCX.i233
  %4463 = mul i64 %4462, 8
  %4464 = add i64 %4463, %4461
  %4465 = load i64, i64* %PC.i231
  %4466 = add i64 %4465, 5
  store i64 %4466, i64* %PC.i231
  %4467 = inttoptr i64 %4464 to i64*
  %4468 = load i64, i64* %4467
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4469, align 1
  %4470 = trunc i64 %4468 to i32
  %4471 = and i32 %4470, 255
  %4472 = call i32 @llvm.ctpop.i32(i32 %4471)
  %4473 = trunc i32 %4472 to i8
  %4474 = and i8 %4473, 1
  %4475 = xor i8 %4474, 1
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4475, i8* %4476, align 1
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4477, align 1
  %4478 = icmp eq i64 %4468, 0
  %4479 = zext i1 %4478 to i8
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4479, i8* %4480, align 1
  %4481 = lshr i64 %4468, 63
  %4482 = trunc i64 %4481 to i8
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4482, i8* %4483, align 1
  %4484 = lshr i64 %4468, 63
  %4485 = xor i64 %4481, %4484
  %4486 = add i64 %4485, %4484
  %4487 = icmp eq i64 %4486, 2
  %4488 = zext i1 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4488, i8* %4489, align 1
  store %struct.Memory* %loadMem_42d03c, %struct.Memory** %MEMORY
  %loadMem_42d041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4492 to i64*
  %4493 = load i64, i64* %PC.i230
  %4494 = add i64 %4493, 174
  %4495 = load i64, i64* %PC.i230
  %4496 = add i64 %4495, 6
  %4497 = load i64, i64* %PC.i230
  %4498 = add i64 %4497, 6
  store i64 %4498, i64* %PC.i230
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4500 = load i8, i8* %4499, align 1
  store i8 %4500, i8* %BRANCH_TAKEN, align 1
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4502 = icmp ne i8 %4500, 0
  %4503 = select i1 %4502, i64 %4494, i64 %4496
  store i64 %4503, i64* %4501, align 8
  store %struct.Memory* %loadMem_42d041, %struct.Memory** %MEMORY
  %loadBr_42d041 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d041 = icmp eq i8 %loadBr_42d041, 1
  br i1 %cmpBr_42d041, label %block_.L_42d0ef, label %block_42d047

block_42d047:                                     ; preds = %block_42d02d
  %loadMem_42d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 33
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 11
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %RDI.i229 = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %PC.i228
  %4511 = add i64 %4510, 10
  store i64 %4511, i64* %PC.i228
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i229, align 8
  store %struct.Memory* %loadMem_42d047, %struct.Memory** %MEMORY
  %loadMem_42d051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 33
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 9
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %PC.i226
  %4519 = add i64 %4518, 5
  store i64 %4519, i64* %PC.i226
  store i64 217, i64* %RSI.i227, align 8
  store %struct.Memory* %loadMem_42d051, %struct.Memory** %MEMORY
  %loadMem_42d056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 33
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 1
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %4525 to i64*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 15
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4528 to i64*
  %4529 = load i64, i64* %RBP.i225
  %4530 = sub i64 %4529, 8
  %4531 = load i64, i64* %PC.i223
  %4532 = add i64 %4531, 4
  store i64 %4532, i64* %PC.i223
  %4533 = inttoptr i64 %4530 to i64*
  %4534 = load i64, i64* %4533
  store i64 %4534, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_42d056, %struct.Memory** %MEMORY
  %loadMem_42d05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 1
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %4540 to i64*
  %4541 = load i64, i64* %RAX.i222
  %4542 = add i64 %4541, 224
  %4543 = load i64, i64* %PC.i221
  %4544 = add i64 %4543, 7
  store i64 %4544, i64* %PC.i221
  %4545 = inttoptr i64 %4542 to i64*
  %4546 = load i64, i64* %4545
  store i64 %4546, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_42d05a, %struct.Memory** %MEMORY
  %loadMem_42d061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 33
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 5
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 15
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4555 to i64*
  %4556 = load i64, i64* %RBP.i220
  %4557 = sub i64 %4556, 12
  %4558 = load i64, i64* %PC.i218
  %4559 = add i64 %4558, 4
  store i64 %4559, i64* %PC.i218
  %4560 = inttoptr i64 %4557 to i32*
  %4561 = load i32, i32* %4560
  %4562 = sext i32 %4561 to i64
  store i64 %4562, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_42d061, %struct.Memory** %MEMORY
  %loadMem_42d065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 33
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 1
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 5
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %RAX.i216
  %4573 = load i64, i64* %RCX.i217
  %4574 = mul i64 %4573, 8
  %4575 = add i64 %4574, %4572
  %4576 = load i64, i64* %PC.i215
  %4577 = add i64 %4576, 4
  store i64 %4577, i64* %PC.i215
  %4578 = inttoptr i64 %4575 to i64*
  %4579 = load i64, i64* %4578
  store i64 %4579, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_42d065, %struct.Memory** %MEMORY
  %loadMem_42d069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 33
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 5
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 15
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %RBP.i214
  %4590 = sub i64 %4589, 8
  %4591 = load i64, i64* %PC.i212
  %4592 = add i64 %4591, 4
  store i64 %4592, i64* %PC.i212
  %4593 = inttoptr i64 %4590 to i64*
  %4594 = load i64, i64* %4593
  store i64 %4594, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_42d069, %struct.Memory** %MEMORY
  %loadMem_42d06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 5
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RCX.i211
  %4602 = add i64 %4601, 320
  %4603 = load i64, i64* %PC.i210
  %4604 = add i64 %4603, 7
  store i64 %4604, i64* %PC.i210
  %4605 = inttoptr i64 %4602 to i32*
  %4606 = load i32, i32* %4605
  %4607 = sext i32 %4606 to i64
  store i64 %4607, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_42d06d, %struct.Memory** %MEMORY
  %loadMem_42d074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 5
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RCX.i209
  %4615 = load i64, i64* %PC.i208
  %4616 = add i64 %4615, 4
  store i64 %4616, i64* %PC.i208
  %4617 = shl i64 %4614, 2
  %4618 = icmp slt i64 %4617, 0
  %4619 = shl i64 %4617, 1
  store i64 %4619, i64* %RCX.i209, align 8
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4621 = zext i1 %4618 to i8
  store i8 %4621, i8* %4620, align 1
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4623 = trunc i64 %4619 to i32
  %4624 = and i32 %4623, 254
  %4625 = call i32 @llvm.ctpop.i32(i32 %4624)
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = xor i8 %4627, 1
  store i8 %4628, i8* %4622, align 1
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4629, align 1
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4631 = icmp eq i64 %4619, 0
  %4632 = zext i1 %4631 to i8
  store i8 %4632, i8* %4630, align 1
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4634 = lshr i64 %4619, 63
  %4635 = trunc i64 %4634 to i8
  store i8 %4635, i8* %4633, align 1
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4636, align 1
  store %struct.Memory* %loadMem_42d074, %struct.Memory** %MEMORY
  %loadMem_42d078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 1
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 7
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RAX.i206
  %4647 = load i64, i64* %PC.i205
  %4648 = add i64 %4647, 3
  store i64 %4648, i64* %PC.i205
  store i64 %4646, i64* %RDX.i207, align 8
  store %struct.Memory* %loadMem_42d078, %struct.Memory** %MEMORY
  %loadMem1_42d07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4651 to i64*
  %4652 = load i64, i64* %PC.i204
  %4653 = add i64 %4652, 102453
  %4654 = load i64, i64* %PC.i204
  %4655 = add i64 %4654, 5
  %4656 = load i64, i64* %PC.i204
  %4657 = add i64 %4656, 5
  store i64 %4657, i64* %PC.i204
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4659 = load i64, i64* %4658, align 8
  %4660 = add i64 %4659, -8
  %4661 = inttoptr i64 %4660 to i64*
  store i64 %4655, i64* %4661
  store i64 %4660, i64* %4658, align 8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4653, i64* %4662, align 8
  store %struct.Memory* %loadMem1_42d07b, %struct.Memory** %MEMORY
  %loadMem2_42d07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d07b = load i64, i64* %3
  %call2_42d07b = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42d07b, %struct.Memory* %loadMem2_42d07b)
  store %struct.Memory* %call2_42d07b, %struct.Memory** %MEMORY
  %loadMem_42d080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 33
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 5
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 15
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RBP.i203
  %4673 = sub i64 %4672, 8
  %4674 = load i64, i64* %PC.i201
  %4675 = add i64 %4674, 4
  store i64 %4675, i64* %PC.i201
  %4676 = inttoptr i64 %4673 to i64*
  %4677 = load i64, i64* %4676
  store i64 %4677, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_42d080, %struct.Memory** %MEMORY
  %loadMem_42d084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 33
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 5
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RCX.i200
  %4685 = add i64 %4684, 224
  %4686 = load i64, i64* %PC.i199
  %4687 = add i64 %4686, 7
  store i64 %4687, i64* %PC.i199
  %4688 = inttoptr i64 %4685 to i64*
  %4689 = load i64, i64* %4688
  store i64 %4689, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_42d084, %struct.Memory** %MEMORY
  %loadMem_42d08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 7
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 15
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %RBP.i198
  %4700 = sub i64 %4699, 12
  %4701 = load i64, i64* %PC.i196
  %4702 = add i64 %4701, 4
  store i64 %4702, i64* %PC.i196
  %4703 = inttoptr i64 %4700 to i32*
  %4704 = load i32, i32* %4703
  %4705 = sext i32 %4704 to i64
  store i64 %4705, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_42d08b, %struct.Memory** %MEMORY
  %loadMem_42d08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 1
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %4711 to i64*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 5
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 7
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %4717 to i64*
  %4718 = load i64, i64* %RCX.i194
  %4719 = load i64, i64* %RDX.i195
  %4720 = mul i64 %4719, 8
  %4721 = add i64 %4720, %4718
  %4722 = load i64, i64* %RAX.i193
  %4723 = load i64, i64* %PC.i192
  %4724 = add i64 %4723, 4
  store i64 %4724, i64* %PC.i192
  %4725 = inttoptr i64 %4721 to i64*
  store i64 %4722, i64* %4725
  store %struct.Memory* %loadMem_42d08f, %struct.Memory** %MEMORY
  %loadMem_42d093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 1
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 15
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %RBP.i191
  %4736 = sub i64 %4735, 8
  %4737 = load i64, i64* %PC.i189
  %4738 = add i64 %4737, 4
  store i64 %4738, i64* %PC.i189
  %4739 = inttoptr i64 %4736 to i64*
  %4740 = load i64, i64* %4739
  store i64 %4740, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_42d093, %struct.Memory** %MEMORY
  %loadMem_42d097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 1
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 9
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RSI.i188 = bitcast %union.anon* %4749 to i64*
  %4750 = load i64, i64* %RAX.i187
  %4751 = add i64 %4750, 320
  %4752 = load i64, i64* %PC.i186
  %4753 = add i64 %4752, 6
  store i64 %4753, i64* %PC.i186
  %4754 = inttoptr i64 %4751 to i32*
  %4755 = load i32, i32* %4754
  %4756 = zext i32 %4755 to i64
  store i64 %4756, i64* %RSI.i188, align 8
  store %struct.Memory* %loadMem_42d097, %struct.Memory** %MEMORY
  %loadMem_42d09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 15
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RBP.i185
  %4767 = sub i64 %4766, 8
  %4768 = load i64, i64* %PC.i183
  %4769 = add i64 %4768, 4
  store i64 %4769, i64* %PC.i183
  %4770 = inttoptr i64 %4767 to i64*
  %4771 = load i64, i64* %4770
  store i64 %4771, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_42d09d, %struct.Memory** %MEMORY
  %loadMem_42d0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 1
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %4777 to i64*
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 9
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %RSI.i182 = bitcast %union.anon* %4780 to i64*
  %4781 = load i64, i64* %RSI.i182
  %4782 = load i64, i64* %RAX.i181
  %4783 = add i64 %4782, 324
  %4784 = load i64, i64* %PC.i180
  %4785 = add i64 %4784, 6
  store i64 %4785, i64* %PC.i180
  %4786 = trunc i64 %4781 to i32
  %4787 = inttoptr i64 %4783 to i32*
  %4788 = load i32, i32* %4787
  %4789 = sub i32 %4786, %4788
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %RSI.i182, align 8
  %4791 = icmp ult i32 %4786, %4788
  %4792 = zext i1 %4791 to i8
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4792, i8* %4793, align 1
  %4794 = and i32 %4789, 255
  %4795 = call i32 @llvm.ctpop.i32(i32 %4794)
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4798, i8* %4799, align 1
  %4800 = xor i32 %4788, %4786
  %4801 = xor i32 %4800, %4789
  %4802 = lshr i32 %4801, 4
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4804, i8* %4805, align 1
  %4806 = icmp eq i32 %4789, 0
  %4807 = zext i1 %4806 to i8
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4807, i8* %4808, align 1
  %4809 = lshr i32 %4789, 31
  %4810 = trunc i32 %4809 to i8
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4810, i8* %4811, align 1
  %4812 = lshr i32 %4786, 31
  %4813 = lshr i32 %4788, 31
  %4814 = xor i32 %4813, %4812
  %4815 = xor i32 %4809, %4812
  %4816 = add i32 %4815, %4814
  %4817 = icmp eq i32 %4816, 2
  %4818 = zext i1 %4817 to i8
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4818, i8* %4819, align 1
  store %struct.Memory* %loadMem_42d0a1, %struct.Memory** %MEMORY
  %loadMem_42d0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 33
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4822 to i64*
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 9
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %ESI.i178 = bitcast %union.anon* %4825 to i32*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 15
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %4828 to i64*
  %4829 = load i64, i64* %RBP.i179
  %4830 = sub i64 %4829, 16
  %4831 = load i32, i32* %ESI.i178
  %4832 = zext i32 %4831 to i64
  %4833 = load i64, i64* %PC.i177
  %4834 = add i64 %4833, 3
  store i64 %4834, i64* %PC.i177
  %4835 = inttoptr i64 %4830 to i32*
  store i32 %4831, i32* %4835
  store %struct.Memory* %loadMem_42d0a7, %struct.Memory** %MEMORY
  br label %block_.L_42d0aa

block_.L_42d0aa:                                  ; preds = %block_42d0bd, %block_42d047
  %loadMem_42d0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 33
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4838 to i64*
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 1
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 15
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %4844 to i64*
  %4845 = load i64, i64* %RBP.i176
  %4846 = sub i64 %4845, 16
  %4847 = load i64, i64* %PC.i174
  %4848 = add i64 %4847, 3
  store i64 %4848, i64* %PC.i174
  %4849 = inttoptr i64 %4846 to i32*
  %4850 = load i32, i32* %4849
  %4851 = zext i32 %4850 to i64
  store i64 %4851, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_42d0aa, %struct.Memory** %MEMORY
  %loadMem_42d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 5
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 15
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4860 to i64*
  %4861 = load i64, i64* %RBP.i173
  %4862 = sub i64 %4861, 8
  %4863 = load i64, i64* %PC.i171
  %4864 = add i64 %4863, 4
  store i64 %4864, i64* %PC.i171
  %4865 = inttoptr i64 %4862 to i64*
  %4866 = load i64, i64* %4865
  store i64 %4866, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_42d0ad, %struct.Memory** %MEMORY
  %loadMem_42d0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 33
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 1
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %EAX.i169 = bitcast %union.anon* %4872 to i32*
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 5
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %4875 to i64*
  %4876 = load i32, i32* %EAX.i169
  %4877 = zext i32 %4876 to i64
  %4878 = load i64, i64* %RCX.i170
  %4879 = add i64 %4878, 320
  %4880 = load i64, i64* %PC.i168
  %4881 = add i64 %4880, 6
  store i64 %4881, i64* %PC.i168
  %4882 = inttoptr i64 %4879 to i32*
  %4883 = load i32, i32* %4882
  %4884 = sub i32 %4876, %4883
  %4885 = icmp ult i32 %4876, %4883
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4886, i8* %4887, align 1
  %4888 = and i32 %4884, 255
  %4889 = call i32 @llvm.ctpop.i32(i32 %4888)
  %4890 = trunc i32 %4889 to i8
  %4891 = and i8 %4890, 1
  %4892 = xor i8 %4891, 1
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4892, i8* %4893, align 1
  %4894 = xor i32 %4883, %4876
  %4895 = xor i32 %4894, %4884
  %4896 = lshr i32 %4895, 4
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4898, i8* %4899, align 1
  %4900 = icmp eq i32 %4884, 0
  %4901 = zext i1 %4900 to i8
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4901, i8* %4902, align 1
  %4903 = lshr i32 %4884, 31
  %4904 = trunc i32 %4903 to i8
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4904, i8* %4905, align 1
  %4906 = lshr i32 %4876, 31
  %4907 = lshr i32 %4883, 31
  %4908 = xor i32 %4907, %4906
  %4909 = xor i32 %4903, %4906
  %4910 = add i32 %4909, %4908
  %4911 = icmp eq i32 %4910, 2
  %4912 = zext i1 %4911 to i8
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4912, i8* %4913, align 1
  store %struct.Memory* %loadMem_42d0b1, %struct.Memory** %MEMORY
  %loadMem_42d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %PC.i167
  %4918 = add i64 %4917, 51
  %4919 = load i64, i64* %PC.i167
  %4920 = add i64 %4919, 6
  %4921 = load i64, i64* %PC.i167
  %4922 = add i64 %4921, 6
  store i64 %4922, i64* %PC.i167
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4924 = load i8, i8* %4923, align 1
  %4925 = icmp ne i8 %4924, 0
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4927 = load i8, i8* %4926, align 1
  %4928 = icmp ne i8 %4927, 0
  %4929 = xor i1 %4925, %4928
  %4930 = xor i1 %4929, true
  %4931 = zext i1 %4930 to i8
  store i8 %4931, i8* %BRANCH_TAKEN, align 1
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4933 = select i1 %4929, i64 %4920, i64 %4918
  store i64 %4933, i64* %4932, align 8
  store %struct.Memory* %loadMem_42d0b7, %struct.Memory** %MEMORY
  %loadBr_42d0b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d0b7 = icmp eq i8 %loadBr_42d0b7, 1
  br i1 %cmpBr_42d0b7, label %block_.L_42d0ea, label %block_42d0bd

block_42d0bd:                                     ; preds = %block_.L_42d0aa
  %loadMem_42d0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 1
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 15
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %RBP.i166
  %4944 = sub i64 %4943, 8
  %4945 = load i64, i64* %PC.i164
  %4946 = add i64 %4945, 4
  store i64 %4946, i64* %PC.i164
  %4947 = inttoptr i64 %4944 to i64*
  %4948 = load i64, i64* %4947
  store i64 %4948, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_42d0bd, %struct.Memory** %MEMORY
  %loadMem_42d0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 1
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %4954 to i64*
  %4955 = load i64, i64* %RAX.i163
  %4956 = add i64 %4955, 224
  %4957 = load i64, i64* %PC.i162
  %4958 = add i64 %4957, 7
  store i64 %4958, i64* %PC.i162
  %4959 = inttoptr i64 %4956 to i64*
  %4960 = load i64, i64* %4959
  store i64 %4960, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_42d0c1, %struct.Memory** %MEMORY
  %loadMem_42d0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 33
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4963 to i64*
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 5
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 15
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %4969 to i64*
  %4970 = load i64, i64* %RBP.i161
  %4971 = sub i64 %4970, 12
  %4972 = load i64, i64* %PC.i159
  %4973 = add i64 %4972, 4
  store i64 %4973, i64* %PC.i159
  %4974 = inttoptr i64 %4971 to i32*
  %4975 = load i32, i32* %4974
  %4976 = sext i32 %4975 to i64
  store i64 %4976, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_42d0c8, %struct.Memory** %MEMORY
  %loadMem_42d0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 1
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 5
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %4985 to i64*
  %4986 = load i64, i64* %RAX.i157
  %4987 = load i64, i64* %RCX.i158
  %4988 = mul i64 %4987, 8
  %4989 = add i64 %4988, %4986
  %4990 = load i64, i64* %PC.i156
  %4991 = add i64 %4990, 4
  store i64 %4991, i64* %PC.i156
  %4992 = inttoptr i64 %4989 to i64*
  %4993 = load i64, i64* %4992
  store i64 %4993, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_42d0cc, %struct.Memory** %MEMORY
  %loadMem_42d0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 5
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i155
  %5004 = sub i64 %5003, 16
  %5005 = load i64, i64* %PC.i153
  %5006 = add i64 %5005, 4
  store i64 %5006, i64* %PC.i153
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007
  %5009 = sext i32 %5008 to i64
  store i64 %5009, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_42d0d0, %struct.Memory** %MEMORY
  %loadMem_42d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 1
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %5015 to i64*
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 5
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %5018 to i64*
  %5019 = load i64, i64* %RAX.i151
  %5020 = load i64, i64* %RCX.i152
  %5021 = mul i64 %5020, 8
  %5022 = add i64 %5021, %5019
  %5023 = load i64, i64* %PC.i150
  %5024 = add i64 %5023, 8
  store i64 %5024, i64* %PC.i150
  %5025 = inttoptr i64 %5022 to i64*
  store i64 0, i64* %5025
  store %struct.Memory* %loadMem_42d0d4, %struct.Memory** %MEMORY
  %loadMem_42d0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 33
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 1
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 15
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %5034 to i64*
  %5035 = load i64, i64* %RBP.i149
  %5036 = sub i64 %5035, 16
  %5037 = load i64, i64* %PC.i147
  %5038 = add i64 %5037, 3
  store i64 %5038, i64* %PC.i147
  %5039 = inttoptr i64 %5036 to i32*
  %5040 = load i32, i32* %5039
  %5041 = zext i32 %5040 to i64
  store i64 %5041, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_42d0dc, %struct.Memory** %MEMORY
  %loadMem_42d0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 33
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5044 to i64*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 1
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %RAX.i146
  %5049 = load i64, i64* %PC.i145
  %5050 = add i64 %5049, 3
  store i64 %5050, i64* %PC.i145
  %5051 = trunc i64 %5048 to i32
  %5052 = add i32 1, %5051
  %5053 = zext i32 %5052 to i64
  store i64 %5053, i64* %RAX.i146, align 8
  %5054 = icmp ult i32 %5052, %5051
  %5055 = icmp ult i32 %5052, 1
  %5056 = or i1 %5054, %5055
  %5057 = zext i1 %5056 to i8
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5057, i8* %5058, align 1
  %5059 = and i32 %5052, 255
  %5060 = call i32 @llvm.ctpop.i32(i32 %5059)
  %5061 = trunc i32 %5060 to i8
  %5062 = and i8 %5061, 1
  %5063 = xor i8 %5062, 1
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5063, i8* %5064, align 1
  %5065 = xor i64 1, %5048
  %5066 = trunc i64 %5065 to i32
  %5067 = xor i32 %5066, %5052
  %5068 = lshr i32 %5067, 4
  %5069 = trunc i32 %5068 to i8
  %5070 = and i8 %5069, 1
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5070, i8* %5071, align 1
  %5072 = icmp eq i32 %5052, 0
  %5073 = zext i1 %5072 to i8
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5073, i8* %5074, align 1
  %5075 = lshr i32 %5052, 31
  %5076 = trunc i32 %5075 to i8
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5076, i8* %5077, align 1
  %5078 = lshr i32 %5051, 31
  %5079 = xor i32 %5075, %5078
  %5080 = add i32 %5079, %5075
  %5081 = icmp eq i32 %5080, 2
  %5082 = zext i1 %5081 to i8
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5082, i8* %5083, align 1
  store %struct.Memory* %loadMem_42d0df, %struct.Memory** %MEMORY
  %loadMem_42d0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %5089 to i32*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 15
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RBP.i144
  %5094 = sub i64 %5093, 16
  %5095 = load i32, i32* %EAX.i143
  %5096 = zext i32 %5095 to i64
  %5097 = load i64, i64* %PC.i142
  %5098 = add i64 %5097, 3
  store i64 %5098, i64* %PC.i142
  %5099 = inttoptr i64 %5094 to i32*
  store i32 %5095, i32* %5099
  store %struct.Memory* %loadMem_42d0e2, %struct.Memory** %MEMORY
  %loadMem_42d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5102 to i64*
  %5103 = load i64, i64* %PC.i141
  %5104 = add i64 %5103, -59
  %5105 = load i64, i64* %PC.i141
  %5106 = add i64 %5105, 5
  store i64 %5106, i64* %PC.i141
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5104, i64* %5107, align 8
  store %struct.Memory* %loadMem_42d0e5, %struct.Memory** %MEMORY
  br label %block_.L_42d0aa

block_.L_42d0ea:                                  ; preds = %block_.L_42d0aa
  %loadMem_42d0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 33
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %PC.i140
  %5112 = add i64 %5111, 5
  %5113 = load i64, i64* %PC.i140
  %5114 = add i64 %5113, 5
  store i64 %5114, i64* %PC.i140
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5112, i64* %5115, align 8
  store %struct.Memory* %loadMem_42d0ea, %struct.Memory** %MEMORY
  br label %block_.L_42d0ef

block_.L_42d0ef:                                  ; preds = %block_.L_42d0ea, %block_42d02d
  %loadMem_42d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 33
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5118 to i64*
  %5119 = load i64, i64* %PC.i139
  %5120 = add i64 %5119, 5
  %5121 = load i64, i64* %PC.i139
  %5122 = add i64 %5121, 5
  store i64 %5122, i64* %PC.i139
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5120, i64* %5123, align 8
  store %struct.Memory* %loadMem_42d0ef, %struct.Memory** %MEMORY
  br label %block_.L_42d0f4

block_.L_42d0f4:                                  ; preds = %block_.L_42d0ef
  %loadMem_42d0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 33
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5126 to i64*
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 1
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 15
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %5132 to i64*
  %5133 = load i64, i64* %RBP.i138
  %5134 = sub i64 %5133, 12
  %5135 = load i64, i64* %PC.i136
  %5136 = add i64 %5135, 3
  store i64 %5136, i64* %PC.i136
  %5137 = inttoptr i64 %5134 to i32*
  %5138 = load i32, i32* %5137
  %5139 = zext i32 %5138 to i64
  store i64 %5139, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_42d0f4, %struct.Memory** %MEMORY
  %loadMem_42d0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 1
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %5145 to i64*
  %5146 = load i64, i64* %RAX.i135
  %5147 = load i64, i64* %PC.i134
  %5148 = add i64 %5147, 3
  store i64 %5148, i64* %PC.i134
  %5149 = trunc i64 %5146 to i32
  %5150 = add i32 1, %5149
  %5151 = zext i32 %5150 to i64
  store i64 %5151, i64* %RAX.i135, align 8
  %5152 = icmp ult i32 %5150, %5149
  %5153 = icmp ult i32 %5150, 1
  %5154 = or i1 %5152, %5153
  %5155 = zext i1 %5154 to i8
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5155, i8* %5156, align 1
  %5157 = and i32 %5150, 255
  %5158 = call i32 @llvm.ctpop.i32(i32 %5157)
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = xor i8 %5160, 1
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5161, i8* %5162, align 1
  %5163 = xor i64 1, %5146
  %5164 = trunc i64 %5163 to i32
  %5165 = xor i32 %5164, %5150
  %5166 = lshr i32 %5165, 4
  %5167 = trunc i32 %5166 to i8
  %5168 = and i8 %5167, 1
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5168, i8* %5169, align 1
  %5170 = icmp eq i32 %5150, 0
  %5171 = zext i1 %5170 to i8
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5171, i8* %5172, align 1
  %5173 = lshr i32 %5150, 31
  %5174 = trunc i32 %5173 to i8
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5174, i8* %5175, align 1
  %5176 = lshr i32 %5149, 31
  %5177 = xor i32 %5173, %5176
  %5178 = add i32 %5177, %5173
  %5179 = icmp eq i32 %5178, 2
  %5180 = zext i1 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5180, i8* %5181, align 1
  store %struct.Memory* %loadMem_42d0f7, %struct.Memory** %MEMORY
  %loadMem_42d0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 1
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %5187 to i32*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 15
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %RBP.i133
  %5192 = sub i64 %5191, 12
  %5193 = load i32, i32* %EAX.i132
  %5194 = zext i32 %5193 to i64
  %5195 = load i64, i64* %PC.i131
  %5196 = add i64 %5195, 3
  store i64 %5196, i64* %PC.i131
  %5197 = inttoptr i64 %5192 to i32*
  store i32 %5193, i32* %5197
  store %struct.Memory* %loadMem_42d0fa, %struct.Memory** %MEMORY
  %loadMem_42d0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 33
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5200 to i64*
  %5201 = load i64, i64* %PC.i130
  %5202 = add i64 %5201, -227
  %5203 = load i64, i64* %PC.i130
  %5204 = add i64 %5203, 5
  store i64 %5204, i64* %PC.i130
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5202, i64* %5205, align 8
  store %struct.Memory* %loadMem_42d0fd, %struct.Memory** %MEMORY
  br label %block_.L_42d01a

block_.L_42d102:                                  ; preds = %block_.L_42d01a
  %loadMem_42d102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 33
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5208 to i64*
  %5209 = load i64, i64* %PC.i129
  %5210 = add i64 %5209, 5
  %5211 = load i64, i64* %PC.i129
  %5212 = add i64 %5211, 5
  store i64 %5212, i64* %PC.i129
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5210, i64* %5213, align 8
  store %struct.Memory* %loadMem_42d102, %struct.Memory** %MEMORY
  br label %block_.L_42d107

block_.L_42d107:                                  ; preds = %block_.L_42d102, %block_.L_42d001
  %loadMem_42d107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 33
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5216 to i64*
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 1
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 15
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %5222 to i64*
  %5223 = load i64, i64* %RBP.i128
  %5224 = sub i64 %5223, 8
  %5225 = load i64, i64* %PC.i126
  %5226 = add i64 %5225, 4
  store i64 %5226, i64* %PC.i126
  %5227 = inttoptr i64 %5224 to i64*
  %5228 = load i64, i64* %5227
  store i64 %5228, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_42d107, %struct.Memory** %MEMORY
  %loadMem_42d10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 33
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 1
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RAX.i125
  %5236 = add i64 %5235, 288
  %5237 = load i64, i64* %PC.i124
  %5238 = add i64 %5237, 8
  store i64 %5238, i64* %PC.i124
  %5239 = inttoptr i64 %5236 to i64*
  %5240 = load i64, i64* %5239
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5241, align 1
  %5242 = trunc i64 %5240 to i32
  %5243 = and i32 %5242, 255
  %5244 = call i32 @llvm.ctpop.i32(i32 %5243)
  %5245 = trunc i32 %5244 to i8
  %5246 = and i8 %5245, 1
  %5247 = xor i8 %5246, 1
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5247, i8* %5248, align 1
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5249, align 1
  %5250 = icmp eq i64 %5240, 0
  %5251 = zext i1 %5250 to i8
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5251, i8* %5252, align 1
  %5253 = lshr i64 %5240, 63
  %5254 = trunc i64 %5253 to i8
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5254, i8* %5255, align 1
  %5256 = lshr i64 %5240, 63
  %5257 = xor i64 %5253, %5256
  %5258 = add i64 %5257, %5256
  %5259 = icmp eq i64 %5258, 2
  %5260 = zext i1 %5259 to i8
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5260, i8* %5261, align 1
  store %struct.Memory* %loadMem_42d10b, %struct.Memory** %MEMORY
  %loadMem_42d113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %PC.i123
  %5266 = add i64 %5265, 250
  %5267 = load i64, i64* %PC.i123
  %5268 = add i64 %5267, 6
  %5269 = load i64, i64* %PC.i123
  %5270 = add i64 %5269, 6
  store i64 %5270, i64* %PC.i123
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5272 = load i8, i8* %5271, align 1
  store i8 %5272, i8* %BRANCH_TAKEN, align 1
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5274 = icmp ne i8 %5272, 0
  %5275 = select i1 %5274, i64 %5266, i64 %5268
  store i64 %5275, i64* %5273, align 8
  store %struct.Memory* %loadMem_42d113, %struct.Memory** %MEMORY
  %loadBr_42d113 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d113 = icmp eq i8 %loadBr_42d113, 1
  br i1 %cmpBr_42d113, label %block_.L_42d20d, label %block_42d119

block_42d119:                                     ; preds = %block_.L_42d107
  %loadMem_42d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 33
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5278 to i64*
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5280 = getelementptr inbounds %struct.GPR, %struct.GPR* %5279, i32 0, i32 15
  %5281 = getelementptr inbounds %struct.Reg, %struct.Reg* %5280, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5281 to i64*
  %5282 = load i64, i64* %RBP.i122
  %5283 = sub i64 %5282, 12
  %5284 = load i64, i64* %PC.i121
  %5285 = add i64 %5284, 7
  store i64 %5285, i64* %PC.i121
  %5286 = inttoptr i64 %5283 to i32*
  store i32 0, i32* %5286
  store %struct.Memory* %loadMem_42d119, %struct.Memory** %MEMORY
  br label %block_.L_42d120

block_.L_42d120:                                  ; preds = %block_.L_42d1fa, %block_42d119
  %loadMem_42d120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 15
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RBP.i120
  %5297 = sub i64 %5296, 12
  %5298 = load i64, i64* %PC.i118
  %5299 = add i64 %5298, 3
  store i64 %5299, i64* %PC.i118
  %5300 = inttoptr i64 %5297 to i32*
  %5301 = load i32, i32* %5300
  %5302 = zext i32 %5301 to i64
  store i64 %5302, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_42d120, %struct.Memory** %MEMORY
  %loadMem_42d123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 5
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 15
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %5311 to i64*
  %5312 = load i64, i64* %RBP.i117
  %5313 = sub i64 %5312, 8
  %5314 = load i64, i64* %PC.i115
  %5315 = add i64 %5314, 4
  store i64 %5315, i64* %PC.i115
  %5316 = inttoptr i64 %5313 to i64*
  %5317 = load i64, i64* %5316
  store i64 %5317, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_42d123, %struct.Memory** %MEMORY
  %loadMem_42d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 1
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %5323 to i32*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 5
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %5326 to i64*
  %5327 = load i32, i32* %EAX.i113
  %5328 = zext i32 %5327 to i64
  %5329 = load i64, i64* %RCX.i114
  %5330 = add i64 %5329, 304
  %5331 = load i64, i64* %PC.i112
  %5332 = add i64 %5331, 6
  store i64 %5332, i64* %PC.i112
  %5333 = inttoptr i64 %5330 to i32*
  %5334 = load i32, i32* %5333
  %5335 = sub i32 %5327, %5334
  %5336 = icmp ult i32 %5327, %5334
  %5337 = zext i1 %5336 to i8
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5337, i8* %5338, align 1
  %5339 = and i32 %5335, 255
  %5340 = call i32 @llvm.ctpop.i32(i32 %5339)
  %5341 = trunc i32 %5340 to i8
  %5342 = and i8 %5341, 1
  %5343 = xor i8 %5342, 1
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5343, i8* %5344, align 1
  %5345 = xor i32 %5334, %5327
  %5346 = xor i32 %5345, %5335
  %5347 = lshr i32 %5346, 4
  %5348 = trunc i32 %5347 to i8
  %5349 = and i8 %5348, 1
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5349, i8* %5350, align 1
  %5351 = icmp eq i32 %5335, 0
  %5352 = zext i1 %5351 to i8
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5352, i8* %5353, align 1
  %5354 = lshr i32 %5335, 31
  %5355 = trunc i32 %5354 to i8
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5355, i8* %5356, align 1
  %5357 = lshr i32 %5327, 31
  %5358 = lshr i32 %5334, 31
  %5359 = xor i32 %5358, %5357
  %5360 = xor i32 %5354, %5357
  %5361 = add i32 %5360, %5359
  %5362 = icmp eq i32 %5361, 2
  %5363 = zext i1 %5362 to i8
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5363, i8* %5364, align 1
  store %struct.Memory* %loadMem_42d127, %struct.Memory** %MEMORY
  %loadMem_42d12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %PC.i111
  %5369 = add i64 %5368, 219
  %5370 = load i64, i64* %PC.i111
  %5371 = add i64 %5370, 6
  %5372 = load i64, i64* %PC.i111
  %5373 = add i64 %5372, 6
  store i64 %5373, i64* %PC.i111
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5375 = load i8, i8* %5374, align 1
  %5376 = icmp ne i8 %5375, 0
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5378 = load i8, i8* %5377, align 1
  %5379 = icmp ne i8 %5378, 0
  %5380 = xor i1 %5376, %5379
  %5381 = xor i1 %5380, true
  %5382 = zext i1 %5381 to i8
  store i8 %5382, i8* %BRANCH_TAKEN, align 1
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5384 = select i1 %5380, i64 %5371, i64 %5369
  store i64 %5384, i64* %5383, align 8
  store %struct.Memory* %loadMem_42d12d, %struct.Memory** %MEMORY
  %loadBr_42d12d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d12d = icmp eq i8 %loadBr_42d12d, 1
  br i1 %cmpBr_42d12d, label %block_.L_42d208, label %block_42d133

block_42d133:                                     ; preds = %block_.L_42d120
  %loadMem_42d133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 1
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 15
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %5393 to i64*
  %5394 = load i64, i64* %RBP.i110
  %5395 = sub i64 %5394, 8
  %5396 = load i64, i64* %PC.i108
  %5397 = add i64 %5396, 4
  store i64 %5397, i64* %PC.i108
  %5398 = inttoptr i64 %5395 to i64*
  %5399 = load i64, i64* %5398
  store i64 %5399, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_42d133, %struct.Memory** %MEMORY
  %loadMem_42d137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 1
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %5405 to i64*
  %5406 = load i64, i64* %RAX.i107
  %5407 = add i64 %5406, 288
  %5408 = load i64, i64* %PC.i106
  %5409 = add i64 %5408, 7
  store i64 %5409, i64* %PC.i106
  %5410 = inttoptr i64 %5407 to i64*
  %5411 = load i64, i64* %5410
  store i64 %5411, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_42d137, %struct.Memory** %MEMORY
  %loadMem_42d13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 5
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 15
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %RBP.i105
  %5422 = sub i64 %5421, 12
  %5423 = load i64, i64* %PC.i103
  %5424 = add i64 %5423, 4
  store i64 %5424, i64* %PC.i103
  %5425 = inttoptr i64 %5422 to i32*
  %5426 = load i32, i32* %5425
  %5427 = sext i32 %5426 to i64
  store i64 %5427, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_42d13e, %struct.Memory** %MEMORY
  %loadMem_42d142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 33
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5430 to i64*
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 1
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5433 to i64*
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 5
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %5436 to i64*
  %5437 = load i64, i64* %RAX.i101
  %5438 = load i64, i64* %RCX.i102
  %5439 = mul i64 %5438, 8
  %5440 = add i64 %5439, %5437
  %5441 = load i64, i64* %PC.i100
  %5442 = add i64 %5441, 5
  store i64 %5442, i64* %PC.i100
  %5443 = inttoptr i64 %5440 to i64*
  %5444 = load i64, i64* %5443
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5445, align 1
  %5446 = trunc i64 %5444 to i32
  %5447 = and i32 %5446, 255
  %5448 = call i32 @llvm.ctpop.i32(i32 %5447)
  %5449 = trunc i32 %5448 to i8
  %5450 = and i8 %5449, 1
  %5451 = xor i8 %5450, 1
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5451, i8* %5452, align 1
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5453, align 1
  %5454 = icmp eq i64 %5444, 0
  %5455 = zext i1 %5454 to i8
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5455, i8* %5456, align 1
  %5457 = lshr i64 %5444, 63
  %5458 = trunc i64 %5457 to i8
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5458, i8* %5459, align 1
  %5460 = lshr i64 %5444, 63
  %5461 = xor i64 %5457, %5460
  %5462 = add i64 %5461, %5460
  %5463 = icmp eq i64 %5462, 2
  %5464 = zext i1 %5463 to i8
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5464, i8* %5465, align 1
  store %struct.Memory* %loadMem_42d142, %struct.Memory** %MEMORY
  %loadMem_42d147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %PC.i99
  %5470 = add i64 %5469, 174
  %5471 = load i64, i64* %PC.i99
  %5472 = add i64 %5471, 6
  %5473 = load i64, i64* %PC.i99
  %5474 = add i64 %5473, 6
  store i64 %5474, i64* %PC.i99
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5476 = load i8, i8* %5475, align 1
  store i8 %5476, i8* %BRANCH_TAKEN, align 1
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5478 = icmp ne i8 %5476, 0
  %5479 = select i1 %5478, i64 %5470, i64 %5472
  store i64 %5479, i64* %5477, align 8
  store %struct.Memory* %loadMem_42d147, %struct.Memory** %MEMORY
  %loadBr_42d147 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d147 = icmp eq i8 %loadBr_42d147, 1
  br i1 %cmpBr_42d147, label %block_.L_42d1f5, label %block_42d14d

block_42d14d:                                     ; preds = %block_42d133
  %loadMem_42d14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 33
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 11
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %PC.i98
  %5487 = add i64 %5486, 10
  store i64 %5487, i64* %PC.i98
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42d14d, %struct.Memory** %MEMORY
  %loadMem_42d157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 9
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RSI.i97 = bitcast %union.anon* %5493 to i64*
  %5494 = load i64, i64* %PC.i96
  %5495 = add i64 %5494, 5
  store i64 %5495, i64* %PC.i96
  store i64 232, i64* %RSI.i97, align 8
  store %struct.Memory* %loadMem_42d157, %struct.Memory** %MEMORY
  %loadMem_42d15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 33
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5498 to i64*
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 1
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 15
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %5504 to i64*
  %5505 = load i64, i64* %RBP.i95
  %5506 = sub i64 %5505, 8
  %5507 = load i64, i64* %PC.i93
  %5508 = add i64 %5507, 4
  store i64 %5508, i64* %PC.i93
  %5509 = inttoptr i64 %5506 to i64*
  %5510 = load i64, i64* %5509
  store i64 %5510, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_42d15c, %struct.Memory** %MEMORY
  %loadMem_42d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 33
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5513 to i64*
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 1
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %5516 to i64*
  %5517 = load i64, i64* %RAX.i92
  %5518 = add i64 %5517, 288
  %5519 = load i64, i64* %PC.i91
  %5520 = add i64 %5519, 7
  store i64 %5520, i64* %PC.i91
  %5521 = inttoptr i64 %5518 to i64*
  %5522 = load i64, i64* %5521
  store i64 %5522, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_42d160, %struct.Memory** %MEMORY
  %loadMem_42d167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 33
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5525 to i64*
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 5
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %5528 to i64*
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 15
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %5531 to i64*
  %5532 = load i64, i64* %RBP.i90
  %5533 = sub i64 %5532, 12
  %5534 = load i64, i64* %PC.i88
  %5535 = add i64 %5534, 4
  store i64 %5535, i64* %PC.i88
  %5536 = inttoptr i64 %5533 to i32*
  %5537 = load i32, i32* %5536
  %5538 = sext i32 %5537 to i64
  store i64 %5538, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_42d167, %struct.Memory** %MEMORY
  %loadMem_42d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 1
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 5
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %RAX.i86
  %5549 = load i64, i64* %RCX.i87
  %5550 = mul i64 %5549, 8
  %5551 = add i64 %5550, %5548
  %5552 = load i64, i64* %PC.i85
  %5553 = add i64 %5552, 4
  store i64 %5553, i64* %PC.i85
  %5554 = inttoptr i64 %5551 to i64*
  %5555 = load i64, i64* %5554
  store i64 %5555, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_42d16b, %struct.Memory** %MEMORY
  %loadMem_42d16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 33
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 5
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 15
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %5564 to i64*
  %5565 = load i64, i64* %RBP.i84
  %5566 = sub i64 %5565, 8
  %5567 = load i64, i64* %PC.i82
  %5568 = add i64 %5567, 4
  store i64 %5568, i64* %PC.i82
  %5569 = inttoptr i64 %5566 to i64*
  %5570 = load i64, i64* %5569
  store i64 %5570, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_42d16f, %struct.Memory** %MEMORY
  %loadMem_42d173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 33
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5573 to i64*
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 5
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %5576 to i64*
  %5577 = load i64, i64* %RCX.i81
  %5578 = add i64 %5577, 320
  %5579 = load i64, i64* %PC.i80
  %5580 = add i64 %5579, 7
  store i64 %5580, i64* %PC.i80
  %5581 = inttoptr i64 %5578 to i32*
  %5582 = load i32, i32* %5581
  %5583 = sext i32 %5582 to i64
  store i64 %5583, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_42d173, %struct.Memory** %MEMORY
  %loadMem_42d17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 33
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %5586 to i64*
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 5
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %5589 to i64*
  %5590 = load i64, i64* %RCX.i79
  %5591 = load i64, i64* %PC.i78
  %5592 = add i64 %5591, 4
  store i64 %5592, i64* %PC.i78
  %5593 = shl i64 %5590, 2
  %5594 = icmp slt i64 %5593, 0
  %5595 = shl i64 %5593, 1
  store i64 %5595, i64* %RCX.i79, align 8
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5597 = zext i1 %5594 to i8
  store i8 %5597, i8* %5596, align 1
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5599 = trunc i64 %5595 to i32
  %5600 = and i32 %5599, 254
  %5601 = call i32 @llvm.ctpop.i32(i32 %5600)
  %5602 = trunc i32 %5601 to i8
  %5603 = and i8 %5602, 1
  %5604 = xor i8 %5603, 1
  store i8 %5604, i8* %5598, align 1
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5605, align 1
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5607 = icmp eq i64 %5595, 0
  %5608 = zext i1 %5607 to i8
  store i8 %5608, i8* %5606, align 1
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5610 = lshr i64 %5595, 63
  %5611 = trunc i64 %5610 to i8
  store i8 %5611, i8* %5609, align 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5612, align 1
  store %struct.Memory* %loadMem_42d17a, %struct.Memory** %MEMORY
  %loadMem_42d17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 33
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5615 to i64*
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 1
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %5618 to i64*
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 7
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %RDX.i77 = bitcast %union.anon* %5621 to i64*
  %5622 = load i64, i64* %RAX.i76
  %5623 = load i64, i64* %PC.i75
  %5624 = add i64 %5623, 3
  store i64 %5624, i64* %PC.i75
  store i64 %5622, i64* %RDX.i77, align 8
  store %struct.Memory* %loadMem_42d17e, %struct.Memory** %MEMORY
  %loadMem1_42d181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 33
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %PC.i74
  %5629 = add i64 %5628, 102191
  %5630 = load i64, i64* %PC.i74
  %5631 = add i64 %5630, 5
  %5632 = load i64, i64* %PC.i74
  %5633 = add i64 %5632, 5
  store i64 %5633, i64* %PC.i74
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5635 = load i64, i64* %5634, align 8
  %5636 = add i64 %5635, -8
  %5637 = inttoptr i64 %5636 to i64*
  store i64 %5631, i64* %5637
  store i64 %5636, i64* %5634, align 8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5629, i64* %5638, align 8
  store %struct.Memory* %loadMem1_42d181, %struct.Memory** %MEMORY
  %loadMem2_42d181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d181 = load i64, i64* %3
  %call2_42d181 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %loadPC_42d181, %struct.Memory* %loadMem2_42d181)
  store %struct.Memory* %call2_42d181, %struct.Memory** %MEMORY
  %loadMem_42d186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 5
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 15
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RBP.i73
  %5649 = sub i64 %5648, 8
  %5650 = load i64, i64* %PC.i71
  %5651 = add i64 %5650, 4
  store i64 %5651, i64* %PC.i71
  %5652 = inttoptr i64 %5649 to i64*
  %5653 = load i64, i64* %5652
  store i64 %5653, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_42d186, %struct.Memory** %MEMORY
  %loadMem_42d18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 33
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 5
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RCX.i70
  %5661 = add i64 %5660, 288
  %5662 = load i64, i64* %PC.i69
  %5663 = add i64 %5662, 7
  store i64 %5663, i64* %PC.i69
  %5664 = inttoptr i64 %5661 to i64*
  %5665 = load i64, i64* %5664
  store i64 %5665, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_42d18a, %struct.Memory** %MEMORY
  %loadMem_42d191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 33
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5668 to i64*
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 7
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %5671 to i64*
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 15
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %5674 to i64*
  %5675 = load i64, i64* %RBP.i68
  %5676 = sub i64 %5675, 12
  %5677 = load i64, i64* %PC.i66
  %5678 = add i64 %5677, 4
  store i64 %5678, i64* %PC.i66
  %5679 = inttoptr i64 %5676 to i32*
  %5680 = load i32, i32* %5679
  %5681 = sext i32 %5680 to i64
  store i64 %5681, i64* %RDX.i67, align 8
  store %struct.Memory* %loadMem_42d191, %struct.Memory** %MEMORY
  %loadMem_42d195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 33
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5684 to i64*
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 1
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 5
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 7
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5693 to i64*
  %5694 = load i64, i64* %RCX.i65
  %5695 = load i64, i64* %RDX.i
  %5696 = mul i64 %5695, 8
  %5697 = add i64 %5696, %5694
  %5698 = load i64, i64* %RAX.i64
  %5699 = load i64, i64* %PC.i63
  %5700 = add i64 %5699, 4
  store i64 %5700, i64* %PC.i63
  %5701 = inttoptr i64 %5697 to i64*
  store i64 %5698, i64* %5701
  store %struct.Memory* %loadMem_42d195, %struct.Memory** %MEMORY
  %loadMem_42d199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 1
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 15
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %5710 to i64*
  %5711 = load i64, i64* %RBP.i62
  %5712 = sub i64 %5711, 8
  %5713 = load i64, i64* %PC.i60
  %5714 = add i64 %5713, 4
  store i64 %5714, i64* %PC.i60
  %5715 = inttoptr i64 %5712 to i64*
  %5716 = load i64, i64* %5715
  store i64 %5716, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_42d199, %struct.Memory** %MEMORY
  %loadMem_42d19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 33
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5719 to i64*
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 1
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 9
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RSI.i59 = bitcast %union.anon* %5725 to i64*
  %5726 = load i64, i64* %RAX.i58
  %5727 = add i64 %5726, 320
  %5728 = load i64, i64* %PC.i57
  %5729 = add i64 %5728, 6
  store i64 %5729, i64* %PC.i57
  %5730 = inttoptr i64 %5727 to i32*
  %5731 = load i32, i32* %5730
  %5732 = zext i32 %5731 to i64
  store i64 %5732, i64* %RSI.i59, align 8
  store %struct.Memory* %loadMem_42d19d, %struct.Memory** %MEMORY
  %loadMem_42d1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 33
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 1
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 15
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RBP.i56
  %5743 = sub i64 %5742, 8
  %5744 = load i64, i64* %PC.i54
  %5745 = add i64 %5744, 4
  store i64 %5745, i64* %PC.i54
  %5746 = inttoptr i64 %5743 to i64*
  %5747 = load i64, i64* %5746
  store i64 %5747, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_42d1a3, %struct.Memory** %MEMORY
  %loadMem_42d1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 1
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 9
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %RSI.i
  %5758 = load i64, i64* %RAX.i53
  %5759 = add i64 %5758, 324
  %5760 = load i64, i64* %PC.i52
  %5761 = add i64 %5760, 6
  store i64 %5761, i64* %PC.i52
  %5762 = trunc i64 %5757 to i32
  %5763 = inttoptr i64 %5759 to i32*
  %5764 = load i32, i32* %5763
  %5765 = sub i32 %5762, %5764
  %5766 = zext i32 %5765 to i64
  store i64 %5766, i64* %RSI.i, align 8
  %5767 = icmp ult i32 %5762, %5764
  %5768 = zext i1 %5767 to i8
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5768, i8* %5769, align 1
  %5770 = and i32 %5765, 255
  %5771 = call i32 @llvm.ctpop.i32(i32 %5770)
  %5772 = trunc i32 %5771 to i8
  %5773 = and i8 %5772, 1
  %5774 = xor i8 %5773, 1
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5774, i8* %5775, align 1
  %5776 = xor i32 %5764, %5762
  %5777 = xor i32 %5776, %5765
  %5778 = lshr i32 %5777, 4
  %5779 = trunc i32 %5778 to i8
  %5780 = and i8 %5779, 1
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5780, i8* %5781, align 1
  %5782 = icmp eq i32 %5765, 0
  %5783 = zext i1 %5782 to i8
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5783, i8* %5784, align 1
  %5785 = lshr i32 %5765, 31
  %5786 = trunc i32 %5785 to i8
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5786, i8* %5787, align 1
  %5788 = lshr i32 %5762, 31
  %5789 = lshr i32 %5764, 31
  %5790 = xor i32 %5789, %5788
  %5791 = xor i32 %5785, %5788
  %5792 = add i32 %5791, %5790
  %5793 = icmp eq i32 %5792, 2
  %5794 = zext i1 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5794, i8* %5795, align 1
  store %struct.Memory* %loadMem_42d1a7, %struct.Memory** %MEMORY
  %loadMem_42d1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 9
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5801 to i32*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 15
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %RBP.i51
  %5806 = sub i64 %5805, 16
  %5807 = load i32, i32* %ESI.i
  %5808 = zext i32 %5807 to i64
  %5809 = load i64, i64* %PC.i50
  %5810 = add i64 %5809, 3
  store i64 %5810, i64* %PC.i50
  %5811 = inttoptr i64 %5806 to i32*
  store i32 %5807, i32* %5811
  store %struct.Memory* %loadMem_42d1ad, %struct.Memory** %MEMORY
  br label %block_.L_42d1b0

block_.L_42d1b0:                                  ; preds = %block_42d1c3, %block_42d14d
  %loadMem_42d1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 33
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5814 to i64*
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 1
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %5817 to i64*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 15
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %5820 to i64*
  %5821 = load i64, i64* %RBP.i49
  %5822 = sub i64 %5821, 16
  %5823 = load i64, i64* %PC.i47
  %5824 = add i64 %5823, 3
  store i64 %5824, i64* %PC.i47
  %5825 = inttoptr i64 %5822 to i32*
  %5826 = load i32, i32* %5825
  %5827 = zext i32 %5826 to i64
  store i64 %5827, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_42d1b0, %struct.Memory** %MEMORY
  %loadMem_42d1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 5
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 15
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5836 to i64*
  %5837 = load i64, i64* %RBP.i46
  %5838 = sub i64 %5837, 8
  %5839 = load i64, i64* %PC.i44
  %5840 = add i64 %5839, 4
  store i64 %5840, i64* %PC.i44
  %5841 = inttoptr i64 %5838 to i64*
  %5842 = load i64, i64* %5841
  store i64 %5842, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_42d1b3, %struct.Memory** %MEMORY
  %loadMem_42d1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 33
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 1
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %EAX.i42 = bitcast %union.anon* %5848 to i32*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 5
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %5851 to i64*
  %5852 = load i32, i32* %EAX.i42
  %5853 = zext i32 %5852 to i64
  %5854 = load i64, i64* %RCX.i43
  %5855 = add i64 %5854, 320
  %5856 = load i64, i64* %PC.i41
  %5857 = add i64 %5856, 6
  store i64 %5857, i64* %PC.i41
  %5858 = inttoptr i64 %5855 to i32*
  %5859 = load i32, i32* %5858
  %5860 = sub i32 %5852, %5859
  %5861 = icmp ult i32 %5852, %5859
  %5862 = zext i1 %5861 to i8
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5862, i8* %5863, align 1
  %5864 = and i32 %5860, 255
  %5865 = call i32 @llvm.ctpop.i32(i32 %5864)
  %5866 = trunc i32 %5865 to i8
  %5867 = and i8 %5866, 1
  %5868 = xor i8 %5867, 1
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5868, i8* %5869, align 1
  %5870 = xor i32 %5859, %5852
  %5871 = xor i32 %5870, %5860
  %5872 = lshr i32 %5871, 4
  %5873 = trunc i32 %5872 to i8
  %5874 = and i8 %5873, 1
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5874, i8* %5875, align 1
  %5876 = icmp eq i32 %5860, 0
  %5877 = zext i1 %5876 to i8
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5877, i8* %5878, align 1
  %5879 = lshr i32 %5860, 31
  %5880 = trunc i32 %5879 to i8
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5880, i8* %5881, align 1
  %5882 = lshr i32 %5852, 31
  %5883 = lshr i32 %5859, 31
  %5884 = xor i32 %5883, %5882
  %5885 = xor i32 %5879, %5882
  %5886 = add i32 %5885, %5884
  %5887 = icmp eq i32 %5886, 2
  %5888 = zext i1 %5887 to i8
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5888, i8* %5889, align 1
  store %struct.Memory* %loadMem_42d1b7, %struct.Memory** %MEMORY
  %loadMem_42d1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 33
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5892 to i64*
  %5893 = load i64, i64* %PC.i40
  %5894 = add i64 %5893, 51
  %5895 = load i64, i64* %PC.i40
  %5896 = add i64 %5895, 6
  %5897 = load i64, i64* %PC.i40
  %5898 = add i64 %5897, 6
  store i64 %5898, i64* %PC.i40
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5900 = load i8, i8* %5899, align 1
  %5901 = icmp ne i8 %5900, 0
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5903 = load i8, i8* %5902, align 1
  %5904 = icmp ne i8 %5903, 0
  %5905 = xor i1 %5901, %5904
  %5906 = xor i1 %5905, true
  %5907 = zext i1 %5906 to i8
  store i8 %5907, i8* %BRANCH_TAKEN, align 1
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5909 = select i1 %5905, i64 %5896, i64 %5894
  store i64 %5909, i64* %5908, align 8
  store %struct.Memory* %loadMem_42d1bd, %struct.Memory** %MEMORY
  %loadBr_42d1bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d1bd = icmp eq i8 %loadBr_42d1bd, 1
  br i1 %cmpBr_42d1bd, label %block_.L_42d1f0, label %block_42d1c3

block_42d1c3:                                     ; preds = %block_.L_42d1b0
  %loadMem_42d1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 33
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 1
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5915 to i64*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 15
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %RBP.i39
  %5920 = sub i64 %5919, 8
  %5921 = load i64, i64* %PC.i37
  %5922 = add i64 %5921, 4
  store i64 %5922, i64* %PC.i37
  %5923 = inttoptr i64 %5920 to i64*
  %5924 = load i64, i64* %5923
  store i64 %5924, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_42d1c3, %struct.Memory** %MEMORY
  %loadMem_42d1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 1
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %5930 to i64*
  %5931 = load i64, i64* %RAX.i36
  %5932 = add i64 %5931, 288
  %5933 = load i64, i64* %PC.i35
  %5934 = add i64 %5933, 7
  store i64 %5934, i64* %PC.i35
  %5935 = inttoptr i64 %5932 to i64*
  %5936 = load i64, i64* %5935
  store i64 %5936, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_42d1c7, %struct.Memory** %MEMORY
  %loadMem_42d1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5938 = getelementptr inbounds %struct.GPR, %struct.GPR* %5937, i32 0, i32 33
  %5939 = getelementptr inbounds %struct.Reg, %struct.Reg* %5938, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5939 to i64*
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 5
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 15
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %5945 to i64*
  %5946 = load i64, i64* %RBP.i34
  %5947 = sub i64 %5946, 12
  %5948 = load i64, i64* %PC.i32
  %5949 = add i64 %5948, 4
  store i64 %5949, i64* %PC.i32
  %5950 = inttoptr i64 %5947 to i32*
  %5951 = load i32, i32* %5950
  %5952 = sext i32 %5951 to i64
  store i64 %5952, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_42d1ce, %struct.Memory** %MEMORY
  %loadMem_42d1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 33
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5955 to i64*
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 1
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 5
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %5961 to i64*
  %5962 = load i64, i64* %RAX.i30
  %5963 = load i64, i64* %RCX.i31
  %5964 = mul i64 %5963, 8
  %5965 = add i64 %5964, %5962
  %5966 = load i64, i64* %PC.i29
  %5967 = add i64 %5966, 4
  store i64 %5967, i64* %PC.i29
  %5968 = inttoptr i64 %5965 to i64*
  %5969 = load i64, i64* %5968
  store i64 %5969, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_42d1d2, %struct.Memory** %MEMORY
  %loadMem_42d1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 33
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 5
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 15
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %5978 to i64*
  %5979 = load i64, i64* %RBP.i28
  %5980 = sub i64 %5979, 16
  %5981 = load i64, i64* %PC.i26
  %5982 = add i64 %5981, 4
  store i64 %5982, i64* %PC.i26
  %5983 = inttoptr i64 %5980 to i32*
  %5984 = load i32, i32* %5983
  %5985 = sext i32 %5984 to i64
  store i64 %5985, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_42d1d6, %struct.Memory** %MEMORY
  %loadMem_42d1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 33
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5988 to i64*
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 1
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 5
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5994 to i64*
  %5995 = load i64, i64* %RAX.i25
  %5996 = load i64, i64* %RCX.i
  %5997 = mul i64 %5996, 8
  %5998 = add i64 %5997, %5995
  %5999 = load i64, i64* %PC.i24
  %6000 = add i64 %5999, 8
  store i64 %6000, i64* %PC.i24
  %6001 = inttoptr i64 %5998 to i64*
  store i64 0, i64* %6001
  store %struct.Memory* %loadMem_42d1da, %struct.Memory** %MEMORY
  %loadMem_42d1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6004 to i64*
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 1
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %6007 to i64*
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 15
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %6010 to i64*
  %6011 = load i64, i64* %RBP.i23
  %6012 = sub i64 %6011, 16
  %6013 = load i64, i64* %PC.i21
  %6014 = add i64 %6013, 3
  store i64 %6014, i64* %PC.i21
  %6015 = inttoptr i64 %6012 to i32*
  %6016 = load i32, i32* %6015
  %6017 = zext i32 %6016 to i64
  store i64 %6017, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_42d1e2, %struct.Memory** %MEMORY
  %loadMem_42d1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 33
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6020 to i64*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 1
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %RAX.i20
  %6025 = load i64, i64* %PC.i19
  %6026 = add i64 %6025, 3
  store i64 %6026, i64* %PC.i19
  %6027 = trunc i64 %6024 to i32
  %6028 = add i32 1, %6027
  %6029 = zext i32 %6028 to i64
  store i64 %6029, i64* %RAX.i20, align 8
  %6030 = icmp ult i32 %6028, %6027
  %6031 = icmp ult i32 %6028, 1
  %6032 = or i1 %6030, %6031
  %6033 = zext i1 %6032 to i8
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6033, i8* %6034, align 1
  %6035 = and i32 %6028, 255
  %6036 = call i32 @llvm.ctpop.i32(i32 %6035)
  %6037 = trunc i32 %6036 to i8
  %6038 = and i8 %6037, 1
  %6039 = xor i8 %6038, 1
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6039, i8* %6040, align 1
  %6041 = xor i64 1, %6024
  %6042 = trunc i64 %6041 to i32
  %6043 = xor i32 %6042, %6028
  %6044 = lshr i32 %6043, 4
  %6045 = trunc i32 %6044 to i8
  %6046 = and i8 %6045, 1
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6046, i8* %6047, align 1
  %6048 = icmp eq i32 %6028, 0
  %6049 = zext i1 %6048 to i8
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6049, i8* %6050, align 1
  %6051 = lshr i32 %6028, 31
  %6052 = trunc i32 %6051 to i8
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6052, i8* %6053, align 1
  %6054 = lshr i32 %6027, 31
  %6055 = xor i32 %6051, %6054
  %6056 = add i32 %6055, %6051
  %6057 = icmp eq i32 %6056, 2
  %6058 = zext i1 %6057 to i8
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6058, i8* %6059, align 1
  store %struct.Memory* %loadMem_42d1e5, %struct.Memory** %MEMORY
  %loadMem_42d1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 33
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6062 to i64*
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 1
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %6065 to i32*
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 15
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %6068 to i64*
  %6069 = load i64, i64* %RBP.i18
  %6070 = sub i64 %6069, 16
  %6071 = load i32, i32* %EAX.i17
  %6072 = zext i32 %6071 to i64
  %6073 = load i64, i64* %PC.i16
  %6074 = add i64 %6073, 3
  store i64 %6074, i64* %PC.i16
  %6075 = inttoptr i64 %6070 to i32*
  store i32 %6071, i32* %6075
  store %struct.Memory* %loadMem_42d1e8, %struct.Memory** %MEMORY
  %loadMem_42d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 33
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %PC.i15
  %6080 = add i64 %6079, -59
  %6081 = load i64, i64* %PC.i15
  %6082 = add i64 %6081, 5
  store i64 %6082, i64* %PC.i15
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6080, i64* %6083, align 8
  store %struct.Memory* %loadMem_42d1eb, %struct.Memory** %MEMORY
  br label %block_.L_42d1b0

block_.L_42d1f0:                                  ; preds = %block_.L_42d1b0
  %loadMem_42d1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %PC.i14
  %6088 = add i64 %6087, 5
  %6089 = load i64, i64* %PC.i14
  %6090 = add i64 %6089, 5
  store i64 %6090, i64* %PC.i14
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6088, i64* %6091, align 8
  store %struct.Memory* %loadMem_42d1f0, %struct.Memory** %MEMORY
  br label %block_.L_42d1f5

block_.L_42d1f5:                                  ; preds = %block_.L_42d1f0, %block_42d133
  %loadMem_42d1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 33
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6094 to i64*
  %6095 = load i64, i64* %PC.i13
  %6096 = add i64 %6095, 5
  %6097 = load i64, i64* %PC.i13
  %6098 = add i64 %6097, 5
  store i64 %6098, i64* %PC.i13
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6096, i64* %6099, align 8
  store %struct.Memory* %loadMem_42d1f5, %struct.Memory** %MEMORY
  br label %block_.L_42d1fa

block_.L_42d1fa:                                  ; preds = %block_.L_42d1f5
  %loadMem_42d1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 33
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6102 to i64*
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6104 = getelementptr inbounds %struct.GPR, %struct.GPR* %6103, i32 0, i32 1
  %6105 = getelementptr inbounds %struct.Reg, %struct.Reg* %6104, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %6105 to i64*
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 15
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %6108 to i64*
  %6109 = load i64, i64* %RBP.i12
  %6110 = sub i64 %6109, 12
  %6111 = load i64, i64* %PC.i10
  %6112 = add i64 %6111, 3
  store i64 %6112, i64* %PC.i10
  %6113 = inttoptr i64 %6110 to i32*
  %6114 = load i32, i32* %6113
  %6115 = zext i32 %6114 to i64
  store i64 %6115, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_42d1fa, %struct.Memory** %MEMORY
  %loadMem_42d1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 33
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6118 to i64*
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 1
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6121 to i64*
  %6122 = load i64, i64* %RAX.i
  %6123 = load i64, i64* %PC.i9
  %6124 = add i64 %6123, 3
  store i64 %6124, i64* %PC.i9
  %6125 = trunc i64 %6122 to i32
  %6126 = add i32 1, %6125
  %6127 = zext i32 %6126 to i64
  store i64 %6127, i64* %RAX.i, align 8
  %6128 = icmp ult i32 %6126, %6125
  %6129 = icmp ult i32 %6126, 1
  %6130 = or i1 %6128, %6129
  %6131 = zext i1 %6130 to i8
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6131, i8* %6132, align 1
  %6133 = and i32 %6126, 255
  %6134 = call i32 @llvm.ctpop.i32(i32 %6133)
  %6135 = trunc i32 %6134 to i8
  %6136 = and i8 %6135, 1
  %6137 = xor i8 %6136, 1
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6137, i8* %6138, align 1
  %6139 = xor i64 1, %6122
  %6140 = trunc i64 %6139 to i32
  %6141 = xor i32 %6140, %6126
  %6142 = lshr i32 %6141, 4
  %6143 = trunc i32 %6142 to i8
  %6144 = and i8 %6143, 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6144, i8* %6145, align 1
  %6146 = icmp eq i32 %6126, 0
  %6147 = zext i1 %6146 to i8
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6147, i8* %6148, align 1
  %6149 = lshr i32 %6126, 31
  %6150 = trunc i32 %6149 to i8
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6150, i8* %6151, align 1
  %6152 = lshr i32 %6125, 31
  %6153 = xor i32 %6149, %6152
  %6154 = add i32 %6153, %6149
  %6155 = icmp eq i32 %6154, 2
  %6156 = zext i1 %6155 to i8
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6156, i8* %6157, align 1
  store %struct.Memory* %loadMem_42d1fd, %struct.Memory** %MEMORY
  %loadMem_42d200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 33
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6160 to i64*
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 1
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6163 to i32*
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 15
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %6166 to i64*
  %6167 = load i64, i64* %RBP.i8
  %6168 = sub i64 %6167, 12
  %6169 = load i32, i32* %EAX.i
  %6170 = zext i32 %6169 to i64
  %6171 = load i64, i64* %PC.i7
  %6172 = add i64 %6171, 3
  store i64 %6172, i64* %PC.i7
  %6173 = inttoptr i64 %6168 to i32*
  store i32 %6169, i32* %6173
  store %struct.Memory* %loadMem_42d200, %struct.Memory** %MEMORY
  %loadMem_42d203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 33
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6176 to i64*
  %6177 = load i64, i64* %PC.i6
  %6178 = add i64 %6177, -227
  %6179 = load i64, i64* %PC.i6
  %6180 = add i64 %6179, 5
  store i64 %6180, i64* %PC.i6
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6178, i64* %6181, align 8
  store %struct.Memory* %loadMem_42d203, %struct.Memory** %MEMORY
  br label %block_.L_42d120

block_.L_42d208:                                  ; preds = %block_.L_42d120
  %loadMem_42d208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 33
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6184 to i64*
  %6185 = load i64, i64* %PC.i5
  %6186 = add i64 %6185, 5
  %6187 = load i64, i64* %PC.i5
  %6188 = add i64 %6187, 5
  store i64 %6188, i64* %PC.i5
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6186, i64* %6189, align 8
  store %struct.Memory* %loadMem_42d208, %struct.Memory** %MEMORY
  br label %block_.L_42d20d

block_.L_42d20d:                                  ; preds = %block_.L_42d208, %block_.L_42d107
  %loadMem_42d20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 33
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6192 to i64*
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 13
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6195 to i64*
  %6196 = load i64, i64* %RSP.i
  %6197 = load i64, i64* %PC.i4
  %6198 = add i64 %6197, 4
  store i64 %6198, i64* %PC.i4
  %6199 = add i64 32, %6196
  store i64 %6199, i64* %RSP.i, align 8
  %6200 = icmp ult i64 %6199, %6196
  %6201 = icmp ult i64 %6199, 32
  %6202 = or i1 %6200, %6201
  %6203 = zext i1 %6202 to i8
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6203, i8* %6204, align 1
  %6205 = trunc i64 %6199 to i32
  %6206 = and i32 %6205, 255
  %6207 = call i32 @llvm.ctpop.i32(i32 %6206)
  %6208 = trunc i32 %6207 to i8
  %6209 = and i8 %6208, 1
  %6210 = xor i8 %6209, 1
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6210, i8* %6211, align 1
  %6212 = xor i64 32, %6196
  %6213 = xor i64 %6212, %6199
  %6214 = lshr i64 %6213, 4
  %6215 = trunc i64 %6214 to i8
  %6216 = and i8 %6215, 1
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6216, i8* %6217, align 1
  %6218 = icmp eq i64 %6199, 0
  %6219 = zext i1 %6218 to i8
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6219, i8* %6220, align 1
  %6221 = lshr i64 %6199, 63
  %6222 = trunc i64 %6221 to i8
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6222, i8* %6223, align 1
  %6224 = lshr i64 %6196, 63
  %6225 = xor i64 %6221, %6224
  %6226 = add i64 %6225, %6221
  %6227 = icmp eq i64 %6226, 2
  %6228 = zext i1 %6227 to i8
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6228, i8* %6229, align 1
  store %struct.Memory* %loadMem_42d20d, %struct.Memory** %MEMORY
  %loadMem_42d211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6231 = getelementptr inbounds %struct.GPR, %struct.GPR* %6230, i32 0, i32 33
  %6232 = getelementptr inbounds %struct.Reg, %struct.Reg* %6231, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6232 to i64*
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 15
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6235 to i64*
  %6236 = load i64, i64* %PC.i2
  %6237 = add i64 %6236, 1
  store i64 %6237, i64* %PC.i2
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6239 = load i64, i64* %6238, align 8
  %6240 = add i64 %6239, 8
  %6241 = inttoptr i64 %6239 to i64*
  %6242 = load i64, i64* %6241
  store i64 %6242, i64* %RBP.i3, align 8
  store i64 %6240, i64* %6238, align 8
  store %struct.Memory* %loadMem_42d211, %struct.Memory** %MEMORY
  %loadMem_42d212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 33
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6245 to i64*
  %6246 = load i64, i64* %PC.i1
  %6247 = add i64 %6246, 1
  store i64 %6247, i64* %PC.i1
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6250 = load i64, i64* %6249, align 8
  %6251 = inttoptr i64 %6250 to i64*
  %6252 = load i64, i64* %6251
  store i64 %6252, i64* %6248, align 8
  %6253 = add i64 %6250, 8
  store i64 %6253, i64* %6249, align 8
  store %struct.Memory* %loadMem_42d212, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42d212
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

define %struct.Memory* @routine_movq__0x45882f___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 162, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x144__rdi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x140__rdi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 320
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__ecx__0x140__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 320
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x140__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_callq_.sre_realloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 163, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0xa4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 164, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa5___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 165, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x148__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
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

define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
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

define %struct.Memory* @routine_je_.L_42cc96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xa8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 168, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 169, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x150__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 336
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
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

define %struct.Memory* @routine_je_.L_42cd17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xac___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 172, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xad___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 173, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x78__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x158__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 344
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
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

define %struct.Memory* @routine_je_.L_42cd5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xb0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 176, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x60__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
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

define %struct.Memory* @routine_je_.L_42cda1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xb2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 178, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x68__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x140__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x144__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 324
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 320
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

define %struct.Memory* @routine_jge_.L_42d001(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x27951__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x27951__rip__type* @G_0x27951__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
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

define %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  store i64 0, i64* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42ce1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42ce3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42ce99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xbd___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 189, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rax____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
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

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i32 1, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 1
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
  %27 = xor i64 1, %11
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

define %struct.Memory* @routine_movslq__r8d___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_42ceac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42cf58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42cf2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 195, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42cf42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42cfee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42cfc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 201, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x78__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42cfd8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42cff3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42cdb8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0xe0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_42d107(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xf0__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 240
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

define %struct.Memory* @routine_jge_.L_42d102(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = trunc i64 %19 to i32
  %22 = and i32 %21, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i64 %19, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %19, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %19, 63
  %36 = xor i64 %32, %35
  %37 = add i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42d0ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xd9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 217, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_0xe0__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x140__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x144__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 324
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jge_.L_42d0ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
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

define %struct.Memory* @routine_jmpq_.L_42d0aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d0ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d0f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d01a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d107(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x120__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_42d20d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 304
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

define %struct.Memory* @routine_jge_.L_42d208(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42d1f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xe8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 232, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x120__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42d1f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42d1b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d1f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d1fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d120(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d20d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
