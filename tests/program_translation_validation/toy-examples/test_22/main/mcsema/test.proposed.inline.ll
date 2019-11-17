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
%G_0xee__rip__type = type <{ [4 x i8] }>
%G__0x400670_type = type <{ [8 x i8] }>
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
@G_0xee__rip_ = global %G_0xee__rip__type zeroinitializer
@G__0x400670 = global %G__0x400670_type zeroinitializer

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

declare %struct.Memory* @sub_400520.DoDemoFpu1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400550 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400550, %struct.Memory** %MEMORY
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i11 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i11
  %27 = load i64, i64* %PC.i10
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i10
  store i64 %26, i64* %RBP.i12, align 8
  store %struct.Memory* %loadMem_400551, %struct.Memory** %MEMORY
  %loadMem_400554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i24 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i24
  %36 = load i64, i64* %PC.i23
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i23
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i24, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_400554, %struct.Memory** %MEMORY
  %loadMem_400558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i25
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i25
  store i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_400558, %struct.Memory** %MEMORY
  %loadMem_400562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i28
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i27
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i27
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400562, %struct.Memory** %MEMORY
  %loadMem_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %91 to i32*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i30
  %96 = sub i64 %95, 8
  %97 = load i32, i32* %EDI.i
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC.i29
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC.i29
  %101 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %101
  store %struct.Memory* %loadMem_400569, %struct.Memory** %MEMORY
  %loadMem_40056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 33
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RBP.i35
  %112 = sub i64 %111, 16
  %113 = load i64, i64* %RSI.i
  %114 = load i64, i64* %PC.i34
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC.i34
  %116 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %116
  store %struct.Memory* %loadMem_40056c, %struct.Memory** %MEMORY
  %loadMem_400570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %121 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %120, i32 0, i32 0
  %122 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %121, i64 0, i64 0
  %ST0.i37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %122, i32 0, i32 1
  %123 = load i64, i64* %PC.i36
  %124 = load i64, i64* %PC.i36
  %125 = add i64 %124, 6
  store i64 %125, i64* %PC.i36
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %127 = bitcast i32* %126 to i64*
  store i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52), i64* %127, align 16
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 261, i16* %128, align 2
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %130 = bitcast i32* %129 to i64*
  store i64 %123, i64* %130, align 8
  %131 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52) to float*)
  %132 = bitcast float %131 to i32
  %133 = and i32 %132, 2143289344
  %134 = icmp eq i32 %133, 2139095040
  %135 = and i32 %132, 4194303
  %136 = icmp ne i32 %135, 0
  %137 = and i1 %134, %136
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %140 = load i8, i8* %139, align 1
  %141 = or i8 %138, %140
  store i8 %141, i8* %139, align 1
  %142 = fcmp ueq float %131, 0.000000e+00
  br i1 %142, label %148, label %143

; <label>:143:                                    ; preds = %entry
  %144 = call float @llvm.fabs.f32(float %131)
  %145 = fcmp oeq float %144, 0x7FF0000000000000
  br i1 %145, label %148, label %146

; <label>:146:                                    ; preds = %143
  %147 = fcmp olt float %144, 0x3810000000000000
  br label %148

; <label>:148:                                    ; preds = %146, %143, %entry
  %149 = phi i1 [ false, %entry ], [ false, %143 ], [ %147, %146 ]
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %150, i8* %151, align 1
  %152 = fpext float %131 to double
  %153 = icmp eq i8 %141, 0
  br i1 %153, label %routine_flds_0xee__rip_.exit, label %154

; <label>:154:                                    ; preds = %148
  %155 = bitcast double %152 to i64
  %156 = or i64 %155, 2251799813685248
  %157 = bitcast i64 %156 to double
  br label %routine_flds_0xee__rip_.exit

routine_flds_0xee__rip_.exit:                     ; preds = %148, %154
  %158 = phi double [ %157, %154 ], [ %152, %148 ]
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %160 = bitcast double* %159 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %163 = bitcast double* %162 to i64*
  store i64 %161, i64* %163, align 8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %165 = bitcast double* %164 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %160, align 8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %168 = bitcast double* %167 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %165, align 8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %171 = bitcast double* %170 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %168, align 8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %174 = bitcast double* %173 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %171, align 8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %177 = bitcast double* %176 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %174, align 8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %180 = bitcast double* %179 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %177, align 8
  store double %158, double* %179, align 8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %183 = load i16, i16* %182, align 2
  %184 = add i16 %183, 14336
  %185 = and i16 %184, 14336
  %186 = and i16 %183, -14337
  %187 = or i16 %185, %186
  store i16 %187, i16* %182, align 2
  store %struct.Memory* %loadMem_400570, %struct.Memory** %MEMORY
  %loadMem_400576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %195 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %194, i32 0, i32 0
  %196 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %195, i64 0, i64 0
  %ST0.i40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %196, i32 0, i32 1
  %197 = load i64, i64* %RBP.i39
  %198 = sub i64 %197, 32
  %199 = load double, double* %ST0.i40
  %200 = load i64, i64* %PC.i38
  %201 = load i64, i64* %PC.i38
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC.i38
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %204 = bitcast i32* %203 to i64*
  store i64 %198, i64* %204, align 16
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %205, align 2
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %207 = bitcast i32* %206 to i64*
  store i64 %200, i64* %207, align 8
  %208 = fcmp ueq double %199, 0.000000e+00
  br i1 %208, label %routine_fstpt_MINUS0x20__rbp_.exit, label %209

; <label>:209:                                    ; preds = %routine_flds_0xee__rip_.exit
  %210 = call double @llvm.fabs.f64(double %199)
  %211 = fcmp oeq double %210, 0x7FF0000000000000
  br i1 %211, label %routine_fstpt_MINUS0x20__rbp_.exit, label %212

; <label>:212:                                    ; preds = %209
  %213 = fcmp olt double %210, 0x10000000000000
  br label %routine_fstpt_MINUS0x20__rbp_.exit

routine_fstpt_MINUS0x20__rbp_.exit:               ; preds = %routine_flds_0xee__rip_.exit, %209, %212
  %214 = phi i1 [ false, %routine_flds_0xee__rip_.exit ], [ false, %209 ], [ %213, %212 ]
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %215, i8* %216, align 1
  %217 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %218 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %217)
  %219 = lshr i32 %218, 5
  %220 = and i32 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = or i32 %223, %220
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %221, align 1
  %226 = lshr i32 %218, 3
  %227 = and i32 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = or i32 %230, %227
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %228, align 1
  %233 = lshr i32 %218, 4
  %234 = and i32 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = or i32 %237, %234
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %235, align 1
  %240 = and i32 %218, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = or i32 %243, %240
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %241, align 1
  %246 = lshr i32 %218, 2
  %247 = and i32 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = or i32 %250, %247
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %248, align 1
  %253 = inttoptr i64 %198 to x86_fp80*
  %254 = fpext double %199 to x86_fp80
  store x86_fp80 %254, x86_fp80* %253
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %256 = bitcast double* %255 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %259 = bitcast double* %258 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %256, align 8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %262 = bitcast double* %261 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %259, align 8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %265 = bitcast double* %264 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %262, align 8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %268 = bitcast double* %267 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %265, align 8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %271 = bitcast double* %270 to i64*
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %268, align 8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %274 = bitcast double* %273 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %271, align 8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %277 = bitcast double* %276 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %274, align 8
  store i64 %257, i64* %277, align 8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %280 = load i16, i16* %279, align 2
  %281 = add i16 %280, 2048
  %282 = and i16 %281, 14336
  %283 = and i16 %280, -14337
  %284 = or i16 %282, %283
  store i16 %284, i16* %279, align 2
  store %struct.Memory* %loadMem_400576, %struct.Memory** %MEMORY
  %loadMem_400579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %292 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %291, i32 0, i32 0
  %293 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %292, i64 0, i64 0
  %ST0.i43 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %293, i32 0, i32 1
  %294 = load i64, i64* %RBP.i42
  %295 = sub i64 %294, 32
  %296 = load i64, i64* %PC.i41
  %297 = load i64, i64* %PC.i41
  %298 = add i64 %297, 3
  store i64 %298, i64* %PC.i41
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %300 = bitcast i32* %299 to i64*
  store i64 %295, i64* %300, align 16
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %301, align 2
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %303 = bitcast i32* %302 to i64*
  store i64 %296, i64* %303, align 8
  %304 = inttoptr i64 %295 to x86_fp80*
  %305 = load x86_fp80, x86_fp80* %304
  %306 = fptrunc x86_fp80 %305 to double
  %307 = bitcast double %306 to i64
  %308 = and i64 %307, 9221120237041090560
  %309 = icmp eq i64 %308, 9218868437227405312
  %310 = and i64 %307, 2251799813685247
  %311 = icmp ne i64 %310, 0
  %312 = and i1 %309, %311
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %315 = load i8, i8* %314, align 1
  %316 = or i8 %313, %315
  store i8 %316, i8* %314, align 1
  %317 = fcmp ueq double %306, 0.000000e+00
  br i1 %317, label %routine_fldt_MINUS0x20__rbp_.exit, label %318

; <label>:318:                                    ; preds = %routine_fstpt_MINUS0x20__rbp_.exit
  %319 = call double @llvm.fabs.f64(double %306)
  %320 = fcmp oeq double %319, 0x7FF0000000000000
  br i1 %320, label %routine_fldt_MINUS0x20__rbp_.exit, label %321

; <label>:321:                                    ; preds = %318
  %322 = fcmp olt double %319, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit

routine_fldt_MINUS0x20__rbp_.exit:                ; preds = %routine_fstpt_MINUS0x20__rbp_.exit, %318, %321
  %323 = phi i1 [ false, %routine_fstpt_MINUS0x20__rbp_.exit ], [ false, %318 ], [ %322, %321 ]
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %324, i8* %325, align 1
  %326 = icmp eq i8 %316, 0
  %327 = or i64 %307, 2251799813685248
  %328 = bitcast i64 %327 to double
  %329 = select i1 %326, double %306, double %328
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %331 = bitcast double* %330 to i64*
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %334 = bitcast double* %333 to i64*
  store i64 %332, i64* %334, align 8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %336 = bitcast double* %335 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %331, align 8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %339 = bitcast double* %338 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %336, align 8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %342 = bitcast double* %341 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %339, align 8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %345 = bitcast double* %344 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %342, align 8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %348 = bitcast double* %347 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %345, align 8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %351 = bitcast double* %350 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %348, align 8
  store double %329, double* %350, align 8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %354 = load i16, i16* %353, align 2
  %355 = add i16 %354, 14336
  %356 = and i16 %355, 14336
  %357 = and i16 %354, -14337
  %358 = or i16 %356, %357
  store i16 %358, i16* %353, align 2
  store %struct.Memory* %loadMem_400579, %struct.Memory** %MEMORY
  %loadMem_40057c = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 9
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 13
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RSP.i46 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %RSP.i46
  %369 = load i64, i64* %PC.i44
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC.i44
  store i64 %368, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_40057c, %struct.Memory** %MEMORY
  %loadMem_40057f = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 9
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RSI.i48 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %378 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %377, i32 0, i32 0
  %379 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %378, i64 0, i64 0
  %ST0.i49 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %379, i32 0, i32 1
  %380 = load i64, i64* %RSI.i48
  %381 = load double, double* %ST0.i49
  %382 = load i64, i64* %PC.i47
  %383 = load i64, i64* %PC.i47
  %384 = add i64 %383, 2
  store i64 %384, i64* %PC.i47
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %386 = bitcast i32* %385 to i64*
  store i64 %380, i64* %386, align 16
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 830, i16* %387, align 2
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %389 = bitcast i32* %388 to i64*
  store i64 %382, i64* %389, align 8
  %390 = fcmp ueq double %381, 0.000000e+00
  br i1 %390, label %routine_fstpt___rsi_.exit, label %391

; <label>:391:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit
  %392 = call double @llvm.fabs.f64(double %381)
  %393 = fcmp oeq double %392, 0x7FF0000000000000
  br i1 %393, label %routine_fstpt___rsi_.exit, label %394

; <label>:394:                                    ; preds = %391
  %395 = fcmp olt double %392, 0x10000000000000
  br label %routine_fstpt___rsi_.exit

routine_fstpt___rsi_.exit:                        ; preds = %routine_fldt_MINUS0x20__rbp_.exit, %391, %394
  %396 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit ], [ false, %391 ], [ %395, %394 ]
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %397, i8* %398, align 1
  %399 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %400 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %399)
  %401 = lshr i32 %400, 5
  %402 = and i32 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = or i32 %405, %402
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %403, align 1
  %408 = lshr i32 %400, 3
  %409 = and i32 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = or i32 %412, %409
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %410, align 1
  %415 = lshr i32 %400, 4
  %416 = and i32 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = or i32 %419, %416
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %417, align 1
  %422 = and i32 %400, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = or i32 %425, %422
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %423, align 1
  %428 = lshr i32 %400, 2
  %429 = and i32 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = or i32 %432, %429
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %430, align 1
  %435 = inttoptr i64 %380 to x86_fp80*
  %436 = fpext double %381 to x86_fp80
  store x86_fp80 %436, x86_fp80* %435
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %438 = bitcast double* %437 to i64*
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %441 = bitcast double* %440 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %438, align 8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %444 = bitcast double* %443 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %441, align 8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %447 = bitcast double* %446 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %444, align 8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %450 = bitcast double* %449 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %447, align 8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %453 = bitcast double* %452 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %450, align 8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %456 = bitcast double* %455 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %453, align 8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %459 = bitcast double* %458 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %456, align 8
  store i64 %439, i64* %459, align 8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %462 = load i16, i16* %461, align 2
  %463 = add i16 %462, 2048
  %464 = and i16 %463, 14336
  %465 = and i16 %462, -14337
  %466 = or i16 %464, %465
  store i16 %466, i16* %461, align 2
  store %struct.Memory* %loadMem_40057f, %struct.Memory** %MEMORY
  %loadMem_400581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 15
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %RBP.i52
  %477 = sub i64 %476, 56
  %478 = load i64, i64* %RAX.i51
  %479 = load i64, i64* %PC.i50
  %480 = add i64 %479, 4
  store i64 %480, i64* %PC.i50
  %481 = inttoptr i64 %477 to i64*
  store i64 %478, i64* %481
  store %struct.Memory* %loadMem_400581, %struct.Memory** %MEMORY
  %loadMem1_400585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %484 to i64*
  %485 = load i64, i64* %PC.i53
  %486 = add i64 %485, -101
  %487 = load i64, i64* %PC.i53
  %488 = add i64 %487, 5
  %489 = load i64, i64* %PC.i53
  %490 = add i64 %489, 5
  store i64 %490, i64* %PC.i53
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %488, i64* %494
  store i64 %493, i64* %491, align 8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %486, i64* %495, align 8
  store %struct.Memory* %loadMem1_400585, %struct.Memory** %MEMORY
  %loadMem2_400585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400585 = load i64, i64* %3
  %call2_400585 = call %struct.Memory* @sub_400520.DoDemoFpu1(%struct.State* %0, i64 %loadPC_400585, %struct.Memory* %loadMem2_400585)
  store %struct.Memory* %call2_400585, %struct.Memory** %MEMORY
  %loadMem_40058a = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 15
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %503 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %502, i32 0, i32 0
  %504 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %503, i64 0, i64 0
  %ST0.i56 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %504, i32 0, i32 1
  %505 = load i64, i64* %RBP.i55
  %506 = sub i64 %505, 48
  %507 = load double, double* %ST0.i56
  %508 = load i64, i64* %PC.i54
  %509 = load i64, i64* %PC.i54
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC.i54
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %512 = bitcast i32* %511 to i64*
  store i64 %506, i64* %512, align 16
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %513, align 2
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %515 = bitcast i32* %514 to i64*
  store i64 %508, i64* %515, align 8
  %516 = fcmp ueq double %507, 0.000000e+00
  br i1 %516, label %routine_fstpt_MINUS0x30__rbp_.exit, label %517

; <label>:517:                                    ; preds = %routine_fstpt___rsi_.exit
  %518 = call double @llvm.fabs.f64(double %507)
  %519 = fcmp oeq double %518, 0x7FF0000000000000
  br i1 %519, label %routine_fstpt_MINUS0x30__rbp_.exit, label %520

; <label>:520:                                    ; preds = %517
  %521 = fcmp olt double %518, 0x10000000000000
  br label %routine_fstpt_MINUS0x30__rbp_.exit

routine_fstpt_MINUS0x30__rbp_.exit:               ; preds = %routine_fstpt___rsi_.exit, %517, %520
  %522 = phi i1 [ false, %routine_fstpt___rsi_.exit ], [ false, %517 ], [ %521, %520 ]
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %523, i8* %524, align 1
  %525 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %526 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %525)
  %527 = lshr i32 %526, 5
  %528 = and i32 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %530 = load i8, i8* %529, align 1
  %531 = zext i8 %530 to i32
  %532 = or i32 %531, %528
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %529, align 1
  %534 = lshr i32 %526, 3
  %535 = and i32 %534, 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %537 = load i8, i8* %536, align 1
  %538 = zext i8 %537 to i32
  %539 = or i32 %538, %535
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %536, align 1
  %541 = lshr i32 %526, 4
  %542 = and i32 %541, 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = or i32 %545, %542
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %543, align 1
  %548 = and i32 %526, 1
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i32
  %552 = or i32 %551, %548
  %553 = trunc i32 %552 to i8
  store i8 %553, i8* %549, align 1
  %554 = lshr i32 %526, 2
  %555 = and i32 %554, 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = or i32 %558, %555
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %556, align 1
  %561 = inttoptr i64 %506 to x86_fp80*
  %562 = fpext double %507 to x86_fp80
  store x86_fp80 %562, x86_fp80* %561
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %564 = bitcast double* %563 to i64*
  %565 = load i64, i64* %564, align 8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %567 = bitcast double* %566 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %564, align 8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %570 = bitcast double* %569 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %567, align 8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %573 = bitcast double* %572 to i64*
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* %570, align 8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %576 = bitcast double* %575 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %573, align 8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %579 = bitcast double* %578 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %576, align 8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %582 = bitcast double* %581 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %579, align 8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %585 = bitcast double* %584 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %582, align 8
  store i64 %565, i64* %585, align 8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %588 = load i16, i16* %587, align 2
  %589 = add i16 %588, 2048
  %590 = and i16 %589, 14336
  %591 = and i16 %588, -14337
  %592 = or i16 %590, %591
  store i16 %592, i16* %587, align 2
  store %struct.Memory* %loadMem_40058a, %struct.Memory** %MEMORY
  %loadMem_40058d = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 15
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %600 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %599, i32 0, i32 0
  %601 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %600, i64 0, i64 0
  %ST0.i59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %601, i32 0, i32 1
  %602 = load i64, i64* %RBP.i58
  %603 = sub i64 %602, 32
  %604 = load i64, i64* %PC.i57
  %605 = load i64, i64* %PC.i57
  %606 = add i64 %605, 3
  store i64 %606, i64* %PC.i57
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %608 = bitcast i32* %607 to i64*
  store i64 %603, i64* %608, align 16
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %609, align 2
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %611 = bitcast i32* %610 to i64*
  store i64 %604, i64* %611, align 8
  %612 = inttoptr i64 %603 to x86_fp80*
  %613 = load x86_fp80, x86_fp80* %612
  %614 = fptrunc x86_fp80 %613 to double
  %615 = bitcast double %614 to i64
  %616 = and i64 %615, 9221120237041090560
  %617 = icmp eq i64 %616, 9218868437227405312
  %618 = and i64 %615, 2251799813685247
  %619 = icmp ne i64 %618, 0
  %620 = and i1 %617, %619
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %623 = load i8, i8* %622, align 1
  %624 = or i8 %621, %623
  store i8 %624, i8* %622, align 1
  %625 = fcmp ueq double %614, 0.000000e+00
  br i1 %625, label %routine_fldt_MINUS0x20__rbp_.exit60, label %626

; <label>:626:                                    ; preds = %routine_fstpt_MINUS0x30__rbp_.exit
  %627 = call double @llvm.fabs.f64(double %614)
  %628 = fcmp oeq double %627, 0x7FF0000000000000
  br i1 %628, label %routine_fldt_MINUS0x20__rbp_.exit60, label %629

; <label>:629:                                    ; preds = %626
  %630 = fcmp olt double %627, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit60

routine_fldt_MINUS0x20__rbp_.exit60:              ; preds = %routine_fstpt_MINUS0x30__rbp_.exit, %626, %629
  %631 = phi i1 [ false, %routine_fstpt_MINUS0x30__rbp_.exit ], [ false, %626 ], [ %630, %629 ]
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %632, i8* %633, align 1
  %634 = icmp eq i8 %624, 0
  %635 = or i64 %615, 2251799813685248
  %636 = bitcast i64 %635 to double
  %637 = select i1 %634, double %614, double %636
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %639 = bitcast double* %638 to i64*
  %640 = load i64, i64* %639, align 8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %642 = bitcast double* %641 to i64*
  store i64 %640, i64* %642, align 8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %644 = bitcast double* %643 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %639, align 8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %647 = bitcast double* %646 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %644, align 8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %650 = bitcast double* %649 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %647, align 8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %653 = bitcast double* %652 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %650, align 8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %656 = bitcast double* %655 to i64*
  %657 = load i64, i64* %656, align 8
  store i64 %657, i64* %653, align 8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %659 = bitcast double* %658 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %656, align 8
  store double %637, double* %658, align 8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %662 = load i16, i16* %661, align 2
  %663 = add i16 %662, 14336
  %664 = and i16 %663, 14336
  %665 = and i16 %662, -14337
  %666 = or i16 %664, %665
  store i16 %666, i16* %661, align 2
  store %struct.Memory* %loadMem_40058d, %struct.Memory** %MEMORY
  %loadMem_400590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 15
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %674 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %673, i32 0, i32 0
  %675 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %674, i64 0, i64 0
  %ST0.i63 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %675, i32 0, i32 1
  %676 = load i64, i64* %RBP.i62
  %677 = sub i64 %676, 48
  %678 = load i64, i64* %PC.i61
  %679 = load i64, i64* %PC.i61
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC.i61
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %682 = bitcast i32* %681 to i64*
  store i64 %677, i64* %682, align 16
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %683, align 2
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %685 = bitcast i32* %684 to i64*
  store i64 %678, i64* %685, align 8
  %686 = inttoptr i64 %677 to x86_fp80*
  %687 = load x86_fp80, x86_fp80* %686
  %688 = fptrunc x86_fp80 %687 to double
  %689 = bitcast double %688 to i64
  %690 = and i64 %689, 9221120237041090560
  %691 = icmp eq i64 %690, 9218868437227405312
  %692 = and i64 %689, 2251799813685247
  %693 = icmp ne i64 %692, 0
  %694 = and i1 %691, %693
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %697 = load i8, i8* %696, align 1
  %698 = or i8 %695, %697
  store i8 %698, i8* %696, align 1
  %699 = fcmp ueq double %688, 0.000000e+00
  br i1 %699, label %routine_fldt_MINUS0x30__rbp_.exit, label %700

; <label>:700:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit60
  %701 = call double @llvm.fabs.f64(double %688)
  %702 = fcmp oeq double %701, 0x7FF0000000000000
  br i1 %702, label %routine_fldt_MINUS0x30__rbp_.exit, label %703

; <label>:703:                                    ; preds = %700
  %704 = fcmp olt double %701, 0x10000000000000
  br label %routine_fldt_MINUS0x30__rbp_.exit

routine_fldt_MINUS0x30__rbp_.exit:                ; preds = %routine_fldt_MINUS0x20__rbp_.exit60, %700, %703
  %705 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit60 ], [ false, %700 ], [ %704, %703 ]
  %706 = zext i1 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %706, i8* %707, align 1
  %708 = icmp eq i8 %698, 0
  %709 = or i64 %689, 2251799813685248
  %710 = bitcast i64 %709 to double
  %711 = select i1 %708, double %688, double %710
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %713 = bitcast double* %712 to i64*
  %714 = load i64, i64* %713, align 8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %716 = bitcast double* %715 to i64*
  store i64 %714, i64* %716, align 8
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %718 = bitcast double* %717 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %713, align 8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %721 = bitcast double* %720 to i64*
  %722 = load i64, i64* %721, align 8
  store i64 %722, i64* %718, align 8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %724 = bitcast double* %723 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %721, align 8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %727 = bitcast double* %726 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %724, align 8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %730 = bitcast double* %729 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %727, align 8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %733 = bitcast double* %732 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %730, align 8
  store double %711, double* %732, align 8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %736 = load i16, i16* %735, align 2
  %737 = add i16 %736, 14336
  %738 = and i16 %737, 14336
  %739 = and i16 %736, -14337
  %740 = or i16 %738, %739
  store i16 %740, i16* %735, align 2
  store %struct.Memory* %loadMem_400590, %struct.Memory** %MEMORY
  %loadMem_400593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 13
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RSP.i66 = bitcast %union.anon* %749 to i64*
  %750 = load i64, i64* %RSP.i66
  %751 = load i64, i64* %PC.i64
  %752 = add i64 %751, 3
  store i64 %752, i64* %PC.i64
  store i64 %750, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_400593, %struct.Memory** %MEMORY
  %loadMem_400596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %760 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %759, i32 0, i32 0
  %761 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %760, i64 0, i64 0
  %ST0.i33 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %761, i32 0, i32 1
  %762 = load i64, i64* %RAX.i32
  %763 = add i64 %762, 16
  %764 = load double, double* %ST0.i33
  %765 = load i64, i64* %PC.i31
  %766 = load i64, i64* %PC.i31
  %767 = add i64 %766, 3
  store i64 %767, i64* %PC.i31
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %769 = bitcast i32* %768 to i64*
  store i64 %763, i64* %769, align 16
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 888, i16* %770, align 2
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %772 = bitcast i32* %771 to i64*
  store i64 %765, i64* %772, align 8
  %773 = fcmp ueq double %764, 0.000000e+00
  br i1 %773, label %routine_fstpt_0x10__rax_.exit, label %774

; <label>:774:                                    ; preds = %routine_fldt_MINUS0x30__rbp_.exit
  %775 = call double @llvm.fabs.f64(double %764)
  %776 = fcmp oeq double %775, 0x7FF0000000000000
  br i1 %776, label %routine_fstpt_0x10__rax_.exit, label %777

; <label>:777:                                    ; preds = %774
  %778 = fcmp olt double %775, 0x10000000000000
  br label %routine_fstpt_0x10__rax_.exit

routine_fstpt_0x10__rax_.exit:                    ; preds = %routine_fldt_MINUS0x30__rbp_.exit, %774, %777
  %779 = phi i1 [ false, %routine_fldt_MINUS0x30__rbp_.exit ], [ false, %774 ], [ %778, %777 ]
  %780 = zext i1 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %780, i8* %781, align 1
  %782 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %783 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %782)
  %784 = lshr i32 %783, 5
  %785 = and i32 %784, 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  %789 = or i32 %788, %785
  %790 = trunc i32 %789 to i8
  store i8 %790, i8* %786, align 1
  %791 = lshr i32 %783, 3
  %792 = and i32 %791, 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %794 = load i8, i8* %793, align 1
  %795 = zext i8 %794 to i32
  %796 = or i32 %795, %792
  %797 = trunc i32 %796 to i8
  store i8 %797, i8* %793, align 1
  %798 = lshr i32 %783, 4
  %799 = and i32 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %801 = load i8, i8* %800, align 1
  %802 = zext i8 %801 to i32
  %803 = or i32 %802, %799
  %804 = trunc i32 %803 to i8
  store i8 %804, i8* %800, align 1
  %805 = and i32 %783, 1
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %807 = load i8, i8* %806, align 1
  %808 = zext i8 %807 to i32
  %809 = or i32 %808, %805
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %806, align 1
  %811 = lshr i32 %783, 2
  %812 = and i32 %811, 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %814 = load i8, i8* %813, align 1
  %815 = zext i8 %814 to i32
  %816 = or i32 %815, %812
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %813, align 1
  %818 = inttoptr i64 %763 to x86_fp80*
  %819 = fpext double %764 to x86_fp80
  store x86_fp80 %819, x86_fp80* %818
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %821 = bitcast double* %820 to i64*
  %822 = load i64, i64* %821, align 8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %824 = bitcast double* %823 to i64*
  %825 = load i64, i64* %824, align 8
  store i64 %825, i64* %821, align 8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %827 = bitcast double* %826 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %824, align 8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %830 = bitcast double* %829 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %827, align 8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %833 = bitcast double* %832 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %830, align 8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %836 = bitcast double* %835 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %833, align 8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %839 = bitcast double* %838 to i64*
  %840 = load i64, i64* %839, align 8
  store i64 %840, i64* %836, align 8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %842 = bitcast double* %841 to i64*
  %843 = load i64, i64* %842, align 8
  store i64 %843, i64* %839, align 8
  store i64 %822, i64* %842, align 8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %845 = load i16, i16* %844, align 2
  %846 = add i16 %845, 2048
  %847 = and i16 %846, 14336
  %848 = and i16 %845, -14337
  %849 = or i16 %847, %848
  store i16 %849, i16* %844, align 2
  store %struct.Memory* %loadMem_400596, %struct.Memory** %MEMORY
  %loadMem_400599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %857 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %856, i32 0, i32 0
  %858 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %857, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %858, i32 0, i32 1
  %859 = load i64, i64* %RAX.i22
  %860 = load double, double* %ST0.i
  %861 = load i64, i64* %PC.i21
  %862 = load i64, i64* %PC.i21
  %863 = add i64 %862, 2
  store i64 %863, i64* %PC.i21
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %865 = bitcast i32* %864 to i64*
  store i64 %859, i64* %865, align 16
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 824, i16* %866, align 2
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %868 = bitcast i32* %867 to i64*
  store i64 %861, i64* %868, align 8
  %869 = fcmp ueq double %860, 0.000000e+00
  br i1 %869, label %routine_fstpt___rax_.exit, label %870

; <label>:870:                                    ; preds = %routine_fstpt_0x10__rax_.exit
  %871 = call double @llvm.fabs.f64(double %860)
  %872 = fcmp oeq double %871, 0x7FF0000000000000
  br i1 %872, label %routine_fstpt___rax_.exit, label %873

; <label>:873:                                    ; preds = %870
  %874 = fcmp olt double %871, 0x10000000000000
  br label %routine_fstpt___rax_.exit

routine_fstpt___rax_.exit:                        ; preds = %routine_fstpt_0x10__rax_.exit, %870, %873
  %875 = phi i1 [ false, %routine_fstpt_0x10__rax_.exit ], [ false, %870 ], [ %874, %873 ]
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %876, i8* %877, align 1
  %878 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %879 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %878)
  %880 = lshr i32 %879, 5
  %881 = and i32 %880, 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = or i32 %884, %881
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %882, align 1
  %887 = lshr i32 %879, 3
  %888 = and i32 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %890 = load i8, i8* %889, align 1
  %891 = zext i8 %890 to i32
  %892 = or i32 %891, %888
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %889, align 1
  %894 = lshr i32 %879, 4
  %895 = and i32 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %897 = load i8, i8* %896, align 1
  %898 = zext i8 %897 to i32
  %899 = or i32 %898, %895
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %896, align 1
  %901 = and i32 %879, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %903 = load i8, i8* %902, align 1
  %904 = zext i8 %903 to i32
  %905 = or i32 %904, %901
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %902, align 1
  %907 = lshr i32 %879, 2
  %908 = and i32 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %910 = load i8, i8* %909, align 1
  %911 = zext i8 %910 to i32
  %912 = or i32 %911, %908
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %909, align 1
  %914 = inttoptr i64 %859 to x86_fp80*
  %915 = fpext double %860 to x86_fp80
  store x86_fp80 %915, x86_fp80* %914
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %917 = bitcast double* %916 to i64*
  %918 = load i64, i64* %917, align 8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %920 = bitcast double* %919 to i64*
  %921 = load i64, i64* %920, align 8
  store i64 %921, i64* %917, align 8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %923 = bitcast double* %922 to i64*
  %924 = load i64, i64* %923, align 8
  store i64 %924, i64* %920, align 8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %926 = bitcast double* %925 to i64*
  %927 = load i64, i64* %926, align 8
  store i64 %927, i64* %923, align 8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %929 = bitcast double* %928 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %926, align 8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %932 = bitcast double* %931 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %929, align 8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %935 = bitcast double* %934 to i64*
  %936 = load i64, i64* %935, align 8
  store i64 %936, i64* %932, align 8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %938 = bitcast double* %937 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %935, align 8
  store i64 %918, i64* %938, align 8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %941 = load i16, i16* %940, align 2
  %942 = add i16 %941, 2048
  %943 = and i16 %942, 14336
  %944 = and i16 %941, -14337
  %945 = or i16 %943, %944
  store i16 %945, i16* %940, align 2
  store %struct.Memory* %loadMem_400599, %struct.Memory** %MEMORY
  %loadMem_40059b = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 11
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %PC.i20
  %953 = add i64 %952, 5
  store i64 %953, i64* %PC.i20
  store i64 and (i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64 4294967295), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40059b, %struct.Memory** %MEMORY
  %loadMem_4005a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 5
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %ECX.i18 = bitcast %union.anon* %959 to i32*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 5
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RCX.i19
  %964 = load i32, i32* %ECX.i18
  %965 = zext i32 %964 to i64
  %966 = load i64, i64* %PC.i17
  %967 = add i64 %966, 2
  store i64 %967, i64* %PC.i17
  %968 = xor i64 %965, %963
  %969 = trunc i64 %968 to i32
  %970 = and i64 %968, 4294967295
  store i64 %970, i64* %RCX.i19, align 8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %971, align 1
  %972 = and i32 %969, 255
  %973 = call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %976, i8* %977, align 1
  %978 = icmp eq i32 %969, 0
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %979, i8* %980, align 1
  %981 = lshr i32 %969, 31
  %982 = trunc i32 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %984, align 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %985, align 1
  store %struct.Memory* %loadMem_4005a0, %struct.Memory** %MEMORY
  %loadMem_4005a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 5
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %992 = bitcast %union.anon* %991 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %992, i32 0, i32 0
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 7
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %996 = bitcast %union.anon* %995 to %struct.anon.2*
  %DL.i16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %996, i32 0, i32 0
  %997 = load i8, i8* %CL.i
  %998 = zext i8 %997 to i64
  %999 = load i64, i64* %PC.i15
  %1000 = add i64 %999, 2
  store i64 %1000, i64* %PC.i15
  store i8 %997, i8* %DL.i16, align 1
  store %struct.Memory* %loadMem_4005a2, %struct.Memory** %MEMORY
  %loadMem_4005a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 1
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %1007 = bitcast %union.anon* %1006 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1007, i32 0, i32 0
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 7
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %1011 = bitcast %union.anon* %1010 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1011, i32 0, i32 0
  %1012 = load i8, i8* %DL.i
  %1013 = zext i8 %1012 to i64
  %1014 = load i64, i64* %PC.i14
  %1015 = add i64 %1014, 2
  store i64 %1015, i64* %PC.i14
  store i8 %1012, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4005a4, %struct.Memory** %MEMORY
  %loadMem1_4005a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %PC.i13
  %1020 = add i64 %1019, -390
  %1021 = load i64, i64* %PC.i13
  %1022 = add i64 %1021, 5
  %1023 = load i64, i64* %PC.i13
  %1024 = add i64 %1023, 5
  store i64 %1024, i64* %PC.i13
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1026 = load i64, i64* %1025, align 8
  %1027 = add i64 %1026, -8
  %1028 = inttoptr i64 %1027 to i64*
  store i64 %1022, i64* %1028
  store i64 %1027, i64* %1025, align 8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1020, i64* %1029, align 8
  store %struct.Memory* %loadMem1_4005a6, %struct.Memory** %MEMORY
  %loadMem2_4005a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005a6 = load i64, i64* %3
  %1030 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4005a6)
  store %struct.Memory* %1030, %struct.Memory** %MEMORY
  %loadMem_4005ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 5
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %1036 to i32*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 5
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RCX.i
  %1041 = load i32, i32* %ECX.i9
  %1042 = zext i32 %1041 to i64
  %1043 = load i64, i64* %PC.i8
  %1044 = add i64 %1043, 2
  store i64 %1044, i64* %PC.i8
  %1045 = xor i64 %1042, %1040
  %1046 = trunc i64 %1045 to i32
  %1047 = and i64 %1045, 4294967295
  store i64 %1047, i64* %RCX.i, align 8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1048, align 1
  %1049 = and i32 %1046, 255
  %1050 = call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1053, i8* %1054, align 1
  %1055 = icmp eq i32 %1046, 0
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1056, i8* %1057, align 1
  %1058 = lshr i32 %1046, 31
  %1059 = trunc i32 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1059, i8* %1060, align 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1061, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1062, align 1
  store %struct.Memory* %loadMem_4005ab, %struct.Memory** %MEMORY
  %loadMem_4005ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1068 to i32*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RBP.i7
  %1073 = sub i64 %1072, 60
  %1074 = load i32, i32* %EAX.i
  %1075 = zext i32 %1074 to i64
  %1076 = load i64, i64* %PC.i6
  %1077 = add i64 %1076, 3
  store i64 %1077, i64* %PC.i6
  %1078 = inttoptr i64 %1073 to i32*
  store i32 %1074, i32* %1078
  store %struct.Memory* %loadMem_4005ad, %struct.Memory** %MEMORY
  %loadMem_4005b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 5
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1084 to i32*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1087 to i64*
  %1088 = load i32, i32* %ECX.i
  %1089 = zext i32 %1088 to i64
  %1090 = load i64, i64* %PC.i5
  %1091 = add i64 %1090, 2
  store i64 %1091, i64* %PC.i5
  %1092 = and i64 %1089, 4294967295
  store i64 %1092, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4005b0, %struct.Memory** %MEMORY
  %loadMem_4005b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 13
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %RSP.i
  %1100 = load i64, i64* %PC.i4
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC.i4
  %1102 = add i64 96, %1099
  store i64 %1102, i64* %RSP.i, align 8
  %1103 = icmp ult i64 %1102, %1099
  %1104 = icmp ult i64 %1102, 96
  %1105 = or i1 %1103, %1104
  %1106 = zext i1 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1106, i8* %1107, align 1
  %1108 = trunc i64 %1102 to i32
  %1109 = and i32 %1108, 255
  %1110 = call i32 @llvm.ctpop.i32(i32 %1109)
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = xor i8 %1112, 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1113, i8* %1114, align 1
  %1115 = xor i64 96, %1099
  %1116 = xor i64 %1115, %1102
  %1117 = lshr i64 %1116, 4
  %1118 = trunc i64 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1119, i8* %1120, align 1
  %1121 = icmp eq i64 %1102, 0
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1122, i8* %1123, align 1
  %1124 = lshr i64 %1102, 63
  %1125 = trunc i64 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1125, i8* %1126, align 1
  %1127 = lshr i64 %1099, 63
  %1128 = xor i64 %1124, %1127
  %1129 = add i64 %1128, %1124
  %1130 = icmp eq i64 %1129, 2
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1131, i8* %1132, align 1
  store %struct.Memory* %loadMem_4005b2, %struct.Memory** %MEMORY
  %loadMem_4005b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 15
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %PC.i2
  %1140 = add i64 %1139, 1
  store i64 %1140, i64* %PC.i2
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1142 = load i64, i64* %1141, align 8
  %1143 = add i64 %1142, 8
  %1144 = inttoptr i64 %1142 to i64*
  %1145 = load i64, i64* %1144
  store i64 %1145, i64* %RBP.i3, align 8
  store i64 %1143, i64* %1141, align 8
  store %struct.Memory* %loadMem_4005b6, %struct.Memory** %MEMORY
  %loadMem_4005b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1148 to i64*
  %1149 = load i64, i64* %PC.i1
  %1150 = add i64 %1149, 1
  store i64 %1150, i64* %PC.i1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1153 = load i64, i64* %1152, align 8
  %1154 = inttoptr i64 %1153 to i64*
  %1155 = load i64, i64* %1154
  store i64 %1155, i64* %1151, align 8
  %1156 = add i64 %1153, 8
  store i64 %1156, i64* %1152, align 8
  store %struct.Memory* %loadMem_4005b7, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4005b7
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__0x400670___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  store i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_flds_0xee__rip_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %6, i32 0, i32 0
  %8 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %7, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %8, i32 0, i32 1
  %9 = load i64, i64* %PC
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %13 = bitcast i32* %12 to i64*
  store i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52), i64* %13, align 16
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 261, i16* %14, align 2
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %16 = bitcast i32* %15 to i64*
  store i64 %9, i64* %16, align 8
  %17 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52) to float*)
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %26 = load i8, i8* %25, align 1
  %27 = or i8 %24, %26
  store i8 %27, i8* %25, align 1
  %28 = fcmp ueq float %17, 0.000000e+00
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = call float @llvm.fabs.f32(float %17)
  %31 = fcmp oeq float %30, 0x7FF0000000000000
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %29
  %33 = fcmp olt float %30, 0x3810000000000000
  br label %34

; <label>:34:                                     ; preds = %32, %29, %block_400488
  %35 = phi i1 [ false, %block_400488 ], [ false, %29 ], [ %33, %32 ]
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %36, i8* %37, align 1
  %38 = fpext float %17 to double
  %39 = icmp eq i8 %27, 0
  br i1 %39, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit, label %40

; <label>:40:                                     ; preds = %34
  %41 = bitcast double %38 to i64
  %42 = or i64 %41, 2251799813685248
  %43 = bitcast i64 %42 to double
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit: ; preds = %34, %40
  %44 = phi double [ %43, %40 ], [ %38, %34 ]
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %46 = bitcast double* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %49 = bitcast double* %48 to i64*
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %51 = bitcast double* %50 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %46, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %51, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  store double %44, double* %65, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %69 = load i16, i16* %68, align 2
  %70 = add i16 %69, 14336
  %71 = and i16 %70, 14336
  %72 = and i16 %69, -14337
  %73 = or i16 %71, %72
  store i16 %73, i16* %68, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %19 = bitcast i32* %18 to i64*
  store i64 %13, i64* %19, align 16
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %20, align 2
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %22 = bitcast i32* %21 to i64*
  store i64 %15, i64* %22, align 8
  %23 = fcmp ueq double %14, 0.000000e+00
  br i1 %23, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = call double @llvm.fabs.f64(double %14)
  %26 = fcmp oeq double %25, 0x7FF0000000000000
  br i1 %26, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %27

; <label>:27:                                     ; preds = %24
  %28 = fcmp olt double %25, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %24, %27
  %29 = phi i1 [ false, %block_400488 ], [ false, %24 ], [ %28, %27 ]
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %30, i8* %31, align 1
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %33 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %32)
  %34 = lshr i32 %33, 5
  %35 = and i32 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %35
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = lshr i32 %33, 3
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %42
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = lshr i32 %33, 4
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = and i32 %33, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %55
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = lshr i32 %33, 2
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  %68 = inttoptr i64 %13 to x86_fp80*
  %69 = fpext double %14 to x86_fp80
  store x86_fp80 %69, x86_fp80* %68
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %86 = bitcast double* %85 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %83, align 8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %89 = bitcast double* %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %86, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %89, align 8
  store i64 %72, i64* %92, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %95 = load i16, i16* %94, align 2
  %96 = add i16 %95, 2048
  %97 = and i16 %96, 14336
  %98 = and i16 %95, -14337
  %99 = or i16 %97, %98
  store i16 %99, i16* %94, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fldt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %13, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = inttoptr i64 %13 to x86_fp80*
  %23 = load x86_fp80, x86_fp80* %22
  %24 = fptrunc x86_fp80 %23 to double
  %25 = bitcast double %24 to i64
  %26 = and i64 %25, 9221120237041090560
  %27 = icmp eq i64 %26, 9218868437227405312
  %28 = and i64 %25, 2251799813685247
  %29 = icmp ne i64 %28, 0
  %30 = and i1 %27, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %33 = load i8, i8* %32, align 1
  %34 = or i8 %31, %33
  store i8 %34, i8* %32, align 1
  %35 = fcmp ueq double %24, 0.000000e+00
  br i1 %35, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %36

; <label>:36:                                     ; preds = %block_400488
  %37 = call double @llvm.fabs.f64(double %24)
  %38 = fcmp oeq double %37, 0x7FF0000000000000
  br i1 %38, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %39

; <label>:39:                                     ; preds = %36
  %40 = fcmp olt double %37, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %block_400488, %36, %39
  %41 = phi i1 [ false, %block_400488 ], [ false, %36 ], [ %40, %39 ]
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i8 %34, 0
  %45 = or i64 %25, 2251799813685248
  %46 = bitcast i64 %45 to double
  %47 = select i1 %44, double %24, double %46
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %49, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  store double %47, double* %68, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 14336
  %74 = and i16 %73, 14336
  %75 = and i16 %72, -14337
  %76 = or i16 %74, %75
  store i16 %76, i16* %71, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsp___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt___rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RSI
  %13 = load double, double* %ST0
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %12, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 830, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = fcmp ueq double %13, 0.000000e+00
  br i1 %22, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %23

; <label>:23:                                     ; preds = %block_400488
  %24 = call double @llvm.fabs.f64(double %13)
  %25 = fcmp oeq double %24, 0x7FF0000000000000
  br i1 %25, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %26

; <label>:26:                                     ; preds = %23
  %27 = fcmp olt double %24, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %23, %26
  %28 = phi i1 [ false, %block_400488 ], [ false, %23 ], [ %27, %26 ]
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %29, i8* %30, align 1
  %31 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %31)
  %33 = lshr i32 %32, 5
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %34
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = lshr i32 %32, 3
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %41
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = lshr i32 %32, 4
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %48
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  %54 = and i32 %32, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %54
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = lshr i32 %32, 2
  %61 = and i32 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %61
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  %67 = inttoptr i64 %12 to x86_fp80*
  %68 = fpext double %13 to x86_fp80
  store x86_fp80 %68, x86_fp80* %67
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %70 = bitcast double* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %73 = bitcast double* %72 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %70, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %76 = bitcast double* %75 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %73, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %79 = bitcast double* %78 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %76, align 8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %82 = bitcast double* %81 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %79, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %85 = bitcast double* %84 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %82, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %88 = bitcast double* %87 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %85, align 8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %91 = bitcast double* %90 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %88, align 8
  store i64 %71, i64* %91, align 8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %94 = load i16, i16* %93, align 2
  %95 = add i16 %94, 2048
  %96 = and i16 %95, 14336
  %97 = and i16 %94, -14337
  %98 = or i16 %96, %97
  store i16 %98, i16* %93, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.DoDemoFpu1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %19 = bitcast i32* %18 to i64*
  store i64 %13, i64* %19, align 16
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %20, align 2
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %22 = bitcast i32* %21 to i64*
  store i64 %15, i64* %22, align 8
  %23 = fcmp ueq double %14, 0.000000e+00
  br i1 %23, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = call double @llvm.fabs.f64(double %14)
  %26 = fcmp oeq double %25, 0x7FF0000000000000
  br i1 %26, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %27

; <label>:27:                                     ; preds = %24
  %28 = fcmp olt double %25, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %24, %27
  %29 = phi i1 [ false, %block_400488 ], [ false, %24 ], [ %28, %27 ]
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %30, i8* %31, align 1
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %33 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %32)
  %34 = lshr i32 %33, 5
  %35 = and i32 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %35
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = lshr i32 %33, 3
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %42
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = lshr i32 %33, 4
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = and i32 %33, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %55
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = lshr i32 %33, 2
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  %68 = inttoptr i64 %13 to x86_fp80*
  %69 = fpext double %14 to x86_fp80
  store x86_fp80 %69, x86_fp80* %68
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %86 = bitcast double* %85 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %83, align 8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %89 = bitcast double* %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %86, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %89, align 8
  store i64 %72, i64* %92, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %95 = load i16, i16* %94, align 2
  %96 = add i16 %95, 2048
  %97 = and i16 %96, 14336
  %98 = and i16 %95, -14337
  %99 = or i16 %97, %98
  store i16 %99, i16* %94, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fldt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %13, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = inttoptr i64 %13 to x86_fp80*
  %23 = load x86_fp80, x86_fp80* %22
  %24 = fptrunc x86_fp80 %23 to double
  %25 = bitcast double %24 to i64
  %26 = and i64 %25, 9221120237041090560
  %27 = icmp eq i64 %26, 9218868437227405312
  %28 = and i64 %25, 2251799813685247
  %29 = icmp ne i64 %28, 0
  %30 = and i1 %27, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %33 = load i8, i8* %32, align 1
  %34 = or i8 %31, %33
  store i8 %34, i8* %32, align 1
  %35 = fcmp ueq double %24, 0.000000e+00
  br i1 %35, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %36

; <label>:36:                                     ; preds = %block_400488
  %37 = call double @llvm.fabs.f64(double %24)
  %38 = fcmp oeq double %37, 0x7FF0000000000000
  br i1 %38, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %39

; <label>:39:                                     ; preds = %36
  %40 = fcmp olt double %37, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %block_400488, %36, %39
  %41 = phi i1 [ false, %block_400488 ], [ false, %36 ], [ %40, %39 ]
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i8 %34, 0
  %45 = or i64 %25, 2251799813685248
  %46 = bitcast i64 %45 to double
  %47 = select i1 %44, double %24, double %46
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %49, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  store double %47, double* %68, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 14336
  %74 = and i16 %73, 14336
  %75 = and i16 %72, -14337
  %76 = or i16 %74, %75
  store i16 %76, i16* %71, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsp___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %19 = bitcast i32* %18 to i64*
  store i64 %13, i64* %19, align 16
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 888, i16* %20, align 2
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %22 = bitcast i32* %21 to i64*
  store i64 %15, i64* %22, align 8
  %23 = fcmp ueq double %14, 0.000000e+00
  br i1 %23, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = call double @llvm.fabs.f64(double %14)
  %26 = fcmp oeq double %25, 0x7FF0000000000000
  br i1 %26, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %27

; <label>:27:                                     ; preds = %24
  %28 = fcmp olt double %25, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %24, %27
  %29 = phi i1 [ false, %block_400488 ], [ false, %24 ], [ %28, %27 ]
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %30, i8* %31, align 1
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %33 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %32)
  %34 = lshr i32 %33, 5
  %35 = and i32 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %35
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = lshr i32 %33, 3
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %42
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = lshr i32 %33, 4
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = and i32 %33, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %55
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = lshr i32 %33, 2
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  %68 = inttoptr i64 %13 to x86_fp80*
  %69 = fpext double %14 to x86_fp80
  store x86_fp80 %69, x86_fp80* %68
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %86 = bitcast double* %85 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %83, align 8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %89 = bitcast double* %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %86, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %89, align 8
  store i64 %72, i64* %92, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %95 = load i16, i16* %94, align 2
  %96 = add i16 %95, 2048
  %97 = and i16 %96, 14336
  %98 = and i16 %95, -14337
  %99 = or i16 %97, %98
  store i16 %99, i16* %94, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt___rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RAX
  %13 = load double, double* %ST0
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %12, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 824, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = fcmp ueq double %13, 0.000000e+00
  br i1 %22, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %23

; <label>:23:                                     ; preds = %block_400488
  %24 = call double @llvm.fabs.f64(double %13)
  %25 = fcmp oeq double %24, 0x7FF0000000000000
  br i1 %25, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %26

; <label>:26:                                     ; preds = %23
  %27 = fcmp olt double %24, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %23, %26
  %28 = phi i1 [ false, %block_400488 ], [ false, %23 ], [ %27, %26 ]
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %29, i8* %30, align 1
  %31 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %31)
  %33 = lshr i32 %32, 5
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %34
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = lshr i32 %32, 3
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %41
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = lshr i32 %32, 4
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %48
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  %54 = and i32 %32, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %54
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = lshr i32 %32, 2
  %61 = and i32 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %61
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  %67 = inttoptr i64 %12 to x86_fp80*
  %68 = fpext double %13 to x86_fp80
  store x86_fp80 %68, x86_fp80* %67
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %70 = bitcast double* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %73 = bitcast double* %72 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %70, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %76 = bitcast double* %75 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %73, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %79 = bitcast double* %78 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %76, align 8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %82 = bitcast double* %81 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %79, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %85 = bitcast double* %84 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %82, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %88 = bitcast double* %87 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %85, align 8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %91 = bitcast double* %90 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %88, align 8
  store i64 %71, i64* %91, align 8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %94 = load i16, i16* %93, align 2
  %95 = add i16 %94, 2048
  %96 = and i16 %95, 14336
  %97 = and i16 %94, -14337
  %98 = or i16 %96, %97
  store i16 %98, i16* %93, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__0x400670___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x400670_type* @G__0x400670 to i64), i64 4294967295), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movb__dl___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
