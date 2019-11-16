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
%G_0x1da32__rip__type = type <{ [4 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x1da32__rip_ = global %G_0x1da32__rip__type zeroinitializer

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

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_436d10.P7OptimalAccuracyTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_427e70.Score2Prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7FillOptimalAccuracy(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4365b0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4365b0, %struct.Memory** %MEMORY
  %loadMem_4365b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1327 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i1328 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1329 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i1328
  %27 = load i64, i64* %PC.i1327
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1327
  store i64 %26, i64* %RBP.i1329, align 8
  store %struct.Memory* %loadMem_4365b1, %struct.Memory** %MEMORY
  %loadMem_4365b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1325 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i1326 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i1326
  %36 = load i64, i64* %PC.i1325
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i1325
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i1326, align 8
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
  store %struct.Memory* %loadMem_4365b4, %struct.Memory** %MEMORY
  %loadMem_4365b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1323 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1324 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1324
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i1323
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i1323
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_4365b8, %struct.Memory** %MEMORY
  %loadMem_4365bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i1321 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i1322 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i1322
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i1321
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i1321
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_4365bb, %struct.Memory** %MEMORY
  %loadMem_4365be = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i1318 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RDX.i1319 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i1320 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i1320
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %RDX.i1319
  %111 = load i64, i64* %PC.i1318
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i1318
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_4365be, %struct.Memory** %MEMORY
  %loadMem_4365c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i1315 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RCX.i1316 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i1317 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i1317
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %RCX.i1316
  %126 = load i64, i64* %PC.i1315
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i1315
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_4365c2, %struct.Memory** %MEMORY
  %loadMem_4365c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i1312 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i1313 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 17
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %R8.i1314 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i1313
  %139 = sub i64 %138, 32
  %140 = load i64, i64* %R8.i1314
  %141 = load i64, i64* %PC.i1312
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i1312
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  store %struct.Memory* %loadMem_4365c6, %struct.Memory** %MEMORY
  %loadMem_4365ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i1309 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RCX.i1310 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i1311 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i1311
  %154 = sub i64 %153, 24
  %155 = load i64, i64* %PC.i1309
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC.i1309
  %157 = inttoptr i64 %154 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %RCX.i1310, align 8
  store %struct.Memory* %loadMem_4365ca, %struct.Memory** %MEMORY
  %loadMem_4365ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i1307 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RCX.i1308 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RCX.i1308
  %166 = load i64, i64* %PC.i1307
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i1307
  %168 = inttoptr i64 %165 to i64*
  %169 = load i64, i64* %168
  store i64 %169, i64* %RCX.i1308, align 8
  store %struct.Memory* %loadMem_4365ce, %struct.Memory** %MEMORY
  %loadMem_4365d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i1304 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RCX.i1305 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i1306 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RBP.i1306
  %180 = sub i64 %179, 48
  %181 = load i64, i64* %RCX.i1305
  %182 = load i64, i64* %PC.i1304
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC.i1304
  %184 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %184
  store %struct.Memory* %loadMem_4365d1, %struct.Memory** %MEMORY
  %loadMem_4365d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i1301 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RCX.i1302 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i1303 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i1303
  %195 = sub i64 %194, 24
  %196 = load i64, i64* %PC.i1301
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC.i1301
  %198 = inttoptr i64 %195 to i64*
  %199 = load i64, i64* %198
  store i64 %199, i64* %RCX.i1302, align 8
  store %struct.Memory* %loadMem_4365d5, %struct.Memory** %MEMORY
  %loadMem_4365d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i1299 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RCX.i1300 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %RCX.i1300
  %207 = add i64 %206, 8
  %208 = load i64, i64* %PC.i1299
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC.i1299
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %RCX.i1300, align 8
  store %struct.Memory* %loadMem_4365d9, %struct.Memory** %MEMORY
  %loadMem_4365dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i1296 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RCX.i1297 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i1298 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i1298
  %222 = sub i64 %221, 56
  %223 = load i64, i64* %RCX.i1297
  %224 = load i64, i64* %PC.i1296
  %225 = add i64 %224, 4
  store i64 %225, i64* %PC.i1296
  %226 = inttoptr i64 %222 to i64*
  store i64 %223, i64* %226
  store %struct.Memory* %loadMem_4365dd, %struct.Memory** %MEMORY
  %loadMem_4365e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i1293 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RCX.i1294 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i1295 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RBP.i1295
  %237 = sub i64 %236, 24
  %238 = load i64, i64* %PC.i1293
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC.i1293
  %240 = inttoptr i64 %237 to i64*
  %241 = load i64, i64* %240
  store i64 %241, i64* %RCX.i1294, align 8
  store %struct.Memory* %loadMem_4365e1, %struct.Memory** %MEMORY
  %loadMem_4365e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i1291 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RCX.i1292 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RCX.i1292
  %249 = add i64 %248, 16
  %250 = load i64, i64* %PC.i1291
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC.i1291
  %252 = inttoptr i64 %249 to i64*
  %253 = load i64, i64* %252
  store i64 %253, i64* %RCX.i1292, align 8
  store %struct.Memory* %loadMem_4365e5, %struct.Memory** %MEMORY
  %loadMem_4365e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i1288 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RCX.i1289 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 15
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RBP.i1290 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %RBP.i1290
  %264 = sub i64 %263, 64
  %265 = load i64, i64* %RCX.i1289
  %266 = load i64, i64* %PC.i1288
  %267 = add i64 %266, 4
  store i64 %267, i64* %PC.i1288
  %268 = inttoptr i64 %264 to i64*
  store i64 %265, i64* %268
  store %struct.Memory* %loadMem_4365e9, %struct.Memory** %MEMORY
  %loadMem_4365ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i1285 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RCX.i1286 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i1287 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RBP.i1287
  %279 = sub i64 %278, 24
  %280 = load i64, i64* %PC.i1285
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC.i1285
  %282 = inttoptr i64 %279 to i64*
  %283 = load i64, i64* %282
  store i64 %283, i64* %RCX.i1286, align 8
  store %struct.Memory* %loadMem_4365ed, %struct.Memory** %MEMORY
  %loadMem_4365f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i1283 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RCX.i1284 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RCX.i1284
  %291 = add i64 %290, 24
  %292 = load i64, i64* %PC.i1283
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC.i1283
  %294 = inttoptr i64 %291 to i64*
  %295 = load i64, i64* %294
  store i64 %295, i64* %RCX.i1284, align 8
  store %struct.Memory* %loadMem_4365f1, %struct.Memory** %MEMORY
  %loadMem_4365f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i1280 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RCX.i1281 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 15
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RBP.i1282 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %RBP.i1282
  %306 = sub i64 %305, 72
  %307 = load i64, i64* %RCX.i1281
  %308 = load i64, i64* %PC.i1280
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC.i1280
  %310 = inttoptr i64 %306 to i64*
  store i64 %307, i64* %310
  store %struct.Memory* %loadMem_4365f5, %struct.Memory** %MEMORY
  %loadMem_4365f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i1277 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RCX.i1278 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RBP.i1279 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RBP.i1279
  %321 = sub i64 %320, 48
  %322 = load i64, i64* %PC.i1277
  %323 = add i64 %322, 4
  store i64 %323, i64* %PC.i1277
  %324 = inttoptr i64 %321 to i64*
  %325 = load i64, i64* %324
  store i64 %325, i64* %RCX.i1278, align 8
  store %struct.Memory* %loadMem_4365f9, %struct.Memory** %MEMORY
  %loadMem_4365fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i1275 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RCX.i1276 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %RCX.i1276
  %333 = load i64, i64* %PC.i1275
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC.i1275
  %335 = inttoptr i64 %332 to i64*
  %336 = load i64, i64* %335
  store i64 %336, i64* %RCX.i1276, align 8
  store %struct.Memory* %loadMem_4365fd, %struct.Memory** %MEMORY
  %loadMem_436600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i1273 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RCX.i1274 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %RCX.i1274
  %344 = add i64 %343, 12
  %345 = load i64, i64* %PC.i1273
  %346 = add i64 %345, 7
  store i64 %346, i64* %PC.i1273
  %347 = inttoptr i64 %344 to i32*
  store i32 -987654321, i32* %347
  store %struct.Memory* %loadMem_436600, %struct.Memory** %MEMORY
  %loadMem_436607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i1270 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RCX.i1271 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 15
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RBP.i1272 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %RBP.i1272
  %358 = sub i64 %357, 48
  %359 = load i64, i64* %PC.i1270
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC.i1270
  %361 = inttoptr i64 %358 to i64*
  %362 = load i64, i64* %361
  store i64 %362, i64* %RCX.i1271, align 8
  store %struct.Memory* %loadMem_436607, %struct.Memory** %MEMORY
  %loadMem_43660b = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i1268 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RCX.i1269 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RCX.i1269
  %370 = load i64, i64* %PC.i1268
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC.i1268
  %372 = inttoptr i64 %369 to i64*
  %373 = load i64, i64* %372
  store i64 %373, i64* %RCX.i1269, align 8
  store %struct.Memory* %loadMem_43660b, %struct.Memory** %MEMORY
  %loadMem_43660e = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i1266 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i1267 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %RCX.i1267
  %381 = add i64 %380, 8
  %382 = load i64, i64* %PC.i1266
  %383 = add i64 %382, 7
  store i64 %383, i64* %PC.i1266
  %384 = inttoptr i64 %381 to i32*
  store i32 -987654321, i32* %384
  store %struct.Memory* %loadMem_43660e, %struct.Memory** %MEMORY
  %loadMem_436615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i1263 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RCX.i1264 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i1265 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RBP.i1265
  %395 = sub i64 %394, 48
  %396 = load i64, i64* %PC.i1263
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i1263
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398
  store i64 %399, i64* %RCX.i1264, align 8
  store %struct.Memory* %loadMem_436615, %struct.Memory** %MEMORY
  %loadMem_436619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i1261 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RCX.i1262 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RCX.i1262
  %407 = load i64, i64* %PC.i1261
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC.i1261
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409
  store i64 %410, i64* %RCX.i1262, align 8
  store %struct.Memory* %loadMem_436619, %struct.Memory** %MEMORY
  %loadMem_43661c = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i1259 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RCX.i1260 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RCX.i1260
  %418 = add i64 %417, 4
  %419 = load i64, i64* %PC.i1259
  %420 = add i64 %419, 7
  store i64 %420, i64* %PC.i1259
  %421 = inttoptr i64 %418 to i32*
  store i32 -987654321, i32* %421
  store %struct.Memory* %loadMem_43661c, %struct.Memory** %MEMORY
  %loadMem_436623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i1256 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RCX.i1257 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 15
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RBP.i1258 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RBP.i1258
  %432 = sub i64 %431, 48
  %433 = load i64, i64* %PC.i1256
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC.i1256
  %435 = inttoptr i64 %432 to i64*
  %436 = load i64, i64* %435
  store i64 %436, i64* %RCX.i1257, align 8
  store %struct.Memory* %loadMem_436623, %struct.Memory** %MEMORY
  %loadMem_436627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i1254 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 5
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RCX.i1255 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RCX.i1255
  %444 = load i64, i64* %PC.i1254
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC.i1254
  %446 = inttoptr i64 %443 to i64*
  %447 = load i64, i64* %446
  store i64 %447, i64* %RCX.i1255, align 8
  store %struct.Memory* %loadMem_436627, %struct.Memory** %MEMORY
  %loadMem_43662a = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i1252 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RCX.i1253 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RCX.i1253
  %455 = load i64, i64* %PC.i1252
  %456 = add i64 %455, 6
  store i64 %456, i64* %PC.i1252
  %457 = inttoptr i64 %454 to i32*
  store i32 -987654321, i32* %457
  store %struct.Memory* %loadMem_43662a, %struct.Memory** %MEMORY
  %loadMem_436630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i1249 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 5
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RCX.i1250 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 15
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RBP.i1251 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %RBP.i1251
  %468 = sub i64 %467, 48
  %469 = load i64, i64* %PC.i1249
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC.i1249
  %471 = inttoptr i64 %468 to i64*
  %472 = load i64, i64* %471
  store i64 %472, i64* %RCX.i1250, align 8
  store %struct.Memory* %loadMem_436630, %struct.Memory** %MEMORY
  %loadMem_436634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i1247 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RCX.i1248 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RCX.i1248
  %480 = load i64, i64* %PC.i1247
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC.i1247
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482
  store i64 %483, i64* %RCX.i1248, align 8
  store %struct.Memory* %loadMem_436634, %struct.Memory** %MEMORY
  %loadMem_436637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i1245 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 5
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RCX.i1246 = bitcast %union.anon* %489 to i64*
  %490 = load i64, i64* %RCX.i1246
  %491 = add i64 %490, 16
  %492 = load i64, i64* %PC.i1245
  %493 = add i64 %492, 7
  store i64 %493, i64* %PC.i1245
  %494 = inttoptr i64 %491 to i32*
  store i32 -987654321, i32* %494
  store %struct.Memory* %loadMem_436637, %struct.Memory** %MEMORY
  %loadMem_43663e = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i1243 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i1244 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i1244
  %502 = sub i64 %501, 80
  %503 = load i64, i64* %PC.i1243
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC.i1243
  %505 = inttoptr i64 %502 to i32*
  store i32 0, i32* %505
  store %struct.Memory* %loadMem_43663e, %struct.Memory** %MEMORY
  br label %block_.L_436645

block_.L_436645:                                  ; preds = %block_436651, %entry
  %loadMem_436645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i1240 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RAX.i1241 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 15
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RBP.i1242 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RBP.i1242
  %516 = sub i64 %515, 80
  %517 = load i64, i64* %PC.i1240
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i1240
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RAX.i1241, align 8
  store %struct.Memory* %loadMem_436645, %struct.Memory** %MEMORY
  %loadMem_436648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i1237 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %EAX.i1238 = bitcast %union.anon* %527 to i32*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 15
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RBP.i1239 = bitcast %union.anon* %530 to i64*
  %531 = load i32, i32* %EAX.i1238
  %532 = zext i32 %531 to i64
  %533 = load i64, i64* %RBP.i1239
  %534 = sub i64 %533, 8
  %535 = load i64, i64* %PC.i1237
  %536 = add i64 %535, 3
  store i64 %536, i64* %PC.i1237
  %537 = inttoptr i64 %534 to i32*
  %538 = load i32, i32* %537
  %539 = sub i32 %531, %538
  %540 = icmp ult i32 %531, %538
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %541, i8* %542, align 1
  %543 = and i32 %539, 255
  %544 = call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %547, i8* %548, align 1
  %549 = xor i32 %538, %531
  %550 = xor i32 %549, %539
  %551 = lshr i32 %550, 4
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %553, i8* %554, align 1
  %555 = icmp eq i32 %539, 0
  %556 = zext i1 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %556, i8* %557, align 1
  %558 = lshr i32 %539, 31
  %559 = trunc i32 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %559, i8* %560, align 1
  %561 = lshr i32 %531, 31
  %562 = lshr i32 %538, 31
  %563 = xor i32 %562, %561
  %564 = xor i32 %558, %561
  %565 = add i32 %564, %563
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %567, i8* %568, align 1
  store %struct.Memory* %loadMem_436648, %struct.Memory** %MEMORY
  %loadMem_43664b = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i1236 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %PC.i1236
  %573 = add i64 %572, 74
  %574 = load i64, i64* %PC.i1236
  %575 = add i64 %574, 6
  %576 = load i64, i64* %PC.i1236
  %577 = add i64 %576, 6
  store i64 %577, i64* %PC.i1236
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %579 = load i8, i8* %578, align 1
  %580 = icmp eq i8 %579, 0
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %582 = load i8, i8* %581, align 1
  %583 = icmp ne i8 %582, 0
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %585 = load i8, i8* %584, align 1
  %586 = icmp ne i8 %585, 0
  %587 = xor i1 %583, %586
  %588 = xor i1 %587, true
  %589 = and i1 %580, %588
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %BRANCH_TAKEN, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %592 = select i1 %589, i64 %573, i64 %575
  store i64 %592, i64* %591, align 8
  store %struct.Memory* %loadMem_43664b, %struct.Memory** %MEMORY
  %loadBr_43664b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43664b = icmp eq i8 %loadBr_43664b, 1
  br i1 %cmpBr_43664b, label %block_.L_436695, label %block_436651

block_436651:                                     ; preds = %block_.L_436645
  %loadMem_436651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i1233 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RAX.i1234 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 15
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RBP.i1235 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RBP.i1235
  %603 = sub i64 %602, 72
  %604 = load i64, i64* %PC.i1233
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC.i1233
  %606 = inttoptr i64 %603 to i64*
  %607 = load i64, i64* %606
  store i64 %607, i64* %RAX.i1234, align 8
  store %struct.Memory* %loadMem_436651, %struct.Memory** %MEMORY
  %loadMem_436655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i1231 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RAX.i1232 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %RAX.i1232
  %615 = load i64, i64* %PC.i1231
  %616 = add i64 %615, 3
  store i64 %616, i64* %PC.i1231
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RAX.i1232, align 8
  store %struct.Memory* %loadMem_436655, %struct.Memory** %MEMORY
  %loadMem_436658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i1228 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 5
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RCX.i1229 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 15
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RBP.i1230 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %RBP.i1230
  %629 = sub i64 %628, 80
  %630 = load i64, i64* %PC.i1228
  %631 = add i64 %630, 4
  store i64 %631, i64* %PC.i1228
  %632 = inttoptr i64 %629 to i32*
  %633 = load i32, i32* %632
  %634 = sext i32 %633 to i64
  store i64 %634, i64* %RCX.i1229, align 8
  store %struct.Memory* %loadMem_436658, %struct.Memory** %MEMORY
  %loadMem_43665c = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i1225 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RAX.i1226 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 5
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %RCX.i1227 = bitcast %union.anon* %643 to i64*
  %644 = load i64, i64* %RAX.i1226
  %645 = load i64, i64* %RCX.i1227
  %646 = mul i64 %645, 4
  %647 = add i64 %646, %644
  %648 = load i64, i64* %PC.i1225
  %649 = add i64 %648, 7
  store i64 %649, i64* %PC.i1225
  %650 = inttoptr i64 %647 to i32*
  store i32 -987654321, i32* %650
  store %struct.Memory* %loadMem_43665c, %struct.Memory** %MEMORY
  %loadMem_436663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i1222 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RAX.i1223 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 15
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RBP.i1224 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RBP.i1224
  %661 = sub i64 %660, 64
  %662 = load i64, i64* %PC.i1222
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC.i1222
  %664 = inttoptr i64 %661 to i64*
  %665 = load i64, i64* %664
  store i64 %665, i64* %RAX.i1223, align 8
  store %struct.Memory* %loadMem_436663, %struct.Memory** %MEMORY
  %loadMem_436667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i1220 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 1
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RAX.i1221 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %RAX.i1221
  %673 = load i64, i64* %PC.i1220
  %674 = add i64 %673, 3
  store i64 %674, i64* %PC.i1220
  %675 = inttoptr i64 %672 to i64*
  %676 = load i64, i64* %675
  store i64 %676, i64* %RAX.i1221, align 8
  store %struct.Memory* %loadMem_436667, %struct.Memory** %MEMORY
  %loadMem_43666a = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i1217 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 5
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RCX.i1218 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 15
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RBP.i1219 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %RBP.i1219
  %687 = sub i64 %686, 80
  %688 = load i64, i64* %PC.i1217
  %689 = add i64 %688, 4
  store i64 %689, i64* %PC.i1217
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690
  %692 = sext i32 %691 to i64
  store i64 %692, i64* %RCX.i1218, align 8
  store %struct.Memory* %loadMem_43666a, %struct.Memory** %MEMORY
  %loadMem_43666e = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i1214 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 1
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RAX.i1215 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 5
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RCX.i1216 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %RAX.i1215
  %703 = load i64, i64* %RCX.i1216
  %704 = mul i64 %703, 4
  %705 = add i64 %704, %702
  %706 = load i64, i64* %PC.i1214
  %707 = add i64 %706, 7
  store i64 %707, i64* %PC.i1214
  %708 = inttoptr i64 %705 to i32*
  store i32 -987654321, i32* %708
  store %struct.Memory* %loadMem_43666e, %struct.Memory** %MEMORY
  %loadMem_436675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i1211 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i1212 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i1213 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i1213
  %719 = sub i64 %718, 56
  %720 = load i64, i64* %PC.i1211
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i1211
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RAX.i1212, align 8
  store %struct.Memory* %loadMem_436675, %struct.Memory** %MEMORY
  %loadMem_436679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i1209 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RAX.i1210 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RAX.i1210
  %731 = load i64, i64* %PC.i1209
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC.i1209
  %733 = inttoptr i64 %730 to i64*
  %734 = load i64, i64* %733
  store i64 %734, i64* %RAX.i1210, align 8
  store %struct.Memory* %loadMem_436679, %struct.Memory** %MEMORY
  %loadMem_43667c = load %struct.Memory*, %struct.Memory** %MEMORY
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 33
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %PC.i1206 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 5
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RCX.i1207 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 15
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RBP.i1208 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %RBP.i1208
  %745 = sub i64 %744, 80
  %746 = load i64, i64* %PC.i1206
  %747 = add i64 %746, 4
  store i64 %747, i64* %PC.i1206
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748
  %750 = sext i32 %749 to i64
  store i64 %750, i64* %RCX.i1207, align 8
  store %struct.Memory* %loadMem_43667c, %struct.Memory** %MEMORY
  %loadMem_436680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i1203 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 1
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RAX.i1204 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 5
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RCX.i1205 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RAX.i1204
  %761 = load i64, i64* %RCX.i1205
  %762 = mul i64 %761, 4
  %763 = add i64 %762, %760
  %764 = load i64, i64* %PC.i1203
  %765 = add i64 %764, 7
  store i64 %765, i64* %PC.i1203
  %766 = inttoptr i64 %763 to i32*
  store i32 -987654321, i32* %766
  store %struct.Memory* %loadMem_436680, %struct.Memory** %MEMORY
  %loadMem_436687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i1200 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 1
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RAX.i1201 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 15
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RBP.i1202 = bitcast %union.anon* %775 to i64*
  %776 = load i64, i64* %RBP.i1202
  %777 = sub i64 %776, 80
  %778 = load i64, i64* %PC.i1200
  %779 = add i64 %778, 3
  store i64 %779, i64* %PC.i1200
  %780 = inttoptr i64 %777 to i32*
  %781 = load i32, i32* %780
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RAX.i1201, align 8
  store %struct.Memory* %loadMem_436687, %struct.Memory** %MEMORY
  %loadMem_43668a = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i1198 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 1
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RAX.i1199 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %RAX.i1199
  %790 = load i64, i64* %PC.i1198
  %791 = add i64 %790, 3
  store i64 %791, i64* %PC.i1198
  %792 = trunc i64 %789 to i32
  %793 = add i32 1, %792
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i1199, align 8
  %795 = icmp ult i32 %793, %792
  %796 = icmp ult i32 %793, 1
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %798, i8* %799, align 1
  %800 = and i32 %793, 255
  %801 = call i32 @llvm.ctpop.i32(i32 %800)
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %804, i8* %805, align 1
  %806 = xor i64 1, %789
  %807 = trunc i64 %806 to i32
  %808 = xor i32 %807, %793
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %811, i8* %812, align 1
  %813 = icmp eq i32 %793, 0
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %814, i8* %815, align 1
  %816 = lshr i32 %793, 31
  %817 = trunc i32 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %817, i8* %818, align 1
  %819 = lshr i32 %792, 31
  %820 = xor i32 %816, %819
  %821 = add i32 %820, %816
  %822 = icmp eq i32 %821, 2
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %823, i8* %824, align 1
  store %struct.Memory* %loadMem_43668a, %struct.Memory** %MEMORY
  %loadMem_43668d = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i1195 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 1
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %EAX.i1196 = bitcast %union.anon* %830 to i32*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 15
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RBP.i1197 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %RBP.i1197
  %835 = sub i64 %834, 80
  %836 = load i32, i32* %EAX.i1196
  %837 = zext i32 %836 to i64
  %838 = load i64, i64* %PC.i1195
  %839 = add i64 %838, 3
  store i64 %839, i64* %PC.i1195
  %840 = inttoptr i64 %835 to i32*
  store i32 %836, i32* %840
  store %struct.Memory* %loadMem_43668d, %struct.Memory** %MEMORY
  %loadMem_436690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i1194 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %PC.i1194
  %845 = add i64 %844, -75
  %846 = load i64, i64* %PC.i1194
  %847 = add i64 %846, 5
  store i64 %847, i64* %PC.i1194
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %845, i64* %848, align 8
  store %struct.Memory* %loadMem_436690, %struct.Memory** %MEMORY
  br label %block_.L_436645

block_.L_436695:                                  ; preds = %block_.L_436645
  %loadMem_436695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i1192 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i1193 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RBP.i1193
  %856 = sub i64 %855, 76
  %857 = load i64, i64* %PC.i1192
  %858 = add i64 %857, 7
  store i64 %858, i64* %PC.i1192
  %859 = inttoptr i64 %856 to i32*
  store i32 1, i32* %859
  store %struct.Memory* %loadMem_436695, %struct.Memory** %MEMORY
  br label %block_.L_43669c

block_.L_43669c:                                  ; preds = %block_.L_436ca1, %block_.L_436695
  %loadMem_43669c = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i1189 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RAX.i1190 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i1191 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RBP.i1191
  %870 = sub i64 %869, 76
  %871 = load i64, i64* %PC.i1189
  %872 = add i64 %871, 3
  store i64 %872, i64* %PC.i1189
  %873 = inttoptr i64 %870 to i32*
  %874 = load i32, i32* %873
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RAX.i1190, align 8
  store %struct.Memory* %loadMem_43669c, %struct.Memory** %MEMORY
  %loadMem_43669f = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i1186 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %EAX.i1187 = bitcast %union.anon* %881 to i32*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i1188 = bitcast %union.anon* %884 to i64*
  %885 = load i32, i32* %EAX.i1187
  %886 = zext i32 %885 to i64
  %887 = load i64, i64* %RBP.i1188
  %888 = sub i64 %887, 4
  %889 = load i64, i64* %PC.i1186
  %890 = add i64 %889, 3
  store i64 %890, i64* %PC.i1186
  %891 = inttoptr i64 %888 to i32*
  %892 = load i32, i32* %891
  %893 = sub i32 %885, %892
  %894 = icmp ult i32 %885, %892
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %895, i8* %896, align 1
  %897 = and i32 %893, 255
  %898 = call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %901, i8* %902, align 1
  %903 = xor i32 %892, %885
  %904 = xor i32 %903, %893
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %907, i8* %908, align 1
  %909 = icmp eq i32 %893, 0
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %910, i8* %911, align 1
  %912 = lshr i32 %893, 31
  %913 = trunc i32 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %913, i8* %914, align 1
  %915 = lshr i32 %885, 31
  %916 = lshr i32 %892, 31
  %917 = xor i32 %916, %915
  %918 = xor i32 %912, %915
  %919 = add i32 %918, %917
  %920 = icmp eq i32 %919, 2
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %921, i8* %922, align 1
  store %struct.Memory* %loadMem_43669f, %struct.Memory** %MEMORY
  %loadMem_4366a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i1185 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %PC.i1185
  %927 = add i64 %926, 1549
  %928 = load i64, i64* %PC.i1185
  %929 = add i64 %928, 6
  %930 = load i64, i64* %PC.i1185
  %931 = add i64 %930, 6
  store i64 %931, i64* %PC.i1185
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %933 = load i8, i8* %932, align 1
  %934 = icmp eq i8 %933, 0
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %936 = load i8, i8* %935, align 1
  %937 = icmp ne i8 %936, 0
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %939 = load i8, i8* %938, align 1
  %940 = icmp ne i8 %939, 0
  %941 = xor i1 %937, %940
  %942 = xor i1 %941, true
  %943 = and i1 %934, %942
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %BRANCH_TAKEN, align 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %946 = select i1 %943, i64 %927, i64 %929
  store i64 %946, i64* %945, align 8
  store %struct.Memory* %loadMem_4366a2, %struct.Memory** %MEMORY
  %loadBr_4366a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4366a2 = icmp eq i8 %loadBr_4366a2, 1
  br i1 %cmpBr_4366a2, label %block_.L_436caf, label %block_4366a8

block_4366a8:                                     ; preds = %block_.L_43669c
  %loadMem_4366a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i1182 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 1
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RAX.i1183 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 15
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RBP.i1184 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %RBP.i1184
  %957 = sub i64 %956, 72
  %958 = load i64, i64* %PC.i1182
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC.i1182
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960
  store i64 %961, i64* %RAX.i1183, align 8
  store %struct.Memory* %loadMem_4366a8, %struct.Memory** %MEMORY
  %loadMem_4366ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i1179 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 5
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RCX.i1180 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i1181 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i1181
  %972 = sub i64 %971, 76
  %973 = load i64, i64* %PC.i1179
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC.i1179
  %975 = inttoptr i64 %972 to i32*
  %976 = load i32, i32* %975
  %977 = sext i32 %976 to i64
  store i64 %977, i64* %RCX.i1180, align 8
  store %struct.Memory* %loadMem_4366ac, %struct.Memory** %MEMORY
  %loadMem_4366b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i1176 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 1
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RAX.i1177 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 5
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RCX.i1178 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RAX.i1177
  %988 = load i64, i64* %RCX.i1178
  %989 = mul i64 %988, 8
  %990 = add i64 %989, %987
  %991 = load i64, i64* %PC.i1176
  %992 = add i64 %991, 4
  store i64 %992, i64* %PC.i1176
  %993 = inttoptr i64 %990 to i64*
  %994 = load i64, i64* %993
  store i64 %994, i64* %RAX.i1177, align 8
  store %struct.Memory* %loadMem_4366b0, %struct.Memory** %MEMORY
  %loadMem_4366b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i1174 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 1
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RAX.i1175 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RAX.i1175
  %1002 = load i64, i64* %PC.i1174
  %1003 = add i64 %1002, 6
  store i64 %1003, i64* %PC.i1174
  %1004 = inttoptr i64 %1001 to i32*
  store i32 -987654321, i32* %1004
  store %struct.Memory* %loadMem_4366b4, %struct.Memory** %MEMORY
  %loadMem_4366ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i1171 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RAX.i1172 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 15
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RBP.i1173 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %RBP.i1173
  %1015 = sub i64 %1014, 64
  %1016 = load i64, i64* %PC.i1171
  %1017 = add i64 %1016, 4
  store i64 %1017, i64* %PC.i1171
  %1018 = inttoptr i64 %1015 to i64*
  %1019 = load i64, i64* %1018
  store i64 %1019, i64* %RAX.i1172, align 8
  store %struct.Memory* %loadMem_4366ba, %struct.Memory** %MEMORY
  %loadMem_4366be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i1168 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 5
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RCX.i1169 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 15
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RBP.i1170 = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %RBP.i1170
  %1030 = sub i64 %1029, 76
  %1031 = load i64, i64* %PC.i1168
  %1032 = add i64 %1031, 4
  store i64 %1032, i64* %PC.i1168
  %1033 = inttoptr i64 %1030 to i32*
  %1034 = load i32, i32* %1033
  %1035 = sext i32 %1034 to i64
  store i64 %1035, i64* %RCX.i1169, align 8
  store %struct.Memory* %loadMem_4366be, %struct.Memory** %MEMORY
  %loadMem_4366c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i1165 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 1
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RAX.i1166 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 5
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RCX.i1167 = bitcast %union.anon* %1044 to i64*
  %1045 = load i64, i64* %RAX.i1166
  %1046 = load i64, i64* %RCX.i1167
  %1047 = mul i64 %1046, 8
  %1048 = add i64 %1047, %1045
  %1049 = load i64, i64* %PC.i1165
  %1050 = add i64 %1049, 4
  store i64 %1050, i64* %PC.i1165
  %1051 = inttoptr i64 %1048 to i64*
  %1052 = load i64, i64* %1051
  store i64 %1052, i64* %RAX.i1166, align 8
  store %struct.Memory* %loadMem_4366c2, %struct.Memory** %MEMORY
  %loadMem_4366c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i1163 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 1
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RAX.i1164 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %RAX.i1164
  %1060 = load i64, i64* %PC.i1163
  %1061 = add i64 %1060, 6
  store i64 %1061, i64* %PC.i1163
  %1062 = inttoptr i64 %1059 to i32*
  store i32 -987654321, i32* %1062
  store %struct.Memory* %loadMem_4366c6, %struct.Memory** %MEMORY
  %loadMem_4366cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i1160 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RAX.i1161 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i1162 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RBP.i1162
  %1073 = sub i64 %1072, 56
  %1074 = load i64, i64* %PC.i1160
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %PC.i1160
  %1076 = inttoptr i64 %1073 to i64*
  %1077 = load i64, i64* %1076
  store i64 %1077, i64* %RAX.i1161, align 8
  store %struct.Memory* %loadMem_4366cc, %struct.Memory** %MEMORY
  %loadMem_4366d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i1157 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 5
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RCX.i1158 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 15
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RBP.i1159 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %RBP.i1159
  %1088 = sub i64 %1087, 76
  %1089 = load i64, i64* %PC.i1157
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %PC.i1157
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RCX.i1158, align 8
  store %struct.Memory* %loadMem_4366d0, %struct.Memory** %MEMORY
  %loadMem_4366d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i1154 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 1
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RAX.i1155 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 5
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RCX.i1156 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %RAX.i1155
  %1104 = load i64, i64* %RCX.i1156
  %1105 = mul i64 %1104, 8
  %1106 = add i64 %1105, %1103
  %1107 = load i64, i64* %PC.i1154
  %1108 = add i64 %1107, 4
  store i64 %1108, i64* %PC.i1154
  %1109 = inttoptr i64 %1106 to i64*
  %1110 = load i64, i64* %1109
  store i64 %1110, i64* %RAX.i1155, align 8
  store %struct.Memory* %loadMem_4366d4, %struct.Memory** %MEMORY
  %loadMem_4366d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i1152 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RAX.i1153 = bitcast %union.anon* %1116 to i64*
  %1117 = load i64, i64* %RAX.i1153
  %1118 = load i64, i64* %PC.i1152
  %1119 = add i64 %1118, 6
  store i64 %1119, i64* %PC.i1152
  %1120 = inttoptr i64 %1117 to i32*
  store i32 -987654321, i32* %1120
  store %struct.Memory* %loadMem_4366d8, %struct.Memory** %MEMORY
  %loadMem_4366de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i1150 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i1151 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %RBP.i1151
  %1128 = sub i64 %1127, 80
  %1129 = load i64, i64* %PC.i1150
  %1130 = add i64 %1129, 7
  store i64 %1130, i64* %PC.i1150
  %1131 = inttoptr i64 %1128 to i32*
  store i32 1, i32* %1131
  store %struct.Memory* %loadMem_4366de, %struct.Memory** %MEMORY
  br label %block_.L_4366e5

block_.L_4366e5:                                  ; preds = %block_.L_4369d2, %block_4366a8
  %loadMem_4366e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i1147 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i1148 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 15
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RBP.i1149 = bitcast %union.anon* %1140 to i64*
  %1141 = load i64, i64* %RBP.i1149
  %1142 = sub i64 %1141, 80
  %1143 = load i64, i64* %PC.i1147
  %1144 = add i64 %1143, 3
  store i64 %1144, i64* %PC.i1147
  %1145 = inttoptr i64 %1142 to i32*
  %1146 = load i32, i32* %1145
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i1148, align 8
  store %struct.Memory* %loadMem_4366e5, %struct.Memory** %MEMORY
  %loadMem_4366e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i1144 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 1
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %EAX.i1145 = bitcast %union.anon* %1153 to i32*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 15
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RBP.i1146 = bitcast %union.anon* %1156 to i64*
  %1157 = load i32, i32* %EAX.i1145
  %1158 = zext i32 %1157 to i64
  %1159 = load i64, i64* %RBP.i1146
  %1160 = sub i64 %1159, 8
  %1161 = load i64, i64* %PC.i1144
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC.i1144
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = sub i32 %1157, %1164
  %1166 = icmp ult i32 %1157, %1164
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1167, i8* %1168, align 1
  %1169 = and i32 %1165, 255
  %1170 = call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1173, i8* %1174, align 1
  %1175 = xor i32 %1164, %1157
  %1176 = xor i32 %1175, %1165
  %1177 = lshr i32 %1176, 4
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1179, i8* %1180, align 1
  %1181 = icmp eq i32 %1165, 0
  %1182 = zext i1 %1181 to i8
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1182, i8* %1183, align 1
  %1184 = lshr i32 %1165, 31
  %1185 = trunc i32 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1185, i8* %1186, align 1
  %1187 = lshr i32 %1157, 31
  %1188 = lshr i32 %1164, 31
  %1189 = xor i32 %1188, %1187
  %1190 = xor i32 %1184, %1187
  %1191 = add i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1193, i8* %1194, align 1
  store %struct.Memory* %loadMem_4366e8, %struct.Memory** %MEMORY
  %loadMem_4366eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i1143 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %PC.i1143
  %1199 = add i64 %1198, 823
  %1200 = load i64, i64* %PC.i1143
  %1201 = add i64 %1200, 6
  %1202 = load i64, i64* %PC.i1143
  %1203 = add i64 %1202, 6
  store i64 %1203, i64* %PC.i1143
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1205 = load i8, i8* %1204, align 1
  %1206 = icmp eq i8 %1205, 0
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1208 = load i8, i8* %1207, align 1
  %1209 = icmp ne i8 %1208, 0
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1211 = load i8, i8* %1210, align 1
  %1212 = icmp ne i8 %1211, 0
  %1213 = xor i1 %1209, %1212
  %1214 = xor i1 %1213, true
  %1215 = and i1 %1206, %1214
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %BRANCH_TAKEN, align 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1218 = select i1 %1215, i64 %1199, i64 %1201
  store i64 %1218, i64* %1217, align 8
  store %struct.Memory* %loadMem_4366eb, %struct.Memory** %MEMORY
  %loadBr_4366eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4366eb = icmp eq i8 %loadBr_4366eb, 1
  br i1 %cmpBr_4366eb, label %block_.L_436a22, label %block_4366f1

block_4366f1:                                     ; preds = %block_.L_4366e5
  %loadMem_4366f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i1140 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 1
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RAX.i1141 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 15
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RBP.i1142 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %RBP.i1142
  %1229 = sub i64 %1228, 56
  %1230 = load i64, i64* %PC.i1140
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC.i1140
  %1232 = inttoptr i64 %1229 to i64*
  %1233 = load i64, i64* %1232
  store i64 %1233, i64* %RAX.i1141, align 8
  store %struct.Memory* %loadMem_4366f1, %struct.Memory** %MEMORY
  %loadMem_4366f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i1137 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 5
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RCX.i1138 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i1139 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i1139
  %1244 = sub i64 %1243, 76
  %1245 = load i64, i64* %PC.i1137
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i1137
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = sext i32 %1248 to i64
  store i64 %1249, i64* %RCX.i1138, align 8
  store %struct.Memory* %loadMem_4366f5, %struct.Memory** %MEMORY
  %loadMem_4366f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i1134 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RAX.i1135 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 5
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RCX.i1136 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %RAX.i1135
  %1260 = load i64, i64* %RCX.i1136
  %1261 = mul i64 %1260, 8
  %1262 = add i64 %1261, %1259
  %1263 = load i64, i64* %PC.i1134
  %1264 = add i64 %1263, 4
  store i64 %1264, i64* %PC.i1134
  %1265 = inttoptr i64 %1262 to i64*
  %1266 = load i64, i64* %1265
  store i64 %1266, i64* %RAX.i1135, align 8
  store %struct.Memory* %loadMem_4366f9, %struct.Memory** %MEMORY
  %loadMem_4366fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i1131 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 5
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RCX.i1132 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 15
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RBP.i1133 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %RBP.i1133
  %1277 = sub i64 %1276, 80
  %1278 = load i64, i64* %PC.i1131
  %1279 = add i64 %1278, 4
  store i64 %1279, i64* %PC.i1131
  %1280 = inttoptr i64 %1277 to i32*
  %1281 = load i32, i32* %1280
  %1282 = sext i32 %1281 to i64
  store i64 %1282, i64* %RCX.i1132, align 8
  store %struct.Memory* %loadMem_4366fd, %struct.Memory** %MEMORY
  %loadMem_436701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i1128 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 1
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RAX.i1129 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 5
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RCX.i1130 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RAX.i1129
  %1293 = load i64, i64* %RCX.i1130
  %1294 = mul i64 %1293, 4
  %1295 = add i64 %1294, %1292
  %1296 = load i64, i64* %PC.i1128
  %1297 = add i64 %1296, 7
  store i64 %1297, i64* %PC.i1128
  %1298 = inttoptr i64 %1295 to i32*
  store i32 -987654321, i32* %1298
  store %struct.Memory* %loadMem_436701, %struct.Memory** %MEMORY
  %loadMem_436708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i1125 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 1
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RAX.i1126 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 15
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RBP.i1127 = bitcast %union.anon* %1307 to i64*
  %1308 = load i64, i64* %RBP.i1127
  %1309 = sub i64 %1308, 56
  %1310 = load i64, i64* %PC.i1125
  %1311 = add i64 %1310, 4
  store i64 %1311, i64* %PC.i1125
  %1312 = inttoptr i64 %1309 to i64*
  %1313 = load i64, i64* %1312
  store i64 %1313, i64* %RAX.i1126, align 8
  store %struct.Memory* %loadMem_436708, %struct.Memory** %MEMORY
  %loadMem_43670c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i1122 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 7
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RDX.i1123 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 15
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RBP.i1124 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RBP.i1124
  %1324 = sub i64 %1323, 76
  %1325 = load i64, i64* %PC.i1122
  %1326 = add i64 %1325, 3
  store i64 %1326, i64* %PC.i1122
  %1327 = inttoptr i64 %1324 to i32*
  %1328 = load i32, i32* %1327
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RDX.i1123, align 8
  store %struct.Memory* %loadMem_43670c, %struct.Memory** %MEMORY
  %loadMem_43670f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i1120 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 7
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RDX.i1121 = bitcast %union.anon* %1335 to i64*
  %1336 = load i64, i64* %RDX.i1121
  %1337 = load i64, i64* %PC.i1120
  %1338 = add i64 %1337, 3
  store i64 %1338, i64* %PC.i1120
  %1339 = trunc i64 %1336 to i32
  %1340 = sub i32 %1339, 1
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RDX.i1121, align 8
  %1342 = icmp ult i32 %1339, 1
  %1343 = zext i1 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1343, i8* %1344, align 1
  %1345 = and i32 %1340, 255
  %1346 = call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1349, i8* %1350, align 1
  %1351 = xor i64 1, %1336
  %1352 = trunc i64 %1351 to i32
  %1353 = xor i32 %1352, %1340
  %1354 = lshr i32 %1353, 4
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1356, i8* %1357, align 1
  %1358 = icmp eq i32 %1340, 0
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1359, i8* %1360, align 1
  %1361 = lshr i32 %1340, 31
  %1362 = trunc i32 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1362, i8* %1363, align 1
  %1364 = lshr i32 %1339, 31
  %1365 = xor i32 %1361, %1364
  %1366 = add i32 %1365, %1364
  %1367 = icmp eq i32 %1366, 2
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1368, i8* %1369, align 1
  store %struct.Memory* %loadMem_43670f, %struct.Memory** %MEMORY
  %loadMem_436712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i1117 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 7
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %EDX.i1118 = bitcast %union.anon* %1375 to i32*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 5
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RCX.i1119 = bitcast %union.anon* %1378 to i64*
  %1379 = load i32, i32* %EDX.i1118
  %1380 = zext i32 %1379 to i64
  %1381 = load i64, i64* %PC.i1117
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC.i1117
  %1383 = shl i64 %1380, 32
  %1384 = ashr exact i64 %1383, 32
  store i64 %1384, i64* %RCX.i1119, align 8
  store %struct.Memory* %loadMem_436712, %struct.Memory** %MEMORY
  %loadMem_436715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i1114 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 1
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RAX.i1115 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 5
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RCX.i1116 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %RAX.i1115
  %1395 = load i64, i64* %RCX.i1116
  %1396 = mul i64 %1395, 8
  %1397 = add i64 %1396, %1394
  %1398 = load i64, i64* %PC.i1114
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC.i1114
  %1400 = inttoptr i64 %1397 to i64*
  %1401 = load i64, i64* %1400
  store i64 %1401, i64* %RAX.i1115, align 8
  store %struct.Memory* %loadMem_436715, %struct.Memory** %MEMORY
  %loadMem_436719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i1111 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 7
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RDX.i1112 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 15
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RBP.i1113 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RBP.i1113
  %1412 = sub i64 %1411, 80
  %1413 = load i64, i64* %PC.i1111
  %1414 = add i64 %1413, 3
  store i64 %1414, i64* %PC.i1111
  %1415 = inttoptr i64 %1412 to i32*
  %1416 = load i32, i32* %1415
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RDX.i1112, align 8
  store %struct.Memory* %loadMem_436719, %struct.Memory** %MEMORY
  %loadMem_43671c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i1109 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 7
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RDX.i1110 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %RDX.i1110
  %1425 = load i64, i64* %PC.i1109
  %1426 = add i64 %1425, 3
  store i64 %1426, i64* %PC.i1109
  %1427 = trunc i64 %1424 to i32
  %1428 = sub i32 %1427, 1
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RDX.i1110, align 8
  %1430 = icmp ult i32 %1427, 1
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1431, i8* %1432, align 1
  %1433 = and i32 %1428, 255
  %1434 = call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1437, i8* %1438, align 1
  %1439 = xor i64 1, %1424
  %1440 = trunc i64 %1439 to i32
  %1441 = xor i32 %1440, %1428
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1444, i8* %1445, align 1
  %1446 = icmp eq i32 %1428, 0
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1447, i8* %1448, align 1
  %1449 = lshr i32 %1428, 31
  %1450 = trunc i32 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1450, i8* %1451, align 1
  %1452 = lshr i32 %1427, 31
  %1453 = xor i32 %1449, %1452
  %1454 = add i32 %1453, %1452
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1456, i8* %1457, align 1
  store %struct.Memory* %loadMem_43671c, %struct.Memory** %MEMORY
  %loadMem_43671f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i1106 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 7
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %EDX.i1107 = bitcast %union.anon* %1463 to i32*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 5
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RCX.i1108 = bitcast %union.anon* %1466 to i64*
  %1467 = load i32, i32* %EDX.i1107
  %1468 = zext i32 %1467 to i64
  %1469 = load i64, i64* %PC.i1106
  %1470 = add i64 %1469, 3
  store i64 %1470, i64* %PC.i1106
  %1471 = shl i64 %1468, 32
  %1472 = ashr exact i64 %1471, 32
  store i64 %1472, i64* %RCX.i1108, align 8
  store %struct.Memory* %loadMem_43671f, %struct.Memory** %MEMORY
  %loadMem_436722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RAX.i1103 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 5
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RCX.i1104 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 7
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RDX.i1105 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RAX.i1103
  %1486 = load i64, i64* %RCX.i1104
  %1487 = mul i64 %1486, 4
  %1488 = add i64 %1487, %1485
  %1489 = load i64, i64* %PC.i1102
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC.i1102
  %1491 = inttoptr i64 %1488 to i32*
  %1492 = load i32, i32* %1491
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RDX.i1105, align 8
  store %struct.Memory* %loadMem_436722, %struct.Memory** %MEMORY
  %loadMem_436725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i1099 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 7
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %EDX.i1100 = bitcast %union.anon* %1499 to i32*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 15
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RBP.i1101 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RBP.i1101
  %1504 = sub i64 %1503, 84
  %1505 = load i32, i32* %EDX.i1100
  %1506 = zext i32 %1505 to i64
  %1507 = load i64, i64* %PC.i1099
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC.i1099
  %1509 = inttoptr i64 %1504 to i32*
  store i32 %1505, i32* %1509
  store %struct.Memory* %loadMem_436725, %struct.Memory** %MEMORY
  %loadMem_436728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i1096 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 1
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RAX.i1097 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i1098 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i1098
  %1520 = sub i64 %1519, 56
  %1521 = load i64, i64* %PC.i1096
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i1096
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523
  store i64 %1524, i64* %RAX.i1097, align 8
  store %struct.Memory* %loadMem_436728, %struct.Memory** %MEMORY
  %loadMem_43672c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %PC.i1093 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 5
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RCX.i1094 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 15
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RBP.i1095 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %RBP.i1095
  %1535 = sub i64 %1534, 76
  %1536 = load i64, i64* %PC.i1093
  %1537 = add i64 %1536, 4
  store i64 %1537, i64* %PC.i1093
  %1538 = inttoptr i64 %1535 to i32*
  %1539 = load i32, i32* %1538
  %1540 = sext i32 %1539 to i64
  store i64 %1540, i64* %RCX.i1094, align 8
  store %struct.Memory* %loadMem_43672c, %struct.Memory** %MEMORY
  %loadMem_436730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i1090 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 1
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RAX.i1091 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 5
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RCX.i1092 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RAX.i1091
  %1551 = load i64, i64* %RCX.i1092
  %1552 = mul i64 %1551, 8
  %1553 = add i64 %1552, %1550
  %1554 = load i64, i64* %PC.i1090
  %1555 = add i64 %1554, 4
  store i64 %1555, i64* %PC.i1090
  %1556 = inttoptr i64 %1553 to i64*
  %1557 = load i64, i64* %1556
  store i64 %1557, i64* %RAX.i1091, align 8
  store %struct.Memory* %loadMem_436730, %struct.Memory** %MEMORY
  %loadMem_436734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i1087 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 5
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RCX.i1088 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 15
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RBP.i1089 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RBP.i1089
  %1568 = sub i64 %1567, 80
  %1569 = load i64, i64* %PC.i1087
  %1570 = add i64 %1569, 4
  store i64 %1570, i64* %PC.i1087
  %1571 = inttoptr i64 %1568 to i32*
  %1572 = load i32, i32* %1571
  %1573 = sext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i1088, align 8
  store %struct.Memory* %loadMem_436734, %struct.Memory** %MEMORY
  %loadMem_436738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i1083 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 7
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %EDX.i1084 = bitcast %union.anon* %1579 to i32*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 1
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RAX.i1085 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 5
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RCX.i1086 = bitcast %union.anon* %1585 to i64*
  %1586 = load i32, i32* %EDX.i1084
  %1587 = zext i32 %1586 to i64
  %1588 = load i64, i64* %RAX.i1085
  %1589 = load i64, i64* %RCX.i1086
  %1590 = mul i64 %1589, 4
  %1591 = add i64 %1590, %1588
  %1592 = load i64, i64* %PC.i1083
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i1083
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594
  %1596 = sub i32 %1586, %1595
  %1597 = icmp ult i32 %1586, %1595
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1598, i8* %1599, align 1
  %1600 = and i32 %1596, 255
  %1601 = call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1604, i8* %1605, align 1
  %1606 = xor i32 %1595, %1586
  %1607 = xor i32 %1606, %1596
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1610, i8* %1611, align 1
  %1612 = icmp eq i32 %1596, 0
  %1613 = zext i1 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1613, i8* %1614, align 1
  %1615 = lshr i32 %1596, 31
  %1616 = trunc i32 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1616, i8* %1617, align 1
  %1618 = lshr i32 %1586, 31
  %1619 = lshr i32 %1595, 31
  %1620 = xor i32 %1619, %1618
  %1621 = xor i32 %1615, %1618
  %1622 = add i32 %1621, %1620
  %1623 = icmp eq i32 %1622, 2
  %1624 = zext i1 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1624, i8* %1625, align 1
  store %struct.Memory* %loadMem_436738, %struct.Memory** %MEMORY
  %loadMem_43673b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i1082 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %PC.i1082
  %1630 = add i64 %1629, 28
  %1631 = load i64, i64* %PC.i1082
  %1632 = add i64 %1631, 6
  %1633 = load i64, i64* %PC.i1082
  %1634 = add i64 %1633, 6
  store i64 %1634, i64* %PC.i1082
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1636 = load i8, i8* %1635, align 1
  %1637 = icmp ne i8 %1636, 0
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1639 = load i8, i8* %1638, align 1
  %1640 = icmp ne i8 %1639, 0
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1642 = load i8, i8* %1641, align 1
  %1643 = icmp ne i8 %1642, 0
  %1644 = xor i1 %1640, %1643
  %1645 = or i1 %1637, %1644
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %BRANCH_TAKEN, align 1
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1648 = select i1 %1645, i64 %1630, i64 %1632
  store i64 %1648, i64* %1647, align 8
  store %struct.Memory* %loadMem_43673b, %struct.Memory** %MEMORY
  %loadBr_43673b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43673b = icmp eq i8 %loadBr_43673b, 1
  br i1 %cmpBr_43673b, label %block_.L_436757, label %block_436741

block_436741:                                     ; preds = %block_4366f1
  %loadMem_436741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i1079 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RAX.i1080 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 15
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RBP.i1081 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RBP.i1081
  %1659 = sub i64 %1658, 84
  %1660 = load i64, i64* %PC.i1079
  %1661 = add i64 %1660, 3
  store i64 %1661, i64* %PC.i1079
  %1662 = inttoptr i64 %1659 to i32*
  %1663 = load i32, i32* %1662
  %1664 = zext i32 %1663 to i64
  store i64 %1664, i64* %RAX.i1080, align 8
  store %struct.Memory* %loadMem_436741, %struct.Memory** %MEMORY
  %loadMem_436744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i1076 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 5
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RCX.i1077 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i1078 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RBP.i1078
  %1675 = sub i64 %1674, 56
  %1676 = load i64, i64* %PC.i1076
  %1677 = add i64 %1676, 4
  store i64 %1677, i64* %PC.i1076
  %1678 = inttoptr i64 %1675 to i64*
  %1679 = load i64, i64* %1678
  store i64 %1679, i64* %RCX.i1077, align 8
  store %struct.Memory* %loadMem_436744, %struct.Memory** %MEMORY
  %loadMem_436748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i1073 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 7
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RDX.i1074 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i1075 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i1075
  %1690 = sub i64 %1689, 76
  %1691 = load i64, i64* %PC.i1073
  %1692 = add i64 %1691, 4
  store i64 %1692, i64* %PC.i1073
  %1693 = inttoptr i64 %1690 to i32*
  %1694 = load i32, i32* %1693
  %1695 = sext i32 %1694 to i64
  store i64 %1695, i64* %RDX.i1074, align 8
  store %struct.Memory* %loadMem_436748, %struct.Memory** %MEMORY
  %loadMem_43674c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i1070 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 5
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RCX.i1071 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 7
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RDX.i1072 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RCX.i1071
  %1706 = load i64, i64* %RDX.i1072
  %1707 = mul i64 %1706, 8
  %1708 = add i64 %1707, %1705
  %1709 = load i64, i64* %PC.i1070
  %1710 = add i64 %1709, 4
  store i64 %1710, i64* %PC.i1070
  %1711 = inttoptr i64 %1708 to i64*
  %1712 = load i64, i64* %1711
  store i64 %1712, i64* %RCX.i1071, align 8
  store %struct.Memory* %loadMem_43674c, %struct.Memory** %MEMORY
  %loadMem_436750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i1067 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 7
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RDX.i1068 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i1069 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i1069
  %1723 = sub i64 %1722, 80
  %1724 = load i64, i64* %PC.i1067
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC.i1067
  %1726 = inttoptr i64 %1723 to i32*
  %1727 = load i32, i32* %1726
  %1728 = sext i32 %1727 to i64
  store i64 %1728, i64* %RDX.i1068, align 8
  store %struct.Memory* %loadMem_436750, %struct.Memory** %MEMORY
  %loadMem_436754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i1063 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %EAX.i1064 = bitcast %union.anon* %1734 to i32*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 5
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RCX.i1065 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 7
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RDX.i1066 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RCX.i1065
  %1742 = load i64, i64* %RDX.i1066
  %1743 = mul i64 %1742, 4
  %1744 = add i64 %1743, %1741
  %1745 = load i32, i32* %EAX.i1064
  %1746 = zext i32 %1745 to i64
  %1747 = load i64, i64* %PC.i1063
  %1748 = add i64 %1747, 3
  store i64 %1748, i64* %PC.i1063
  %1749 = inttoptr i64 %1744 to i32*
  store i32 %1745, i32* %1749
  store %struct.Memory* %loadMem_436754, %struct.Memory** %MEMORY
  br label %block_.L_436757

block_.L_436757:                                  ; preds = %block_436741, %block_4366f1
  %loadMem_436757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i1060 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 1
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RAX.i1061 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 15
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RBP.i1062 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %RBP.i1062
  %1760 = sub i64 %1759, 64
  %1761 = load i64, i64* %PC.i1060
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %PC.i1060
  %1763 = inttoptr i64 %1760 to i64*
  %1764 = load i64, i64* %1763
  store i64 %1764, i64* %RAX.i1061, align 8
  store %struct.Memory* %loadMem_436757, %struct.Memory** %MEMORY
  %loadMem_43675b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i1057 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 5
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RCX.i1058 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i1059 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %RBP.i1059
  %1775 = sub i64 %1774, 76
  %1776 = load i64, i64* %PC.i1057
  %1777 = add i64 %1776, 3
  store i64 %1777, i64* %PC.i1057
  %1778 = inttoptr i64 %1775 to i32*
  %1779 = load i32, i32* %1778
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RCX.i1058, align 8
  store %struct.Memory* %loadMem_43675b, %struct.Memory** %MEMORY
  %loadMem_43675e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i1055 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 5
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RCX.i1056 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %RCX.i1056
  %1788 = load i64, i64* %PC.i1055
  %1789 = add i64 %1788, 3
  store i64 %1789, i64* %PC.i1055
  %1790 = trunc i64 %1787 to i32
  %1791 = sub i32 %1790, 1
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RCX.i1056, align 8
  %1793 = icmp ult i32 %1790, 1
  %1794 = zext i1 %1793 to i8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1794, i8* %1795, align 1
  %1796 = and i32 %1791, 255
  %1797 = call i32 @llvm.ctpop.i32(i32 %1796)
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = xor i8 %1799, 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1800, i8* %1801, align 1
  %1802 = xor i64 1, %1787
  %1803 = trunc i64 %1802 to i32
  %1804 = xor i32 %1803, %1791
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1807, i8* %1808, align 1
  %1809 = icmp eq i32 %1791, 0
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1810, i8* %1811, align 1
  %1812 = lshr i32 %1791, 31
  %1813 = trunc i32 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1813, i8* %1814, align 1
  %1815 = lshr i32 %1790, 31
  %1816 = xor i32 %1812, %1815
  %1817 = add i32 %1816, %1815
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1819, i8* %1820, align 1
  store %struct.Memory* %loadMem_43675e, %struct.Memory** %MEMORY
  %loadMem_436761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 5
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %ECX.i1053 = bitcast %union.anon* %1826 to i32*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 7
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RDX.i1054 = bitcast %union.anon* %1829 to i64*
  %1830 = load i32, i32* %ECX.i1053
  %1831 = zext i32 %1830 to i64
  %1832 = load i64, i64* %PC.i1052
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC.i1052
  %1834 = shl i64 %1831, 32
  %1835 = ashr exact i64 %1834, 32
  store i64 %1835, i64* %RDX.i1054, align 8
  store %struct.Memory* %loadMem_436761, %struct.Memory** %MEMORY
  %loadMem_436764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i1050 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 7
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RDX.i1051 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %RAX.i1050
  %1846 = load i64, i64* %RDX.i1051
  %1847 = mul i64 %1846, 8
  %1848 = add i64 %1847, %1845
  %1849 = load i64, i64* %PC.i1049
  %1850 = add i64 %1849, 4
  store i64 %1850, i64* %PC.i1049
  %1851 = inttoptr i64 %1848 to i64*
  %1852 = load i64, i64* %1851
  store i64 %1852, i64* %RAX.i1050, align 8
  store %struct.Memory* %loadMem_436764, %struct.Memory** %MEMORY
  %loadMem_436768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i1046 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 5
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RCX.i1047 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 15
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RBP.i1048 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %RBP.i1048
  %1863 = sub i64 %1862, 80
  %1864 = load i64, i64* %PC.i1046
  %1865 = add i64 %1864, 3
  store i64 %1865, i64* %PC.i1046
  %1866 = inttoptr i64 %1863 to i32*
  %1867 = load i32, i32* %1866
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RCX.i1047, align 8
  store %struct.Memory* %loadMem_436768, %struct.Memory** %MEMORY
  %loadMem_43676b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i1044 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 5
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RCX.i1045 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %RCX.i1045
  %1876 = load i64, i64* %PC.i1044
  %1877 = add i64 %1876, 3
  store i64 %1877, i64* %PC.i1044
  %1878 = trunc i64 %1875 to i32
  %1879 = sub i32 %1878, 1
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RCX.i1045, align 8
  %1881 = icmp ult i32 %1878, 1
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1882, i8* %1883, align 1
  %1884 = and i32 %1879, 255
  %1885 = call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1888, i8* %1889, align 1
  %1890 = xor i64 1, %1875
  %1891 = trunc i64 %1890 to i32
  %1892 = xor i32 %1891, %1879
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1895, i8* %1896, align 1
  %1897 = icmp eq i32 %1879, 0
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1898, i8* %1899, align 1
  %1900 = lshr i32 %1879, 31
  %1901 = trunc i32 %1900 to i8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1901, i8* %1902, align 1
  %1903 = lshr i32 %1878, 31
  %1904 = xor i32 %1900, %1903
  %1905 = add i32 %1904, %1903
  %1906 = icmp eq i32 %1905, 2
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1907, i8* %1908, align 1
  store %struct.Memory* %loadMem_43676b, %struct.Memory** %MEMORY
  %loadMem_43676e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i1041 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 5
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %ECX.i1042 = bitcast %union.anon* %1914 to i32*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 7
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RDX.i1043 = bitcast %union.anon* %1917 to i64*
  %1918 = load i32, i32* %ECX.i1042
  %1919 = zext i32 %1918 to i64
  %1920 = load i64, i64* %PC.i1041
  %1921 = add i64 %1920, 3
  store i64 %1921, i64* %PC.i1041
  %1922 = shl i64 %1919, 32
  %1923 = ashr exact i64 %1922, 32
  store i64 %1923, i64* %RDX.i1043, align 8
  store %struct.Memory* %loadMem_43676e, %struct.Memory** %MEMORY
  %loadMem_436771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i1037 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 1
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RAX.i1038 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 5
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RCX.i1039 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 7
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RDX.i1040 = bitcast %union.anon* %1935 to i64*
  %1936 = load i64, i64* %RAX.i1038
  %1937 = load i64, i64* %RDX.i1040
  %1938 = mul i64 %1937, 4
  %1939 = add i64 %1938, %1936
  %1940 = load i64, i64* %PC.i1037
  %1941 = add i64 %1940, 3
  store i64 %1941, i64* %PC.i1037
  %1942 = inttoptr i64 %1939 to i32*
  %1943 = load i32, i32* %1942
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RCX.i1039, align 8
  store %struct.Memory* %loadMem_436771, %struct.Memory** %MEMORY
  %loadMem_436774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i1034 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 5
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %ECX.i1035 = bitcast %union.anon* %1950 to i32*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i1036 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i1036
  %1955 = sub i64 %1954, 84
  %1956 = load i32, i32* %ECX.i1035
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i1034
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC.i1034
  %1960 = inttoptr i64 %1955 to i32*
  store i32 %1956, i32* %1960
  store %struct.Memory* %loadMem_436774, %struct.Memory** %MEMORY
  %loadMem_436777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i1031 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RAX.i1032 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 15
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RBP.i1033 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RBP.i1033
  %1971 = sub i64 %1970, 56
  %1972 = load i64, i64* %PC.i1031
  %1973 = add i64 %1972, 4
  store i64 %1973, i64* %PC.i1031
  %1974 = inttoptr i64 %1971 to i64*
  %1975 = load i64, i64* %1974
  store i64 %1975, i64* %RAX.i1032, align 8
  store %struct.Memory* %loadMem_436777, %struct.Memory** %MEMORY
  %loadMem_43677b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i1028 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 7
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RDX.i1029 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 15
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RBP.i1030 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %RBP.i1030
  %1986 = sub i64 %1985, 76
  %1987 = load i64, i64* %PC.i1028
  %1988 = add i64 %1987, 4
  store i64 %1988, i64* %PC.i1028
  %1989 = inttoptr i64 %1986 to i32*
  %1990 = load i32, i32* %1989
  %1991 = sext i32 %1990 to i64
  store i64 %1991, i64* %RDX.i1029, align 8
  store %struct.Memory* %loadMem_43677b, %struct.Memory** %MEMORY
  %loadMem_43677f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 1
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RAX.i1026 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 7
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RDX.i1027 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %RAX.i1026
  %2002 = load i64, i64* %RDX.i1027
  %2003 = mul i64 %2002, 8
  %2004 = add i64 %2003, %2001
  %2005 = load i64, i64* %PC.i1025
  %2006 = add i64 %2005, 4
  store i64 %2006, i64* %PC.i1025
  %2007 = inttoptr i64 %2004 to i64*
  %2008 = load i64, i64* %2007
  store i64 %2008, i64* %RAX.i1026, align 8
  store %struct.Memory* %loadMem_43677f, %struct.Memory** %MEMORY
  %loadMem_436783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i1022 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 7
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RDX.i1023 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 15
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RBP.i1024 = bitcast %union.anon* %2017 to i64*
  %2018 = load i64, i64* %RBP.i1024
  %2019 = sub i64 %2018, 80
  %2020 = load i64, i64* %PC.i1022
  %2021 = add i64 %2020, 4
  store i64 %2021, i64* %PC.i1022
  %2022 = inttoptr i64 %2019 to i32*
  %2023 = load i32, i32* %2022
  %2024 = sext i32 %2023 to i64
  store i64 %2024, i64* %RDX.i1023, align 8
  store %struct.Memory* %loadMem_436783, %struct.Memory** %MEMORY
  %loadMem_436787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 33
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 5
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %ECX.i1019 = bitcast %union.anon* %2030 to i32*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 1
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RAX.i1020 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 7
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RDX.i1021 = bitcast %union.anon* %2036 to i64*
  %2037 = load i32, i32* %ECX.i1019
  %2038 = zext i32 %2037 to i64
  %2039 = load i64, i64* %RAX.i1020
  %2040 = load i64, i64* %RDX.i1021
  %2041 = mul i64 %2040, 4
  %2042 = add i64 %2041, %2039
  %2043 = load i64, i64* %PC.i1018
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %PC.i1018
  %2045 = inttoptr i64 %2042 to i32*
  %2046 = load i32, i32* %2045
  %2047 = sub i32 %2037, %2046
  %2048 = icmp ult i32 %2037, %2046
  %2049 = zext i1 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2049, i8* %2050, align 1
  %2051 = and i32 %2047, 255
  %2052 = call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2055, i8* %2056, align 1
  %2057 = xor i32 %2046, %2037
  %2058 = xor i32 %2057, %2047
  %2059 = lshr i32 %2058, 4
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2061, i8* %2062, align 1
  %2063 = icmp eq i32 %2047, 0
  %2064 = zext i1 %2063 to i8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2064, i8* %2065, align 1
  %2066 = lshr i32 %2047, 31
  %2067 = trunc i32 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i32 %2037, 31
  %2070 = lshr i32 %2046, 31
  %2071 = xor i32 %2070, %2069
  %2072 = xor i32 %2066, %2069
  %2073 = add i32 %2072, %2071
  %2074 = icmp eq i32 %2073, 2
  %2075 = zext i1 %2074 to i8
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2075, i8* %2076, align 1
  store %struct.Memory* %loadMem_436787, %struct.Memory** %MEMORY
  %loadMem_43678a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %PC.i1017
  %2081 = add i64 %2080, 28
  %2082 = load i64, i64* %PC.i1017
  %2083 = add i64 %2082, 6
  %2084 = load i64, i64* %PC.i1017
  %2085 = add i64 %2084, 6
  store i64 %2085, i64* %PC.i1017
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2087 = load i8, i8* %2086, align 1
  %2088 = icmp ne i8 %2087, 0
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2090 = load i8, i8* %2089, align 1
  %2091 = icmp ne i8 %2090, 0
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2093 = load i8, i8* %2092, align 1
  %2094 = icmp ne i8 %2093, 0
  %2095 = xor i1 %2091, %2094
  %2096 = or i1 %2088, %2095
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %BRANCH_TAKEN, align 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2099 = select i1 %2096, i64 %2081, i64 %2083
  store i64 %2099, i64* %2098, align 8
  store %struct.Memory* %loadMem_43678a, %struct.Memory** %MEMORY
  %loadBr_43678a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43678a = icmp eq i8 %loadBr_43678a, 1
  br i1 %cmpBr_43678a, label %block_.L_4367a6, label %block_436790

block_436790:                                     ; preds = %block_.L_436757
  %loadMem_436790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 1
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RAX.i1015 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 15
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RBP.i1016 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %RBP.i1016
  %2110 = sub i64 %2109, 84
  %2111 = load i64, i64* %PC.i1014
  %2112 = add i64 %2111, 3
  store i64 %2112, i64* %PC.i1014
  %2113 = inttoptr i64 %2110 to i32*
  %2114 = load i32, i32* %2113
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RAX.i1015, align 8
  store %struct.Memory* %loadMem_436790, %struct.Memory** %MEMORY
  %loadMem_436793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 5
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RCX.i1012 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 15
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RBP.i1013 = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %RBP.i1013
  %2126 = sub i64 %2125, 56
  %2127 = load i64, i64* %PC.i1011
  %2128 = add i64 %2127, 4
  store i64 %2128, i64* %PC.i1011
  %2129 = inttoptr i64 %2126 to i64*
  %2130 = load i64, i64* %2129
  store i64 %2130, i64* %RCX.i1012, align 8
  store %struct.Memory* %loadMem_436793, %struct.Memory** %MEMORY
  %loadMem_436797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 33
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 7
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RDX.i1009 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 15
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RBP.i1010 = bitcast %union.anon* %2139 to i64*
  %2140 = load i64, i64* %RBP.i1010
  %2141 = sub i64 %2140, 76
  %2142 = load i64, i64* %PC.i1008
  %2143 = add i64 %2142, 4
  store i64 %2143, i64* %PC.i1008
  %2144 = inttoptr i64 %2141 to i32*
  %2145 = load i32, i32* %2144
  %2146 = sext i32 %2145 to i64
  store i64 %2146, i64* %RDX.i1009, align 8
  store %struct.Memory* %loadMem_436797, %struct.Memory** %MEMORY
  %loadMem_43679b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 5
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RCX.i1006 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 7
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RDX.i1007 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %RCX.i1006
  %2157 = load i64, i64* %RDX.i1007
  %2158 = mul i64 %2157, 8
  %2159 = add i64 %2158, %2156
  %2160 = load i64, i64* %PC.i1005
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %PC.i1005
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RCX.i1006, align 8
  store %struct.Memory* %loadMem_43679b, %struct.Memory** %MEMORY
  %loadMem_43679f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 7
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RDX.i1003 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 15
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RBP.i1004
  %2174 = sub i64 %2173, 80
  %2175 = load i64, i64* %PC.i1002
  %2176 = add i64 %2175, 4
  store i64 %2176, i64* %PC.i1002
  %2177 = inttoptr i64 %2174 to i32*
  %2178 = load i32, i32* %2177
  %2179 = sext i32 %2178 to i64
  store i64 %2179, i64* %RDX.i1003, align 8
  store %struct.Memory* %loadMem_43679f, %struct.Memory** %MEMORY
  %loadMem_4367a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 1
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %EAX.i999 = bitcast %union.anon* %2185 to i32*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 5
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RCX.i1000 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 7
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RDX.i1001 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %RCX.i1000
  %2193 = load i64, i64* %RDX.i1001
  %2194 = mul i64 %2193, 4
  %2195 = add i64 %2194, %2192
  %2196 = load i32, i32* %EAX.i999
  %2197 = zext i32 %2196 to i64
  %2198 = load i64, i64* %PC.i998
  %2199 = add i64 %2198, 3
  store i64 %2199, i64* %PC.i998
  %2200 = inttoptr i64 %2195 to i32*
  store i32 %2196, i32* %2200
  store %struct.Memory* %loadMem_4367a3, %struct.Memory** %MEMORY
  br label %block_.L_4367a6

block_.L_4367a6:                                  ; preds = %block_436790, %block_.L_436757
  %loadMem_4367a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 1
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RAX.i996 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 15
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RBP.i997
  %2211 = sub i64 %2210, 72
  %2212 = load i64, i64* %PC.i995
  %2213 = add i64 %2212, 4
  store i64 %2213, i64* %PC.i995
  %2214 = inttoptr i64 %2211 to i64*
  %2215 = load i64, i64* %2214
  store i64 %2215, i64* %RAX.i996, align 8
  store %struct.Memory* %loadMem_4367a6, %struct.Memory** %MEMORY
  %loadMem_4367aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 5
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RCX.i993 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 15
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RBP.i994 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RBP.i994
  %2226 = sub i64 %2225, 76
  %2227 = load i64, i64* %PC.i992
  %2228 = add i64 %2227, 3
  store i64 %2228, i64* %PC.i992
  %2229 = inttoptr i64 %2226 to i32*
  %2230 = load i32, i32* %2229
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RCX.i993, align 8
  store %struct.Memory* %loadMem_4367aa, %struct.Memory** %MEMORY
  %loadMem_4367ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 5
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RCX.i991 = bitcast %union.anon* %2237 to i64*
  %2238 = load i64, i64* %RCX.i991
  %2239 = load i64, i64* %PC.i990
  %2240 = add i64 %2239, 3
  store i64 %2240, i64* %PC.i990
  %2241 = trunc i64 %2238 to i32
  %2242 = sub i32 %2241, 1
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RCX.i991, align 8
  %2244 = icmp ult i32 %2241, 1
  %2245 = zext i1 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2245, i8* %2246, align 1
  %2247 = and i32 %2242, 255
  %2248 = call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2251, i8* %2252, align 1
  %2253 = xor i64 1, %2238
  %2254 = trunc i64 %2253 to i32
  %2255 = xor i32 %2254, %2242
  %2256 = lshr i32 %2255, 4
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2258, i8* %2259, align 1
  %2260 = icmp eq i32 %2242, 0
  %2261 = zext i1 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2261, i8* %2262, align 1
  %2263 = lshr i32 %2242, 31
  %2264 = trunc i32 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2264, i8* %2265, align 1
  %2266 = lshr i32 %2241, 31
  %2267 = xor i32 %2263, %2266
  %2268 = add i32 %2267, %2266
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2270, i8* %2271, align 1
  store %struct.Memory* %loadMem_4367ad, %struct.Memory** %MEMORY
  %loadMem_4367b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 5
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %ECX.i988 = bitcast %union.anon* %2277 to i32*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 7
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RDX.i989 = bitcast %union.anon* %2280 to i64*
  %2281 = load i32, i32* %ECX.i988
  %2282 = zext i32 %2281 to i64
  %2283 = load i64, i64* %PC.i987
  %2284 = add i64 %2283, 3
  store i64 %2284, i64* %PC.i987
  %2285 = shl i64 %2282, 32
  %2286 = ashr exact i64 %2285, 32
  store i64 %2286, i64* %RDX.i989, align 8
  store %struct.Memory* %loadMem_4367b0, %struct.Memory** %MEMORY
  %loadMem_4367b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 1
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RAX.i985 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 7
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RDX.i986 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RAX.i985
  %2297 = load i64, i64* %RDX.i986
  %2298 = mul i64 %2297, 8
  %2299 = add i64 %2298, %2296
  %2300 = load i64, i64* %PC.i984
  %2301 = add i64 %2300, 4
  store i64 %2301, i64* %PC.i984
  %2302 = inttoptr i64 %2299 to i64*
  %2303 = load i64, i64* %2302
  store i64 %2303, i64* %RAX.i985, align 8
  store %struct.Memory* %loadMem_4367b3, %struct.Memory** %MEMORY
  %loadMem_4367b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 5
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RCX.i982 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 15
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RBP.i983 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RBP.i983
  %2314 = sub i64 %2313, 80
  %2315 = load i64, i64* %PC.i981
  %2316 = add i64 %2315, 3
  store i64 %2316, i64* %PC.i981
  %2317 = inttoptr i64 %2314 to i32*
  %2318 = load i32, i32* %2317
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RCX.i982, align 8
  store %struct.Memory* %loadMem_4367b7, %struct.Memory** %MEMORY
  %loadMem_4367ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i980 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RCX.i980
  %2327 = load i64, i64* %PC.i979
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC.i979
  %2329 = trunc i64 %2326 to i32
  %2330 = sub i32 %2329, 1
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RCX.i980, align 8
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
  store %struct.Memory* %loadMem_4367ba, %struct.Memory** %MEMORY
  %loadMem_4367bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 5
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %ECX.i977 = bitcast %union.anon* %2365 to i32*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 7
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RDX.i978 = bitcast %union.anon* %2368 to i64*
  %2369 = load i32, i32* %ECX.i977
  %2370 = zext i32 %2369 to i64
  %2371 = load i64, i64* %PC.i976
  %2372 = add i64 %2371, 3
  store i64 %2372, i64* %PC.i976
  %2373 = shl i64 %2370, 32
  %2374 = ashr exact i64 %2373, 32
  store i64 %2374, i64* %RDX.i978, align 8
  store %struct.Memory* %loadMem_4367bd, %struct.Memory** %MEMORY
  %loadMem_4367c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 1
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RAX.i973 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 5
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RCX.i974 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 7
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RDX.i975 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RAX.i973
  %2388 = load i64, i64* %RDX.i975
  %2389 = mul i64 %2388, 4
  %2390 = add i64 %2389, %2387
  %2391 = load i64, i64* %PC.i972
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC.i972
  %2393 = inttoptr i64 %2390 to i32*
  %2394 = load i32, i32* %2393
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RCX.i974, align 8
  store %struct.Memory* %loadMem_4367c0, %struct.Memory** %MEMORY
  %loadMem_4367c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 5
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %ECX.i970 = bitcast %union.anon* %2401 to i32*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 15
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RBP.i971 = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %RBP.i971
  %2406 = sub i64 %2405, 84
  %2407 = load i32, i32* %ECX.i970
  %2408 = zext i32 %2407 to i64
  %2409 = load i64, i64* %PC.i969
  %2410 = add i64 %2409, 3
  store i64 %2410, i64* %PC.i969
  %2411 = inttoptr i64 %2406 to i32*
  store i32 %2407, i32* %2411
  store %struct.Memory* %loadMem_4367c3, %struct.Memory** %MEMORY
  %loadMem_4367c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 1
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RBP.i968
  %2422 = sub i64 %2421, 56
  %2423 = load i64, i64* %PC.i966
  %2424 = add i64 %2423, 4
  store i64 %2424, i64* %PC.i966
  %2425 = inttoptr i64 %2422 to i64*
  %2426 = load i64, i64* %2425
  store i64 %2426, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_4367c6, %struct.Memory** %MEMORY
  %loadMem_4367ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 7
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RDX.i964 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 15
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RBP.i965 = bitcast %union.anon* %2435 to i64*
  %2436 = load i64, i64* %RBP.i965
  %2437 = sub i64 %2436, 76
  %2438 = load i64, i64* %PC.i963
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %PC.i963
  %2440 = inttoptr i64 %2437 to i32*
  %2441 = load i32, i32* %2440
  %2442 = sext i32 %2441 to i64
  store i64 %2442, i64* %RDX.i964, align 8
  store %struct.Memory* %loadMem_4367ca, %struct.Memory** %MEMORY
  %loadMem_4367ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 1
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RAX.i961 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 7
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RDX.i962 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %RAX.i961
  %2453 = load i64, i64* %RDX.i962
  %2454 = mul i64 %2453, 8
  %2455 = add i64 %2454, %2452
  %2456 = load i64, i64* %PC.i960
  %2457 = add i64 %2456, 4
  store i64 %2457, i64* %PC.i960
  %2458 = inttoptr i64 %2455 to i64*
  %2459 = load i64, i64* %2458
  store i64 %2459, i64* %RAX.i961, align 8
  store %struct.Memory* %loadMem_4367ce, %struct.Memory** %MEMORY
  %loadMem_4367d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 7
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RDX.i958 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 15
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %RBP.i959
  %2470 = sub i64 %2469, 80
  %2471 = load i64, i64* %PC.i957
  %2472 = add i64 %2471, 4
  store i64 %2472, i64* %PC.i957
  %2473 = inttoptr i64 %2470 to i32*
  %2474 = load i32, i32* %2473
  %2475 = sext i32 %2474 to i64
  store i64 %2475, i64* %RDX.i958, align 8
  store %struct.Memory* %loadMem_4367d2, %struct.Memory** %MEMORY
  %loadMem_4367d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 5
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %ECX.i954 = bitcast %union.anon* %2481 to i32*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 1
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 7
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RDX.i956 = bitcast %union.anon* %2487 to i64*
  %2488 = load i32, i32* %ECX.i954
  %2489 = zext i32 %2488 to i64
  %2490 = load i64, i64* %RAX.i955
  %2491 = load i64, i64* %RDX.i956
  %2492 = mul i64 %2491, 4
  %2493 = add i64 %2492, %2490
  %2494 = load i64, i64* %PC.i953
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC.i953
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = sub i32 %2488, %2497
  %2499 = icmp ult i32 %2488, %2497
  %2500 = zext i1 %2499 to i8
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2500, i8* %2501, align 1
  %2502 = and i32 %2498, 255
  %2503 = call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2506, i8* %2507, align 1
  %2508 = xor i32 %2497, %2488
  %2509 = xor i32 %2508, %2498
  %2510 = lshr i32 %2509, 4
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2512, i8* %2513, align 1
  %2514 = icmp eq i32 %2498, 0
  %2515 = zext i1 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2515, i8* %2516, align 1
  %2517 = lshr i32 %2498, 31
  %2518 = trunc i32 %2517 to i8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2518, i8* %2519, align 1
  %2520 = lshr i32 %2488, 31
  %2521 = lshr i32 %2497, 31
  %2522 = xor i32 %2521, %2520
  %2523 = xor i32 %2517, %2520
  %2524 = add i32 %2523, %2522
  %2525 = icmp eq i32 %2524, 2
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2526, i8* %2527, align 1
  store %struct.Memory* %loadMem_4367d6, %struct.Memory** %MEMORY
  %loadMem_4367d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %2530 to i64*
  %2531 = load i64, i64* %PC.i952
  %2532 = add i64 %2531, 28
  %2533 = load i64, i64* %PC.i952
  %2534 = add i64 %2533, 6
  %2535 = load i64, i64* %PC.i952
  %2536 = add i64 %2535, 6
  store i64 %2536, i64* %PC.i952
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2538 = load i8, i8* %2537, align 1
  %2539 = icmp ne i8 %2538, 0
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2541 = load i8, i8* %2540, align 1
  %2542 = icmp ne i8 %2541, 0
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2544 = load i8, i8* %2543, align 1
  %2545 = icmp ne i8 %2544, 0
  %2546 = xor i1 %2542, %2545
  %2547 = or i1 %2539, %2546
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %BRANCH_TAKEN, align 1
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2550 = select i1 %2547, i64 %2532, i64 %2534
  store i64 %2550, i64* %2549, align 8
  store %struct.Memory* %loadMem_4367d9, %struct.Memory** %MEMORY
  %loadBr_4367d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4367d9 = icmp eq i8 %loadBr_4367d9, 1
  br i1 %cmpBr_4367d9, label %block_.L_4367f5, label %block_4367df

block_4367df:                                     ; preds = %block_.L_4367a6
  %loadMem_4367df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 1
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 15
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %RBP.i951
  %2561 = sub i64 %2560, 84
  %2562 = load i64, i64* %PC.i949
  %2563 = add i64 %2562, 3
  store i64 %2563, i64* %PC.i949
  %2564 = inttoptr i64 %2561 to i32*
  %2565 = load i32, i32* %2564
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RAX.i950, align 8
  store %struct.Memory* %loadMem_4367df, %struct.Memory** %MEMORY
  %loadMem_4367e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 5
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RCX.i947 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 15
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %RBP.i948
  %2577 = sub i64 %2576, 56
  %2578 = load i64, i64* %PC.i946
  %2579 = add i64 %2578, 4
  store i64 %2579, i64* %PC.i946
  %2580 = inttoptr i64 %2577 to i64*
  %2581 = load i64, i64* %2580
  store i64 %2581, i64* %RCX.i947, align 8
  store %struct.Memory* %loadMem_4367e2, %struct.Memory** %MEMORY
  %loadMem_4367e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 7
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RDX.i944 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 15
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %RBP.i945
  %2592 = sub i64 %2591, 76
  %2593 = load i64, i64* %PC.i943
  %2594 = add i64 %2593, 4
  store i64 %2594, i64* %PC.i943
  %2595 = inttoptr i64 %2592 to i32*
  %2596 = load i32, i32* %2595
  %2597 = sext i32 %2596 to i64
  store i64 %2597, i64* %RDX.i944, align 8
  store %struct.Memory* %loadMem_4367e6, %struct.Memory** %MEMORY
  %loadMem_4367ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 5
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RCX.i941 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 7
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RDX.i942 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %RCX.i941
  %2608 = load i64, i64* %RDX.i942
  %2609 = mul i64 %2608, 8
  %2610 = add i64 %2609, %2607
  %2611 = load i64, i64* %PC.i940
  %2612 = add i64 %2611, 4
  store i64 %2612, i64* %PC.i940
  %2613 = inttoptr i64 %2610 to i64*
  %2614 = load i64, i64* %2613
  store i64 %2614, i64* %RCX.i941, align 8
  store %struct.Memory* %loadMem_4367ea, %struct.Memory** %MEMORY
  %loadMem_4367ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 7
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RDX.i938 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 15
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %2623 to i64*
  %2624 = load i64, i64* %RBP.i939
  %2625 = sub i64 %2624, 80
  %2626 = load i64, i64* %PC.i937
  %2627 = add i64 %2626, 4
  store i64 %2627, i64* %PC.i937
  %2628 = inttoptr i64 %2625 to i32*
  %2629 = load i32, i32* %2628
  %2630 = sext i32 %2629 to i64
  store i64 %2630, i64* %RDX.i938, align 8
  store %struct.Memory* %loadMem_4367ee, %struct.Memory** %MEMORY
  %loadMem_4367f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 1
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %EAX.i934 = bitcast %union.anon* %2636 to i32*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 5
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RCX.i935 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 7
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RDX.i936 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %RCX.i935
  %2644 = load i64, i64* %RDX.i936
  %2645 = mul i64 %2644, 4
  %2646 = add i64 %2645, %2643
  %2647 = load i32, i32* %EAX.i934
  %2648 = zext i32 %2647 to i64
  %2649 = load i64, i64* %PC.i933
  %2650 = add i64 %2649, 3
  store i64 %2650, i64* %PC.i933
  %2651 = inttoptr i64 %2646 to i32*
  store i32 %2647, i32* %2651
  store %struct.Memory* %loadMem_4367f2, %struct.Memory** %MEMORY
  br label %block_.L_4367f5

block_.L_4367f5:                                  ; preds = %block_4367df, %block_.L_4367a6
  %loadMem_4367f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 1
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 15
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %2660 to i64*
  %2661 = load i64, i64* %RBP.i932
  %2662 = sub i64 %2661, 48
  %2663 = load i64, i64* %PC.i930
  %2664 = add i64 %2663, 4
  store i64 %2664, i64* %PC.i930
  %2665 = inttoptr i64 %2662 to i64*
  %2666 = load i64, i64* %2665
  store i64 %2666, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_4367f5, %struct.Memory** %MEMORY
  %loadMem_4367f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 5
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RCX.i928 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i929
  %2677 = sub i64 %2676, 76
  %2678 = load i64, i64* %PC.i927
  %2679 = add i64 %2678, 3
  store i64 %2679, i64* %PC.i927
  %2680 = inttoptr i64 %2677 to i32*
  %2681 = load i32, i32* %2680
  %2682 = zext i32 %2681 to i64
  store i64 %2682, i64* %RCX.i928, align 8
  store %struct.Memory* %loadMem_4367f9, %struct.Memory** %MEMORY
  %loadMem_4367fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 5
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RCX.i926 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RCX.i926
  %2690 = load i64, i64* %PC.i925
  %2691 = add i64 %2690, 3
  store i64 %2691, i64* %PC.i925
  %2692 = trunc i64 %2689 to i32
  %2693 = sub i32 %2692, 1
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RCX.i926, align 8
  %2695 = icmp ult i32 %2692, 1
  %2696 = zext i1 %2695 to i8
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2696, i8* %2697, align 1
  %2698 = and i32 %2693, 255
  %2699 = call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2702, i8* %2703, align 1
  %2704 = xor i64 1, %2689
  %2705 = trunc i64 %2704 to i32
  %2706 = xor i32 %2705, %2693
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2709, i8* %2710, align 1
  %2711 = icmp eq i32 %2693, 0
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2712, i8* %2713, align 1
  %2714 = lshr i32 %2693, 31
  %2715 = trunc i32 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2715, i8* %2716, align 1
  %2717 = lshr i32 %2692, 31
  %2718 = xor i32 %2714, %2717
  %2719 = add i32 %2718, %2717
  %2720 = icmp eq i32 %2719, 2
  %2721 = zext i1 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2721, i8* %2722, align 1
  store %struct.Memory* %loadMem_4367fc, %struct.Memory** %MEMORY
  %loadMem_4367ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 5
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %ECX.i923 = bitcast %union.anon* %2728 to i32*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 7
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RDX.i924 = bitcast %union.anon* %2731 to i64*
  %2732 = load i32, i32* %ECX.i923
  %2733 = zext i32 %2732 to i64
  %2734 = load i64, i64* %PC.i922
  %2735 = add i64 %2734, 3
  store i64 %2735, i64* %PC.i922
  %2736 = shl i64 %2733, 32
  %2737 = ashr exact i64 %2736, 32
  store i64 %2737, i64* %RDX.i924, align 8
  store %struct.Memory* %loadMem_4367ff, %struct.Memory** %MEMORY
  %loadMem_436802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 1
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RAX.i920 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 7
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RDX.i921 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %RAX.i920
  %2748 = load i64, i64* %RDX.i921
  %2749 = mul i64 %2748, 8
  %2750 = add i64 %2749, %2747
  %2751 = load i64, i64* %PC.i919
  %2752 = add i64 %2751, 4
  store i64 %2752, i64* %PC.i919
  %2753 = inttoptr i64 %2750 to i64*
  %2754 = load i64, i64* %2753
  store i64 %2754, i64* %RAX.i920, align 8
  store %struct.Memory* %loadMem_436802, %struct.Memory** %MEMORY
  %loadMem_436806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 1
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RAX.i917 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 5
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RCX.i918 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RAX.i917
  %2765 = load i64, i64* %PC.i916
  %2766 = add i64 %2765, 2
  store i64 %2766, i64* %PC.i916
  %2767 = inttoptr i64 %2764 to i32*
  %2768 = load i32, i32* %2767
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RCX.i918, align 8
  store %struct.Memory* %loadMem_436806, %struct.Memory** %MEMORY
  %loadMem_436808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 5
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %ECX.i914 = bitcast %union.anon* %2775 to i32*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i915
  %2780 = sub i64 %2779, 84
  %2781 = load i32, i32* %ECX.i914
  %2782 = zext i32 %2781 to i64
  %2783 = load i64, i64* %PC.i913
  %2784 = add i64 %2783, 3
  store i64 %2784, i64* %PC.i913
  %2785 = inttoptr i64 %2780 to i32*
  store i32 %2781, i32* %2785
  store %struct.Memory* %loadMem_436808, %struct.Memory** %MEMORY
  %loadMem_43680b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 1
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 15
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RBP.i912
  %2796 = sub i64 %2795, 56
  %2797 = load i64, i64* %PC.i910
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC.i910
  %2799 = inttoptr i64 %2796 to i64*
  %2800 = load i64, i64* %2799
  store i64 %2800, i64* %RAX.i911, align 8
  store %struct.Memory* %loadMem_43680b, %struct.Memory** %MEMORY
  %loadMem_43680f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 7
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RDX.i908 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RBP.i909
  %2811 = sub i64 %2810, 76
  %2812 = load i64, i64* %PC.i907
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i907
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = sext i32 %2815 to i64
  store i64 %2816, i64* %RDX.i908, align 8
  store %struct.Memory* %loadMem_43680f, %struct.Memory** %MEMORY
  %loadMem_436813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 1
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RAX.i905 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 7
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RDX.i906 = bitcast %union.anon* %2825 to i64*
  %2826 = load i64, i64* %RAX.i905
  %2827 = load i64, i64* %RDX.i906
  %2828 = mul i64 %2827, 8
  %2829 = add i64 %2828, %2826
  %2830 = load i64, i64* %PC.i904
  %2831 = add i64 %2830, 4
  store i64 %2831, i64* %PC.i904
  %2832 = inttoptr i64 %2829 to i64*
  %2833 = load i64, i64* %2832
  store i64 %2833, i64* %RAX.i905, align 8
  store %struct.Memory* %loadMem_436813, %struct.Memory** %MEMORY
  %loadMem_436817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 7
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RDX.i902 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 15
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %2842 to i64*
  %2843 = load i64, i64* %RBP.i903
  %2844 = sub i64 %2843, 80
  %2845 = load i64, i64* %PC.i901
  %2846 = add i64 %2845, 4
  store i64 %2846, i64* %PC.i901
  %2847 = inttoptr i64 %2844 to i32*
  %2848 = load i32, i32* %2847
  %2849 = sext i32 %2848 to i64
  store i64 %2849, i64* %RDX.i902, align 8
  store %struct.Memory* %loadMem_436817, %struct.Memory** %MEMORY
  %loadMem_43681b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 5
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %ECX.i898 = bitcast %union.anon* %2855 to i32*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 1
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RAX.i899 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 7
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RDX.i900 = bitcast %union.anon* %2861 to i64*
  %2862 = load i32, i32* %ECX.i898
  %2863 = zext i32 %2862 to i64
  %2864 = load i64, i64* %RAX.i899
  %2865 = load i64, i64* %RDX.i900
  %2866 = mul i64 %2865, 4
  %2867 = add i64 %2866, %2864
  %2868 = load i64, i64* %PC.i897
  %2869 = add i64 %2868, 3
  store i64 %2869, i64* %PC.i897
  %2870 = inttoptr i64 %2867 to i32*
  %2871 = load i32, i32* %2870
  %2872 = sub i32 %2862, %2871
  %2873 = icmp ult i32 %2862, %2871
  %2874 = zext i1 %2873 to i8
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2874, i8* %2875, align 1
  %2876 = and i32 %2872, 255
  %2877 = call i32 @llvm.ctpop.i32(i32 %2876)
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  %2880 = xor i8 %2879, 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2880, i8* %2881, align 1
  %2882 = xor i32 %2871, %2862
  %2883 = xor i32 %2882, %2872
  %2884 = lshr i32 %2883, 4
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2886, i8* %2887, align 1
  %2888 = icmp eq i32 %2872, 0
  %2889 = zext i1 %2888 to i8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2889, i8* %2890, align 1
  %2891 = lshr i32 %2872, 31
  %2892 = trunc i32 %2891 to i8
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2892, i8* %2893, align 1
  %2894 = lshr i32 %2862, 31
  %2895 = lshr i32 %2871, 31
  %2896 = xor i32 %2895, %2894
  %2897 = xor i32 %2891, %2894
  %2898 = add i32 %2897, %2896
  %2899 = icmp eq i32 %2898, 2
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2900, i8* %2901, align 1
  store %struct.Memory* %loadMem_43681b, %struct.Memory** %MEMORY
  %loadMem_43681e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %PC.i896
  %2906 = add i64 %2905, 28
  %2907 = load i64, i64* %PC.i896
  %2908 = add i64 %2907, 6
  %2909 = load i64, i64* %PC.i896
  %2910 = add i64 %2909, 6
  store i64 %2910, i64* %PC.i896
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2912 = load i8, i8* %2911, align 1
  %2913 = icmp ne i8 %2912, 0
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2915 = load i8, i8* %2914, align 1
  %2916 = icmp ne i8 %2915, 0
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2918 = load i8, i8* %2917, align 1
  %2919 = icmp ne i8 %2918, 0
  %2920 = xor i1 %2916, %2919
  %2921 = or i1 %2913, %2920
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %BRANCH_TAKEN, align 1
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2924 = select i1 %2921, i64 %2906, i64 %2908
  store i64 %2924, i64* %2923, align 8
  store %struct.Memory* %loadMem_43681e, %struct.Memory** %MEMORY
  %loadBr_43681e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43681e = icmp eq i8 %loadBr_43681e, 1
  br i1 %cmpBr_43681e, label %block_.L_43683a, label %block_436824

block_436824:                                     ; preds = %block_.L_4367f5
  %loadMem_436824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 1
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RBP.i895
  %2935 = sub i64 %2934, 84
  %2936 = load i64, i64* %PC.i893
  %2937 = add i64 %2936, 3
  store i64 %2937, i64* %PC.i893
  %2938 = inttoptr i64 %2935 to i32*
  %2939 = load i32, i32* %2938
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RAX.i894, align 8
  store %struct.Memory* %loadMem_436824, %struct.Memory** %MEMORY
  %loadMem_436827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 5
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RCX.i891 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 15
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RBP.i892
  %2951 = sub i64 %2950, 56
  %2952 = load i64, i64* %PC.i890
  %2953 = add i64 %2952, 4
  store i64 %2953, i64* %PC.i890
  %2954 = inttoptr i64 %2951 to i64*
  %2955 = load i64, i64* %2954
  store i64 %2955, i64* %RCX.i891, align 8
  store %struct.Memory* %loadMem_436827, %struct.Memory** %MEMORY
  %loadMem_43682b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 7
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RDX.i888 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 15
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %RBP.i889
  %2966 = sub i64 %2965, 76
  %2967 = load i64, i64* %PC.i887
  %2968 = add i64 %2967, 4
  store i64 %2968, i64* %PC.i887
  %2969 = inttoptr i64 %2966 to i32*
  %2970 = load i32, i32* %2969
  %2971 = sext i32 %2970 to i64
  store i64 %2971, i64* %RDX.i888, align 8
  store %struct.Memory* %loadMem_43682b, %struct.Memory** %MEMORY
  %loadMem_43682f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 5
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RCX.i885 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 7
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RDX.i886 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %RCX.i885
  %2982 = load i64, i64* %RDX.i886
  %2983 = mul i64 %2982, 8
  %2984 = add i64 %2983, %2981
  %2985 = load i64, i64* %PC.i884
  %2986 = add i64 %2985, 4
  store i64 %2986, i64* %PC.i884
  %2987 = inttoptr i64 %2984 to i64*
  %2988 = load i64, i64* %2987
  store i64 %2988, i64* %RCX.i885, align 8
  store %struct.Memory* %loadMem_43682f, %struct.Memory** %MEMORY
  %loadMem_436833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 7
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RDX.i882 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i883
  %2999 = sub i64 %2998, 80
  %3000 = load i64, i64* %PC.i881
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i881
  %3002 = inttoptr i64 %2999 to i32*
  %3003 = load i32, i32* %3002
  %3004 = sext i32 %3003 to i64
  store i64 %3004, i64* %RDX.i882, align 8
  store %struct.Memory* %loadMem_436833, %struct.Memory** %MEMORY
  %loadMem_436837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 1
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %EAX.i878 = bitcast %union.anon* %3010 to i32*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 5
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RCX.i879 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 7
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RDX.i880 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %RCX.i879
  %3018 = load i64, i64* %RDX.i880
  %3019 = mul i64 %3018, 4
  %3020 = add i64 %3019, %3017
  %3021 = load i32, i32* %EAX.i878
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %PC.i877
  %3024 = add i64 %3023, 3
  store i64 %3024, i64* %PC.i877
  %3025 = inttoptr i64 %3020 to i32*
  store i32 %3021, i32* %3025
  store %struct.Memory* %loadMem_436837, %struct.Memory** %MEMORY
  br label %block_.L_43683a

block_.L_43683a:                                  ; preds = %block_436824, %block_.L_4367f5
  %loadMem_43683a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 1
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RBP.i876
  %3036 = sub i64 %3035, 56
  %3037 = load i64, i64* %PC.i874
  %3038 = add i64 %3037, 4
  store i64 %3038, i64* %PC.i874
  %3039 = inttoptr i64 %3036 to i64*
  %3040 = load i64, i64* %3039
  store i64 %3040, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_43683a, %struct.Memory** %MEMORY
  %loadMem_43683e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 5
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 15
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RBP.i873
  %3051 = sub i64 %3050, 76
  %3052 = load i64, i64* %PC.i871
  %3053 = add i64 %3052, 4
  store i64 %3053, i64* %PC.i871
  %3054 = inttoptr i64 %3051 to i32*
  %3055 = load i32, i32* %3054
  %3056 = sext i32 %3055 to i64
  store i64 %3056, i64* %RCX.i872, align 8
  store %struct.Memory* %loadMem_43683e, %struct.Memory** %MEMORY
  %loadMem_436842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 1
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 5
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RCX.i870 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RAX.i869
  %3067 = load i64, i64* %RCX.i870
  %3068 = mul i64 %3067, 8
  %3069 = add i64 %3068, %3066
  %3070 = load i64, i64* %PC.i868
  %3071 = add i64 %3070, 4
  store i64 %3071, i64* %PC.i868
  %3072 = inttoptr i64 %3069 to i64*
  %3073 = load i64, i64* %3072
  store i64 %3073, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_436842, %struct.Memory** %MEMORY
  %loadMem_436846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 5
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 15
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RBP.i867
  %3084 = sub i64 %3083, 80
  %3085 = load i64, i64* %PC.i865
  %3086 = add i64 %3085, 4
  store i64 %3086, i64* %PC.i865
  %3087 = inttoptr i64 %3084 to i32*
  %3088 = load i32, i32* %3087
  %3089 = sext i32 %3088 to i64
  store i64 %3089, i64* %RCX.i866, align 8
  store %struct.Memory* %loadMem_436846, %struct.Memory** %MEMORY
  %loadMem_43684a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 1
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 5
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 11
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RDI.i864 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RAX.i862
  %3103 = load i64, i64* %RCX.i863
  %3104 = mul i64 %3103, 4
  %3105 = add i64 %3104, %3102
  %3106 = load i64, i64* %PC.i861
  %3107 = add i64 %3106, 3
  store i64 %3107, i64* %PC.i861
  %3108 = inttoptr i64 %3105 to i32*
  %3109 = load i32, i32* %3108
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RDI.i864, align 8
  store %struct.Memory* %loadMem_43684a, %struct.Memory** %MEMORY
  %loadMem_43684d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 33
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 1
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 15
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %3119 to i64*
  %3120 = load i64, i64* %RBP.i860
  %3121 = sub i64 %3120, 16
  %3122 = load i64, i64* %PC.i858
  %3123 = add i64 %3122, 4
  store i64 %3123, i64* %PC.i858
  %3124 = inttoptr i64 %3121 to i64*
  %3125 = load i64, i64* %3124
  store i64 %3125, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_43684d, %struct.Memory** %MEMORY
  %loadMem_436851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 1
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %RAX.i857
  %3133 = add i64 %3132, 8
  %3134 = load i64, i64* %PC.i856
  %3135 = add i64 %3134, 4
  store i64 %3135, i64* %PC.i856
  %3136 = inttoptr i64 %3133 to i64*
  %3137 = load i64, i64* %3136
  store i64 %3137, i64* %RAX.i857, align 8
  store %struct.Memory* %loadMem_436851, %struct.Memory** %MEMORY
  %loadMem_436855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 5
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 15
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %RBP.i855
  %3148 = sub i64 %3147, 76
  %3149 = load i64, i64* %PC.i853
  %3150 = add i64 %3149, 4
  store i64 %3150, i64* %PC.i853
  %3151 = inttoptr i64 %3148 to i32*
  %3152 = load i32, i32* %3151
  %3153 = sext i32 %3152 to i64
  store i64 %3153, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_436855, %struct.Memory** %MEMORY
  %loadMem_436859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 1
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 5
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RCX.i852 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %RAX.i851
  %3164 = load i64, i64* %RCX.i852
  %3165 = mul i64 %3164, 8
  %3166 = add i64 %3165, %3163
  %3167 = load i64, i64* %PC.i850
  %3168 = add i64 %3167, 4
  store i64 %3168, i64* %PC.i850
  %3169 = inttoptr i64 %3166 to i64*
  %3170 = load i64, i64* %3169
  store i64 %3170, i64* %RAX.i851, align 8
  store %struct.Memory* %loadMem_436859, %struct.Memory** %MEMORY
  %loadMem_43685d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 5
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 15
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RBP.i849
  %3181 = sub i64 %3180, 80
  %3182 = load i64, i64* %PC.i847
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i847
  %3184 = inttoptr i64 %3181 to i32*
  %3185 = load i32, i32* %3184
  %3186 = sext i32 %3185 to i64
  store i64 %3186, i64* %RCX.i848, align 8
  store %struct.Memory* %loadMem_43685d, %struct.Memory** %MEMORY
  %loadMem_436861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RAX.i844 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 5
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RCX.i845 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 9
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RSI.i846 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RAX.i844
  %3200 = load i64, i64* %RCX.i845
  %3201 = mul i64 %3200, 4
  %3202 = add i64 %3201, %3199
  %3203 = load i64, i64* %PC.i843
  %3204 = add i64 %3203, 3
  store i64 %3204, i64* %PC.i843
  %3205 = inttoptr i64 %3202 to i32*
  %3206 = load i32, i32* %3205
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RSI.i846, align 8
  store %struct.Memory* %loadMem_436861, %struct.Memory** %MEMORY
  %loadMem1_436864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %3210 to i64*
  %3211 = load i64, i64* %PC.i842
  %3212 = add i64 %3211, -59060
  %3213 = load i64, i64* %PC.i842
  %3214 = add i64 %3213, 5
  %3215 = load i64, i64* %PC.i842
  %3216 = add i64 %3215, 5
  store i64 %3216, i64* %PC.i842
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3218 = load i64, i64* %3217, align 8
  %3219 = add i64 %3218, -8
  %3220 = inttoptr i64 %3219 to i64*
  store i64 %3214, i64* %3220
  store i64 %3219, i64* %3217, align 8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3212, i64* %3221, align 8
  store %struct.Memory* %loadMem1_436864, %struct.Memory** %MEMORY
  %loadMem2_436864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436864 = load i64, i64* %3
  %call2_436864 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436864, %struct.Memory* %loadMem2_436864)
  store %struct.Memory* %call2_436864, %struct.Memory** %MEMORY
  %loadMem_436869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 33
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 5
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 15
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RBP.i841
  %3232 = sub i64 %3231, 56
  %3233 = load i64, i64* %PC.i839
  %3234 = add i64 %3233, 4
  store i64 %3234, i64* %PC.i839
  %3235 = inttoptr i64 %3232 to i64*
  %3236 = load i64, i64* %3235
  store i64 %3236, i64* %RCX.i840, align 8
  store %struct.Memory* %loadMem_436869, %struct.Memory** %MEMORY
  %loadMem_43686d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 7
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RDX.i837 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i838
  %3247 = sub i64 %3246, 76
  %3248 = load i64, i64* %PC.i836
  %3249 = add i64 %3248, 4
  store i64 %3249, i64* %PC.i836
  %3250 = inttoptr i64 %3247 to i32*
  %3251 = load i32, i32* %3250
  %3252 = sext i32 %3251 to i64
  store i64 %3252, i64* %RDX.i837, align 8
  store %struct.Memory* %loadMem_43686d, %struct.Memory** %MEMORY
  %loadMem_436871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 5
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 7
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %3261 to i64*
  %3262 = load i64, i64* %RCX.i834
  %3263 = load i64, i64* %RDX.i835
  %3264 = mul i64 %3263, 8
  %3265 = add i64 %3264, %3262
  %3266 = load i64, i64* %PC.i833
  %3267 = add i64 %3266, 4
  store i64 %3267, i64* %PC.i833
  %3268 = inttoptr i64 %3265 to i64*
  %3269 = load i64, i64* %3268
  store i64 %3269, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_436871, %struct.Memory** %MEMORY
  %loadMem_436875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 7
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RDX.i831 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 15
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %RBP.i832
  %3280 = sub i64 %3279, 80
  %3281 = load i64, i64* %PC.i830
  %3282 = add i64 %3281, 4
  store i64 %3282, i64* %PC.i830
  %3283 = inttoptr i64 %3280 to i32*
  %3284 = load i32, i32* %3283
  %3285 = sext i32 %3284 to i64
  store i64 %3285, i64* %RDX.i831, align 8
  store %struct.Memory* %loadMem_436875, %struct.Memory** %MEMORY
  %loadMem_436879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 1
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %EAX.i827 = bitcast %union.anon* %3291 to i32*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 5
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 7
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RDX.i829 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RCX.i828
  %3299 = load i64, i64* %RDX.i829
  %3300 = mul i64 %3299, 4
  %3301 = add i64 %3300, %3298
  %3302 = load i32, i32* %EAX.i827
  %3303 = zext i32 %3302 to i64
  %3304 = load i64, i64* %PC.i826
  %3305 = add i64 %3304, 3
  store i64 %3305, i64* %PC.i826
  %3306 = inttoptr i64 %3301 to i32*
  store i32 %3302, i32* %3306
  store %struct.Memory* %loadMem_436879, %struct.Memory** %MEMORY
  %loadMem_43687c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 5
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 15
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RBP.i825
  %3317 = sub i64 %3316, 72
  %3318 = load i64, i64* %PC.i823
  %3319 = add i64 %3318, 4
  store i64 %3319, i64* %PC.i823
  %3320 = inttoptr i64 %3317 to i64*
  %3321 = load i64, i64* %3320
  store i64 %3321, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_43687c, %struct.Memory** %MEMORY
  %loadMem_436880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %3324 to i64*
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 7
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %RDX.i821 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 15
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RBP.i822
  %3332 = sub i64 %3331, 76
  %3333 = load i64, i64* %PC.i820
  %3334 = add i64 %3333, 4
  store i64 %3334, i64* %PC.i820
  %3335 = inttoptr i64 %3332 to i32*
  %3336 = load i32, i32* %3335
  %3337 = sext i32 %3336 to i64
  store i64 %3337, i64* %RDX.i821, align 8
  store %struct.Memory* %loadMem_436880, %struct.Memory** %MEMORY
  %loadMem_436884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 5
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RCX.i818 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 7
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RDX.i819 = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %RCX.i818
  %3348 = load i64, i64* %RDX.i819
  %3349 = mul i64 %3348, 8
  %3350 = add i64 %3349, %3347
  %3351 = load i64, i64* %PC.i817
  %3352 = add i64 %3351, 4
  store i64 %3352, i64* %PC.i817
  %3353 = inttoptr i64 %3350 to i64*
  %3354 = load i64, i64* %3353
  store i64 %3354, i64* %RCX.i818, align 8
  store %struct.Memory* %loadMem_436884, %struct.Memory** %MEMORY
  %loadMem_436888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 7
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RDX.i815 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 15
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %RBP.i816
  %3365 = sub i64 %3364, 80
  %3366 = load i64, i64* %PC.i814
  %3367 = add i64 %3366, 4
  store i64 %3367, i64* %PC.i814
  %3368 = inttoptr i64 %3365 to i32*
  %3369 = load i32, i32* %3368
  %3370 = sext i32 %3369 to i64
  store i64 %3370, i64* %RDX.i815, align 8
  store %struct.Memory* %loadMem_436888, %struct.Memory** %MEMORY
  %loadMem_43688c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 5
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 7
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RDX.i813 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %RCX.i812
  %3381 = load i64, i64* %RDX.i813
  %3382 = mul i64 %3381, 4
  %3383 = add i64 %3382, %3380
  %3384 = load i64, i64* %PC.i811
  %3385 = add i64 %3384, 7
  store i64 %3385, i64* %PC.i811
  %3386 = inttoptr i64 %3383 to i32*
  store i32 -987654321, i32* %3386
  store %struct.Memory* %loadMem_43688c, %struct.Memory** %MEMORY
  %loadMem_436893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 5
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RCX.i809 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 15
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %RBP.i810
  %3397 = sub i64 %3396, 56
  %3398 = load i64, i64* %PC.i808
  %3399 = add i64 %3398, 4
  store i64 %3399, i64* %PC.i808
  %3400 = inttoptr i64 %3397 to i64*
  %3401 = load i64, i64* %3400
  store i64 %3401, i64* %RCX.i809, align 8
  store %struct.Memory* %loadMem_436893, %struct.Memory** %MEMORY
  %loadMem_436897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 7
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RDX.i806 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 15
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RBP.i807
  %3412 = sub i64 %3411, 76
  %3413 = load i64, i64* %PC.i805
  %3414 = add i64 %3413, 4
  store i64 %3414, i64* %PC.i805
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = sext i32 %3416 to i64
  store i64 %3417, i64* %RDX.i806, align 8
  store %struct.Memory* %loadMem_436897, %struct.Memory** %MEMORY
  %loadMem_43689b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 5
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 7
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RDX.i804 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RCX.i803
  %3428 = load i64, i64* %RDX.i804
  %3429 = mul i64 %3428, 8
  %3430 = add i64 %3429, %3427
  %3431 = load i64, i64* %PC.i802
  %3432 = add i64 %3431, 4
  store i64 %3432, i64* %PC.i802
  %3433 = inttoptr i64 %3430 to i64*
  %3434 = load i64, i64* %3433
  store i64 %3434, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_43689b, %struct.Memory** %MEMORY
  %loadMem_43689f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 1
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 15
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RBP.i801
  %3445 = sub i64 %3444, 80
  %3446 = load i64, i64* %PC.i799
  %3447 = add i64 %3446, 3
  store i64 %3447, i64* %PC.i799
  %3448 = inttoptr i64 %3445 to i32*
  %3449 = load i32, i32* %3448
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_43689f, %struct.Memory** %MEMORY
  %loadMem_4368a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 1
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RAX.i798
  %3458 = load i64, i64* %PC.i797
  %3459 = add i64 %3458, 3
  store i64 %3459, i64* %PC.i797
  %3460 = trunc i64 %3457 to i32
  %3461 = sub i32 %3460, 1
  %3462 = zext i32 %3461 to i64
  store i64 %3462, i64* %RAX.i798, align 8
  %3463 = icmp ult i32 %3460, 1
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3464, i8* %3465, align 1
  %3466 = and i32 %3461, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = xor i64 1, %3457
  %3473 = trunc i64 %3472 to i32
  %3474 = xor i32 %3473, %3461
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3477, i8* %3478, align 1
  %3479 = icmp eq i32 %3461, 0
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3461, 31
  %3483 = trunc i32 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3483, i8* %3484, align 1
  %3485 = lshr i32 %3460, 31
  %3486 = xor i32 %3482, %3485
  %3487 = add i32 %3486, %3485
  %3488 = icmp eq i32 %3487, 2
  %3489 = zext i1 %3488 to i8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3489, i8* %3490, align 1
  store %struct.Memory* %loadMem_4368a2, %struct.Memory** %MEMORY
  %loadMem_4368a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 1
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %EAX.i795 = bitcast %union.anon* %3496 to i32*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 7
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RDX.i796 = bitcast %union.anon* %3499 to i64*
  %3500 = load i32, i32* %EAX.i795
  %3501 = zext i32 %3500 to i64
  %3502 = load i64, i64* %PC.i794
  %3503 = add i64 %3502, 3
  store i64 %3503, i64* %PC.i794
  %3504 = shl i64 %3501, 32
  %3505 = ashr exact i64 %3504, 32
  store i64 %3505, i64* %RDX.i796, align 8
  store %struct.Memory* %loadMem_4368a5, %struct.Memory** %MEMORY
  %loadMem_4368a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 7
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RDX.i793 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RCX.i792
  %3519 = load i64, i64* %RDX.i793
  %3520 = mul i64 %3519, 4
  %3521 = add i64 %3520, %3518
  %3522 = load i64, i64* %PC.i790
  %3523 = add i64 %3522, 3
  store i64 %3523, i64* %PC.i790
  %3524 = inttoptr i64 %3521 to i32*
  %3525 = load i32, i32* %3524
  %3526 = zext i32 %3525 to i64
  store i64 %3526, i64* %RAX.i791, align 8
  store %struct.Memory* %loadMem_4368a8, %struct.Memory** %MEMORY
  %loadMem_4368ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 1
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %EAX.i788 = bitcast %union.anon* %3532 to i32*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 15
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %3535 to i64*
  %3536 = load i64, i64* %RBP.i789
  %3537 = sub i64 %3536, 84
  %3538 = load i32, i32* %EAX.i788
  %3539 = zext i32 %3538 to i64
  %3540 = load i64, i64* %PC.i787
  %3541 = add i64 %3540, 3
  store i64 %3541, i64* %PC.i787
  %3542 = inttoptr i64 %3537 to i32*
  store i32 %3538, i32* %3542
  store %struct.Memory* %loadMem_4368ab, %struct.Memory** %MEMORY
  %loadMem_4368ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 5
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RCX.i785 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 15
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RBP.i786
  %3553 = sub i64 %3552, 72
  %3554 = load i64, i64* %PC.i784
  %3555 = add i64 %3554, 4
  store i64 %3555, i64* %PC.i784
  %3556 = inttoptr i64 %3553 to i64*
  %3557 = load i64, i64* %3556
  store i64 %3557, i64* %RCX.i785, align 8
  store %struct.Memory* %loadMem_4368ae, %struct.Memory** %MEMORY
  %loadMem_4368b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 7
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RDX.i782 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 15
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %3566 to i64*
  %3567 = load i64, i64* %RBP.i783
  %3568 = sub i64 %3567, 76
  %3569 = load i64, i64* %PC.i781
  %3570 = add i64 %3569, 4
  store i64 %3570, i64* %PC.i781
  %3571 = inttoptr i64 %3568 to i32*
  %3572 = load i32, i32* %3571
  %3573 = sext i32 %3572 to i64
  store i64 %3573, i64* %RDX.i782, align 8
  store %struct.Memory* %loadMem_4368b2, %struct.Memory** %MEMORY
  %loadMem_4368b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 5
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 7
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RDX.i780 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RCX.i779
  %3584 = load i64, i64* %RDX.i780
  %3585 = mul i64 %3584, 8
  %3586 = add i64 %3585, %3583
  %3587 = load i64, i64* %PC.i778
  %3588 = add i64 %3587, 4
  store i64 %3588, i64* %PC.i778
  %3589 = inttoptr i64 %3586 to i64*
  %3590 = load i64, i64* %3589
  store i64 %3590, i64* %RCX.i779, align 8
  store %struct.Memory* %loadMem_4368b6, %struct.Memory** %MEMORY
  %loadMem_4368ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 7
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RDX.i776 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 15
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RBP.i777
  %3601 = sub i64 %3600, 80
  %3602 = load i64, i64* %PC.i775
  %3603 = add i64 %3602, 4
  store i64 %3603, i64* %PC.i775
  %3604 = inttoptr i64 %3601 to i32*
  %3605 = load i32, i32* %3604
  %3606 = sext i32 %3605 to i64
  store i64 %3606, i64* %RDX.i776, align 8
  store %struct.Memory* %loadMem_4368ba, %struct.Memory** %MEMORY
  %loadMem_4368be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 1
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %EAX.i772 = bitcast %union.anon* %3612 to i32*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 5
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RCX.i773 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 7
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RDX.i774 = bitcast %union.anon* %3618 to i64*
  %3619 = load i32, i32* %EAX.i772
  %3620 = zext i32 %3619 to i64
  %3621 = load i64, i64* %RCX.i773
  %3622 = load i64, i64* %RDX.i774
  %3623 = mul i64 %3622, 4
  %3624 = add i64 %3623, %3621
  %3625 = load i64, i64* %PC.i771
  %3626 = add i64 %3625, 3
  store i64 %3626, i64* %PC.i771
  %3627 = inttoptr i64 %3624 to i32*
  %3628 = load i32, i32* %3627
  %3629 = sub i32 %3619, %3628
  %3630 = icmp ult i32 %3619, %3628
  %3631 = zext i1 %3630 to i8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3631, i8* %3632, align 1
  %3633 = and i32 %3629, 255
  %3634 = call i32 @llvm.ctpop.i32(i32 %3633)
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = xor i8 %3636, 1
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3637, i8* %3638, align 1
  %3639 = xor i32 %3628, %3619
  %3640 = xor i32 %3639, %3629
  %3641 = lshr i32 %3640, 4
  %3642 = trunc i32 %3641 to i8
  %3643 = and i8 %3642, 1
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3643, i8* %3644, align 1
  %3645 = icmp eq i32 %3629, 0
  %3646 = zext i1 %3645 to i8
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3646, i8* %3647, align 1
  %3648 = lshr i32 %3629, 31
  %3649 = trunc i32 %3648 to i8
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3649, i8* %3650, align 1
  %3651 = lshr i32 %3619, 31
  %3652 = lshr i32 %3628, 31
  %3653 = xor i32 %3652, %3651
  %3654 = xor i32 %3648, %3651
  %3655 = add i32 %3654, %3653
  %3656 = icmp eq i32 %3655, 2
  %3657 = zext i1 %3656 to i8
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3657, i8* %3658, align 1
  store %struct.Memory* %loadMem_4368be, %struct.Memory** %MEMORY
  %loadMem_4368c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %PC.i770
  %3663 = add i64 %3662, 28
  %3664 = load i64, i64* %PC.i770
  %3665 = add i64 %3664, 6
  %3666 = load i64, i64* %PC.i770
  %3667 = add i64 %3666, 6
  store i64 %3667, i64* %PC.i770
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3669 = load i8, i8* %3668, align 1
  %3670 = icmp ne i8 %3669, 0
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3672 = load i8, i8* %3671, align 1
  %3673 = icmp ne i8 %3672, 0
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3675 = load i8, i8* %3674, align 1
  %3676 = icmp ne i8 %3675, 0
  %3677 = xor i1 %3673, %3676
  %3678 = or i1 %3670, %3677
  %3679 = zext i1 %3678 to i8
  store i8 %3679, i8* %BRANCH_TAKEN, align 1
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3681 = select i1 %3678, i64 %3663, i64 %3665
  store i64 %3681, i64* %3680, align 8
  store %struct.Memory* %loadMem_4368c1, %struct.Memory** %MEMORY
  %loadBr_4368c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4368c1 = icmp eq i8 %loadBr_4368c1, 1
  br i1 %cmpBr_4368c1, label %block_.L_4368dd, label %block_4368c7

block_4368c7:                                     ; preds = %block_.L_43683a
  %loadMem_4368c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 1
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RBP.i769
  %3692 = sub i64 %3691, 84
  %3693 = load i64, i64* %PC.i767
  %3694 = add i64 %3693, 3
  store i64 %3694, i64* %PC.i767
  %3695 = inttoptr i64 %3692 to i32*
  %3696 = load i32, i32* %3695
  %3697 = zext i32 %3696 to i64
  store i64 %3697, i64* %RAX.i768, align 8
  store %struct.Memory* %loadMem_4368c7, %struct.Memory** %MEMORY
  %loadMem_4368ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 5
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RCX.i765 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 15
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %3706 to i64*
  %3707 = load i64, i64* %RBP.i766
  %3708 = sub i64 %3707, 72
  %3709 = load i64, i64* %PC.i764
  %3710 = add i64 %3709, 4
  store i64 %3710, i64* %PC.i764
  %3711 = inttoptr i64 %3708 to i64*
  %3712 = load i64, i64* %3711
  store i64 %3712, i64* %RCX.i765, align 8
  store %struct.Memory* %loadMem_4368ca, %struct.Memory** %MEMORY
  %loadMem_4368ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 7
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RDX.i762 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i763
  %3723 = sub i64 %3722, 76
  %3724 = load i64, i64* %PC.i761
  %3725 = add i64 %3724, 4
  store i64 %3725, i64* %PC.i761
  %3726 = inttoptr i64 %3723 to i32*
  %3727 = load i32, i32* %3726
  %3728 = sext i32 %3727 to i64
  store i64 %3728, i64* %RDX.i762, align 8
  store %struct.Memory* %loadMem_4368ce, %struct.Memory** %MEMORY
  %loadMem_4368d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 5
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 7
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RDX.i760 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %RCX.i759
  %3739 = load i64, i64* %RDX.i760
  %3740 = mul i64 %3739, 8
  %3741 = add i64 %3740, %3738
  %3742 = load i64, i64* %PC.i758
  %3743 = add i64 %3742, 4
  store i64 %3743, i64* %PC.i758
  %3744 = inttoptr i64 %3741 to i64*
  %3745 = load i64, i64* %3744
  store i64 %3745, i64* %RCX.i759, align 8
  store %struct.Memory* %loadMem_4368d2, %struct.Memory** %MEMORY
  %loadMem_4368d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 7
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RDX.i756 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i757 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %RBP.i757
  %3756 = sub i64 %3755, 80
  %3757 = load i64, i64* %PC.i755
  %3758 = add i64 %3757, 4
  store i64 %3758, i64* %PC.i755
  %3759 = inttoptr i64 %3756 to i32*
  %3760 = load i32, i32* %3759
  %3761 = sext i32 %3760 to i64
  store i64 %3761, i64* %RDX.i756, align 8
  store %struct.Memory* %loadMem_4368d6, %struct.Memory** %MEMORY
  %loadMem_4368da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 33
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 1
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %EAX.i752 = bitcast %union.anon* %3767 to i32*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 5
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 7
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RDX.i754 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RCX.i753
  %3775 = load i64, i64* %RDX.i754
  %3776 = mul i64 %3775, 4
  %3777 = add i64 %3776, %3774
  %3778 = load i32, i32* %EAX.i752
  %3779 = zext i32 %3778 to i64
  %3780 = load i64, i64* %PC.i751
  %3781 = add i64 %3780, 3
  store i64 %3781, i64* %PC.i751
  %3782 = inttoptr i64 %3777 to i32*
  store i32 %3778, i32* %3782
  store %struct.Memory* %loadMem_4368da, %struct.Memory** %MEMORY
  br label %block_.L_4368dd

block_.L_4368dd:                                  ; preds = %block_4368c7, %block_.L_43683a
  %loadMem_4368dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 1
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 15
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i750
  %3793 = sub i64 %3792, 72
  %3794 = load i64, i64* %PC.i748
  %3795 = add i64 %3794, 4
  store i64 %3795, i64* %PC.i748
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %RAX.i749, align 8
  store %struct.Memory* %loadMem_4368dd, %struct.Memory** %MEMORY
  %loadMem_4368e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 5
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 15
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %RBP.i747
  %3808 = sub i64 %3807, 76
  %3809 = load i64, i64* %PC.i745
  %3810 = add i64 %3809, 4
  store i64 %3810, i64* %PC.i745
  %3811 = inttoptr i64 %3808 to i32*
  %3812 = load i32, i32* %3811
  %3813 = sext i32 %3812 to i64
  store i64 %3813, i64* %RCX.i746, align 8
  store %struct.Memory* %loadMem_4368e1, %struct.Memory** %MEMORY
  %loadMem_4368e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 5
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RAX.i743
  %3824 = load i64, i64* %RCX.i744
  %3825 = mul i64 %3824, 8
  %3826 = add i64 %3825, %3823
  %3827 = load i64, i64* %PC.i742
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %PC.i742
  %3829 = inttoptr i64 %3826 to i64*
  %3830 = load i64, i64* %3829
  store i64 %3830, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_4368e5, %struct.Memory** %MEMORY
  %loadMem_4368e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 7
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 15
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RBP.i741
  %3841 = sub i64 %3840, 80
  %3842 = load i64, i64* %PC.i739
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i739
  %3844 = inttoptr i64 %3841 to i32*
  %3845 = load i32, i32* %3844
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RDX.i740, align 8
  store %struct.Memory* %loadMem_4368e9, %struct.Memory** %MEMORY
  %loadMem_4368ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 7
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RDX.i738 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RDX.i738
  %3854 = load i64, i64* %PC.i737
  %3855 = add i64 %3854, 3
  store i64 %3855, i64* %PC.i737
  %3856 = trunc i64 %3853 to i32
  %3857 = sub i32 %3856, 1
  %3858 = zext i32 %3857 to i64
  store i64 %3858, i64* %RDX.i738, align 8
  %3859 = icmp ult i32 %3856, 1
  %3860 = zext i1 %3859 to i8
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3860, i8* %3861, align 1
  %3862 = and i32 %3857, 255
  %3863 = call i32 @llvm.ctpop.i32(i32 %3862)
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  %3866 = xor i8 %3865, 1
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3866, i8* %3867, align 1
  %3868 = xor i64 1, %3853
  %3869 = trunc i64 %3868 to i32
  %3870 = xor i32 %3869, %3857
  %3871 = lshr i32 %3870, 4
  %3872 = trunc i32 %3871 to i8
  %3873 = and i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3873, i8* %3874, align 1
  %3875 = icmp eq i32 %3857, 0
  %3876 = zext i1 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3876, i8* %3877, align 1
  %3878 = lshr i32 %3857, 31
  %3879 = trunc i32 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3879, i8* %3880, align 1
  %3881 = lshr i32 %3856, 31
  %3882 = xor i32 %3878, %3881
  %3883 = add i32 %3882, %3881
  %3884 = icmp eq i32 %3883, 2
  %3885 = zext i1 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3885, i8* %3886, align 1
  store %struct.Memory* %loadMem_4368ec, %struct.Memory** %MEMORY
  %loadMem_4368ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 33
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 7
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %EDX.i735 = bitcast %union.anon* %3892 to i32*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 5
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %3895 to i64*
  %3896 = load i32, i32* %EDX.i735
  %3897 = zext i32 %3896 to i64
  %3898 = load i64, i64* %PC.i734
  %3899 = add i64 %3898, 3
  store i64 %3899, i64* %PC.i734
  %3900 = shl i64 %3897, 32
  %3901 = ashr exact i64 %3900, 32
  store i64 %3901, i64* %RCX.i736, align 8
  store %struct.Memory* %loadMem_4368ef, %struct.Memory** %MEMORY
  %loadMem_4368f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 5
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 7
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RDX.i733 = bitcast %union.anon* %3913 to i64*
  %3914 = load i64, i64* %RAX.i731
  %3915 = load i64, i64* %RCX.i732
  %3916 = mul i64 %3915, 4
  %3917 = add i64 %3916, %3914
  %3918 = load i64, i64* %PC.i730
  %3919 = add i64 %3918, 3
  store i64 %3919, i64* %PC.i730
  %3920 = inttoptr i64 %3917 to i32*
  %3921 = load i32, i32* %3920
  %3922 = zext i32 %3921 to i64
  store i64 %3922, i64* %RDX.i733, align 8
  store %struct.Memory* %loadMem_4368f2, %struct.Memory** %MEMORY
  %loadMem_4368f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 7
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %EDX.i728 = bitcast %union.anon* %3928 to i32*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 15
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %RBP.i729
  %3933 = sub i64 %3932, 84
  %3934 = load i32, i32* %EDX.i728
  %3935 = zext i32 %3934 to i64
  %3936 = load i64, i64* %PC.i727
  %3937 = add i64 %3936, 3
  store i64 %3937, i64* %PC.i727
  %3938 = inttoptr i64 %3933 to i32*
  store i32 %3934, i32* %3938
  store %struct.Memory* %loadMem_4368f5, %struct.Memory** %MEMORY
  %loadMem_4368f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 1
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RBP.i726
  %3949 = sub i64 %3948, 72
  %3950 = load i64, i64* %PC.i724
  %3951 = add i64 %3950, 4
  store i64 %3951, i64* %PC.i724
  %3952 = inttoptr i64 %3949 to i64*
  %3953 = load i64, i64* %3952
  store i64 %3953, i64* %RAX.i725, align 8
  store %struct.Memory* %loadMem_4368f8, %struct.Memory** %MEMORY
  %loadMem_4368fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 5
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RCX.i722 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 15
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %RBP.i723
  %3964 = sub i64 %3963, 76
  %3965 = load i64, i64* %PC.i721
  %3966 = add i64 %3965, 4
  store i64 %3966, i64* %PC.i721
  %3967 = inttoptr i64 %3964 to i32*
  %3968 = load i32, i32* %3967
  %3969 = sext i32 %3968 to i64
  store i64 %3969, i64* %RCX.i722, align 8
  store %struct.Memory* %loadMem_4368fc, %struct.Memory** %MEMORY
  %loadMem_436900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 1
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %3975 to i64*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 5
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %3978 to i64*
  %3979 = load i64, i64* %RAX.i719
  %3980 = load i64, i64* %RCX.i720
  %3981 = mul i64 %3980, 8
  %3982 = add i64 %3981, %3979
  %3983 = load i64, i64* %PC.i718
  %3984 = add i64 %3983, 4
  store i64 %3984, i64* %PC.i718
  %3985 = inttoptr i64 %3982 to i64*
  %3986 = load i64, i64* %3985
  store i64 %3986, i64* %RAX.i719, align 8
  store %struct.Memory* %loadMem_436900, %struct.Memory** %MEMORY
  %loadMem_436904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 5
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 15
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %3995 to i64*
  %3996 = load i64, i64* %RBP.i717
  %3997 = sub i64 %3996, 80
  %3998 = load i64, i64* %PC.i715
  %3999 = add i64 %3998, 4
  store i64 %3999, i64* %PC.i715
  %4000 = inttoptr i64 %3997 to i32*
  %4001 = load i32, i32* %4000
  %4002 = sext i32 %4001 to i64
  store i64 %4002, i64* %RCX.i716, align 8
  store %struct.Memory* %loadMem_436904, %struct.Memory** %MEMORY
  %loadMem_436908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 33
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %4005 to i64*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 7
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %EDX.i712 = bitcast %union.anon* %4008 to i32*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 5
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RCX.i714 = bitcast %union.anon* %4014 to i64*
  %4015 = load i32, i32* %EDX.i712
  %4016 = zext i32 %4015 to i64
  %4017 = load i64, i64* %RAX.i713
  %4018 = load i64, i64* %RCX.i714
  %4019 = mul i64 %4018, 4
  %4020 = add i64 %4019, %4017
  %4021 = load i64, i64* %PC.i711
  %4022 = add i64 %4021, 3
  store i64 %4022, i64* %PC.i711
  %4023 = inttoptr i64 %4020 to i32*
  %4024 = load i32, i32* %4023
  %4025 = sub i32 %4015, %4024
  %4026 = icmp ult i32 %4015, %4024
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4027, i8* %4028, align 1
  %4029 = and i32 %4025, 255
  %4030 = call i32 @llvm.ctpop.i32(i32 %4029)
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4033, i8* %4034, align 1
  %4035 = xor i32 %4024, %4015
  %4036 = xor i32 %4035, %4025
  %4037 = lshr i32 %4036, 4
  %4038 = trunc i32 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4039, i8* %4040, align 1
  %4041 = icmp eq i32 %4025, 0
  %4042 = zext i1 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4042, i8* %4043, align 1
  %4044 = lshr i32 %4025, 31
  %4045 = trunc i32 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4045, i8* %4046, align 1
  %4047 = lshr i32 %4015, 31
  %4048 = lshr i32 %4024, 31
  %4049 = xor i32 %4048, %4047
  %4050 = xor i32 %4044, %4047
  %4051 = add i32 %4050, %4049
  %4052 = icmp eq i32 %4051, 2
  %4053 = zext i1 %4052 to i8
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4053, i8* %4054, align 1
  store %struct.Memory* %loadMem_436908, %struct.Memory** %MEMORY
  %loadMem_43690b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %4057 to i64*
  %4058 = load i64, i64* %PC.i710
  %4059 = add i64 %4058, 28
  %4060 = load i64, i64* %PC.i710
  %4061 = add i64 %4060, 6
  %4062 = load i64, i64* %PC.i710
  %4063 = add i64 %4062, 6
  store i64 %4063, i64* %PC.i710
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4065 = load i8, i8* %4064, align 1
  %4066 = icmp ne i8 %4065, 0
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4068 = load i8, i8* %4067, align 1
  %4069 = icmp ne i8 %4068, 0
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4071 = load i8, i8* %4070, align 1
  %4072 = icmp ne i8 %4071, 0
  %4073 = xor i1 %4069, %4072
  %4074 = or i1 %4066, %4073
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %BRANCH_TAKEN, align 1
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4077 = select i1 %4074, i64 %4059, i64 %4061
  store i64 %4077, i64* %4076, align 8
  store %struct.Memory* %loadMem_43690b, %struct.Memory** %MEMORY
  %loadBr_43690b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43690b = icmp eq i8 %loadBr_43690b, 1
  br i1 %cmpBr_43690b, label %block_.L_436927, label %block_436911

block_436911:                                     ; preds = %block_.L_4368dd
  %loadMem_436911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 33
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %4080 to i64*
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 1
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %RAX.i708 = bitcast %union.anon* %4083 to i64*
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 15
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %4086 to i64*
  %4087 = load i64, i64* %RBP.i709
  %4088 = sub i64 %4087, 84
  %4089 = load i64, i64* %PC.i707
  %4090 = add i64 %4089, 3
  store i64 %4090, i64* %PC.i707
  %4091 = inttoptr i64 %4088 to i32*
  %4092 = load i32, i32* %4091
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RAX.i708, align 8
  store %struct.Memory* %loadMem_436911, %struct.Memory** %MEMORY
  %loadMem_436914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 5
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RCX.i705 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 15
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %4102 to i64*
  %4103 = load i64, i64* %RBP.i706
  %4104 = sub i64 %4103, 72
  %4105 = load i64, i64* %PC.i704
  %4106 = add i64 %4105, 4
  store i64 %4106, i64* %PC.i704
  %4107 = inttoptr i64 %4104 to i64*
  %4108 = load i64, i64* %4107
  store i64 %4108, i64* %RCX.i705, align 8
  store %struct.Memory* %loadMem_436914, %struct.Memory** %MEMORY
  %loadMem_436918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 7
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RDX.i702 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 15
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RBP.i703
  %4119 = sub i64 %4118, 76
  %4120 = load i64, i64* %PC.i701
  %4121 = add i64 %4120, 4
  store i64 %4121, i64* %PC.i701
  %4122 = inttoptr i64 %4119 to i32*
  %4123 = load i32, i32* %4122
  %4124 = sext i32 %4123 to i64
  store i64 %4124, i64* %RDX.i702, align 8
  store %struct.Memory* %loadMem_436918, %struct.Memory** %MEMORY
  %loadMem_43691c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 5
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 7
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %RCX.i699
  %4135 = load i64, i64* %RDX.i700
  %4136 = mul i64 %4135, 8
  %4137 = add i64 %4136, %4134
  %4138 = load i64, i64* %PC.i698
  %4139 = add i64 %4138, 4
  store i64 %4139, i64* %PC.i698
  %4140 = inttoptr i64 %4137 to i64*
  %4141 = load i64, i64* %4140
  store i64 %4141, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_43691c, %struct.Memory** %MEMORY
  %loadMem_436920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 33
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %4144 to i64*
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 7
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %RDX.i696 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 15
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %RBP.i697
  %4152 = sub i64 %4151, 80
  %4153 = load i64, i64* %PC.i695
  %4154 = add i64 %4153, 4
  store i64 %4154, i64* %PC.i695
  %4155 = inttoptr i64 %4152 to i32*
  %4156 = load i32, i32* %4155
  %4157 = sext i32 %4156 to i64
  store i64 %4157, i64* %RDX.i696, align 8
  store %struct.Memory* %loadMem_436920, %struct.Memory** %MEMORY
  %loadMem_436924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 1
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %EAX.i692 = bitcast %union.anon* %4163 to i32*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 5
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 7
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RDX.i694 = bitcast %union.anon* %4169 to i64*
  %4170 = load i64, i64* %RCX.i693
  %4171 = load i64, i64* %RDX.i694
  %4172 = mul i64 %4171, 4
  %4173 = add i64 %4172, %4170
  %4174 = load i32, i32* %EAX.i692
  %4175 = zext i32 %4174 to i64
  %4176 = load i64, i64* %PC.i691
  %4177 = add i64 %4176, 3
  store i64 %4177, i64* %PC.i691
  %4178 = inttoptr i64 %4173 to i32*
  store i32 %4174, i32* %4178
  store %struct.Memory* %loadMem_436924, %struct.Memory** %MEMORY
  br label %block_.L_436927

block_.L_436927:                                  ; preds = %block_436911, %block_.L_4368dd
  %loadMem_436927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 1
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 15
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RBP.i690
  %4189 = sub i64 %4188, 64
  %4190 = load i64, i64* %PC.i688
  %4191 = add i64 %4190, 4
  store i64 %4191, i64* %PC.i688
  %4192 = inttoptr i64 %4189 to i64*
  %4193 = load i64, i64* %4192
  store i64 %4193, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_436927, %struct.Memory** %MEMORY
  %loadMem_43692b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 5
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 15
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RBP.i687
  %4204 = sub i64 %4203, 76
  %4205 = load i64, i64* %PC.i685
  %4206 = add i64 %4205, 4
  store i64 %4206, i64* %PC.i685
  %4207 = inttoptr i64 %4204 to i32*
  %4208 = load i32, i32* %4207
  %4209 = sext i32 %4208 to i64
  store i64 %4209, i64* %RCX.i686, align 8
  store %struct.Memory* %loadMem_43692b, %struct.Memory** %MEMORY
  %loadMem_43692f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 33
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %4212 to i64*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 1
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 5
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %4218 to i64*
  %4219 = load i64, i64* %RAX.i683
  %4220 = load i64, i64* %RCX.i684
  %4221 = mul i64 %4220, 8
  %4222 = add i64 %4221, %4219
  %4223 = load i64, i64* %PC.i682
  %4224 = add i64 %4223, 4
  store i64 %4224, i64* %PC.i682
  %4225 = inttoptr i64 %4222 to i64*
  %4226 = load i64, i64* %4225
  store i64 %4226, i64* %RAX.i683, align 8
  store %struct.Memory* %loadMem_43692f, %struct.Memory** %MEMORY
  %loadMem_436933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 5
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 15
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RBP.i681
  %4237 = sub i64 %4236, 80
  %4238 = load i64, i64* %PC.i679
  %4239 = add i64 %4238, 4
  store i64 %4239, i64* %PC.i679
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240
  %4242 = sext i32 %4241 to i64
  store i64 %4242, i64* %RCX.i680, align 8
  store %struct.Memory* %loadMem_436933, %struct.Memory** %MEMORY
  %loadMem_436937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 5
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RCX.i678 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %RAX.i677
  %4253 = load i64, i64* %RCX.i678
  %4254 = mul i64 %4253, 4
  %4255 = add i64 %4254, %4252
  %4256 = load i64, i64* %PC.i676
  %4257 = add i64 %4256, 7
  store i64 %4257, i64* %PC.i676
  %4258 = inttoptr i64 %4255 to i32*
  store i32 -987654321, i32* %4258
  store %struct.Memory* %loadMem_436937, %struct.Memory** %MEMORY
  %loadMem_43693e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 1
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %4264 to i64*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 15
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %4267 to i64*
  %4268 = load i64, i64* %RBP.i675
  %4269 = sub i64 %4268, 56
  %4270 = load i64, i64* %PC.i673
  %4271 = add i64 %4270, 4
  store i64 %4271, i64* %PC.i673
  %4272 = inttoptr i64 %4269 to i64*
  %4273 = load i64, i64* %4272
  store i64 %4273, i64* %RAX.i674, align 8
  store %struct.Memory* %loadMem_43693e, %struct.Memory** %MEMORY
  %loadMem_436942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 33
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %4276 to i64*
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 7
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %RDX.i671 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 15
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %4282 to i64*
  %4283 = load i64, i64* %RBP.i672
  %4284 = sub i64 %4283, 76
  %4285 = load i64, i64* %PC.i670
  %4286 = add i64 %4285, 3
  store i64 %4286, i64* %PC.i670
  %4287 = inttoptr i64 %4284 to i32*
  %4288 = load i32, i32* %4287
  %4289 = zext i32 %4288 to i64
  store i64 %4289, i64* %RDX.i671, align 8
  store %struct.Memory* %loadMem_436942, %struct.Memory** %MEMORY
  %loadMem_436945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 33
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %4292 to i64*
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 7
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %RDX.i669 = bitcast %union.anon* %4295 to i64*
  %4296 = load i64, i64* %RDX.i669
  %4297 = load i64, i64* %PC.i668
  %4298 = add i64 %4297, 3
  store i64 %4298, i64* %PC.i668
  %4299 = trunc i64 %4296 to i32
  %4300 = sub i32 %4299, 1
  %4301 = zext i32 %4300 to i64
  store i64 %4301, i64* %RDX.i669, align 8
  %4302 = icmp ult i32 %4299, 1
  %4303 = zext i1 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4303, i8* %4304, align 1
  %4305 = and i32 %4300, 255
  %4306 = call i32 @llvm.ctpop.i32(i32 %4305)
  %4307 = trunc i32 %4306 to i8
  %4308 = and i8 %4307, 1
  %4309 = xor i8 %4308, 1
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4309, i8* %4310, align 1
  %4311 = xor i64 1, %4296
  %4312 = trunc i64 %4311 to i32
  %4313 = xor i32 %4312, %4300
  %4314 = lshr i32 %4313, 4
  %4315 = trunc i32 %4314 to i8
  %4316 = and i8 %4315, 1
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4316, i8* %4317, align 1
  %4318 = icmp eq i32 %4300, 0
  %4319 = zext i1 %4318 to i8
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4319, i8* %4320, align 1
  %4321 = lshr i32 %4300, 31
  %4322 = trunc i32 %4321 to i8
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4322, i8* %4323, align 1
  %4324 = lshr i32 %4299, 31
  %4325 = xor i32 %4321, %4324
  %4326 = add i32 %4325, %4324
  %4327 = icmp eq i32 %4326, 2
  %4328 = zext i1 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4328, i8* %4329, align 1
  store %struct.Memory* %loadMem_436945, %struct.Memory** %MEMORY
  %loadMem_436948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 7
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %EDX.i666 = bitcast %union.anon* %4335 to i32*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 5
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %4338 to i64*
  %4339 = load i32, i32* %EDX.i666
  %4340 = zext i32 %4339 to i64
  %4341 = load i64, i64* %PC.i665
  %4342 = add i64 %4341, 3
  store i64 %4342, i64* %PC.i665
  %4343 = shl i64 %4340, 32
  %4344 = ashr exact i64 %4343, 32
  store i64 %4344, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_436948, %struct.Memory** %MEMORY
  %loadMem_43694b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 1
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 5
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %RAX.i663
  %4355 = load i64, i64* %RCX.i664
  %4356 = mul i64 %4355, 8
  %4357 = add i64 %4356, %4354
  %4358 = load i64, i64* %PC.i662
  %4359 = add i64 %4358, 4
  store i64 %4359, i64* %PC.i662
  %4360 = inttoptr i64 %4357 to i64*
  %4361 = load i64, i64* %4360
  store i64 %4361, i64* %RAX.i663, align 8
  store %struct.Memory* %loadMem_43694b, %struct.Memory** %MEMORY
  %loadMem_43694f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 5
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RCX.i660 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 15
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %4370 to i64*
  %4371 = load i64, i64* %RBP.i661
  %4372 = sub i64 %4371, 80
  %4373 = load i64, i64* %PC.i659
  %4374 = add i64 %4373, 4
  store i64 %4374, i64* %PC.i659
  %4375 = inttoptr i64 %4372 to i32*
  %4376 = load i32, i32* %4375
  %4377 = sext i32 %4376 to i64
  store i64 %4377, i64* %RCX.i660, align 8
  store %struct.Memory* %loadMem_43694f, %struct.Memory** %MEMORY
  %loadMem_436953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %4383 to i64*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 5
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 7
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RDX.i658 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %RAX.i656
  %4391 = load i64, i64* %RCX.i657
  %4392 = mul i64 %4391, 4
  %4393 = add i64 %4392, %4390
  %4394 = load i64, i64* %PC.i655
  %4395 = add i64 %4394, 3
  store i64 %4395, i64* %PC.i655
  %4396 = inttoptr i64 %4393 to i32*
  %4397 = load i32, i32* %4396
  %4398 = zext i32 %4397 to i64
  store i64 %4398, i64* %RDX.i658, align 8
  store %struct.Memory* %loadMem_436953, %struct.Memory** %MEMORY
  %loadMem_436956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 7
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %EDX.i653 = bitcast %union.anon* %4404 to i32*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 15
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %4407 to i64*
  %4408 = load i64, i64* %RBP.i654
  %4409 = sub i64 %4408, 84
  %4410 = load i32, i32* %EDX.i653
  %4411 = zext i32 %4410 to i64
  %4412 = load i64, i64* %PC.i652
  %4413 = add i64 %4412, 3
  store i64 %4413, i64* %PC.i652
  %4414 = inttoptr i64 %4409 to i32*
  store i32 %4410, i32* %4414
  store %struct.Memory* %loadMem_436956, %struct.Memory** %MEMORY
  %loadMem_436959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 33
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 1
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 15
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %4423 to i64*
  %4424 = load i64, i64* %RBP.i651
  %4425 = sub i64 %4424, 64
  %4426 = load i64, i64* %PC.i649
  %4427 = add i64 %4426, 4
  store i64 %4427, i64* %PC.i649
  %4428 = inttoptr i64 %4425 to i64*
  %4429 = load i64, i64* %4428
  store i64 %4429, i64* %RAX.i650, align 8
  store %struct.Memory* %loadMem_436959, %struct.Memory** %MEMORY
  %loadMem_43695d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 15
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %RBP.i648
  %4440 = sub i64 %4439, 76
  %4441 = load i64, i64* %PC.i646
  %4442 = add i64 %4441, 4
  store i64 %4442, i64* %PC.i646
  %4443 = inttoptr i64 %4440 to i32*
  %4444 = load i32, i32* %4443
  %4445 = sext i32 %4444 to i64
  store i64 %4445, i64* %RCX.i647, align 8
  store %struct.Memory* %loadMem_43695d, %struct.Memory** %MEMORY
  %loadMem_436961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 33
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %4448 to i64*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 1
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 5
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %4454 to i64*
  %4455 = load i64, i64* %RAX.i644
  %4456 = load i64, i64* %RCX.i645
  %4457 = mul i64 %4456, 8
  %4458 = add i64 %4457, %4455
  %4459 = load i64, i64* %PC.i643
  %4460 = add i64 %4459, 4
  store i64 %4460, i64* %PC.i643
  %4461 = inttoptr i64 %4458 to i64*
  %4462 = load i64, i64* %4461
  store i64 %4462, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_436961, %struct.Memory** %MEMORY
  %loadMem_436965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 33
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %4465 to i64*
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 5
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 15
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %4471 to i64*
  %4472 = load i64, i64* %RBP.i642
  %4473 = sub i64 %4472, 80
  %4474 = load i64, i64* %PC.i640
  %4475 = add i64 %4474, 4
  store i64 %4475, i64* %PC.i640
  %4476 = inttoptr i64 %4473 to i32*
  %4477 = load i32, i32* %4476
  %4478 = sext i32 %4477 to i64
  store i64 %4478, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_436965, %struct.Memory** %MEMORY
  %loadMem_436969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 33
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %4481 to i64*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 7
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %EDX.i637 = bitcast %union.anon* %4484 to i32*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 1
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 5
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %4490 to i64*
  %4491 = load i32, i32* %EDX.i637
  %4492 = zext i32 %4491 to i64
  %4493 = load i64, i64* %RAX.i638
  %4494 = load i64, i64* %RCX.i639
  %4495 = mul i64 %4494, 4
  %4496 = add i64 %4495, %4493
  %4497 = load i64, i64* %PC.i636
  %4498 = add i64 %4497, 3
  store i64 %4498, i64* %PC.i636
  %4499 = inttoptr i64 %4496 to i32*
  %4500 = load i32, i32* %4499
  %4501 = sub i32 %4491, %4500
  %4502 = icmp ult i32 %4491, %4500
  %4503 = zext i1 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4503, i8* %4504, align 1
  %4505 = and i32 %4501, 255
  %4506 = call i32 @llvm.ctpop.i32(i32 %4505)
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  %4509 = xor i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4509, i8* %4510, align 1
  %4511 = xor i32 %4500, %4491
  %4512 = xor i32 %4511, %4501
  %4513 = lshr i32 %4512, 4
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4515, i8* %4516, align 1
  %4517 = icmp eq i32 %4501, 0
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4518, i8* %4519, align 1
  %4520 = lshr i32 %4501, 31
  %4521 = trunc i32 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4521, i8* %4522, align 1
  %4523 = lshr i32 %4491, 31
  %4524 = lshr i32 %4500, 31
  %4525 = xor i32 %4524, %4523
  %4526 = xor i32 %4520, %4523
  %4527 = add i32 %4526, %4525
  %4528 = icmp eq i32 %4527, 2
  %4529 = zext i1 %4528 to i8
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4529, i8* %4530, align 1
  store %struct.Memory* %loadMem_436969, %struct.Memory** %MEMORY
  %loadMem_43696c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %4533 to i64*
  %4534 = load i64, i64* %PC.i635
  %4535 = add i64 %4534, 28
  %4536 = load i64, i64* %PC.i635
  %4537 = add i64 %4536, 6
  %4538 = load i64, i64* %PC.i635
  %4539 = add i64 %4538, 6
  store i64 %4539, i64* %PC.i635
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4541 = load i8, i8* %4540, align 1
  %4542 = icmp ne i8 %4541, 0
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4544 = load i8, i8* %4543, align 1
  %4545 = icmp ne i8 %4544, 0
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4547 = load i8, i8* %4546, align 1
  %4548 = icmp ne i8 %4547, 0
  %4549 = xor i1 %4545, %4548
  %4550 = or i1 %4542, %4549
  %4551 = zext i1 %4550 to i8
  store i8 %4551, i8* %BRANCH_TAKEN, align 1
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4553 = select i1 %4550, i64 %4535, i64 %4537
  store i64 %4553, i64* %4552, align 8
  store %struct.Memory* %loadMem_43696c, %struct.Memory** %MEMORY
  %loadBr_43696c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43696c = icmp eq i8 %loadBr_43696c, 1
  br i1 %cmpBr_43696c, label %block_.L_436988, label %block_436972

block_436972:                                     ; preds = %block_.L_436927
  %loadMem_436972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 1
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 15
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RBP.i634
  %4564 = sub i64 %4563, 84
  %4565 = load i64, i64* %PC.i632
  %4566 = add i64 %4565, 3
  store i64 %4566, i64* %PC.i632
  %4567 = inttoptr i64 %4564 to i32*
  %4568 = load i32, i32* %4567
  %4569 = zext i32 %4568 to i64
  store i64 %4569, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_436972, %struct.Memory** %MEMORY
  %loadMem_436975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 33
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %4572 to i64*
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 5
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %4575 to i64*
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 15
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %4578 to i64*
  %4579 = load i64, i64* %RBP.i631
  %4580 = sub i64 %4579, 64
  %4581 = load i64, i64* %PC.i629
  %4582 = add i64 %4581, 4
  store i64 %4582, i64* %PC.i629
  %4583 = inttoptr i64 %4580 to i64*
  %4584 = load i64, i64* %4583
  store i64 %4584, i64* %RCX.i630, align 8
  store %struct.Memory* %loadMem_436975, %struct.Memory** %MEMORY
  %loadMem_436979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 7
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %4590 to i64*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 15
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %4593 to i64*
  %4594 = load i64, i64* %RBP.i628
  %4595 = sub i64 %4594, 76
  %4596 = load i64, i64* %PC.i626
  %4597 = add i64 %4596, 4
  store i64 %4597, i64* %PC.i626
  %4598 = inttoptr i64 %4595 to i32*
  %4599 = load i32, i32* %4598
  %4600 = sext i32 %4599 to i64
  store i64 %4600, i64* %RDX.i627, align 8
  store %struct.Memory* %loadMem_436979, %struct.Memory** %MEMORY
  %loadMem_43697d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 33
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 5
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 7
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RDX.i625 = bitcast %union.anon* %4609 to i64*
  %4610 = load i64, i64* %RCX.i624
  %4611 = load i64, i64* %RDX.i625
  %4612 = mul i64 %4611, 8
  %4613 = add i64 %4612, %4610
  %4614 = load i64, i64* %PC.i623
  %4615 = add i64 %4614, 4
  store i64 %4615, i64* %PC.i623
  %4616 = inttoptr i64 %4613 to i64*
  %4617 = load i64, i64* %4616
  store i64 %4617, i64* %RCX.i624, align 8
  store %struct.Memory* %loadMem_43697d, %struct.Memory** %MEMORY
  %loadMem_436981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 33
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 7
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RDX.i621 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 15
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %4626 to i64*
  %4627 = load i64, i64* %RBP.i622
  %4628 = sub i64 %4627, 80
  %4629 = load i64, i64* %PC.i620
  %4630 = add i64 %4629, 4
  store i64 %4630, i64* %PC.i620
  %4631 = inttoptr i64 %4628 to i32*
  %4632 = load i32, i32* %4631
  %4633 = sext i32 %4632 to i64
  store i64 %4633, i64* %RDX.i621, align 8
  store %struct.Memory* %loadMem_436981, %struct.Memory** %MEMORY
  %loadMem_436985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 1
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %EAX.i617 = bitcast %union.anon* %4639 to i32*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 5
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 7
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RCX.i618
  %4647 = load i64, i64* %RDX.i619
  %4648 = mul i64 %4647, 4
  %4649 = add i64 %4648, %4646
  %4650 = load i32, i32* %EAX.i617
  %4651 = zext i32 %4650 to i64
  %4652 = load i64, i64* %PC.i616
  %4653 = add i64 %4652, 3
  store i64 %4653, i64* %PC.i616
  %4654 = inttoptr i64 %4649 to i32*
  store i32 %4650, i32* %4654
  store %struct.Memory* %loadMem_436985, %struct.Memory** %MEMORY
  br label %block_.L_436988

block_.L_436988:                                  ; preds = %block_436972, %block_.L_436927
  %loadMem_436988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 33
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 1
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 15
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %RBP.i615
  %4665 = sub i64 %4664, 64
  %4666 = load i64, i64* %PC.i613
  %4667 = add i64 %4666, 4
  store i64 %4667, i64* %PC.i613
  %4668 = inttoptr i64 %4665 to i64*
  %4669 = load i64, i64* %4668
  store i64 %4669, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_436988, %struct.Memory** %MEMORY
  %loadMem_43698c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %4672 to i64*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 5
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 15
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %4678 to i64*
  %4679 = load i64, i64* %RBP.i612
  %4680 = sub i64 %4679, 76
  %4681 = load i64, i64* %PC.i610
  %4682 = add i64 %4681, 3
  store i64 %4682, i64* %PC.i610
  %4683 = inttoptr i64 %4680 to i32*
  %4684 = load i32, i32* %4683
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RCX.i611, align 8
  store %struct.Memory* %loadMem_43698c, %struct.Memory** %MEMORY
  %loadMem_43698f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 33
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 5
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RCX.i609
  %4693 = load i64, i64* %PC.i608
  %4694 = add i64 %4693, 3
  store i64 %4694, i64* %PC.i608
  %4695 = trunc i64 %4692 to i32
  %4696 = sub i32 %4695, 1
  %4697 = zext i32 %4696 to i64
  store i64 %4697, i64* %RCX.i609, align 8
  %4698 = icmp ult i32 %4695, 1
  %4699 = zext i1 %4698 to i8
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4699, i8* %4700, align 1
  %4701 = and i32 %4696, 255
  %4702 = call i32 @llvm.ctpop.i32(i32 %4701)
  %4703 = trunc i32 %4702 to i8
  %4704 = and i8 %4703, 1
  %4705 = xor i8 %4704, 1
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4705, i8* %4706, align 1
  %4707 = xor i64 1, %4692
  %4708 = trunc i64 %4707 to i32
  %4709 = xor i32 %4708, %4696
  %4710 = lshr i32 %4709, 4
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4712, i8* %4713, align 1
  %4714 = icmp eq i32 %4696, 0
  %4715 = zext i1 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4715, i8* %4716, align 1
  %4717 = lshr i32 %4696, 31
  %4718 = trunc i32 %4717 to i8
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4718, i8* %4719, align 1
  %4720 = lshr i32 %4695, 31
  %4721 = xor i32 %4717, %4720
  %4722 = add i32 %4721, %4720
  %4723 = icmp eq i32 %4722, 2
  %4724 = zext i1 %4723 to i8
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4724, i8* %4725, align 1
  store %struct.Memory* %loadMem_43698f, %struct.Memory** %MEMORY
  %loadMem_436992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 5
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %ECX.i606 = bitcast %union.anon* %4731 to i32*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 7
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RDX.i607 = bitcast %union.anon* %4734 to i64*
  %4735 = load i32, i32* %ECX.i606
  %4736 = zext i32 %4735 to i64
  %4737 = load i64, i64* %PC.i605
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i605
  %4739 = shl i64 %4736, 32
  %4740 = ashr exact i64 %4739, 32
  store i64 %4740, i64* %RDX.i607, align 8
  store %struct.Memory* %loadMem_436992, %struct.Memory** %MEMORY
  %loadMem_436995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 1
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 7
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RDX.i604 = bitcast %union.anon* %4749 to i64*
  %4750 = load i64, i64* %RAX.i603
  %4751 = load i64, i64* %RDX.i604
  %4752 = mul i64 %4751, 8
  %4753 = add i64 %4752, %4750
  %4754 = load i64, i64* %PC.i602
  %4755 = add i64 %4754, 4
  store i64 %4755, i64* %PC.i602
  %4756 = inttoptr i64 %4753 to i64*
  %4757 = load i64, i64* %4756
  store i64 %4757, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_436995, %struct.Memory** %MEMORY
  %loadMem_436999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 7
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RDX.i600 = bitcast %union.anon* %4763 to i64*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 15
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %4766 to i64*
  %4767 = load i64, i64* %RBP.i601
  %4768 = sub i64 %4767, 80
  %4769 = load i64, i64* %PC.i599
  %4770 = add i64 %4769, 4
  store i64 %4770, i64* %PC.i599
  %4771 = inttoptr i64 %4768 to i32*
  %4772 = load i32, i32* %4771
  %4773 = sext i32 %4772 to i64
  store i64 %4773, i64* %RDX.i600, align 8
  store %struct.Memory* %loadMem_436999, %struct.Memory** %MEMORY
  %loadMem_43699d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 1
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 5
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 7
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RDX.i598 = bitcast %union.anon* %4785 to i64*
  %4786 = load i64, i64* %RAX.i596
  %4787 = load i64, i64* %RDX.i598
  %4788 = mul i64 %4787, 4
  %4789 = add i64 %4788, %4786
  %4790 = load i64, i64* %PC.i595
  %4791 = add i64 %4790, 3
  store i64 %4791, i64* %PC.i595
  %4792 = inttoptr i64 %4789 to i32*
  %4793 = load i32, i32* %4792
  %4794 = zext i32 %4793 to i64
  store i64 %4794, i64* %RCX.i597, align 8
  store %struct.Memory* %loadMem_43699d, %struct.Memory** %MEMORY
  %loadMem_4369a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 33
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %4797 to i64*
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 5
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %ECX.i593 = bitcast %union.anon* %4800 to i32*
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 15
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %4803 to i64*
  %4804 = load i64, i64* %RBP.i594
  %4805 = sub i64 %4804, 84
  %4806 = load i32, i32* %ECX.i593
  %4807 = zext i32 %4806 to i64
  %4808 = load i64, i64* %PC.i592
  %4809 = add i64 %4808, 3
  store i64 %4809, i64* %PC.i592
  %4810 = inttoptr i64 %4805 to i32*
  store i32 %4806, i32* %4810
  store %struct.Memory* %loadMem_4369a0, %struct.Memory** %MEMORY
  %loadMem_4369a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 1
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 15
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RBP.i591
  %4821 = sub i64 %4820, 64
  %4822 = load i64, i64* %PC.i589
  %4823 = add i64 %4822, 4
  store i64 %4823, i64* %PC.i589
  %4824 = inttoptr i64 %4821 to i64*
  %4825 = load i64, i64* %4824
  store i64 %4825, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_4369a3, %struct.Memory** %MEMORY
  %loadMem_4369a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 7
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RDX.i587 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i588
  %4836 = sub i64 %4835, 76
  %4837 = load i64, i64* %PC.i586
  %4838 = add i64 %4837, 4
  store i64 %4838, i64* %PC.i586
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = sext i32 %4840 to i64
  store i64 %4841, i64* %RDX.i587, align 8
  store %struct.Memory* %loadMem_4369a7, %struct.Memory** %MEMORY
  %loadMem_4369ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 1
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 7
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RAX.i584
  %4852 = load i64, i64* %RDX.i585
  %4853 = mul i64 %4852, 8
  %4854 = add i64 %4853, %4851
  %4855 = load i64, i64* %PC.i583
  %4856 = add i64 %4855, 4
  store i64 %4856, i64* %PC.i583
  %4857 = inttoptr i64 %4854 to i64*
  %4858 = load i64, i64* %4857
  store i64 %4858, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_4369ab, %struct.Memory** %MEMORY
  %loadMem_4369af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 33
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 7
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 15
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %RBP.i582
  %4869 = sub i64 %4868, 80
  %4870 = load i64, i64* %PC.i580
  %4871 = add i64 %4870, 4
  store i64 %4871, i64* %PC.i580
  %4872 = inttoptr i64 %4869 to i32*
  %4873 = load i32, i32* %4872
  %4874 = sext i32 %4873 to i64
  store i64 %4874, i64* %RDX.i581, align 8
  store %struct.Memory* %loadMem_4369af, %struct.Memory** %MEMORY
  %loadMem_4369b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 33
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %4877 to i64*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 5
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4880 to i32*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 1
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 7
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %4886 to i64*
  %4887 = load i32, i32* %ECX.i
  %4888 = zext i32 %4887 to i64
  %4889 = load i64, i64* %RAX.i578
  %4890 = load i64, i64* %RDX.i579
  %4891 = mul i64 %4890, 4
  %4892 = add i64 %4891, %4889
  %4893 = load i64, i64* %PC.i577
  %4894 = add i64 %4893, 3
  store i64 %4894, i64* %PC.i577
  %4895 = inttoptr i64 %4892 to i32*
  %4896 = load i32, i32* %4895
  %4897 = sub i32 %4887, %4896
  %4898 = icmp ult i32 %4887, %4896
  %4899 = zext i1 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4899, i8* %4900, align 1
  %4901 = and i32 %4897, 255
  %4902 = call i32 @llvm.ctpop.i32(i32 %4901)
  %4903 = trunc i32 %4902 to i8
  %4904 = and i8 %4903, 1
  %4905 = xor i8 %4904, 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4905, i8* %4906, align 1
  %4907 = xor i32 %4896, %4887
  %4908 = xor i32 %4907, %4897
  %4909 = lshr i32 %4908, 4
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4911, i8* %4912, align 1
  %4913 = icmp eq i32 %4897, 0
  %4914 = zext i1 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4914, i8* %4915, align 1
  %4916 = lshr i32 %4897, 31
  %4917 = trunc i32 %4916 to i8
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4917, i8* %4918, align 1
  %4919 = lshr i32 %4887, 31
  %4920 = lshr i32 %4896, 31
  %4921 = xor i32 %4920, %4919
  %4922 = xor i32 %4916, %4919
  %4923 = add i32 %4922, %4921
  %4924 = icmp eq i32 %4923, 2
  %4925 = zext i1 %4924 to i8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4925, i8* %4926, align 1
  store %struct.Memory* %loadMem_4369b3, %struct.Memory** %MEMORY
  %loadMem_4369b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 33
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %4929 to i64*
  %4930 = load i64, i64* %PC.i576
  %4931 = add i64 %4930, 28
  %4932 = load i64, i64* %PC.i576
  %4933 = add i64 %4932, 6
  %4934 = load i64, i64* %PC.i576
  %4935 = add i64 %4934, 6
  store i64 %4935, i64* %PC.i576
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4937 = load i8, i8* %4936, align 1
  %4938 = icmp ne i8 %4937, 0
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4940 = load i8, i8* %4939, align 1
  %4941 = icmp ne i8 %4940, 0
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4943 = load i8, i8* %4942, align 1
  %4944 = icmp ne i8 %4943, 0
  %4945 = xor i1 %4941, %4944
  %4946 = or i1 %4938, %4945
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %BRANCH_TAKEN, align 1
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4949 = select i1 %4946, i64 %4931, i64 %4933
  store i64 %4949, i64* %4948, align 8
  store %struct.Memory* %loadMem_4369b6, %struct.Memory** %MEMORY
  %loadBr_4369b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4369b6 = icmp eq i8 %loadBr_4369b6, 1
  br i1 %cmpBr_4369b6, label %block_.L_4369d2, label %block_4369bc

block_4369bc:                                     ; preds = %block_.L_436988
  %loadMem_4369bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 33
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %4952 to i64*
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 1
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 15
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %4958 to i64*
  %4959 = load i64, i64* %RBP.i575
  %4960 = sub i64 %4959, 84
  %4961 = load i64, i64* %PC.i573
  %4962 = add i64 %4961, 3
  store i64 %4962, i64* %PC.i573
  %4963 = inttoptr i64 %4960 to i32*
  %4964 = load i32, i32* %4963
  %4965 = zext i32 %4964 to i64
  store i64 %4965, i64* %RAX.i574, align 8
  store %struct.Memory* %loadMem_4369bc, %struct.Memory** %MEMORY
  %loadMem_4369bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 5
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 15
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RBP.i572
  %4976 = sub i64 %4975, 64
  %4977 = load i64, i64* %PC.i570
  %4978 = add i64 %4977, 4
  store i64 %4978, i64* %PC.i570
  %4979 = inttoptr i64 %4976 to i64*
  %4980 = load i64, i64* %4979
  store i64 %4980, i64* %RCX.i571, align 8
  store %struct.Memory* %loadMem_4369bf, %struct.Memory** %MEMORY
  %loadMem_4369c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 7
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RDX.i568 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RBP.i569
  %4991 = sub i64 %4990, 76
  %4992 = load i64, i64* %PC.i567
  %4993 = add i64 %4992, 4
  store i64 %4993, i64* %PC.i567
  %4994 = inttoptr i64 %4991 to i32*
  %4995 = load i32, i32* %4994
  %4996 = sext i32 %4995 to i64
  store i64 %4996, i64* %RDX.i568, align 8
  store %struct.Memory* %loadMem_4369c3, %struct.Memory** %MEMORY
  %loadMem_4369c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 5
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 7
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %5005 to i64*
  %5006 = load i64, i64* %RCX.i565
  %5007 = load i64, i64* %RDX.i566
  %5008 = mul i64 %5007, 8
  %5009 = add i64 %5008, %5006
  %5010 = load i64, i64* %PC.i564
  %5011 = add i64 %5010, 4
  store i64 %5011, i64* %PC.i564
  %5012 = inttoptr i64 %5009 to i64*
  %5013 = load i64, i64* %5012
  store i64 %5013, i64* %RCX.i565, align 8
  store %struct.Memory* %loadMem_4369c7, %struct.Memory** %MEMORY
  %loadMem_4369cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 33
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 7
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %5019 to i64*
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 15
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %5022 to i64*
  %5023 = load i64, i64* %RBP.i563
  %5024 = sub i64 %5023, 80
  %5025 = load i64, i64* %PC.i561
  %5026 = add i64 %5025, 4
  store i64 %5026, i64* %PC.i561
  %5027 = inttoptr i64 %5024 to i32*
  %5028 = load i32, i32* %5027
  %5029 = sext i32 %5028 to i64
  store i64 %5029, i64* %RDX.i562, align 8
  store %struct.Memory* %loadMem_4369cb, %struct.Memory** %MEMORY
  %loadMem_4369cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 33
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %5032 to i64*
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 1
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %EAX.i558 = bitcast %union.anon* %5035 to i32*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 5
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 7
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %5041 to i64*
  %5042 = load i64, i64* %RCX.i559
  %5043 = load i64, i64* %RDX.i560
  %5044 = mul i64 %5043, 4
  %5045 = add i64 %5044, %5042
  %5046 = load i32, i32* %EAX.i558
  %5047 = zext i32 %5046 to i64
  %5048 = load i64, i64* %PC.i557
  %5049 = add i64 %5048, 3
  store i64 %5049, i64* %PC.i557
  %5050 = inttoptr i64 %5045 to i32*
  store i32 %5046, i32* %5050
  store %struct.Memory* %loadMem_4369cf, %struct.Memory** %MEMORY
  br label %block_.L_4369d2

block_.L_4369d2:                                  ; preds = %block_4369bc, %block_.L_436988
  %loadMem_4369d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 33
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %5053 to i64*
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 1
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 15
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %5059 to i64*
  %5060 = load i64, i64* %RBP.i556
  %5061 = sub i64 %5060, 64
  %5062 = load i64, i64* %PC.i554
  %5063 = add i64 %5062, 4
  store i64 %5063, i64* %PC.i554
  %5064 = inttoptr i64 %5061 to i64*
  %5065 = load i64, i64* %5064
  store i64 %5065, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_4369d2, %struct.Memory** %MEMORY
  %loadMem_4369d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 33
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %5068 to i64*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 5
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 15
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %5074 to i64*
  %5075 = load i64, i64* %RBP.i553
  %5076 = sub i64 %5075, 76
  %5077 = load i64, i64* %PC.i551
  %5078 = add i64 %5077, 4
  store i64 %5078, i64* %PC.i551
  %5079 = inttoptr i64 %5076 to i32*
  %5080 = load i32, i32* %5079
  %5081 = sext i32 %5080 to i64
  store i64 %5081, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_4369d6, %struct.Memory** %MEMORY
  %loadMem_4369da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 33
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %5084 to i64*
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 1
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %5087 to i64*
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 5
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %5090 to i64*
  %5091 = load i64, i64* %RAX.i549
  %5092 = load i64, i64* %RCX.i550
  %5093 = mul i64 %5092, 8
  %5094 = add i64 %5093, %5091
  %5095 = load i64, i64* %PC.i548
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %PC.i548
  %5097 = inttoptr i64 %5094 to i64*
  %5098 = load i64, i64* %5097
  store i64 %5098, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_4369da, %struct.Memory** %MEMORY
  %loadMem_4369de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 5
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 15
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %5107 to i64*
  %5108 = load i64, i64* %RBP.i547
  %5109 = sub i64 %5108, 80
  %5110 = load i64, i64* %PC.i545
  %5111 = add i64 %5110, 4
  store i64 %5111, i64* %PC.i545
  %5112 = inttoptr i64 %5109 to i32*
  %5113 = load i32, i32* %5112
  %5114 = sext i32 %5113 to i64
  store i64 %5114, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_4369de, %struct.Memory** %MEMORY
  %loadMem_4369e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 1
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 5
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %5123 to i64*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 11
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RDI.i544 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RAX.i542
  %5128 = load i64, i64* %RCX.i543
  %5129 = mul i64 %5128, 4
  %5130 = add i64 %5129, %5127
  %5131 = load i64, i64* %PC.i541
  %5132 = add i64 %5131, 3
  store i64 %5132, i64* %PC.i541
  %5133 = inttoptr i64 %5130 to i32*
  %5134 = load i32, i32* %5133
  %5135 = zext i32 %5134 to i64
  store i64 %5135, i64* %RDI.i544, align 8
  store %struct.Memory* %loadMem_4369e2, %struct.Memory** %MEMORY
  %loadMem_4369e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 1
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 15
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RBP.i540
  %5146 = sub i64 %5145, 16
  %5147 = load i64, i64* %PC.i538
  %5148 = add i64 %5147, 4
  store i64 %5148, i64* %PC.i538
  %5149 = inttoptr i64 %5146 to i64*
  %5150 = load i64, i64* %5149
  store i64 %5150, i64* %RAX.i539, align 8
  store %struct.Memory* %loadMem_4369e5, %struct.Memory** %MEMORY
  %loadMem_4369e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 1
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %5156 to i64*
  %5157 = load i64, i64* %RAX.i537
  %5158 = add i64 %5157, 16
  %5159 = load i64, i64* %PC.i536
  %5160 = add i64 %5159, 4
  store i64 %5160, i64* %PC.i536
  %5161 = inttoptr i64 %5158 to i64*
  %5162 = load i64, i64* %5161
  store i64 %5162, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_4369e9, %struct.Memory** %MEMORY
  %loadMem_4369ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 33
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 5
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RCX.i534 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 15
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %5171 to i64*
  %5172 = load i64, i64* %RBP.i535
  %5173 = sub i64 %5172, 76
  %5174 = load i64, i64* %PC.i533
  %5175 = add i64 %5174, 4
  store i64 %5175, i64* %PC.i533
  %5176 = inttoptr i64 %5173 to i32*
  %5177 = load i32, i32* %5176
  %5178 = sext i32 %5177 to i64
  store i64 %5178, i64* %RCX.i534, align 8
  store %struct.Memory* %loadMem_4369ed, %struct.Memory** %MEMORY
  %loadMem_4369f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 33
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %5181 to i64*
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 1
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 5
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %5187 to i64*
  %5188 = load i64, i64* %RAX.i531
  %5189 = load i64, i64* %RCX.i532
  %5190 = mul i64 %5189, 8
  %5191 = add i64 %5190, %5188
  %5192 = load i64, i64* %PC.i530
  %5193 = add i64 %5192, 4
  store i64 %5193, i64* %PC.i530
  %5194 = inttoptr i64 %5191 to i64*
  %5195 = load i64, i64* %5194
  store i64 %5195, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_4369f1, %struct.Memory** %MEMORY
  %loadMem_4369f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 5
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 15
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %RBP.i529
  %5206 = sub i64 %5205, 80
  %5207 = load i64, i64* %PC.i527
  %5208 = add i64 %5207, 4
  store i64 %5208, i64* %PC.i527
  %5209 = inttoptr i64 %5206 to i32*
  %5210 = load i32, i32* %5209
  %5211 = sext i32 %5210 to i64
  store i64 %5211, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_4369f5, %struct.Memory** %MEMORY
  %loadMem_4369f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 33
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 1
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 5
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 9
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RSI.i526 = bitcast %union.anon* %5223 to i64*
  %5224 = load i64, i64* %RAX.i524
  %5225 = load i64, i64* %RCX.i525
  %5226 = mul i64 %5225, 4
  %5227 = add i64 %5226, %5224
  %5228 = load i64, i64* %PC.i523
  %5229 = add i64 %5228, 3
  store i64 %5229, i64* %PC.i523
  %5230 = inttoptr i64 %5227 to i32*
  %5231 = load i32, i32* %5230
  %5232 = zext i32 %5231 to i64
  store i64 %5232, i64* %RSI.i526, align 8
  store %struct.Memory* %loadMem_4369f9, %struct.Memory** %MEMORY
  %loadMem1_4369fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 33
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %5235 to i64*
  %5236 = load i64, i64* %PC.i522
  %5237 = add i64 %5236, -59468
  %5238 = load i64, i64* %PC.i522
  %5239 = add i64 %5238, 5
  %5240 = load i64, i64* %PC.i522
  %5241 = add i64 %5240, 5
  store i64 %5241, i64* %PC.i522
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5243 = load i64, i64* %5242, align 8
  %5244 = add i64 %5243, -8
  %5245 = inttoptr i64 %5244 to i64*
  store i64 %5239, i64* %5245
  store i64 %5244, i64* %5242, align 8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5237, i64* %5246, align 8
  store %struct.Memory* %loadMem1_4369fc, %struct.Memory** %MEMORY
  %loadMem2_4369fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4369fc = load i64, i64* %3
  %call2_4369fc = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4369fc, %struct.Memory* %loadMem2_4369fc)
  store %struct.Memory* %call2_4369fc, %struct.Memory** %MEMORY
  %loadMem_436a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 5
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 15
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %RBP.i521
  %5257 = sub i64 %5256, 64
  %5258 = load i64, i64* %PC.i519
  %5259 = add i64 %5258, 4
  store i64 %5259, i64* %PC.i519
  %5260 = inttoptr i64 %5257 to i64*
  %5261 = load i64, i64* %5260
  store i64 %5261, i64* %RCX.i520, align 8
  store %struct.Memory* %loadMem_436a01, %struct.Memory** %MEMORY
  %loadMem_436a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %5264 to i64*
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5266 = getelementptr inbounds %struct.GPR, %struct.GPR* %5265, i32 0, i32 7
  %5267 = getelementptr inbounds %struct.Reg, %struct.Reg* %5266, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %5267 to i64*
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 15
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %5270 to i64*
  %5271 = load i64, i64* %RBP.i518
  %5272 = sub i64 %5271, 76
  %5273 = load i64, i64* %PC.i516
  %5274 = add i64 %5273, 4
  store i64 %5274, i64* %PC.i516
  %5275 = inttoptr i64 %5272 to i32*
  %5276 = load i32, i32* %5275
  %5277 = sext i32 %5276 to i64
  store i64 %5277, i64* %RDX.i517, align 8
  store %struct.Memory* %loadMem_436a05, %struct.Memory** %MEMORY
  %loadMem_436a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 33
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %5280 to i64*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 5
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 7
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %5286 to i64*
  %5287 = load i64, i64* %RCX.i514
  %5288 = load i64, i64* %RDX.i515
  %5289 = mul i64 %5288, 8
  %5290 = add i64 %5289, %5287
  %5291 = load i64, i64* %PC.i513
  %5292 = add i64 %5291, 4
  store i64 %5292, i64* %PC.i513
  %5293 = inttoptr i64 %5290 to i64*
  %5294 = load i64, i64* %5293
  store i64 %5294, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_436a09, %struct.Memory** %MEMORY
  %loadMem_436a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 33
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %5297 to i64*
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 7
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %5300 to i64*
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 15
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %5303 to i64*
  %5304 = load i64, i64* %RBP.i512
  %5305 = sub i64 %5304, 80
  %5306 = load i64, i64* %PC.i510
  %5307 = add i64 %5306, 4
  store i64 %5307, i64* %PC.i510
  %5308 = inttoptr i64 %5305 to i32*
  %5309 = load i32, i32* %5308
  %5310 = sext i32 %5309 to i64
  store i64 %5310, i64* %RDX.i511, align 8
  store %struct.Memory* %loadMem_436a0d, %struct.Memory** %MEMORY
  %loadMem_436a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 33
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 1
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %EAX.i507 = bitcast %union.anon* %5316 to i32*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 5
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 7
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %RDX.i509 = bitcast %union.anon* %5322 to i64*
  %5323 = load i64, i64* %RCX.i508
  %5324 = load i64, i64* %RDX.i509
  %5325 = mul i64 %5324, 4
  %5326 = add i64 %5325, %5323
  %5327 = load i32, i32* %EAX.i507
  %5328 = zext i32 %5327 to i64
  %5329 = load i64, i64* %PC.i506
  %5330 = add i64 %5329, 3
  store i64 %5330, i64* %PC.i506
  %5331 = inttoptr i64 %5326 to i32*
  store i32 %5327, i32* %5331
  store %struct.Memory* %loadMem_436a11, %struct.Memory** %MEMORY
  %loadMem_436a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 33
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %5334 to i64*
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 1
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %5337 to i64*
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 15
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %5340 to i64*
  %5341 = load i64, i64* %RBP.i505
  %5342 = sub i64 %5341, 80
  %5343 = load i64, i64* %PC.i503
  %5344 = add i64 %5343, 3
  store i64 %5344, i64* %PC.i503
  %5345 = inttoptr i64 %5342 to i32*
  %5346 = load i32, i32* %5345
  %5347 = zext i32 %5346 to i64
  store i64 %5347, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_436a14, %struct.Memory** %MEMORY
  %loadMem_436a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 1
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %5353 to i64*
  %5354 = load i64, i64* %RAX.i502
  %5355 = load i64, i64* %PC.i501
  %5356 = add i64 %5355, 3
  store i64 %5356, i64* %PC.i501
  %5357 = trunc i64 %5354 to i32
  %5358 = add i32 1, %5357
  %5359 = zext i32 %5358 to i64
  store i64 %5359, i64* %RAX.i502, align 8
  %5360 = icmp ult i32 %5358, %5357
  %5361 = icmp ult i32 %5358, 1
  %5362 = or i1 %5360, %5361
  %5363 = zext i1 %5362 to i8
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5363, i8* %5364, align 1
  %5365 = and i32 %5358, 255
  %5366 = call i32 @llvm.ctpop.i32(i32 %5365)
  %5367 = trunc i32 %5366 to i8
  %5368 = and i8 %5367, 1
  %5369 = xor i8 %5368, 1
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5369, i8* %5370, align 1
  %5371 = xor i64 1, %5354
  %5372 = trunc i64 %5371 to i32
  %5373 = xor i32 %5372, %5358
  %5374 = lshr i32 %5373, 4
  %5375 = trunc i32 %5374 to i8
  %5376 = and i8 %5375, 1
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5376, i8* %5377, align 1
  %5378 = icmp eq i32 %5358, 0
  %5379 = zext i1 %5378 to i8
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5379, i8* %5380, align 1
  %5381 = lshr i32 %5358, 31
  %5382 = trunc i32 %5381 to i8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5382, i8* %5383, align 1
  %5384 = lshr i32 %5357, 31
  %5385 = xor i32 %5381, %5384
  %5386 = add i32 %5385, %5381
  %5387 = icmp eq i32 %5386, 2
  %5388 = zext i1 %5387 to i8
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5388, i8* %5389, align 1
  store %struct.Memory* %loadMem_436a17, %struct.Memory** %MEMORY
  %loadMem_436a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 33
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %5392 to i64*
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 1
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %EAX.i499 = bitcast %union.anon* %5395 to i32*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 15
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %5398 to i64*
  %5399 = load i64, i64* %RBP.i500
  %5400 = sub i64 %5399, 80
  %5401 = load i32, i32* %EAX.i499
  %5402 = zext i32 %5401 to i64
  %5403 = load i64, i64* %PC.i498
  %5404 = add i64 %5403, 3
  store i64 %5404, i64* %PC.i498
  %5405 = inttoptr i64 %5400 to i32*
  store i32 %5401, i32* %5405
  store %struct.Memory* %loadMem_436a1a, %struct.Memory** %MEMORY
  %loadMem_436a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 33
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %PC.i497
  %5410 = add i64 %5409, -824
  %5411 = load i64, i64* %PC.i497
  %5412 = add i64 %5411, 5
  store i64 %5412, i64* %PC.i497
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5410, i64* %5413, align 8
  store %struct.Memory* %loadMem_436a1d, %struct.Memory** %MEMORY
  br label %block_.L_4366e5

block_.L_436a22:                                  ; preds = %block_.L_4366e5
  %loadMem_436a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 33
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %5416 to i64*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 1
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %5419 to i64*
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 15
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %5422 to i64*
  %5423 = load i64, i64* %RBP.i496
  %5424 = sub i64 %5423, 48
  %5425 = load i64, i64* %PC.i494
  %5426 = add i64 %5425, 4
  store i64 %5426, i64* %PC.i494
  %5427 = inttoptr i64 %5424 to i64*
  %5428 = load i64, i64* %5427
  store i64 %5428, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_436a22, %struct.Memory** %MEMORY
  %loadMem_436a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 33
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %5431 to i64*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 5
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %5434 to i64*
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 15
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %5437 to i64*
  %5438 = load i64, i64* %RBP.i493
  %5439 = sub i64 %5438, 76
  %5440 = load i64, i64* %PC.i491
  %5441 = add i64 %5440, 4
  store i64 %5441, i64* %PC.i491
  %5442 = inttoptr i64 %5439 to i32*
  %5443 = load i32, i32* %5442
  %5444 = sext i32 %5443 to i64
  store i64 %5444, i64* %RCX.i492, align 8
  store %struct.Memory* %loadMem_436a26, %struct.Memory** %MEMORY
  %loadMem_436a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 33
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %5447 to i64*
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 1
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %5450 to i64*
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 5
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %5453 to i64*
  %5454 = load i64, i64* %RAX.i489
  %5455 = load i64, i64* %RCX.i490
  %5456 = mul i64 %5455, 8
  %5457 = add i64 %5456, %5454
  %5458 = load i64, i64* %PC.i488
  %5459 = add i64 %5458, 4
  store i64 %5459, i64* %PC.i488
  %5460 = inttoptr i64 %5457 to i64*
  %5461 = load i64, i64* %5460
  store i64 %5461, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_436a2a, %struct.Memory** %MEMORY
  %loadMem_436a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 1
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %5467 to i64*
  %5468 = load i64, i64* %RAX.i487
  %5469 = add i64 %5468, 16
  %5470 = load i64, i64* %PC.i486
  %5471 = add i64 %5470, 7
  store i64 %5471, i64* %PC.i486
  %5472 = inttoptr i64 %5469 to i32*
  store i32 -987654321, i32* %5472
  store %struct.Memory* %loadMem_436a2e, %struct.Memory** %MEMORY
  %loadMem_436a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 33
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %5475 to i64*
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 1
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %5478 to i64*
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 15
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %5481 to i64*
  %5482 = load i64, i64* %RBP.i485
  %5483 = sub i64 %5482, 48
  %5484 = load i64, i64* %PC.i483
  %5485 = add i64 %5484, 4
  store i64 %5485, i64* %PC.i483
  %5486 = inttoptr i64 %5483 to i64*
  %5487 = load i64, i64* %5486
  store i64 %5487, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_436a35, %struct.Memory** %MEMORY
  %loadMem_436a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 7
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 15
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %5496 to i64*
  %5497 = load i64, i64* %RBP.i482
  %5498 = sub i64 %5497, 76
  %5499 = load i64, i64* %PC.i480
  %5500 = add i64 %5499, 3
  store i64 %5500, i64* %PC.i480
  %5501 = inttoptr i64 %5498 to i32*
  %5502 = load i32, i32* %5501
  %5503 = zext i32 %5502 to i64
  store i64 %5503, i64* %RDX.i481, align 8
  store %struct.Memory* %loadMem_436a39, %struct.Memory** %MEMORY
  %loadMem_436a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 7
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %5509 to i64*
  %5510 = load i64, i64* %RDX.i479
  %5511 = load i64, i64* %PC.i478
  %5512 = add i64 %5511, 3
  store i64 %5512, i64* %PC.i478
  %5513 = trunc i64 %5510 to i32
  %5514 = sub i32 %5513, 1
  %5515 = zext i32 %5514 to i64
  store i64 %5515, i64* %RDX.i479, align 8
  %5516 = icmp ult i32 %5513, 1
  %5517 = zext i1 %5516 to i8
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5517, i8* %5518, align 1
  %5519 = and i32 %5514, 255
  %5520 = call i32 @llvm.ctpop.i32(i32 %5519)
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  %5523 = xor i8 %5522, 1
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5523, i8* %5524, align 1
  %5525 = xor i64 1, %5510
  %5526 = trunc i64 %5525 to i32
  %5527 = xor i32 %5526, %5514
  %5528 = lshr i32 %5527, 4
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5530, i8* %5531, align 1
  %5532 = icmp eq i32 %5514, 0
  %5533 = zext i1 %5532 to i8
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5533, i8* %5534, align 1
  %5535 = lshr i32 %5514, 31
  %5536 = trunc i32 %5535 to i8
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5536, i8* %5537, align 1
  %5538 = lshr i32 %5513, 31
  %5539 = xor i32 %5535, %5538
  %5540 = add i32 %5539, %5538
  %5541 = icmp eq i32 %5540, 2
  %5542 = zext i1 %5541 to i8
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5542, i8* %5543, align 1
  store %struct.Memory* %loadMem_436a3c, %struct.Memory** %MEMORY
  %loadMem_436a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 7
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %EDX.i476 = bitcast %union.anon* %5549 to i32*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 5
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %5552 to i64*
  %5553 = load i32, i32* %EDX.i476
  %5554 = zext i32 %5553 to i64
  %5555 = load i64, i64* %PC.i475
  %5556 = add i64 %5555, 3
  store i64 %5556, i64* %PC.i475
  %5557 = shl i64 %5554, 32
  %5558 = ashr exact i64 %5557, 32
  store i64 %5558, i64* %RCX.i477, align 8
  store %struct.Memory* %loadMem_436a3f, %struct.Memory** %MEMORY
  %loadMem_436a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 33
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 1
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %5564 to i64*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 5
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %5567 to i64*
  %5568 = load i64, i64* %RAX.i473
  %5569 = load i64, i64* %RCX.i474
  %5570 = mul i64 %5569, 8
  %5571 = add i64 %5570, %5568
  %5572 = load i64, i64* %PC.i472
  %5573 = add i64 %5572, 4
  store i64 %5573, i64* %PC.i472
  %5574 = inttoptr i64 %5571 to i64*
  %5575 = load i64, i64* %5574
  store i64 %5575, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_436a42, %struct.Memory** %MEMORY
  %loadMem_436a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 33
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 1
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 11
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RDI.i471 = bitcast %union.anon* %5584 to i64*
  %5585 = load i64, i64* %RAX.i470
  %5586 = add i64 %5585, 16
  %5587 = load i64, i64* %PC.i469
  %5588 = add i64 %5587, 3
  store i64 %5588, i64* %PC.i469
  %5589 = inttoptr i64 %5586 to i32*
  %5590 = load i32, i32* %5589
  %5591 = zext i32 %5590 to i64
  store i64 %5591, i64* %RDI.i471, align 8
  store %struct.Memory* %loadMem_436a46, %struct.Memory** %MEMORY
  %loadMem_436a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 33
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %5594 to i64*
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 1
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %5597 to i64*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 15
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %5600 to i64*
  %5601 = load i64, i64* %RBP.i468
  %5602 = sub i64 %5601, 16
  %5603 = load i64, i64* %PC.i466
  %5604 = add i64 %5603, 4
  store i64 %5604, i64* %PC.i466
  %5605 = inttoptr i64 %5602 to i64*
  %5606 = load i64, i64* %5605
  store i64 %5606, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_436a49, %struct.Memory** %MEMORY
  %loadMem_436a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 1
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %5612 to i64*
  %5613 = load i64, i64* %RAX.i465
  %5614 = load i64, i64* %PC.i464
  %5615 = add i64 %5614, 3
  store i64 %5615, i64* %PC.i464
  %5616 = inttoptr i64 %5613 to i64*
  %5617 = load i64, i64* %5616
  store i64 %5617, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_436a4d, %struct.Memory** %MEMORY
  %loadMem_436a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 33
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %5620 to i64*
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 5
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %5623 to i64*
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 15
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %5626 to i64*
  %5627 = load i64, i64* %RBP.i463
  %5628 = sub i64 %5627, 76
  %5629 = load i64, i64* %PC.i461
  %5630 = add i64 %5629, 4
  store i64 %5630, i64* %PC.i461
  %5631 = inttoptr i64 %5628 to i32*
  %5632 = load i32, i32* %5631
  %5633 = sext i32 %5632 to i64
  store i64 %5633, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_436a50, %struct.Memory** %MEMORY
  %loadMem_436a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5635 = getelementptr inbounds %struct.GPR, %struct.GPR* %5634, i32 0, i32 33
  %5636 = getelementptr inbounds %struct.Reg, %struct.Reg* %5635, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %5636 to i64*
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5638 = getelementptr inbounds %struct.GPR, %struct.GPR* %5637, i32 0, i32 1
  %5639 = getelementptr inbounds %struct.Reg, %struct.Reg* %5638, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %5639 to i64*
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 5
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %5642 to i64*
  %5643 = load i64, i64* %RAX.i459
  %5644 = load i64, i64* %RCX.i460
  %5645 = mul i64 %5644, 8
  %5646 = add i64 %5645, %5643
  %5647 = load i64, i64* %PC.i458
  %5648 = add i64 %5647, 4
  store i64 %5648, i64* %PC.i458
  %5649 = inttoptr i64 %5646 to i64*
  %5650 = load i64, i64* %5649
  store i64 %5650, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_436a54, %struct.Memory** %MEMORY
  %loadMem_436a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 1
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 9
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RSI.i457 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RAX.i456
  %5661 = add i64 %5660, 16
  %5662 = load i64, i64* %PC.i455
  %5663 = add i64 %5662, 3
  store i64 %5663, i64* %PC.i455
  %5664 = inttoptr i64 %5661 to i32*
  %5665 = load i32, i32* %5664
  %5666 = zext i32 %5665 to i64
  store i64 %5666, i64* %RSI.i457, align 8
  store %struct.Memory* %loadMem_436a58, %struct.Memory** %MEMORY
  %loadMem1_436a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5668 = getelementptr inbounds %struct.GPR, %struct.GPR* %5667, i32 0, i32 33
  %5669 = getelementptr inbounds %struct.Reg, %struct.Reg* %5668, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %5669 to i64*
  %5670 = load i64, i64* %PC.i454
  %5671 = add i64 %5670, -59563
  %5672 = load i64, i64* %PC.i454
  %5673 = add i64 %5672, 5
  %5674 = load i64, i64* %PC.i454
  %5675 = add i64 %5674, 5
  store i64 %5675, i64* %PC.i454
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5677 = load i64, i64* %5676, align 8
  %5678 = add i64 %5677, -8
  %5679 = inttoptr i64 %5678 to i64*
  store i64 %5673, i64* %5679
  store i64 %5678, i64* %5676, align 8
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5671, i64* %5680, align 8
  store %struct.Memory* %loadMem1_436a5b, %struct.Memory** %MEMORY
  %loadMem2_436a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436a5b = load i64, i64* %3
  %call2_436a5b = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436a5b, %struct.Memory* %loadMem2_436a5b)
  store %struct.Memory* %call2_436a5b, %struct.Memory** %MEMORY
  %loadMem_436a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 33
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %5683 to i64*
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 1
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %EAX.i452 = bitcast %union.anon* %5686 to i32*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 15
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %5689 to i64*
  %5690 = load i64, i64* %RBP.i453
  %5691 = sub i64 %5690, 84
  %5692 = load i32, i32* %EAX.i452
  %5693 = zext i32 %5692 to i64
  %5694 = load i64, i64* %PC.i451
  %5695 = add i64 %5694, 3
  store i64 %5695, i64* %PC.i451
  %5696 = inttoptr i64 %5691 to i32*
  store i32 %5692, i32* %5696
  store %struct.Memory* %loadMem_436a60, %struct.Memory** %MEMORY
  %loadMem_436a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 33
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5699 to i64*
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 1
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %5702 to i32*
  %5703 = load i32, i32* %EAX.i450
  %5704 = zext i32 %5703 to i64
  %5705 = load i64, i64* %PC.i449
  %5706 = add i64 %5705, 5
  store i64 %5706, i64* %PC.i449
  %5707 = sub i32 %5703, -987654321
  %5708 = icmp ult i32 %5703, -987654321
  %5709 = zext i1 %5708 to i8
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5709, i8* %5710, align 1
  %5711 = and i32 %5707, 255
  %5712 = call i32 @llvm.ctpop.i32(i32 %5711)
  %5713 = trunc i32 %5712 to i8
  %5714 = and i8 %5713, 1
  %5715 = xor i8 %5714, 1
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5715, i8* %5716, align 1
  %5717 = xor i64 -987654321, %5704
  %5718 = trunc i64 %5717 to i32
  %5719 = xor i32 %5718, %5707
  %5720 = lshr i32 %5719, 4
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5722, i8* %5723, align 1
  %5724 = icmp eq i32 %5707, 0
  %5725 = zext i1 %5724 to i8
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5725, i8* %5726, align 1
  %5727 = lshr i32 %5707, 31
  %5728 = trunc i32 %5727 to i8
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5728, i8* %5729, align 1
  %5730 = lshr i32 %5703, 31
  %5731 = xor i32 1, %5730
  %5732 = xor i32 %5727, %5730
  %5733 = add i32 %5732, %5731
  %5734 = icmp eq i32 %5733, 2
  %5735 = zext i1 %5734 to i8
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5735, i8* %5736, align 1
  store %struct.Memory* %loadMem_436a63, %struct.Memory** %MEMORY
  %loadMem_436a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 33
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %5739 to i64*
  %5740 = load i64, i64* %PC.i448
  %5741 = add i64 %5740, 24
  %5742 = load i64, i64* %PC.i448
  %5743 = add i64 %5742, 6
  %5744 = load i64, i64* %PC.i448
  %5745 = add i64 %5744, 6
  store i64 %5745, i64* %PC.i448
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5747 = load i8, i8* %5746, align 1
  %5748 = icmp ne i8 %5747, 0
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5750 = load i8, i8* %5749, align 1
  %5751 = icmp ne i8 %5750, 0
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5753 = load i8, i8* %5752, align 1
  %5754 = icmp ne i8 %5753, 0
  %5755 = xor i1 %5751, %5754
  %5756 = or i1 %5748, %5755
  %5757 = zext i1 %5756 to i8
  store i8 %5757, i8* %BRANCH_TAKEN, align 1
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5759 = select i1 %5756, i64 %5741, i64 %5743
  store i64 %5759, i64* %5758, align 8
  store %struct.Memory* %loadMem_436a68, %struct.Memory** %MEMORY
  %loadBr_436a68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436a68 = icmp eq i8 %loadBr_436a68, 1
  br i1 %cmpBr_436a68, label %block_.L_436a80, label %block_436a6e

block_436a6e:                                     ; preds = %block_.L_436a22
  %loadMem_436a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 33
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %5762 to i64*
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 1
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 15
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %5768 to i64*
  %5769 = load i64, i64* %RBP.i447
  %5770 = sub i64 %5769, 84
  %5771 = load i64, i64* %PC.i445
  %5772 = add i64 %5771, 3
  store i64 %5772, i64* %PC.i445
  %5773 = inttoptr i64 %5770 to i32*
  %5774 = load i32, i32* %5773
  %5775 = zext i32 %5774 to i64
  store i64 %5775, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_436a6e, %struct.Memory** %MEMORY
  %loadMem_436a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 33
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %5778 to i64*
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 5
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %5781 to i64*
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5783 = getelementptr inbounds %struct.GPR, %struct.GPR* %5782, i32 0, i32 15
  %5784 = getelementptr inbounds %struct.Reg, %struct.Reg* %5783, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %5784 to i64*
  %5785 = load i64, i64* %RBP.i444
  %5786 = sub i64 %5785, 48
  %5787 = load i64, i64* %PC.i442
  %5788 = add i64 %5787, 4
  store i64 %5788, i64* %PC.i442
  %5789 = inttoptr i64 %5786 to i64*
  %5790 = load i64, i64* %5789
  store i64 %5790, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_436a71, %struct.Memory** %MEMORY
  %loadMem_436a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 33
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %5793 to i64*
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 7
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %5796 to i64*
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 15
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %5799 to i64*
  %5800 = load i64, i64* %RBP.i441
  %5801 = sub i64 %5800, 76
  %5802 = load i64, i64* %PC.i439
  %5803 = add i64 %5802, 4
  store i64 %5803, i64* %PC.i439
  %5804 = inttoptr i64 %5801 to i32*
  %5805 = load i32, i32* %5804
  %5806 = sext i32 %5805 to i64
  store i64 %5806, i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_436a75, %struct.Memory** %MEMORY
  %loadMem_436a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 33
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %5809 to i64*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 5
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %5812 to i64*
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 7
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %5815 to i64*
  %5816 = load i64, i64* %RCX.i437
  %5817 = load i64, i64* %RDX.i438
  %5818 = mul i64 %5817, 8
  %5819 = add i64 %5818, %5816
  %5820 = load i64, i64* %PC.i436
  %5821 = add i64 %5820, 4
  store i64 %5821, i64* %PC.i436
  %5822 = inttoptr i64 %5819 to i64*
  %5823 = load i64, i64* %5822
  store i64 %5823, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_436a79, %struct.Memory** %MEMORY
  %loadMem_436a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 33
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 1
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %EAX.i434 = bitcast %union.anon* %5829 to i32*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 5
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %5832 to i64*
  %5833 = load i64, i64* %RCX.i435
  %5834 = add i64 %5833, 16
  %5835 = load i32, i32* %EAX.i434
  %5836 = zext i32 %5835 to i64
  %5837 = load i64, i64* %PC.i433
  %5838 = add i64 %5837, 3
  store i64 %5838, i64* %PC.i433
  %5839 = inttoptr i64 %5834 to i32*
  store i32 %5835, i32* %5839
  store %struct.Memory* %loadMem_436a7d, %struct.Memory** %MEMORY
  br label %block_.L_436a80

block_.L_436a80:                                  ; preds = %block_436a6e, %block_.L_436a22
  %loadMem_436a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 33
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 1
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 15
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %5848 to i64*
  %5849 = load i64, i64* %RBP.i432
  %5850 = sub i64 %5849, 48
  %5851 = load i64, i64* %PC.i430
  %5852 = add i64 %5851, 4
  store i64 %5852, i64* %PC.i430
  %5853 = inttoptr i64 %5850 to i64*
  %5854 = load i64, i64* %5853
  store i64 %5854, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_436a80, %struct.Memory** %MEMORY
  %loadMem_436a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 33
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %5857 to i64*
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 5
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %5860 to i64*
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 15
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %5863 to i64*
  %5864 = load i64, i64* %RBP.i429
  %5865 = sub i64 %5864, 76
  %5866 = load i64, i64* %PC.i427
  %5867 = add i64 %5866, 4
  store i64 %5867, i64* %PC.i427
  %5868 = inttoptr i64 %5865 to i32*
  %5869 = load i32, i32* %5868
  %5870 = sext i32 %5869 to i64
  store i64 %5870, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_436a84, %struct.Memory** %MEMORY
  %loadMem_436a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 1
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 5
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RAX.i425
  %5881 = load i64, i64* %RCX.i426
  %5882 = mul i64 %5881, 8
  %5883 = add i64 %5882, %5880
  %5884 = load i64, i64* %PC.i424
  %5885 = add i64 %5884, 4
  store i64 %5885, i64* %PC.i424
  %5886 = inttoptr i64 %5883 to i64*
  %5887 = load i64, i64* %5886
  store i64 %5887, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_436a88, %struct.Memory** %MEMORY
  %loadMem_436a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 33
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %5890 to i64*
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 1
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %5893 to i64*
  %5894 = load i64, i64* %RAX.i423
  %5895 = add i64 %5894, 4
  %5896 = load i64, i64* %PC.i422
  %5897 = add i64 %5896, 7
  store i64 %5897, i64* %PC.i422
  %5898 = inttoptr i64 %5895 to i32*
  store i32 -987654321, i32* %5898
  store %struct.Memory* %loadMem_436a8c, %struct.Memory** %MEMORY
  %loadMem_436a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 33
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5901 to i64*
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 15
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %5904 to i64*
  %5905 = load i64, i64* %RBP.i421
  %5906 = sub i64 %5905, 80
  %5907 = load i64, i64* %PC.i420
  %5908 = add i64 %5907, 7
  store i64 %5908, i64* %PC.i420
  %5909 = inttoptr i64 %5906 to i32*
  store i32 1, i32* %5909
  store %struct.Memory* %loadMem_436a93, %struct.Memory** %MEMORY
  br label %block_.L_436a9a

block_.L_436a9a:                                  ; preds = %block_.L_436ae8, %block_.L_436a80
  %loadMem_436a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 33
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 1
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %5915 to i64*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 15
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %RBP.i419
  %5920 = sub i64 %5919, 80
  %5921 = load i64, i64* %PC.i417
  %5922 = add i64 %5921, 3
  store i64 %5922, i64* %PC.i417
  %5923 = inttoptr i64 %5920 to i32*
  %5924 = load i32, i32* %5923
  %5925 = zext i32 %5924 to i64
  store i64 %5925, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_436a9a, %struct.Memory** %MEMORY
  %loadMem_436a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 1
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %EAX.i415 = bitcast %union.anon* %5931 to i32*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 15
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %5934 to i64*
  %5935 = load i32, i32* %EAX.i415
  %5936 = zext i32 %5935 to i64
  %5937 = load i64, i64* %RBP.i416
  %5938 = sub i64 %5937, 8
  %5939 = load i64, i64* %PC.i414
  %5940 = add i64 %5939, 3
  store i64 %5940, i64* %PC.i414
  %5941 = inttoptr i64 %5938 to i32*
  %5942 = load i32, i32* %5941
  %5943 = sub i32 %5935, %5942
  %5944 = icmp ult i32 %5935, %5942
  %5945 = zext i1 %5944 to i8
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5945, i8* %5946, align 1
  %5947 = and i32 %5943, 255
  %5948 = call i32 @llvm.ctpop.i32(i32 %5947)
  %5949 = trunc i32 %5948 to i8
  %5950 = and i8 %5949, 1
  %5951 = xor i8 %5950, 1
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5951, i8* %5952, align 1
  %5953 = xor i32 %5942, %5935
  %5954 = xor i32 %5953, %5943
  %5955 = lshr i32 %5954, 4
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5957, i8* %5958, align 1
  %5959 = icmp eq i32 %5943, 0
  %5960 = zext i1 %5959 to i8
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5960, i8* %5961, align 1
  %5962 = lshr i32 %5943, 31
  %5963 = trunc i32 %5962 to i8
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5963, i8* %5964, align 1
  %5965 = lshr i32 %5935, 31
  %5966 = lshr i32 %5942, 31
  %5967 = xor i32 %5966, %5965
  %5968 = xor i32 %5962, %5965
  %5969 = add i32 %5968, %5967
  %5970 = icmp eq i32 %5969, 2
  %5971 = zext i1 %5970 to i8
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5971, i8* %5972, align 1
  store %struct.Memory* %loadMem_436a9d, %struct.Memory** %MEMORY
  %loadMem_436aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 33
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5975 to i64*
  %5976 = load i64, i64* %PC.i413
  %5977 = add i64 %5976, 86
  %5978 = load i64, i64* %PC.i413
  %5979 = add i64 %5978, 6
  %5980 = load i64, i64* %PC.i413
  %5981 = add i64 %5980, 6
  store i64 %5981, i64* %PC.i413
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5983 = load i8, i8* %5982, align 1
  %5984 = icmp eq i8 %5983, 0
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5986 = load i8, i8* %5985, align 1
  %5987 = icmp ne i8 %5986, 0
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5989 = load i8, i8* %5988, align 1
  %5990 = icmp ne i8 %5989, 0
  %5991 = xor i1 %5987, %5990
  %5992 = xor i1 %5991, true
  %5993 = and i1 %5984, %5992
  %5994 = zext i1 %5993 to i8
  store i8 %5994, i8* %BRANCH_TAKEN, align 1
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5996 = select i1 %5993, i64 %5977, i64 %5979
  store i64 %5996, i64* %5995, align 8
  store %struct.Memory* %loadMem_436aa0, %struct.Memory** %MEMORY
  %loadBr_436aa0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436aa0 = icmp eq i8 %loadBr_436aa0, 1
  br i1 %cmpBr_436aa0, label %block_.L_436af6, label %block_436aa6

block_436aa6:                                     ; preds = %block_.L_436a9a
  %loadMem_436aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 33
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %5999 to i64*
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 1
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 15
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %6005 to i64*
  %6006 = load i64, i64* %RBP.i412
  %6007 = sub i64 %6006, 56
  %6008 = load i64, i64* %PC.i410
  %6009 = add i64 %6008, 4
  store i64 %6009, i64* %PC.i410
  %6010 = inttoptr i64 %6007 to i64*
  %6011 = load i64, i64* %6010
  store i64 %6011, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_436aa6, %struct.Memory** %MEMORY
  %loadMem_436aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 33
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 5
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 15
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %6020 to i64*
  %6021 = load i64, i64* %RBP.i409
  %6022 = sub i64 %6021, 76
  %6023 = load i64, i64* %PC.i407
  %6024 = add i64 %6023, 4
  store i64 %6024, i64* %PC.i407
  %6025 = inttoptr i64 %6022 to i32*
  %6026 = load i32, i32* %6025
  %6027 = sext i32 %6026 to i64
  store i64 %6027, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_436aaa, %struct.Memory** %MEMORY
  %loadMem_436aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6029 = getelementptr inbounds %struct.GPR, %struct.GPR* %6028, i32 0, i32 33
  %6030 = getelementptr inbounds %struct.Reg, %struct.Reg* %6029, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %6030 to i64*
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 1
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %6033 to i64*
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 5
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %6036 to i64*
  %6037 = load i64, i64* %RAX.i405
  %6038 = load i64, i64* %RCX.i406
  %6039 = mul i64 %6038, 8
  %6040 = add i64 %6039, %6037
  %6041 = load i64, i64* %PC.i404
  %6042 = add i64 %6041, 4
  store i64 %6042, i64* %PC.i404
  %6043 = inttoptr i64 %6040 to i64*
  %6044 = load i64, i64* %6043
  store i64 %6044, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_436aae, %struct.Memory** %MEMORY
  %loadMem_436ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 33
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %6047 to i64*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 5
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 15
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %6053 to i64*
  %6054 = load i64, i64* %RBP.i403
  %6055 = sub i64 %6054, 80
  %6056 = load i64, i64* %PC.i401
  %6057 = add i64 %6056, 4
  store i64 %6057, i64* %PC.i401
  %6058 = inttoptr i64 %6055 to i32*
  %6059 = load i32, i32* %6058
  %6060 = sext i32 %6059 to i64
  store i64 %6060, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_436ab2, %struct.Memory** %MEMORY
  %loadMem_436ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 33
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %6063 to i64*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 1
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 5
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %6069 to i64*
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 7
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %6072 to i64*
  %6073 = load i64, i64* %RAX.i398
  %6074 = load i64, i64* %RCX.i399
  %6075 = mul i64 %6074, 4
  %6076 = add i64 %6075, %6073
  %6077 = load i64, i64* %PC.i397
  %6078 = add i64 %6077, 3
  store i64 %6078, i64* %PC.i397
  %6079 = inttoptr i64 %6076 to i32*
  %6080 = load i32, i32* %6079
  %6081 = zext i32 %6080 to i64
  store i64 %6081, i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_436ab6, %struct.Memory** %MEMORY
  %loadMem_436ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 7
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %EDX.i395 = bitcast %union.anon* %6087 to i32*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 15
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %RBP.i396
  %6092 = sub i64 %6091, 84
  %6093 = load i32, i32* %EDX.i395
  %6094 = zext i32 %6093 to i64
  %6095 = load i64, i64* %PC.i394
  %6096 = add i64 %6095, 3
  store i64 %6096, i64* %PC.i394
  %6097 = inttoptr i64 %6092 to i32*
  store i32 %6093, i32* %6097
  store %struct.Memory* %loadMem_436ab9, %struct.Memory** %MEMORY
  %loadMem_436abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 33
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 1
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %6103 to i64*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 15
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %RBP.i393
  %6108 = sub i64 %6107, 48
  %6109 = load i64, i64* %PC.i391
  %6110 = add i64 %6109, 4
  store i64 %6110, i64* %PC.i391
  %6111 = inttoptr i64 %6108 to i64*
  %6112 = load i64, i64* %6111
  store i64 %6112, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_436abc, %struct.Memory** %MEMORY
  %loadMem_436ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 33
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %6115 to i64*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 5
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %6118 to i64*
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 15
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %6121 to i64*
  %6122 = load i64, i64* %RBP.i390
  %6123 = sub i64 %6122, 76
  %6124 = load i64, i64* %PC.i388
  %6125 = add i64 %6124, 4
  store i64 %6125, i64* %PC.i388
  %6126 = inttoptr i64 %6123 to i32*
  %6127 = load i32, i32* %6126
  %6128 = sext i32 %6127 to i64
  store i64 %6128, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_436ac0, %struct.Memory** %MEMORY
  %loadMem_436ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 33
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 1
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %6134 to i64*
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 5
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %6137 to i64*
  %6138 = load i64, i64* %RAX.i386
  %6139 = load i64, i64* %RCX.i387
  %6140 = mul i64 %6139, 8
  %6141 = add i64 %6140, %6138
  %6142 = load i64, i64* %PC.i385
  %6143 = add i64 %6142, 4
  store i64 %6143, i64* %PC.i385
  %6144 = inttoptr i64 %6141 to i64*
  %6145 = load i64, i64* %6144
  store i64 %6145, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_436ac4, %struct.Memory** %MEMORY
  %loadMem_436ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 33
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %6148 to i64*
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6150 = getelementptr inbounds %struct.GPR, %struct.GPR* %6149, i32 0, i32 7
  %6151 = getelementptr inbounds %struct.Reg, %struct.Reg* %6150, i32 0, i32 0
  %EDX.i383 = bitcast %union.anon* %6151 to i32*
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 1
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %6154 to i64*
  %6155 = load i32, i32* %EDX.i383
  %6156 = zext i32 %6155 to i64
  %6157 = load i64, i64* %RAX.i384
  %6158 = add i64 %6157, 4
  %6159 = load i64, i64* %PC.i382
  %6160 = add i64 %6159, 3
  store i64 %6160, i64* %PC.i382
  %6161 = inttoptr i64 %6158 to i32*
  %6162 = load i32, i32* %6161
  %6163 = sub i32 %6155, %6162
  %6164 = icmp ult i32 %6155, %6162
  %6165 = zext i1 %6164 to i8
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6165, i8* %6166, align 1
  %6167 = and i32 %6163, 255
  %6168 = call i32 @llvm.ctpop.i32(i32 %6167)
  %6169 = trunc i32 %6168 to i8
  %6170 = and i8 %6169, 1
  %6171 = xor i8 %6170, 1
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6171, i8* %6172, align 1
  %6173 = xor i32 %6162, %6155
  %6174 = xor i32 %6173, %6163
  %6175 = lshr i32 %6174, 4
  %6176 = trunc i32 %6175 to i8
  %6177 = and i8 %6176, 1
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6177, i8* %6178, align 1
  %6179 = icmp eq i32 %6163, 0
  %6180 = zext i1 %6179 to i8
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6180, i8* %6181, align 1
  %6182 = lshr i32 %6163, 31
  %6183 = trunc i32 %6182 to i8
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6183, i8* %6184, align 1
  %6185 = lshr i32 %6155, 31
  %6186 = lshr i32 %6162, 31
  %6187 = xor i32 %6186, %6185
  %6188 = xor i32 %6182, %6185
  %6189 = add i32 %6188, %6187
  %6190 = icmp eq i32 %6189, 2
  %6191 = zext i1 %6190 to i8
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6191, i8* %6192, align 1
  store %struct.Memory* %loadMem_436ac8, %struct.Memory** %MEMORY
  %loadMem_436acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 33
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %6195 to i64*
  %6196 = load i64, i64* %PC.i381
  %6197 = add i64 %6196, 24
  %6198 = load i64, i64* %PC.i381
  %6199 = add i64 %6198, 6
  %6200 = load i64, i64* %PC.i381
  %6201 = add i64 %6200, 6
  store i64 %6201, i64* %PC.i381
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6203 = load i8, i8* %6202, align 1
  %6204 = icmp ne i8 %6203, 0
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6206 = load i8, i8* %6205, align 1
  %6207 = icmp ne i8 %6206, 0
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6209 = load i8, i8* %6208, align 1
  %6210 = icmp ne i8 %6209, 0
  %6211 = xor i1 %6207, %6210
  %6212 = or i1 %6204, %6211
  %6213 = zext i1 %6212 to i8
  store i8 %6213, i8* %BRANCH_TAKEN, align 1
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6215 = select i1 %6212, i64 %6197, i64 %6199
  store i64 %6215, i64* %6214, align 8
  store %struct.Memory* %loadMem_436acb, %struct.Memory** %MEMORY
  %loadBr_436acb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436acb = icmp eq i8 %loadBr_436acb, 1
  br i1 %cmpBr_436acb, label %block_.L_436ae3, label %block_436ad1

block_436ad1:                                     ; preds = %block_436aa6
  %loadMem_436ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6217 = getelementptr inbounds %struct.GPR, %struct.GPR* %6216, i32 0, i32 33
  %6218 = getelementptr inbounds %struct.Reg, %struct.Reg* %6217, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %6218 to i64*
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 1
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 15
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %6224 to i64*
  %6225 = load i64, i64* %RBP.i380
  %6226 = sub i64 %6225, 84
  %6227 = load i64, i64* %PC.i378
  %6228 = add i64 %6227, 3
  store i64 %6228, i64* %PC.i378
  %6229 = inttoptr i64 %6226 to i32*
  %6230 = load i32, i32* %6229
  %6231 = zext i32 %6230 to i64
  store i64 %6231, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_436ad1, %struct.Memory** %MEMORY
  %loadMem_436ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 33
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %6234 to i64*
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 5
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 15
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %RBP.i377
  %6242 = sub i64 %6241, 48
  %6243 = load i64, i64* %PC.i375
  %6244 = add i64 %6243, 4
  store i64 %6244, i64* %PC.i375
  %6245 = inttoptr i64 %6242 to i64*
  %6246 = load i64, i64* %6245
  store i64 %6246, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_436ad4, %struct.Memory** %MEMORY
  %loadMem_436ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 33
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %6249 to i64*
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 7
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %RDX.i373 = bitcast %union.anon* %6252 to i64*
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 15
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %6255 to i64*
  %6256 = load i64, i64* %RBP.i374
  %6257 = sub i64 %6256, 76
  %6258 = load i64, i64* %PC.i372
  %6259 = add i64 %6258, 4
  store i64 %6259, i64* %PC.i372
  %6260 = inttoptr i64 %6257 to i32*
  %6261 = load i32, i32* %6260
  %6262 = sext i32 %6261 to i64
  store i64 %6262, i64* %RDX.i373, align 8
  store %struct.Memory* %loadMem_436ad8, %struct.Memory** %MEMORY
  %loadMem_436adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 33
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %6265 to i64*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 5
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 7
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %6271 to i64*
  %6272 = load i64, i64* %RCX.i370
  %6273 = load i64, i64* %RDX.i371
  %6274 = mul i64 %6273, 8
  %6275 = add i64 %6274, %6272
  %6276 = load i64, i64* %PC.i369
  %6277 = add i64 %6276, 4
  store i64 %6277, i64* %PC.i369
  %6278 = inttoptr i64 %6275 to i64*
  %6279 = load i64, i64* %6278
  store i64 %6279, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_436adc, %struct.Memory** %MEMORY
  %loadMem_436ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 33
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %6282 to i64*
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 1
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %6285 to i32*
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 5
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %6288 to i64*
  %6289 = load i64, i64* %RCX.i368
  %6290 = add i64 %6289, 4
  %6291 = load i32, i32* %EAX.i367
  %6292 = zext i32 %6291 to i64
  %6293 = load i64, i64* %PC.i366
  %6294 = add i64 %6293, 3
  store i64 %6294, i64* %PC.i366
  %6295 = inttoptr i64 %6290 to i32*
  store i32 %6291, i32* %6295
  store %struct.Memory* %loadMem_436ae0, %struct.Memory** %MEMORY
  br label %block_.L_436ae3

block_.L_436ae3:                                  ; preds = %block_436ad1, %block_436aa6
  %loadMem_436ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 33
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %6298 to i64*
  %6299 = load i64, i64* %PC.i365
  %6300 = add i64 %6299, 5
  %6301 = load i64, i64* %PC.i365
  %6302 = add i64 %6301, 5
  store i64 %6302, i64* %PC.i365
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6300, i64* %6303, align 8
  store %struct.Memory* %loadMem_436ae3, %struct.Memory** %MEMORY
  br label %block_.L_436ae8

block_.L_436ae8:                                  ; preds = %block_.L_436ae3
  %loadMem_436ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 33
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 1
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %6309 to i64*
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 15
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %6312 to i64*
  %6313 = load i64, i64* %RBP.i364
  %6314 = sub i64 %6313, 80
  %6315 = load i64, i64* %PC.i362
  %6316 = add i64 %6315, 3
  store i64 %6316, i64* %PC.i362
  %6317 = inttoptr i64 %6314 to i32*
  %6318 = load i32, i32* %6317
  %6319 = zext i32 %6318 to i64
  store i64 %6319, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_436ae8, %struct.Memory** %MEMORY
  %loadMem_436aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 33
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %6322 to i64*
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 1
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %6325 to i64*
  %6326 = load i64, i64* %RAX.i361
  %6327 = load i64, i64* %PC.i360
  %6328 = add i64 %6327, 3
  store i64 %6328, i64* %PC.i360
  %6329 = trunc i64 %6326 to i32
  %6330 = add i32 1, %6329
  %6331 = zext i32 %6330 to i64
  store i64 %6331, i64* %RAX.i361, align 8
  %6332 = icmp ult i32 %6330, %6329
  %6333 = icmp ult i32 %6330, 1
  %6334 = or i1 %6332, %6333
  %6335 = zext i1 %6334 to i8
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6335, i8* %6336, align 1
  %6337 = and i32 %6330, 255
  %6338 = call i32 @llvm.ctpop.i32(i32 %6337)
  %6339 = trunc i32 %6338 to i8
  %6340 = and i8 %6339, 1
  %6341 = xor i8 %6340, 1
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6341, i8* %6342, align 1
  %6343 = xor i64 1, %6326
  %6344 = trunc i64 %6343 to i32
  %6345 = xor i32 %6344, %6330
  %6346 = lshr i32 %6345, 4
  %6347 = trunc i32 %6346 to i8
  %6348 = and i8 %6347, 1
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6348, i8* %6349, align 1
  %6350 = icmp eq i32 %6330, 0
  %6351 = zext i1 %6350 to i8
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6351, i8* %6352, align 1
  %6353 = lshr i32 %6330, 31
  %6354 = trunc i32 %6353 to i8
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6354, i8* %6355, align 1
  %6356 = lshr i32 %6329, 31
  %6357 = xor i32 %6353, %6356
  %6358 = add i32 %6357, %6353
  %6359 = icmp eq i32 %6358, 2
  %6360 = zext i1 %6359 to i8
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6360, i8* %6361, align 1
  store %struct.Memory* %loadMem_436aeb, %struct.Memory** %MEMORY
  %loadMem_436aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 33
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %6364 to i64*
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 1
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %6367 to i32*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 15
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %RBP.i359
  %6372 = sub i64 %6371, 80
  %6373 = load i32, i32* %EAX.i358
  %6374 = zext i32 %6373 to i64
  %6375 = load i64, i64* %PC.i357
  %6376 = add i64 %6375, 3
  store i64 %6376, i64* %PC.i357
  %6377 = inttoptr i64 %6372 to i32*
  store i32 %6373, i32* %6377
  store %struct.Memory* %loadMem_436aee, %struct.Memory** %MEMORY
  %loadMem_436af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 33
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %6380 to i64*
  %6381 = load i64, i64* %PC.i356
  %6382 = add i64 %6381, -87
  %6383 = load i64, i64* %PC.i356
  %6384 = add i64 %6383, 5
  store i64 %6384, i64* %PC.i356
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6382, i64* %6385, align 8
  store %struct.Memory* %loadMem_436af1, %struct.Memory** %MEMORY
  br label %block_.L_436a9a

block_.L_436af6:                                  ; preds = %block_.L_436a9a
  %loadMem_436af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 33
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 1
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %6391 to i64*
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 15
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %6394 to i64*
  %6395 = load i64, i64* %RBP.i355
  %6396 = sub i64 %6395, 48
  %6397 = load i64, i64* %PC.i353
  %6398 = add i64 %6397, 4
  store i64 %6398, i64* %PC.i353
  %6399 = inttoptr i64 %6396 to i64*
  %6400 = load i64, i64* %6399
  store i64 %6400, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_436af6, %struct.Memory** %MEMORY
  %loadMem_436afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 33
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %6403 to i64*
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 5
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %6406 to i64*
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6408 = getelementptr inbounds %struct.GPR, %struct.GPR* %6407, i32 0, i32 15
  %6409 = getelementptr inbounds %struct.Reg, %struct.Reg* %6408, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %6409 to i64*
  %6410 = load i64, i64* %RBP.i352
  %6411 = sub i64 %6410, 76
  %6412 = load i64, i64* %PC.i350
  %6413 = add i64 %6412, 4
  store i64 %6413, i64* %PC.i350
  %6414 = inttoptr i64 %6411 to i32*
  %6415 = load i32, i32* %6414
  %6416 = sext i32 %6415 to i64
  store i64 %6416, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_436afa, %struct.Memory** %MEMORY
  %loadMem_436afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 1
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %6422 to i64*
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6424 = getelementptr inbounds %struct.GPR, %struct.GPR* %6423, i32 0, i32 5
  %6425 = getelementptr inbounds %struct.Reg, %struct.Reg* %6424, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %6425 to i64*
  %6426 = load i64, i64* %RAX.i348
  %6427 = load i64, i64* %RCX.i349
  %6428 = mul i64 %6427, 8
  %6429 = add i64 %6428, %6426
  %6430 = load i64, i64* %PC.i347
  %6431 = add i64 %6430, 4
  store i64 %6431, i64* %PC.i347
  %6432 = inttoptr i64 %6429 to i64*
  %6433 = load i64, i64* %6432
  store i64 %6433, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_436afe, %struct.Memory** %MEMORY
  %loadMem_436b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %6436 to i64*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 1
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %6439 to i64*
  %6440 = load i64, i64* %RAX.i346
  %6441 = add i64 %6440, 12
  %6442 = load i64, i64* %PC.i345
  %6443 = add i64 %6442, 7
  store i64 %6443, i64* %PC.i345
  %6444 = inttoptr i64 %6441 to i32*
  store i32 -987654321, i32* %6444
  store %struct.Memory* %loadMem_436b02, %struct.Memory** %MEMORY
  %loadMem_436b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %6447 to i64*
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 1
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 15
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %6453 to i64*
  %6454 = load i64, i64* %RBP.i344
  %6455 = sub i64 %6454, 48
  %6456 = load i64, i64* %PC.i342
  %6457 = add i64 %6456, 4
  store i64 %6457, i64* %PC.i342
  %6458 = inttoptr i64 %6455 to i64*
  %6459 = load i64, i64* %6458
  store i64 %6459, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_436b09, %struct.Memory** %MEMORY
  %loadMem_436b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 33
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %6462 to i64*
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 7
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %6465 to i64*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 15
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %6468 to i64*
  %6469 = load i64, i64* %RBP.i341
  %6470 = sub i64 %6469, 76
  %6471 = load i64, i64* %PC.i339
  %6472 = add i64 %6471, 3
  store i64 %6472, i64* %PC.i339
  %6473 = inttoptr i64 %6470 to i32*
  %6474 = load i32, i32* %6473
  %6475 = zext i32 %6474 to i64
  store i64 %6475, i64* %RDX.i340, align 8
  store %struct.Memory* %loadMem_436b0d, %struct.Memory** %MEMORY
  %loadMem_436b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 7
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %6481 to i64*
  %6482 = load i64, i64* %RDX.i338
  %6483 = load i64, i64* %PC.i337
  %6484 = add i64 %6483, 3
  store i64 %6484, i64* %PC.i337
  %6485 = trunc i64 %6482 to i32
  %6486 = sub i32 %6485, 1
  %6487 = zext i32 %6486 to i64
  store i64 %6487, i64* %RDX.i338, align 8
  %6488 = icmp ult i32 %6485, 1
  %6489 = zext i1 %6488 to i8
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6489, i8* %6490, align 1
  %6491 = and i32 %6486, 255
  %6492 = call i32 @llvm.ctpop.i32(i32 %6491)
  %6493 = trunc i32 %6492 to i8
  %6494 = and i8 %6493, 1
  %6495 = xor i8 %6494, 1
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6495, i8* %6496, align 1
  %6497 = xor i64 1, %6482
  %6498 = trunc i64 %6497 to i32
  %6499 = xor i32 %6498, %6486
  %6500 = lshr i32 %6499, 4
  %6501 = trunc i32 %6500 to i8
  %6502 = and i8 %6501, 1
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6502, i8* %6503, align 1
  %6504 = icmp eq i32 %6486, 0
  %6505 = zext i1 %6504 to i8
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6505, i8* %6506, align 1
  %6507 = lshr i32 %6486, 31
  %6508 = trunc i32 %6507 to i8
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6508, i8* %6509, align 1
  %6510 = lshr i32 %6485, 31
  %6511 = xor i32 %6507, %6510
  %6512 = add i32 %6511, %6510
  %6513 = icmp eq i32 %6512, 2
  %6514 = zext i1 %6513 to i8
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6514, i8* %6515, align 1
  store %struct.Memory* %loadMem_436b10, %struct.Memory** %MEMORY
  %loadMem_436b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6517 = getelementptr inbounds %struct.GPR, %struct.GPR* %6516, i32 0, i32 33
  %6518 = getelementptr inbounds %struct.Reg, %struct.Reg* %6517, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %6518 to i64*
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6520 = getelementptr inbounds %struct.GPR, %struct.GPR* %6519, i32 0, i32 7
  %6521 = getelementptr inbounds %struct.Reg, %struct.Reg* %6520, i32 0, i32 0
  %EDX.i335 = bitcast %union.anon* %6521 to i32*
  %6522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6523 = getelementptr inbounds %struct.GPR, %struct.GPR* %6522, i32 0, i32 5
  %6524 = getelementptr inbounds %struct.Reg, %struct.Reg* %6523, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %6524 to i64*
  %6525 = load i32, i32* %EDX.i335
  %6526 = zext i32 %6525 to i64
  %6527 = load i64, i64* %PC.i334
  %6528 = add i64 %6527, 3
  store i64 %6528, i64* %PC.i334
  %6529 = shl i64 %6526, 32
  %6530 = ashr exact i64 %6529, 32
  store i64 %6530, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_436b13, %struct.Memory** %MEMORY
  %loadMem_436b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6532 = getelementptr inbounds %struct.GPR, %struct.GPR* %6531, i32 0, i32 33
  %6533 = getelementptr inbounds %struct.Reg, %struct.Reg* %6532, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %6533 to i64*
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6535 = getelementptr inbounds %struct.GPR, %struct.GPR* %6534, i32 0, i32 1
  %6536 = getelementptr inbounds %struct.Reg, %struct.Reg* %6535, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %6536 to i64*
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 5
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %6539 to i64*
  %6540 = load i64, i64* %RAX.i332
  %6541 = load i64, i64* %RCX.i333
  %6542 = mul i64 %6541, 8
  %6543 = add i64 %6542, %6540
  %6544 = load i64, i64* %PC.i331
  %6545 = add i64 %6544, 4
  store i64 %6545, i64* %PC.i331
  %6546 = inttoptr i64 %6543 to i64*
  %6547 = load i64, i64* %6546
  store i64 %6547, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_436b16, %struct.Memory** %MEMORY
  %loadMem_436b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6549 = getelementptr inbounds %struct.GPR, %struct.GPR* %6548, i32 0, i32 33
  %6550 = getelementptr inbounds %struct.Reg, %struct.Reg* %6549, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6550 to i64*
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6552 = getelementptr inbounds %struct.GPR, %struct.GPR* %6551, i32 0, i32 1
  %6553 = getelementptr inbounds %struct.Reg, %struct.Reg* %6552, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %6553 to i64*
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 11
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %RDI.i330 = bitcast %union.anon* %6556 to i64*
  %6557 = load i64, i64* %RAX.i329
  %6558 = add i64 %6557, 12
  %6559 = load i64, i64* %PC.i328
  %6560 = add i64 %6559, 3
  store i64 %6560, i64* %PC.i328
  %6561 = inttoptr i64 %6558 to i32*
  %6562 = load i32, i32* %6561
  %6563 = zext i32 %6562 to i64
  store i64 %6563, i64* %RDI.i330, align 8
  store %struct.Memory* %loadMem_436b1a, %struct.Memory** %MEMORY
  %loadMem_436b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 33
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6566 to i64*
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6568 = getelementptr inbounds %struct.GPR, %struct.GPR* %6567, i32 0, i32 1
  %6569 = getelementptr inbounds %struct.Reg, %struct.Reg* %6568, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %6569 to i64*
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 15
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %6572 to i64*
  %6573 = load i64, i64* %RBP.i327
  %6574 = sub i64 %6573, 16
  %6575 = load i64, i64* %PC.i325
  %6576 = add i64 %6575, 4
  store i64 %6576, i64* %PC.i325
  %6577 = inttoptr i64 %6574 to i64*
  %6578 = load i64, i64* %6577
  store i64 %6578, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_436b1d, %struct.Memory** %MEMORY
  %loadMem_436b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 33
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 1
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %6584 to i64*
  %6585 = load i64, i64* %RAX.i324
  %6586 = load i64, i64* %PC.i323
  %6587 = add i64 %6586, 3
  store i64 %6587, i64* %PC.i323
  %6588 = inttoptr i64 %6585 to i64*
  %6589 = load i64, i64* %6588
  store i64 %6589, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_436b21, %struct.Memory** %MEMORY
  %loadMem_436b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 33
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %6592 to i64*
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 5
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %6595 to i64*
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6597 = getelementptr inbounds %struct.GPR, %struct.GPR* %6596, i32 0, i32 15
  %6598 = getelementptr inbounds %struct.Reg, %struct.Reg* %6597, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %6598 to i64*
  %6599 = load i64, i64* %RBP.i322
  %6600 = sub i64 %6599, 76
  %6601 = load i64, i64* %PC.i320
  %6602 = add i64 %6601, 4
  store i64 %6602, i64* %PC.i320
  %6603 = inttoptr i64 %6600 to i32*
  %6604 = load i32, i32* %6603
  %6605 = sext i32 %6604 to i64
  store i64 %6605, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_436b24, %struct.Memory** %MEMORY
  %loadMem_436b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 33
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 1
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 5
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %6614 to i64*
  %6615 = load i64, i64* %RAX.i318
  %6616 = load i64, i64* %RCX.i319
  %6617 = mul i64 %6616, 8
  %6618 = add i64 %6617, %6615
  %6619 = load i64, i64* %PC.i317
  %6620 = add i64 %6619, 4
  store i64 %6620, i64* %PC.i317
  %6621 = inttoptr i64 %6618 to i64*
  %6622 = load i64, i64* %6621
  store i64 %6622, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_436b28, %struct.Memory** %MEMORY
  %loadMem_436b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6624 = getelementptr inbounds %struct.GPR, %struct.GPR* %6623, i32 0, i32 33
  %6625 = getelementptr inbounds %struct.Reg, %struct.Reg* %6624, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %6625 to i64*
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 1
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %6628 to i64*
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 9
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %6631 to i64*
  %6632 = load i64, i64* %RAX.i315
  %6633 = add i64 %6632, 12
  %6634 = load i64, i64* %PC.i314
  %6635 = add i64 %6634, 3
  store i64 %6635, i64* %PC.i314
  %6636 = inttoptr i64 %6633 to i32*
  %6637 = load i32, i32* %6636
  %6638 = zext i32 %6637 to i64
  store i64 %6638, i64* %RSI.i316, align 8
  store %struct.Memory* %loadMem_436b2c, %struct.Memory** %MEMORY
  %loadMem1_436b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %6641 to i64*
  %6642 = load i64, i64* %PC.i313
  %6643 = add i64 %6642, -59775
  %6644 = load i64, i64* %PC.i313
  %6645 = add i64 %6644, 5
  %6646 = load i64, i64* %PC.i313
  %6647 = add i64 %6646, 5
  store i64 %6647, i64* %PC.i313
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6649 = load i64, i64* %6648, align 8
  %6650 = add i64 %6649, -8
  %6651 = inttoptr i64 %6650 to i64*
  store i64 %6645, i64* %6651
  store i64 %6650, i64* %6648, align 8
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6643, i64* %6652, align 8
  store %struct.Memory* %loadMem1_436b2f, %struct.Memory** %MEMORY
  %loadMem2_436b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436b2f = load i64, i64* %3
  %call2_436b2f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436b2f, %struct.Memory* %loadMem2_436b2f)
  store %struct.Memory* %call2_436b2f, %struct.Memory** %MEMORY
  %loadMem_436b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %6655 to i64*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 1
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %EAX.i311 = bitcast %union.anon* %6658 to i32*
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 15
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %6661 to i64*
  %6662 = load i64, i64* %RBP.i312
  %6663 = sub i64 %6662, 84
  %6664 = load i32, i32* %EAX.i311
  %6665 = zext i32 %6664 to i64
  %6666 = load i64, i64* %PC.i310
  %6667 = add i64 %6666, 3
  store i64 %6667, i64* %PC.i310
  %6668 = inttoptr i64 %6663 to i32*
  store i32 %6664, i32* %6668
  store %struct.Memory* %loadMem_436b34, %struct.Memory** %MEMORY
  %loadMem_436b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 33
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %6671 to i64*
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 1
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %6674 to i32*
  %6675 = load i32, i32* %EAX.i309
  %6676 = zext i32 %6675 to i64
  %6677 = load i64, i64* %PC.i308
  %6678 = add i64 %6677, 5
  store i64 %6678, i64* %PC.i308
  %6679 = sub i32 %6675, -987654321
  %6680 = icmp ult i32 %6675, -987654321
  %6681 = zext i1 %6680 to i8
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6681, i8* %6682, align 1
  %6683 = and i32 %6679, 255
  %6684 = call i32 @llvm.ctpop.i32(i32 %6683)
  %6685 = trunc i32 %6684 to i8
  %6686 = and i8 %6685, 1
  %6687 = xor i8 %6686, 1
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6687, i8* %6688, align 1
  %6689 = xor i64 -987654321, %6676
  %6690 = trunc i64 %6689 to i32
  %6691 = xor i32 %6690, %6679
  %6692 = lshr i32 %6691, 4
  %6693 = trunc i32 %6692 to i8
  %6694 = and i8 %6693, 1
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6694, i8* %6695, align 1
  %6696 = icmp eq i32 %6679, 0
  %6697 = zext i1 %6696 to i8
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6697, i8* %6698, align 1
  %6699 = lshr i32 %6679, 31
  %6700 = trunc i32 %6699 to i8
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6700, i8* %6701, align 1
  %6702 = lshr i32 %6675, 31
  %6703 = xor i32 1, %6702
  %6704 = xor i32 %6699, %6702
  %6705 = add i32 %6704, %6703
  %6706 = icmp eq i32 %6705, 2
  %6707 = zext i1 %6706 to i8
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6707, i8* %6708, align 1
  store %struct.Memory* %loadMem_436b37, %struct.Memory** %MEMORY
  %loadMem_436b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 33
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6711 to i64*
  %6712 = load i64, i64* %PC.i307
  %6713 = add i64 %6712, 24
  %6714 = load i64, i64* %PC.i307
  %6715 = add i64 %6714, 6
  %6716 = load i64, i64* %PC.i307
  %6717 = add i64 %6716, 6
  store i64 %6717, i64* %PC.i307
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6719 = load i8, i8* %6718, align 1
  %6720 = icmp ne i8 %6719, 0
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6722 = load i8, i8* %6721, align 1
  %6723 = icmp ne i8 %6722, 0
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6725 = load i8, i8* %6724, align 1
  %6726 = icmp ne i8 %6725, 0
  %6727 = xor i1 %6723, %6726
  %6728 = or i1 %6720, %6727
  %6729 = zext i1 %6728 to i8
  store i8 %6729, i8* %BRANCH_TAKEN, align 1
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6731 = select i1 %6728, i64 %6713, i64 %6715
  store i64 %6731, i64* %6730, align 8
  store %struct.Memory* %loadMem_436b3c, %struct.Memory** %MEMORY
  %loadBr_436b3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436b3c = icmp eq i8 %loadBr_436b3c, 1
  br i1 %cmpBr_436b3c, label %block_.L_436b54, label %block_436b42

block_436b42:                                     ; preds = %block_.L_436af6
  %loadMem_436b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 33
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6734 to i64*
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 1
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %6737 to i64*
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 15
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6740 to i64*
  %6741 = load i64, i64* %RBP.i306
  %6742 = sub i64 %6741, 84
  %6743 = load i64, i64* %PC.i304
  %6744 = add i64 %6743, 3
  store i64 %6744, i64* %PC.i304
  %6745 = inttoptr i64 %6742 to i32*
  %6746 = load i32, i32* %6745
  %6747 = zext i32 %6746 to i64
  store i64 %6747, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_436b42, %struct.Memory** %MEMORY
  %loadMem_436b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 33
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6750 to i64*
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 5
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 15
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RBP.i303
  %6758 = sub i64 %6757, 48
  %6759 = load i64, i64* %PC.i301
  %6760 = add i64 %6759, 4
  store i64 %6760, i64* %PC.i301
  %6761 = inttoptr i64 %6758 to i64*
  %6762 = load i64, i64* %6761
  store i64 %6762, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_436b45, %struct.Memory** %MEMORY
  %loadMem_436b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 33
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6765 to i64*
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 7
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %6768 to i64*
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 15
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %6771 to i64*
  %6772 = load i64, i64* %RBP.i300
  %6773 = sub i64 %6772, 76
  %6774 = load i64, i64* %PC.i298
  %6775 = add i64 %6774, 4
  store i64 %6775, i64* %PC.i298
  %6776 = inttoptr i64 %6773 to i32*
  %6777 = load i32, i32* %6776
  %6778 = sext i32 %6777 to i64
  store i64 %6778, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_436b49, %struct.Memory** %MEMORY
  %loadMem_436b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 33
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %6781 to i64*
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6783 = getelementptr inbounds %struct.GPR, %struct.GPR* %6782, i32 0, i32 5
  %6784 = getelementptr inbounds %struct.Reg, %struct.Reg* %6783, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %6784 to i64*
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6786 = getelementptr inbounds %struct.GPR, %struct.GPR* %6785, i32 0, i32 7
  %6787 = getelementptr inbounds %struct.Reg, %struct.Reg* %6786, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %6787 to i64*
  %6788 = load i64, i64* %RCX.i296
  %6789 = load i64, i64* %RDX.i297
  %6790 = mul i64 %6789, 8
  %6791 = add i64 %6790, %6788
  %6792 = load i64, i64* %PC.i295
  %6793 = add i64 %6792, 4
  store i64 %6793, i64* %PC.i295
  %6794 = inttoptr i64 %6791 to i64*
  %6795 = load i64, i64* %6794
  store i64 %6795, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_436b4d, %struct.Memory** %MEMORY
  %loadMem_436b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 33
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6798 to i64*
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 1
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %6801 to i32*
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 5
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %RCX.i294
  %6806 = add i64 %6805, 12
  %6807 = load i32, i32* %EAX.i293
  %6808 = zext i32 %6807 to i64
  %6809 = load i64, i64* %PC.i292
  %6810 = add i64 %6809, 3
  store i64 %6810, i64* %PC.i292
  %6811 = inttoptr i64 %6806 to i32*
  store i32 %6807, i32* %6811
  store %struct.Memory* %loadMem_436b51, %struct.Memory** %MEMORY
  br label %block_.L_436b54

block_.L_436b54:                                  ; preds = %block_436b42, %block_.L_436af6
  %loadMem_436b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 33
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6814 to i64*
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6816 = getelementptr inbounds %struct.GPR, %struct.GPR* %6815, i32 0, i32 1
  %6817 = getelementptr inbounds %struct.Reg, %struct.Reg* %6816, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %6817 to i64*
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 15
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %6820 to i64*
  %6821 = load i64, i64* %RBP.i291
  %6822 = sub i64 %6821, 48
  %6823 = load i64, i64* %PC.i289
  %6824 = add i64 %6823, 4
  store i64 %6824, i64* %PC.i289
  %6825 = inttoptr i64 %6822 to i64*
  %6826 = load i64, i64* %6825
  store i64 %6826, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_436b54, %struct.Memory** %MEMORY
  %loadMem_436b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 33
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6829 to i64*
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 5
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 15
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %6835 to i64*
  %6836 = load i64, i64* %RBP.i288
  %6837 = sub i64 %6836, 76
  %6838 = load i64, i64* %PC.i286
  %6839 = add i64 %6838, 4
  store i64 %6839, i64* %PC.i286
  %6840 = inttoptr i64 %6837 to i32*
  %6841 = load i32, i32* %6840
  %6842 = sext i32 %6841 to i64
  store i64 %6842, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_436b58, %struct.Memory** %MEMORY
  %loadMem_436b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 33
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 1
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %6848 to i64*
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 5
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %6851 to i64*
  %6852 = load i64, i64* %RAX.i284
  %6853 = load i64, i64* %RCX.i285
  %6854 = mul i64 %6853, 8
  %6855 = add i64 %6854, %6852
  %6856 = load i64, i64* %PC.i283
  %6857 = add i64 %6856, 4
  store i64 %6857, i64* %PC.i283
  %6858 = inttoptr i64 %6855 to i64*
  %6859 = load i64, i64* %6858
  store i64 %6859, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_436b5c, %struct.Memory** %MEMORY
  %loadMem_436b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 33
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %6862 to i64*
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 1
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %6865 to i64*
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6867 = getelementptr inbounds %struct.GPR, %struct.GPR* %6866, i32 0, i32 7
  %6868 = getelementptr inbounds %struct.Reg, %struct.Reg* %6867, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %6868 to i64*
  %6869 = load i64, i64* %RAX.i281
  %6870 = add i64 %6869, 4
  %6871 = load i64, i64* %PC.i280
  %6872 = add i64 %6871, 3
  store i64 %6872, i64* %PC.i280
  %6873 = inttoptr i64 %6870 to i32*
  %6874 = load i32, i32* %6873
  %6875 = zext i32 %6874 to i64
  store i64 %6875, i64* %RDX.i282, align 8
  store %struct.Memory* %loadMem_436b60, %struct.Memory** %MEMORY
  %loadMem_436b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 33
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %6878 to i64*
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 7
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %EDX.i278 = bitcast %union.anon* %6881 to i32*
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 15
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %6884 to i64*
  %6885 = load i64, i64* %RBP.i279
  %6886 = sub i64 %6885, 84
  %6887 = load i32, i32* %EDX.i278
  %6888 = zext i32 %6887 to i64
  %6889 = load i64, i64* %PC.i277
  %6890 = add i64 %6889, 3
  store i64 %6890, i64* %PC.i277
  %6891 = inttoptr i64 %6886 to i32*
  store i32 %6887, i32* %6891
  store %struct.Memory* %loadMem_436b63, %struct.Memory** %MEMORY
  %loadMem_436b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 33
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6894 to i64*
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6896 = getelementptr inbounds %struct.GPR, %struct.GPR* %6895, i32 0, i32 1
  %6897 = getelementptr inbounds %struct.Reg, %struct.Reg* %6896, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %6897 to i64*
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 15
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %6900 to i64*
  %6901 = load i64, i64* %RBP.i276
  %6902 = sub i64 %6901, 48
  %6903 = load i64, i64* %PC.i274
  %6904 = add i64 %6903, 4
  store i64 %6904, i64* %PC.i274
  %6905 = inttoptr i64 %6902 to i64*
  %6906 = load i64, i64* %6905
  store i64 %6906, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_436b66, %struct.Memory** %MEMORY
  %loadMem_436b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 33
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6909 to i64*
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6911 = getelementptr inbounds %struct.GPR, %struct.GPR* %6910, i32 0, i32 5
  %6912 = getelementptr inbounds %struct.Reg, %struct.Reg* %6911, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %6912 to i64*
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6914 = getelementptr inbounds %struct.GPR, %struct.GPR* %6913, i32 0, i32 15
  %6915 = getelementptr inbounds %struct.Reg, %struct.Reg* %6914, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %6915 to i64*
  %6916 = load i64, i64* %RBP.i273
  %6917 = sub i64 %6916, 76
  %6918 = load i64, i64* %PC.i271
  %6919 = add i64 %6918, 4
  store i64 %6919, i64* %PC.i271
  %6920 = inttoptr i64 %6917 to i32*
  %6921 = load i32, i32* %6920
  %6922 = sext i32 %6921 to i64
  store i64 %6922, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_436b6a, %struct.Memory** %MEMORY
  %loadMem_436b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 33
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 1
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %6928 to i64*
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 5
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %6931 to i64*
  %6932 = load i64, i64* %RAX.i269
  %6933 = load i64, i64* %RCX.i270
  %6934 = mul i64 %6933, 8
  %6935 = add i64 %6934, %6932
  %6936 = load i64, i64* %PC.i268
  %6937 = add i64 %6936, 4
  store i64 %6937, i64* %PC.i268
  %6938 = inttoptr i64 %6935 to i64*
  %6939 = load i64, i64* %6938
  store i64 %6939, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_436b6e, %struct.Memory** %MEMORY
  %loadMem_436b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 33
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6942 to i64*
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6944 = getelementptr inbounds %struct.GPR, %struct.GPR* %6943, i32 0, i32 7
  %6945 = getelementptr inbounds %struct.Reg, %struct.Reg* %6944, i32 0, i32 0
  %EDX.i266 = bitcast %union.anon* %6945 to i32*
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6947 = getelementptr inbounds %struct.GPR, %struct.GPR* %6946, i32 0, i32 1
  %6948 = getelementptr inbounds %struct.Reg, %struct.Reg* %6947, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %6948 to i64*
  %6949 = load i32, i32* %EDX.i266
  %6950 = zext i32 %6949 to i64
  %6951 = load i64, i64* %RAX.i267
  %6952 = add i64 %6951, 12
  %6953 = load i64, i64* %PC.i265
  %6954 = add i64 %6953, 3
  store i64 %6954, i64* %PC.i265
  %6955 = inttoptr i64 %6952 to i32*
  %6956 = load i32, i32* %6955
  %6957 = sub i32 %6949, %6956
  %6958 = icmp ult i32 %6949, %6956
  %6959 = zext i1 %6958 to i8
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6959, i8* %6960, align 1
  %6961 = and i32 %6957, 255
  %6962 = call i32 @llvm.ctpop.i32(i32 %6961)
  %6963 = trunc i32 %6962 to i8
  %6964 = and i8 %6963, 1
  %6965 = xor i8 %6964, 1
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6965, i8* %6966, align 1
  %6967 = xor i32 %6956, %6949
  %6968 = xor i32 %6967, %6957
  %6969 = lshr i32 %6968, 4
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6971, i8* %6972, align 1
  %6973 = icmp eq i32 %6957, 0
  %6974 = zext i1 %6973 to i8
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6974, i8* %6975, align 1
  %6976 = lshr i32 %6957, 31
  %6977 = trunc i32 %6976 to i8
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6977, i8* %6978, align 1
  %6979 = lshr i32 %6949, 31
  %6980 = lshr i32 %6956, 31
  %6981 = xor i32 %6980, %6979
  %6982 = xor i32 %6976, %6979
  %6983 = add i32 %6982, %6981
  %6984 = icmp eq i32 %6983, 2
  %6985 = zext i1 %6984 to i8
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6985, i8* %6986, align 1
  store %struct.Memory* %loadMem_436b72, %struct.Memory** %MEMORY
  %loadMem_436b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6988 = getelementptr inbounds %struct.GPR, %struct.GPR* %6987, i32 0, i32 33
  %6989 = getelementptr inbounds %struct.Reg, %struct.Reg* %6988, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %6989 to i64*
  %6990 = load i64, i64* %PC.i264
  %6991 = add i64 %6990, 24
  %6992 = load i64, i64* %PC.i264
  %6993 = add i64 %6992, 6
  %6994 = load i64, i64* %PC.i264
  %6995 = add i64 %6994, 6
  store i64 %6995, i64* %PC.i264
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6997 = load i8, i8* %6996, align 1
  %6998 = icmp ne i8 %6997, 0
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7000 = load i8, i8* %6999, align 1
  %7001 = icmp ne i8 %7000, 0
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7003 = load i8, i8* %7002, align 1
  %7004 = icmp ne i8 %7003, 0
  %7005 = xor i1 %7001, %7004
  %7006 = or i1 %6998, %7005
  %7007 = zext i1 %7006 to i8
  store i8 %7007, i8* %BRANCH_TAKEN, align 1
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7009 = select i1 %7006, i64 %6991, i64 %6993
  store i64 %7009, i64* %7008, align 8
  store %struct.Memory* %loadMem_436b75, %struct.Memory** %MEMORY
  %loadBr_436b75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436b75 = icmp eq i8 %loadBr_436b75, 1
  br i1 %cmpBr_436b75, label %block_.L_436b8d, label %block_436b7b

block_436b7b:                                     ; preds = %block_.L_436b54
  %loadMem_436b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 33
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %7012 to i64*
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7014 = getelementptr inbounds %struct.GPR, %struct.GPR* %7013, i32 0, i32 1
  %7015 = getelementptr inbounds %struct.Reg, %struct.Reg* %7014, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %7015 to i64*
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7017 = getelementptr inbounds %struct.GPR, %struct.GPR* %7016, i32 0, i32 15
  %7018 = getelementptr inbounds %struct.Reg, %struct.Reg* %7017, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %7018 to i64*
  %7019 = load i64, i64* %RBP.i263
  %7020 = sub i64 %7019, 84
  %7021 = load i64, i64* %PC.i261
  %7022 = add i64 %7021, 3
  store i64 %7022, i64* %PC.i261
  %7023 = inttoptr i64 %7020 to i32*
  %7024 = load i32, i32* %7023
  %7025 = zext i32 %7024 to i64
  store i64 %7025, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_436b7b, %struct.Memory** %MEMORY
  %loadMem_436b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 33
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %7028 to i64*
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 5
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %7031 to i64*
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 15
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %7034 to i64*
  %7035 = load i64, i64* %RBP.i260
  %7036 = sub i64 %7035, 48
  %7037 = load i64, i64* %PC.i258
  %7038 = add i64 %7037, 4
  store i64 %7038, i64* %PC.i258
  %7039 = inttoptr i64 %7036 to i64*
  %7040 = load i64, i64* %7039
  store i64 %7040, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_436b7e, %struct.Memory** %MEMORY
  %loadMem_436b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 7
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %7046 to i64*
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 15
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %7049 to i64*
  %7050 = load i64, i64* %RBP.i257
  %7051 = sub i64 %7050, 76
  %7052 = load i64, i64* %PC.i255
  %7053 = add i64 %7052, 4
  store i64 %7053, i64* %PC.i255
  %7054 = inttoptr i64 %7051 to i32*
  %7055 = load i32, i32* %7054
  %7056 = sext i32 %7055 to i64
  store i64 %7056, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_436b82, %struct.Memory** %MEMORY
  %loadMem_436b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 33
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %7059 to i64*
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 5
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %7062 to i64*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 7
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %7065 to i64*
  %7066 = load i64, i64* %RCX.i253
  %7067 = load i64, i64* %RDX.i254
  %7068 = mul i64 %7067, 8
  %7069 = add i64 %7068, %7066
  %7070 = load i64, i64* %PC.i252
  %7071 = add i64 %7070, 4
  store i64 %7071, i64* %PC.i252
  %7072 = inttoptr i64 %7069 to i64*
  %7073 = load i64, i64* %7072
  store i64 %7073, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_436b86, %struct.Memory** %MEMORY
  %loadMem_436b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7075 = getelementptr inbounds %struct.GPR, %struct.GPR* %7074, i32 0, i32 33
  %7076 = getelementptr inbounds %struct.Reg, %struct.Reg* %7075, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %7076 to i64*
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7078 = getelementptr inbounds %struct.GPR, %struct.GPR* %7077, i32 0, i32 1
  %7079 = getelementptr inbounds %struct.Reg, %struct.Reg* %7078, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %7079 to i32*
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7081 = getelementptr inbounds %struct.GPR, %struct.GPR* %7080, i32 0, i32 5
  %7082 = getelementptr inbounds %struct.Reg, %struct.Reg* %7081, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %7082 to i64*
  %7083 = load i64, i64* %RCX.i251
  %7084 = add i64 %7083, 12
  %7085 = load i32, i32* %EAX.i250
  %7086 = zext i32 %7085 to i64
  %7087 = load i64, i64* %PC.i249
  %7088 = add i64 %7087, 3
  store i64 %7088, i64* %PC.i249
  %7089 = inttoptr i64 %7084 to i32*
  store i32 %7085, i32* %7089
  store %struct.Memory* %loadMem_436b8a, %struct.Memory** %MEMORY
  br label %block_.L_436b8d

block_.L_436b8d:                                  ; preds = %block_436b7b, %block_.L_436b54
  %loadMem_436b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 33
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %7092 to i64*
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 1
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %7095 to i64*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 15
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %7098 to i64*
  %7099 = load i64, i64* %RBP.i248
  %7100 = sub i64 %7099, 48
  %7101 = load i64, i64* %PC.i246
  %7102 = add i64 %7101, 4
  store i64 %7102, i64* %PC.i246
  %7103 = inttoptr i64 %7100 to i64*
  %7104 = load i64, i64* %7103
  store i64 %7104, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_436b8d, %struct.Memory** %MEMORY
  %loadMem_436b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 33
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 5
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %7110 to i64*
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 15
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %7113 to i64*
  %7114 = load i64, i64* %RBP.i245
  %7115 = sub i64 %7114, 76
  %7116 = load i64, i64* %PC.i243
  %7117 = add i64 %7116, 4
  store i64 %7117, i64* %PC.i243
  %7118 = inttoptr i64 %7115 to i32*
  %7119 = load i32, i32* %7118
  %7120 = sext i32 %7119 to i64
  store i64 %7120, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_436b91, %struct.Memory** %MEMORY
  %loadMem_436b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 33
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %7123 to i64*
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 1
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %7126 to i64*
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 5
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %7129 to i64*
  %7130 = load i64, i64* %RAX.i241
  %7131 = load i64, i64* %RCX.i242
  %7132 = mul i64 %7131, 8
  %7133 = add i64 %7132, %7130
  %7134 = load i64, i64* %PC.i240
  %7135 = add i64 %7134, 4
  store i64 %7135, i64* %PC.i240
  %7136 = inttoptr i64 %7133 to i64*
  %7137 = load i64, i64* %7136
  store i64 %7137, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_436b95, %struct.Memory** %MEMORY
  %loadMem_436b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 33
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %7140 to i64*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 1
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %7143 to i64*
  %7144 = load i64, i64* %RAX.i239
  %7145 = load i64, i64* %PC.i238
  %7146 = add i64 %7145, 6
  store i64 %7146, i64* %PC.i238
  %7147 = inttoptr i64 %7144 to i32*
  store i32 -987654321, i32* %7147
  store %struct.Memory* %loadMem_436b99, %struct.Memory** %MEMORY
  %loadMem_436b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 33
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %7150 to i64*
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 1
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 15
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %7156 to i64*
  %7157 = load i64, i64* %RBP.i237
  %7158 = sub i64 %7157, 48
  %7159 = load i64, i64* %PC.i235
  %7160 = add i64 %7159, 4
  store i64 %7160, i64* %PC.i235
  %7161 = inttoptr i64 %7158 to i64*
  %7162 = load i64, i64* %7161
  store i64 %7162, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_436b9f, %struct.Memory** %MEMORY
  %loadMem_436ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7164 = getelementptr inbounds %struct.GPR, %struct.GPR* %7163, i32 0, i32 33
  %7165 = getelementptr inbounds %struct.Reg, %struct.Reg* %7164, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %7165 to i64*
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7167 = getelementptr inbounds %struct.GPR, %struct.GPR* %7166, i32 0, i32 5
  %7168 = getelementptr inbounds %struct.Reg, %struct.Reg* %7167, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %7168 to i64*
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7170 = getelementptr inbounds %struct.GPR, %struct.GPR* %7169, i32 0, i32 15
  %7171 = getelementptr inbounds %struct.Reg, %struct.Reg* %7170, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %7171 to i64*
  %7172 = load i64, i64* %RBP.i234
  %7173 = sub i64 %7172, 76
  %7174 = load i64, i64* %PC.i232
  %7175 = add i64 %7174, 4
  store i64 %7175, i64* %PC.i232
  %7176 = inttoptr i64 %7173 to i32*
  %7177 = load i32, i32* %7176
  %7178 = sext i32 %7177 to i64
  store i64 %7178, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_436ba3, %struct.Memory** %MEMORY
  %loadMem_436ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7180 = getelementptr inbounds %struct.GPR, %struct.GPR* %7179, i32 0, i32 33
  %7181 = getelementptr inbounds %struct.Reg, %struct.Reg* %7180, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %7181 to i64*
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 1
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %7184 to i64*
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 5
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %7187 to i64*
  %7188 = load i64, i64* %RAX.i230
  %7189 = load i64, i64* %RCX.i231
  %7190 = mul i64 %7189, 8
  %7191 = add i64 %7190, %7188
  %7192 = load i64, i64* %PC.i229
  %7193 = add i64 %7192, 4
  store i64 %7193, i64* %PC.i229
  %7194 = inttoptr i64 %7191 to i64*
  %7195 = load i64, i64* %7194
  store i64 %7195, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_436ba7, %struct.Memory** %MEMORY
  %loadMem_436bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 33
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 1
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %7201 to i64*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 7
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %7204 to i64*
  %7205 = load i64, i64* %RAX.i227
  %7206 = add i64 %7205, 16
  %7207 = load i64, i64* %PC.i226
  %7208 = add i64 %7207, 3
  store i64 %7208, i64* %PC.i226
  %7209 = inttoptr i64 %7206 to i32*
  %7210 = load i32, i32* %7209
  %7211 = zext i32 %7210 to i64
  store i64 %7211, i64* %RDX.i228, align 8
  store %struct.Memory* %loadMem_436bab, %struct.Memory** %MEMORY
  %loadMem_436bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 33
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %7214 to i64*
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 7
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %EDX.i224 = bitcast %union.anon* %7217 to i32*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 15
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %7220 to i64*
  %7221 = load i64, i64* %RBP.i225
  %7222 = sub i64 %7221, 84
  %7223 = load i32, i32* %EDX.i224
  %7224 = zext i32 %7223 to i64
  %7225 = load i64, i64* %PC.i223
  %7226 = add i64 %7225, 3
  store i64 %7226, i64* %PC.i223
  %7227 = inttoptr i64 %7222 to i32*
  store i32 %7223, i32* %7227
  store %struct.Memory* %loadMem_436bae, %struct.Memory** %MEMORY
  %loadMem_436bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7229 = getelementptr inbounds %struct.GPR, %struct.GPR* %7228, i32 0, i32 33
  %7230 = getelementptr inbounds %struct.Reg, %struct.Reg* %7229, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %7230 to i64*
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7232 = getelementptr inbounds %struct.GPR, %struct.GPR* %7231, i32 0, i32 7
  %7233 = getelementptr inbounds %struct.Reg, %struct.Reg* %7232, i32 0, i32 0
  %EDX.i222 = bitcast %union.anon* %7233 to i32*
  %7234 = load i32, i32* %EDX.i222
  %7235 = zext i32 %7234 to i64
  %7236 = load i64, i64* %PC.i221
  %7237 = add i64 %7236, 6
  store i64 %7237, i64* %PC.i221
  %7238 = sub i32 %7234, -987654321
  %7239 = icmp ult i32 %7234, -987654321
  %7240 = zext i1 %7239 to i8
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7240, i8* %7241, align 1
  %7242 = and i32 %7238, 255
  %7243 = call i32 @llvm.ctpop.i32(i32 %7242)
  %7244 = trunc i32 %7243 to i8
  %7245 = and i8 %7244, 1
  %7246 = xor i8 %7245, 1
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7246, i8* %7247, align 1
  %7248 = xor i64 -987654321, %7235
  %7249 = trunc i64 %7248 to i32
  %7250 = xor i32 %7249, %7238
  %7251 = lshr i32 %7250, 4
  %7252 = trunc i32 %7251 to i8
  %7253 = and i8 %7252, 1
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7253, i8* %7254, align 1
  %7255 = icmp eq i32 %7238, 0
  %7256 = zext i1 %7255 to i8
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7256, i8* %7257, align 1
  %7258 = lshr i32 %7238, 31
  %7259 = trunc i32 %7258 to i8
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7259, i8* %7260, align 1
  %7261 = lshr i32 %7234, 31
  %7262 = xor i32 1, %7261
  %7263 = xor i32 %7258, %7261
  %7264 = add i32 %7263, %7262
  %7265 = icmp eq i32 %7264, 2
  %7266 = zext i1 %7265 to i8
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7266, i8* %7267, align 1
  store %struct.Memory* %loadMem_436bb1, %struct.Memory** %MEMORY
  %loadMem_436bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 33
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %7270 to i64*
  %7271 = load i64, i64* %PC.i220
  %7272 = add i64 %7271, 23
  %7273 = load i64, i64* %PC.i220
  %7274 = add i64 %7273, 6
  %7275 = load i64, i64* %PC.i220
  %7276 = add i64 %7275, 6
  store i64 %7276, i64* %PC.i220
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7278 = load i8, i8* %7277, align 1
  %7279 = icmp ne i8 %7278, 0
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7281 = load i8, i8* %7280, align 1
  %7282 = icmp ne i8 %7281, 0
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7284 = load i8, i8* %7283, align 1
  %7285 = icmp ne i8 %7284, 0
  %7286 = xor i1 %7282, %7285
  %7287 = or i1 %7279, %7286
  %7288 = zext i1 %7287 to i8
  store i8 %7288, i8* %BRANCH_TAKEN, align 1
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7290 = select i1 %7287, i64 %7272, i64 %7274
  store i64 %7290, i64* %7289, align 8
  store %struct.Memory* %loadMem_436bb7, %struct.Memory** %MEMORY
  %loadBr_436bb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436bb7 = icmp eq i8 %loadBr_436bb7, 1
  br i1 %cmpBr_436bb7, label %block_.L_436bce, label %block_436bbd

block_436bbd:                                     ; preds = %block_.L_436b8d
  %loadMem_436bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7292 = getelementptr inbounds %struct.GPR, %struct.GPR* %7291, i32 0, i32 33
  %7293 = getelementptr inbounds %struct.Reg, %struct.Reg* %7292, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %7293 to i64*
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 1
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %7296 to i64*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 15
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %7299 to i64*
  %7300 = load i64, i64* %RBP.i219
  %7301 = sub i64 %7300, 84
  %7302 = load i64, i64* %PC.i217
  %7303 = add i64 %7302, 3
  store i64 %7303, i64* %PC.i217
  %7304 = inttoptr i64 %7301 to i32*
  %7305 = load i32, i32* %7304
  %7306 = zext i32 %7305 to i64
  store i64 %7306, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_436bbd, %struct.Memory** %MEMORY
  %loadMem_436bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7308 = getelementptr inbounds %struct.GPR, %struct.GPR* %7307, i32 0, i32 33
  %7309 = getelementptr inbounds %struct.Reg, %struct.Reg* %7308, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %7309 to i64*
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 5
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %7312 to i64*
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7314 = getelementptr inbounds %struct.GPR, %struct.GPR* %7313, i32 0, i32 15
  %7315 = getelementptr inbounds %struct.Reg, %struct.Reg* %7314, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %7315 to i64*
  %7316 = load i64, i64* %RBP.i216
  %7317 = sub i64 %7316, 48
  %7318 = load i64, i64* %PC.i214
  %7319 = add i64 %7318, 4
  store i64 %7319, i64* %PC.i214
  %7320 = inttoptr i64 %7317 to i64*
  %7321 = load i64, i64* %7320
  store i64 %7321, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_436bc0, %struct.Memory** %MEMORY
  %loadMem_436bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7323 = getelementptr inbounds %struct.GPR, %struct.GPR* %7322, i32 0, i32 33
  %7324 = getelementptr inbounds %struct.Reg, %struct.Reg* %7323, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %7324 to i64*
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7326 = getelementptr inbounds %struct.GPR, %struct.GPR* %7325, i32 0, i32 7
  %7327 = getelementptr inbounds %struct.Reg, %struct.Reg* %7326, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %7327 to i64*
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7329 = getelementptr inbounds %struct.GPR, %struct.GPR* %7328, i32 0, i32 15
  %7330 = getelementptr inbounds %struct.Reg, %struct.Reg* %7329, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %7330 to i64*
  %7331 = load i64, i64* %RBP.i213
  %7332 = sub i64 %7331, 76
  %7333 = load i64, i64* %PC.i211
  %7334 = add i64 %7333, 4
  store i64 %7334, i64* %PC.i211
  %7335 = inttoptr i64 %7332 to i32*
  %7336 = load i32, i32* %7335
  %7337 = sext i32 %7336 to i64
  store i64 %7337, i64* %RDX.i212, align 8
  store %struct.Memory* %loadMem_436bc4, %struct.Memory** %MEMORY
  %loadMem_436bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7339 = getelementptr inbounds %struct.GPR, %struct.GPR* %7338, i32 0, i32 33
  %7340 = getelementptr inbounds %struct.Reg, %struct.Reg* %7339, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %7340 to i64*
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 5
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 7
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %7346 to i64*
  %7347 = load i64, i64* %RCX.i209
  %7348 = load i64, i64* %RDX.i210
  %7349 = mul i64 %7348, 8
  %7350 = add i64 %7349, %7347
  %7351 = load i64, i64* %PC.i208
  %7352 = add i64 %7351, 4
  store i64 %7352, i64* %PC.i208
  %7353 = inttoptr i64 %7350 to i64*
  %7354 = load i64, i64* %7353
  store i64 %7354, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_436bc8, %struct.Memory** %MEMORY
  %loadMem_436bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 33
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %7357 to i64*
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 1
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %7360 to i32*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 5
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %7363 to i64*
  %7364 = load i64, i64* %RCX.i207
  %7365 = load i32, i32* %EAX.i206
  %7366 = zext i32 %7365 to i64
  %7367 = load i64, i64* %PC.i205
  %7368 = add i64 %7367, 2
  store i64 %7368, i64* %PC.i205
  %7369 = inttoptr i64 %7364 to i32*
  store i32 %7365, i32* %7369
  store %struct.Memory* %loadMem_436bcc, %struct.Memory** %MEMORY
  br label %block_.L_436bce

block_.L_436bce:                                  ; preds = %block_436bbd, %block_.L_436b8d
  %loadMem_436bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 33
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %7372 to i64*
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 1
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %7375 to i64*
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 15
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %7378 to i64*
  %7379 = load i64, i64* %RBP.i204
  %7380 = sub i64 %7379, 48
  %7381 = load i64, i64* %PC.i202
  %7382 = add i64 %7381, 4
  store i64 %7382, i64* %PC.i202
  %7383 = inttoptr i64 %7380 to i64*
  %7384 = load i64, i64* %7383
  store i64 %7384, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_436bce, %struct.Memory** %MEMORY
  %loadMem_436bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 33
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7387 to i64*
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7389 = getelementptr inbounds %struct.GPR, %struct.GPR* %7388, i32 0, i32 5
  %7390 = getelementptr inbounds %struct.Reg, %struct.Reg* %7389, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %7390 to i64*
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 15
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %7393 to i64*
  %7394 = load i64, i64* %RBP.i201
  %7395 = sub i64 %7394, 76
  %7396 = load i64, i64* %PC.i199
  %7397 = add i64 %7396, 4
  store i64 %7397, i64* %PC.i199
  %7398 = inttoptr i64 %7395 to i32*
  %7399 = load i32, i32* %7398
  %7400 = sext i32 %7399 to i64
  store i64 %7400, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_436bd2, %struct.Memory** %MEMORY
  %loadMem_436bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7402 = getelementptr inbounds %struct.GPR, %struct.GPR* %7401, i32 0, i32 33
  %7403 = getelementptr inbounds %struct.Reg, %struct.Reg* %7402, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %7403 to i64*
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7405 = getelementptr inbounds %struct.GPR, %struct.GPR* %7404, i32 0, i32 1
  %7406 = getelementptr inbounds %struct.Reg, %struct.Reg* %7405, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %7406 to i64*
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7408 = getelementptr inbounds %struct.GPR, %struct.GPR* %7407, i32 0, i32 5
  %7409 = getelementptr inbounds %struct.Reg, %struct.Reg* %7408, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %7409 to i64*
  %7410 = load i64, i64* %RAX.i197
  %7411 = load i64, i64* %RCX.i198
  %7412 = mul i64 %7411, 8
  %7413 = add i64 %7412, %7410
  %7414 = load i64, i64* %PC.i196
  %7415 = add i64 %7414, 4
  store i64 %7415, i64* %PC.i196
  %7416 = inttoptr i64 %7413 to i64*
  %7417 = load i64, i64* %7416
  store i64 %7417, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_436bd6, %struct.Memory** %MEMORY
  %loadMem_436bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 33
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7420 to i64*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 1
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %7423 to i64*
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7425 = getelementptr inbounds %struct.GPR, %struct.GPR* %7424, i32 0, i32 7
  %7426 = getelementptr inbounds %struct.Reg, %struct.Reg* %7425, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %7426 to i64*
  %7427 = load i64, i64* %RAX.i194
  %7428 = add i64 %7427, 12
  %7429 = load i64, i64* %PC.i193
  %7430 = add i64 %7429, 3
  store i64 %7430, i64* %PC.i193
  %7431 = inttoptr i64 %7428 to i32*
  %7432 = load i32, i32* %7431
  %7433 = zext i32 %7432 to i64
  store i64 %7433, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_436bda, %struct.Memory** %MEMORY
  %loadMem_436bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 33
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7436 to i64*
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7438 = getelementptr inbounds %struct.GPR, %struct.GPR* %7437, i32 0, i32 7
  %7439 = getelementptr inbounds %struct.Reg, %struct.Reg* %7438, i32 0, i32 0
  %EDX.i191 = bitcast %union.anon* %7439 to i32*
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7441 = getelementptr inbounds %struct.GPR, %struct.GPR* %7440, i32 0, i32 15
  %7442 = getelementptr inbounds %struct.Reg, %struct.Reg* %7441, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7442 to i64*
  %7443 = load i64, i64* %RBP.i192
  %7444 = sub i64 %7443, 84
  %7445 = load i32, i32* %EDX.i191
  %7446 = zext i32 %7445 to i64
  %7447 = load i64, i64* %PC.i190
  %7448 = add i64 %7447, 3
  store i64 %7448, i64* %PC.i190
  %7449 = inttoptr i64 %7444 to i32*
  store i32 %7445, i32* %7449
  store %struct.Memory* %loadMem_436bdd, %struct.Memory** %MEMORY
  %loadMem_436be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7451 = getelementptr inbounds %struct.GPR, %struct.GPR* %7450, i32 0, i32 33
  %7452 = getelementptr inbounds %struct.Reg, %struct.Reg* %7451, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7452 to i64*
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 1
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %7455 to i64*
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7457 = getelementptr inbounds %struct.GPR, %struct.GPR* %7456, i32 0, i32 15
  %7458 = getelementptr inbounds %struct.Reg, %struct.Reg* %7457, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %7458 to i64*
  %7459 = load i64, i64* %RBP.i189
  %7460 = sub i64 %7459, 48
  %7461 = load i64, i64* %PC.i187
  %7462 = add i64 %7461, 4
  store i64 %7462, i64* %PC.i187
  %7463 = inttoptr i64 %7460 to i64*
  %7464 = load i64, i64* %7463
  store i64 %7464, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_436be0, %struct.Memory** %MEMORY
  %loadMem_436be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7466 = getelementptr inbounds %struct.GPR, %struct.GPR* %7465, i32 0, i32 33
  %7467 = getelementptr inbounds %struct.Reg, %struct.Reg* %7466, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7467 to i64*
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 5
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %7470 to i64*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 15
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %7473 to i64*
  %7474 = load i64, i64* %RBP.i186
  %7475 = sub i64 %7474, 76
  %7476 = load i64, i64* %PC.i184
  %7477 = add i64 %7476, 4
  store i64 %7477, i64* %PC.i184
  %7478 = inttoptr i64 %7475 to i32*
  %7479 = load i32, i32* %7478
  %7480 = sext i32 %7479 to i64
  store i64 %7480, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_436be4, %struct.Memory** %MEMORY
  %loadMem_436be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 33
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7483 to i64*
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 1
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %7486 to i64*
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 5
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %7489 to i64*
  %7490 = load i64, i64* %RAX.i182
  %7491 = load i64, i64* %RCX.i183
  %7492 = mul i64 %7491, 8
  %7493 = add i64 %7492, %7490
  %7494 = load i64, i64* %PC.i181
  %7495 = add i64 %7494, 4
  store i64 %7495, i64* %PC.i181
  %7496 = inttoptr i64 %7493 to i64*
  %7497 = load i64, i64* %7496
  store i64 %7497, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_436be8, %struct.Memory** %MEMORY
  %loadMem_436bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7499 = getelementptr inbounds %struct.GPR, %struct.GPR* %7498, i32 0, i32 33
  %7500 = getelementptr inbounds %struct.Reg, %struct.Reg* %7499, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7500 to i64*
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7502 = getelementptr inbounds %struct.GPR, %struct.GPR* %7501, i32 0, i32 7
  %7503 = getelementptr inbounds %struct.Reg, %struct.Reg* %7502, i32 0, i32 0
  %EDX.i179 = bitcast %union.anon* %7503 to i32*
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 1
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %7506 to i64*
  %7507 = load i32, i32* %EDX.i179
  %7508 = zext i32 %7507 to i64
  %7509 = load i64, i64* %RAX.i180
  %7510 = load i64, i64* %PC.i178
  %7511 = add i64 %7510, 2
  store i64 %7511, i64* %PC.i178
  %7512 = inttoptr i64 %7509 to i32*
  %7513 = load i32, i32* %7512
  %7514 = sub i32 %7507, %7513
  %7515 = icmp ult i32 %7507, %7513
  %7516 = zext i1 %7515 to i8
  %7517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7516, i8* %7517, align 1
  %7518 = and i32 %7514, 255
  %7519 = call i32 @llvm.ctpop.i32(i32 %7518)
  %7520 = trunc i32 %7519 to i8
  %7521 = and i8 %7520, 1
  %7522 = xor i8 %7521, 1
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7522, i8* %7523, align 1
  %7524 = xor i32 %7513, %7507
  %7525 = xor i32 %7524, %7514
  %7526 = lshr i32 %7525, 4
  %7527 = trunc i32 %7526 to i8
  %7528 = and i8 %7527, 1
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7528, i8* %7529, align 1
  %7530 = icmp eq i32 %7514, 0
  %7531 = zext i1 %7530 to i8
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7531, i8* %7532, align 1
  %7533 = lshr i32 %7514, 31
  %7534 = trunc i32 %7533 to i8
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7534, i8* %7535, align 1
  %7536 = lshr i32 %7507, 31
  %7537 = lshr i32 %7513, 31
  %7538 = xor i32 %7537, %7536
  %7539 = xor i32 %7533, %7536
  %7540 = add i32 %7539, %7538
  %7541 = icmp eq i32 %7540, 2
  %7542 = zext i1 %7541 to i8
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7542, i8* %7543, align 1
  store %struct.Memory* %loadMem_436bec, %struct.Memory** %MEMORY
  %loadMem_436bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7545 = getelementptr inbounds %struct.GPR, %struct.GPR* %7544, i32 0, i32 33
  %7546 = getelementptr inbounds %struct.Reg, %struct.Reg* %7545, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7546 to i64*
  %7547 = load i64, i64* %PC.i177
  %7548 = add i64 %7547, 23
  %7549 = load i64, i64* %PC.i177
  %7550 = add i64 %7549, 6
  %7551 = load i64, i64* %PC.i177
  %7552 = add i64 %7551, 6
  store i64 %7552, i64* %PC.i177
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7554 = load i8, i8* %7553, align 1
  %7555 = icmp ne i8 %7554, 0
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7557 = load i8, i8* %7556, align 1
  %7558 = icmp ne i8 %7557, 0
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7560 = load i8, i8* %7559, align 1
  %7561 = icmp ne i8 %7560, 0
  %7562 = xor i1 %7558, %7561
  %7563 = or i1 %7555, %7562
  %7564 = zext i1 %7563 to i8
  store i8 %7564, i8* %BRANCH_TAKEN, align 1
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7566 = select i1 %7563, i64 %7548, i64 %7550
  store i64 %7566, i64* %7565, align 8
  store %struct.Memory* %loadMem_436bee, %struct.Memory** %MEMORY
  %loadBr_436bee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436bee = icmp eq i8 %loadBr_436bee, 1
  br i1 %cmpBr_436bee, label %block_.L_436c05, label %block_436bf4

block_436bf4:                                     ; preds = %block_.L_436bce
  %loadMem_436bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7568 = getelementptr inbounds %struct.GPR, %struct.GPR* %7567, i32 0, i32 33
  %7569 = getelementptr inbounds %struct.Reg, %struct.Reg* %7568, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %7569 to i64*
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 1
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %7572 to i64*
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 15
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %7575 to i64*
  %7576 = load i64, i64* %RBP.i176
  %7577 = sub i64 %7576, 84
  %7578 = load i64, i64* %PC.i174
  %7579 = add i64 %7578, 3
  store i64 %7579, i64* %PC.i174
  %7580 = inttoptr i64 %7577 to i32*
  %7581 = load i32, i32* %7580
  %7582 = zext i32 %7581 to i64
  store i64 %7582, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_436bf4, %struct.Memory** %MEMORY
  %loadMem_436bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 33
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %7585 to i64*
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 5
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %7588 to i64*
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 15
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %7591 to i64*
  %7592 = load i64, i64* %RBP.i173
  %7593 = sub i64 %7592, 48
  %7594 = load i64, i64* %PC.i171
  %7595 = add i64 %7594, 4
  store i64 %7595, i64* %PC.i171
  %7596 = inttoptr i64 %7593 to i64*
  %7597 = load i64, i64* %7596
  store i64 %7597, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_436bf7, %struct.Memory** %MEMORY
  %loadMem_436bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7599 = getelementptr inbounds %struct.GPR, %struct.GPR* %7598, i32 0, i32 33
  %7600 = getelementptr inbounds %struct.Reg, %struct.Reg* %7599, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7600 to i64*
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7602 = getelementptr inbounds %struct.GPR, %struct.GPR* %7601, i32 0, i32 7
  %7603 = getelementptr inbounds %struct.Reg, %struct.Reg* %7602, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %7603 to i64*
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7605 = getelementptr inbounds %struct.GPR, %struct.GPR* %7604, i32 0, i32 15
  %7606 = getelementptr inbounds %struct.Reg, %struct.Reg* %7605, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %7606 to i64*
  %7607 = load i64, i64* %RBP.i170
  %7608 = sub i64 %7607, 76
  %7609 = load i64, i64* %PC.i168
  %7610 = add i64 %7609, 4
  store i64 %7610, i64* %PC.i168
  %7611 = inttoptr i64 %7608 to i32*
  %7612 = load i32, i32* %7611
  %7613 = sext i32 %7612 to i64
  store i64 %7613, i64* %RDX.i169, align 8
  store %struct.Memory* %loadMem_436bfb, %struct.Memory** %MEMORY
  %loadMem_436bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7615 = getelementptr inbounds %struct.GPR, %struct.GPR* %7614, i32 0, i32 33
  %7616 = getelementptr inbounds %struct.Reg, %struct.Reg* %7615, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %7616 to i64*
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7618 = getelementptr inbounds %struct.GPR, %struct.GPR* %7617, i32 0, i32 5
  %7619 = getelementptr inbounds %struct.Reg, %struct.Reg* %7618, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %7619 to i64*
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 7
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %7622 to i64*
  %7623 = load i64, i64* %RCX.i166
  %7624 = load i64, i64* %RDX.i167
  %7625 = mul i64 %7624, 8
  %7626 = add i64 %7625, %7623
  %7627 = load i64, i64* %PC.i165
  %7628 = add i64 %7627, 4
  store i64 %7628, i64* %PC.i165
  %7629 = inttoptr i64 %7626 to i64*
  %7630 = load i64, i64* %7629
  store i64 %7630, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_436bff, %struct.Memory** %MEMORY
  %loadMem_436c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 33
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %7633 to i64*
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 1
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %7636 to i32*
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 5
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %7639 to i64*
  %7640 = load i64, i64* %RCX.i164
  %7641 = load i32, i32* %EAX.i163
  %7642 = zext i32 %7641 to i64
  %7643 = load i64, i64* %PC.i162
  %7644 = add i64 %7643, 2
  store i64 %7644, i64* %PC.i162
  %7645 = inttoptr i64 %7640 to i32*
  store i32 %7641, i32* %7645
  store %struct.Memory* %loadMem_436c03, %struct.Memory** %MEMORY
  br label %block_.L_436c05

block_.L_436c05:                                  ; preds = %block_436bf4, %block_.L_436bce
  %loadMem_436c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 33
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %7648 to i64*
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 1
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %7651 to i64*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 15
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %7654 to i64*
  %7655 = load i64, i64* %RBP.i161
  %7656 = sub i64 %7655, 48
  %7657 = load i64, i64* %PC.i159
  %7658 = add i64 %7657, 4
  store i64 %7658, i64* %PC.i159
  %7659 = inttoptr i64 %7656 to i64*
  %7660 = load i64, i64* %7659
  store i64 %7660, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_436c05, %struct.Memory** %MEMORY
  %loadMem_436c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 33
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %7663 to i64*
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7665 = getelementptr inbounds %struct.GPR, %struct.GPR* %7664, i32 0, i32 5
  %7666 = getelementptr inbounds %struct.Reg, %struct.Reg* %7665, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %7666 to i64*
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7668 = getelementptr inbounds %struct.GPR, %struct.GPR* %7667, i32 0, i32 15
  %7669 = getelementptr inbounds %struct.Reg, %struct.Reg* %7668, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %7669 to i64*
  %7670 = load i64, i64* %RBP.i158
  %7671 = sub i64 %7670, 76
  %7672 = load i64, i64* %PC.i156
  %7673 = add i64 %7672, 4
  store i64 %7673, i64* %PC.i156
  %7674 = inttoptr i64 %7671 to i32*
  %7675 = load i32, i32* %7674
  %7676 = sext i32 %7675 to i64
  store i64 %7676, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_436c09, %struct.Memory** %MEMORY
  %loadMem_436c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7678 = getelementptr inbounds %struct.GPR, %struct.GPR* %7677, i32 0, i32 33
  %7679 = getelementptr inbounds %struct.Reg, %struct.Reg* %7678, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7679 to i64*
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7681 = getelementptr inbounds %struct.GPR, %struct.GPR* %7680, i32 0, i32 1
  %7682 = getelementptr inbounds %struct.Reg, %struct.Reg* %7681, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %7682 to i64*
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 5
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %7685 to i64*
  %7686 = load i64, i64* %RAX.i154
  %7687 = load i64, i64* %RCX.i155
  %7688 = mul i64 %7687, 8
  %7689 = add i64 %7688, %7686
  %7690 = load i64, i64* %PC.i153
  %7691 = add i64 %7690, 4
  store i64 %7691, i64* %PC.i153
  %7692 = inttoptr i64 %7689 to i64*
  %7693 = load i64, i64* %7692
  store i64 %7693, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_436c0d, %struct.Memory** %MEMORY
  %loadMem_436c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7695 = getelementptr inbounds %struct.GPR, %struct.GPR* %7694, i32 0, i32 33
  %7696 = getelementptr inbounds %struct.Reg, %struct.Reg* %7695, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %7696 to i64*
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7698 = getelementptr inbounds %struct.GPR, %struct.GPR* %7697, i32 0, i32 1
  %7699 = getelementptr inbounds %struct.Reg, %struct.Reg* %7698, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %7699 to i64*
  %7700 = load i64, i64* %RAX.i152
  %7701 = add i64 %7700, 8
  %7702 = load i64, i64* %PC.i151
  %7703 = add i64 %7702, 7
  store i64 %7703, i64* %PC.i151
  %7704 = inttoptr i64 %7701 to i32*
  store i32 -987654321, i32* %7704
  store %struct.Memory* %loadMem_436c11, %struct.Memory** %MEMORY
  %loadMem_436c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 33
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %7707 to i64*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 1
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 15
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %7713 to i64*
  %7714 = load i64, i64* %RBP.i150
  %7715 = sub i64 %7714, 48
  %7716 = load i64, i64* %PC.i148
  %7717 = add i64 %7716, 4
  store i64 %7717, i64* %PC.i148
  %7718 = inttoptr i64 %7715 to i64*
  %7719 = load i64, i64* %7718
  store i64 %7719, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_436c18, %struct.Memory** %MEMORY
  %loadMem_436c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7721 = getelementptr inbounds %struct.GPR, %struct.GPR* %7720, i32 0, i32 33
  %7722 = getelementptr inbounds %struct.Reg, %struct.Reg* %7721, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7722 to i64*
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 7
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %7725 to i64*
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7727 = getelementptr inbounds %struct.GPR, %struct.GPR* %7726, i32 0, i32 15
  %7728 = getelementptr inbounds %struct.Reg, %struct.Reg* %7727, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %7728 to i64*
  %7729 = load i64, i64* %RBP.i147
  %7730 = sub i64 %7729, 76
  %7731 = load i64, i64* %PC.i145
  %7732 = add i64 %7731, 3
  store i64 %7732, i64* %PC.i145
  %7733 = inttoptr i64 %7730 to i32*
  %7734 = load i32, i32* %7733
  %7735 = zext i32 %7734 to i64
  store i64 %7735, i64* %RDX.i146, align 8
  store %struct.Memory* %loadMem_436c1c, %struct.Memory** %MEMORY
  %loadMem_436c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7737 = getelementptr inbounds %struct.GPR, %struct.GPR* %7736, i32 0, i32 33
  %7738 = getelementptr inbounds %struct.Reg, %struct.Reg* %7737, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7738 to i64*
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 7
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %7741 to i64*
  %7742 = load i64, i64* %RDX.i144
  %7743 = load i64, i64* %PC.i143
  %7744 = add i64 %7743, 3
  store i64 %7744, i64* %PC.i143
  %7745 = trunc i64 %7742 to i32
  %7746 = sub i32 %7745, 1
  %7747 = zext i32 %7746 to i64
  store i64 %7747, i64* %RDX.i144, align 8
  %7748 = icmp ult i32 %7745, 1
  %7749 = zext i1 %7748 to i8
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7749, i8* %7750, align 1
  %7751 = and i32 %7746, 255
  %7752 = call i32 @llvm.ctpop.i32(i32 %7751)
  %7753 = trunc i32 %7752 to i8
  %7754 = and i8 %7753, 1
  %7755 = xor i8 %7754, 1
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7755, i8* %7756, align 1
  %7757 = xor i64 1, %7742
  %7758 = trunc i64 %7757 to i32
  %7759 = xor i32 %7758, %7746
  %7760 = lshr i32 %7759, 4
  %7761 = trunc i32 %7760 to i8
  %7762 = and i8 %7761, 1
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7762, i8* %7763, align 1
  %7764 = icmp eq i32 %7746, 0
  %7765 = zext i1 %7764 to i8
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7765, i8* %7766, align 1
  %7767 = lshr i32 %7746, 31
  %7768 = trunc i32 %7767 to i8
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7768, i8* %7769, align 1
  %7770 = lshr i32 %7745, 31
  %7771 = xor i32 %7767, %7770
  %7772 = add i32 %7771, %7770
  %7773 = icmp eq i32 %7772, 2
  %7774 = zext i1 %7773 to i8
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7774, i8* %7775, align 1
  store %struct.Memory* %loadMem_436c1f, %struct.Memory** %MEMORY
  %loadMem_436c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 33
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7778 to i64*
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7780 = getelementptr inbounds %struct.GPR, %struct.GPR* %7779, i32 0, i32 7
  %7781 = getelementptr inbounds %struct.Reg, %struct.Reg* %7780, i32 0, i32 0
  %EDX.i141 = bitcast %union.anon* %7781 to i32*
  %7782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7783 = getelementptr inbounds %struct.GPR, %struct.GPR* %7782, i32 0, i32 5
  %7784 = getelementptr inbounds %struct.Reg, %struct.Reg* %7783, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %7784 to i64*
  %7785 = load i32, i32* %EDX.i141
  %7786 = zext i32 %7785 to i64
  %7787 = load i64, i64* %PC.i140
  %7788 = add i64 %7787, 3
  store i64 %7788, i64* %PC.i140
  %7789 = shl i64 %7786, 32
  %7790 = ashr exact i64 %7789, 32
  store i64 %7790, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_436c22, %struct.Memory** %MEMORY
  %loadMem_436c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7792 = getelementptr inbounds %struct.GPR, %struct.GPR* %7791, i32 0, i32 33
  %7793 = getelementptr inbounds %struct.Reg, %struct.Reg* %7792, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %7793 to i64*
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7795 = getelementptr inbounds %struct.GPR, %struct.GPR* %7794, i32 0, i32 1
  %7796 = getelementptr inbounds %struct.Reg, %struct.Reg* %7795, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %7796 to i64*
  %7797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7798 = getelementptr inbounds %struct.GPR, %struct.GPR* %7797, i32 0, i32 5
  %7799 = getelementptr inbounds %struct.Reg, %struct.Reg* %7798, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %7799 to i64*
  %7800 = load i64, i64* %RAX.i138
  %7801 = load i64, i64* %RCX.i139
  %7802 = mul i64 %7801, 8
  %7803 = add i64 %7802, %7800
  %7804 = load i64, i64* %PC.i137
  %7805 = add i64 %7804, 4
  store i64 %7805, i64* %PC.i137
  %7806 = inttoptr i64 %7803 to i64*
  %7807 = load i64, i64* %7806
  store i64 %7807, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_436c25, %struct.Memory** %MEMORY
  %loadMem_436c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 33
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7810 to i64*
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 1
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %7813 to i64*
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7815 = getelementptr inbounds %struct.GPR, %struct.GPR* %7814, i32 0, i32 11
  %7816 = getelementptr inbounds %struct.Reg, %struct.Reg* %7815, i32 0, i32 0
  %RDI.i136 = bitcast %union.anon* %7816 to i64*
  %7817 = load i64, i64* %RAX.i135
  %7818 = add i64 %7817, 8
  %7819 = load i64, i64* %PC.i134
  %7820 = add i64 %7819, 3
  store i64 %7820, i64* %PC.i134
  %7821 = inttoptr i64 %7818 to i32*
  %7822 = load i32, i32* %7821
  %7823 = zext i32 %7822 to i64
  store i64 %7823, i64* %RDI.i136, align 8
  store %struct.Memory* %loadMem_436c29, %struct.Memory** %MEMORY
  %loadMem_436c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7825 = getelementptr inbounds %struct.GPR, %struct.GPR* %7824, i32 0, i32 33
  %7826 = getelementptr inbounds %struct.Reg, %struct.Reg* %7825, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7826 to i64*
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7828 = getelementptr inbounds %struct.GPR, %struct.GPR* %7827, i32 0, i32 1
  %7829 = getelementptr inbounds %struct.Reg, %struct.Reg* %7828, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %7829 to i64*
  %7830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7831 = getelementptr inbounds %struct.GPR, %struct.GPR* %7830, i32 0, i32 15
  %7832 = getelementptr inbounds %struct.Reg, %struct.Reg* %7831, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %7832 to i64*
  %7833 = load i64, i64* %RBP.i133
  %7834 = sub i64 %7833, 16
  %7835 = load i64, i64* %PC.i131
  %7836 = add i64 %7835, 4
  store i64 %7836, i64* %PC.i131
  %7837 = inttoptr i64 %7834 to i64*
  %7838 = load i64, i64* %7837
  store i64 %7838, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_436c2c, %struct.Memory** %MEMORY
  %loadMem_436c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7840 = getelementptr inbounds %struct.GPR, %struct.GPR* %7839, i32 0, i32 33
  %7841 = getelementptr inbounds %struct.Reg, %struct.Reg* %7840, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7841 to i64*
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7843 = getelementptr inbounds %struct.GPR, %struct.GPR* %7842, i32 0, i32 1
  %7844 = getelementptr inbounds %struct.Reg, %struct.Reg* %7843, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %7844 to i64*
  %7845 = load i64, i64* %RAX.i130
  %7846 = load i64, i64* %PC.i129
  %7847 = add i64 %7846, 3
  store i64 %7847, i64* %PC.i129
  %7848 = inttoptr i64 %7845 to i64*
  %7849 = load i64, i64* %7848
  store i64 %7849, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_436c30, %struct.Memory** %MEMORY
  %loadMem_436c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7851 = getelementptr inbounds %struct.GPR, %struct.GPR* %7850, i32 0, i32 33
  %7852 = getelementptr inbounds %struct.Reg, %struct.Reg* %7851, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7852 to i64*
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7854 = getelementptr inbounds %struct.GPR, %struct.GPR* %7853, i32 0, i32 5
  %7855 = getelementptr inbounds %struct.Reg, %struct.Reg* %7854, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %7855 to i64*
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7857 = getelementptr inbounds %struct.GPR, %struct.GPR* %7856, i32 0, i32 15
  %7858 = getelementptr inbounds %struct.Reg, %struct.Reg* %7857, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %7858 to i64*
  %7859 = load i64, i64* %RBP.i128
  %7860 = sub i64 %7859, 76
  %7861 = load i64, i64* %PC.i126
  %7862 = add i64 %7861, 4
  store i64 %7862, i64* %PC.i126
  %7863 = inttoptr i64 %7860 to i32*
  %7864 = load i32, i32* %7863
  %7865 = sext i32 %7864 to i64
  store i64 %7865, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_436c33, %struct.Memory** %MEMORY
  %loadMem_436c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7867 = getelementptr inbounds %struct.GPR, %struct.GPR* %7866, i32 0, i32 33
  %7868 = getelementptr inbounds %struct.Reg, %struct.Reg* %7867, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7868 to i64*
  %7869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7870 = getelementptr inbounds %struct.GPR, %struct.GPR* %7869, i32 0, i32 1
  %7871 = getelementptr inbounds %struct.Reg, %struct.Reg* %7870, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %7871 to i64*
  %7872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7873 = getelementptr inbounds %struct.GPR, %struct.GPR* %7872, i32 0, i32 5
  %7874 = getelementptr inbounds %struct.Reg, %struct.Reg* %7873, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %7874 to i64*
  %7875 = load i64, i64* %RAX.i124
  %7876 = load i64, i64* %RCX.i125
  %7877 = mul i64 %7876, 8
  %7878 = add i64 %7877, %7875
  %7879 = load i64, i64* %PC.i123
  %7880 = add i64 %7879, 4
  store i64 %7880, i64* %PC.i123
  %7881 = inttoptr i64 %7878 to i64*
  %7882 = load i64, i64* %7881
  store i64 %7882, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_436c37, %struct.Memory** %MEMORY
  %loadMem_436c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7884 = getelementptr inbounds %struct.GPR, %struct.GPR* %7883, i32 0, i32 33
  %7885 = getelementptr inbounds %struct.Reg, %struct.Reg* %7884, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7885 to i64*
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7887 = getelementptr inbounds %struct.GPR, %struct.GPR* %7886, i32 0, i32 1
  %7888 = getelementptr inbounds %struct.Reg, %struct.Reg* %7887, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %7888 to i64*
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7890 = getelementptr inbounds %struct.GPR, %struct.GPR* %7889, i32 0, i32 9
  %7891 = getelementptr inbounds %struct.Reg, %struct.Reg* %7890, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %7891 to i64*
  %7892 = load i64, i64* %RAX.i121
  %7893 = add i64 %7892, 8
  %7894 = load i64, i64* %PC.i120
  %7895 = add i64 %7894, 3
  store i64 %7895, i64* %PC.i120
  %7896 = inttoptr i64 %7893 to i32*
  %7897 = load i32, i32* %7896
  %7898 = zext i32 %7897 to i64
  store i64 %7898, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_436c3b, %struct.Memory** %MEMORY
  %loadMem1_436c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7900 = getelementptr inbounds %struct.GPR, %struct.GPR* %7899, i32 0, i32 33
  %7901 = getelementptr inbounds %struct.Reg, %struct.Reg* %7900, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7901 to i64*
  %7902 = load i64, i64* %PC.i119
  %7903 = add i64 %7902, -60046
  %7904 = load i64, i64* %PC.i119
  %7905 = add i64 %7904, 5
  %7906 = load i64, i64* %PC.i119
  %7907 = add i64 %7906, 5
  store i64 %7907, i64* %PC.i119
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7909 = load i64, i64* %7908, align 8
  %7910 = add i64 %7909, -8
  %7911 = inttoptr i64 %7910 to i64*
  store i64 %7905, i64* %7911
  store i64 %7910, i64* %7908, align 8
  %7912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7903, i64* %7912, align 8
  store %struct.Memory* %loadMem1_436c3e, %struct.Memory** %MEMORY
  %loadMem2_436c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436c3e = load i64, i64* %3
  %call2_436c3e = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_436c3e, %struct.Memory* %loadMem2_436c3e)
  store %struct.Memory* %call2_436c3e, %struct.Memory** %MEMORY
  %loadMem_436c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7914 = getelementptr inbounds %struct.GPR, %struct.GPR* %7913, i32 0, i32 33
  %7915 = getelementptr inbounds %struct.Reg, %struct.Reg* %7914, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7915 to i64*
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7917 = getelementptr inbounds %struct.GPR, %struct.GPR* %7916, i32 0, i32 1
  %7918 = getelementptr inbounds %struct.Reg, %struct.Reg* %7917, i32 0, i32 0
  %EAX.i117 = bitcast %union.anon* %7918 to i32*
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 15
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %7921 to i64*
  %7922 = load i64, i64* %RBP.i118
  %7923 = sub i64 %7922, 84
  %7924 = load i32, i32* %EAX.i117
  %7925 = zext i32 %7924 to i64
  %7926 = load i64, i64* %PC.i116
  %7927 = add i64 %7926, 3
  store i64 %7927, i64* %PC.i116
  %7928 = inttoptr i64 %7923 to i32*
  store i32 %7924, i32* %7928
  store %struct.Memory* %loadMem_436c43, %struct.Memory** %MEMORY
  %loadMem_436c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7930 = getelementptr inbounds %struct.GPR, %struct.GPR* %7929, i32 0, i32 33
  %7931 = getelementptr inbounds %struct.Reg, %struct.Reg* %7930, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7931 to i64*
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7933 = getelementptr inbounds %struct.GPR, %struct.GPR* %7932, i32 0, i32 1
  %7934 = getelementptr inbounds %struct.Reg, %struct.Reg* %7933, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %7934 to i32*
  %7935 = load i32, i32* %EAX.i115
  %7936 = zext i32 %7935 to i64
  %7937 = load i64, i64* %PC.i114
  %7938 = add i64 %7937, 5
  store i64 %7938, i64* %PC.i114
  %7939 = sub i32 %7935, -987654321
  %7940 = icmp ult i32 %7935, -987654321
  %7941 = zext i1 %7940 to i8
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7941, i8* %7942, align 1
  %7943 = and i32 %7939, 255
  %7944 = call i32 @llvm.ctpop.i32(i32 %7943)
  %7945 = trunc i32 %7944 to i8
  %7946 = and i8 %7945, 1
  %7947 = xor i8 %7946, 1
  %7948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7947, i8* %7948, align 1
  %7949 = xor i64 -987654321, %7936
  %7950 = trunc i64 %7949 to i32
  %7951 = xor i32 %7950, %7939
  %7952 = lshr i32 %7951, 4
  %7953 = trunc i32 %7952 to i8
  %7954 = and i8 %7953, 1
  %7955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7954, i8* %7955, align 1
  %7956 = icmp eq i32 %7939, 0
  %7957 = zext i1 %7956 to i8
  %7958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7957, i8* %7958, align 1
  %7959 = lshr i32 %7939, 31
  %7960 = trunc i32 %7959 to i8
  %7961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7960, i8* %7961, align 1
  %7962 = lshr i32 %7935, 31
  %7963 = xor i32 1, %7962
  %7964 = xor i32 %7959, %7962
  %7965 = add i32 %7964, %7963
  %7966 = icmp eq i32 %7965, 2
  %7967 = zext i1 %7966 to i8
  %7968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7967, i8* %7968, align 1
  store %struct.Memory* %loadMem_436c46, %struct.Memory** %MEMORY
  %loadMem_436c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7970 = getelementptr inbounds %struct.GPR, %struct.GPR* %7969, i32 0, i32 33
  %7971 = getelementptr inbounds %struct.Reg, %struct.Reg* %7970, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7971 to i64*
  %7972 = load i64, i64* %PC.i113
  %7973 = add i64 %7972, 24
  %7974 = load i64, i64* %PC.i113
  %7975 = add i64 %7974, 6
  %7976 = load i64, i64* %PC.i113
  %7977 = add i64 %7976, 6
  store i64 %7977, i64* %PC.i113
  %7978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7979 = load i8, i8* %7978, align 1
  %7980 = icmp ne i8 %7979, 0
  %7981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7982 = load i8, i8* %7981, align 1
  %7983 = icmp ne i8 %7982, 0
  %7984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7985 = load i8, i8* %7984, align 1
  %7986 = icmp ne i8 %7985, 0
  %7987 = xor i1 %7983, %7986
  %7988 = or i1 %7980, %7987
  %7989 = zext i1 %7988 to i8
  store i8 %7989, i8* %BRANCH_TAKEN, align 1
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7991 = select i1 %7988, i64 %7973, i64 %7975
  store i64 %7991, i64* %7990, align 8
  store %struct.Memory* %loadMem_436c4b, %struct.Memory** %MEMORY
  %loadBr_436c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436c4b = icmp eq i8 %loadBr_436c4b, 1
  br i1 %cmpBr_436c4b, label %block_.L_436c63, label %block_436c51

block_436c51:                                     ; preds = %block_.L_436c05
  %loadMem_436c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 33
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7994 to i64*
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7996 = getelementptr inbounds %struct.GPR, %struct.GPR* %7995, i32 0, i32 1
  %7997 = getelementptr inbounds %struct.Reg, %struct.Reg* %7996, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7997 to i64*
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 15
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %8000 to i64*
  %8001 = load i64, i64* %RBP.i112
  %8002 = sub i64 %8001, 84
  %8003 = load i64, i64* %PC.i110
  %8004 = add i64 %8003, 3
  store i64 %8004, i64* %PC.i110
  %8005 = inttoptr i64 %8002 to i32*
  %8006 = load i32, i32* %8005
  %8007 = zext i32 %8006 to i64
  store i64 %8007, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_436c51, %struct.Memory** %MEMORY
  %loadMem_436c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8009 = getelementptr inbounds %struct.GPR, %struct.GPR* %8008, i32 0, i32 33
  %8010 = getelementptr inbounds %struct.Reg, %struct.Reg* %8009, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %8010 to i64*
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 5
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %8013 to i64*
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8015 = getelementptr inbounds %struct.GPR, %struct.GPR* %8014, i32 0, i32 15
  %8016 = getelementptr inbounds %struct.Reg, %struct.Reg* %8015, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %8016 to i64*
  %8017 = load i64, i64* %RBP.i109
  %8018 = sub i64 %8017, 48
  %8019 = load i64, i64* %PC.i107
  %8020 = add i64 %8019, 4
  store i64 %8020, i64* %PC.i107
  %8021 = inttoptr i64 %8018 to i64*
  %8022 = load i64, i64* %8021
  store i64 %8022, i64* %RCX.i108, align 8
  store %struct.Memory* %loadMem_436c54, %struct.Memory** %MEMORY
  %loadMem_436c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8024 = getelementptr inbounds %struct.GPR, %struct.GPR* %8023, i32 0, i32 33
  %8025 = getelementptr inbounds %struct.Reg, %struct.Reg* %8024, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %8025 to i64*
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8027 = getelementptr inbounds %struct.GPR, %struct.GPR* %8026, i32 0, i32 7
  %8028 = getelementptr inbounds %struct.Reg, %struct.Reg* %8027, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %8028 to i64*
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8030 = getelementptr inbounds %struct.GPR, %struct.GPR* %8029, i32 0, i32 15
  %8031 = getelementptr inbounds %struct.Reg, %struct.Reg* %8030, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %8031 to i64*
  %8032 = load i64, i64* %RBP.i106
  %8033 = sub i64 %8032, 76
  %8034 = load i64, i64* %PC.i104
  %8035 = add i64 %8034, 4
  store i64 %8035, i64* %PC.i104
  %8036 = inttoptr i64 %8033 to i32*
  %8037 = load i32, i32* %8036
  %8038 = sext i32 %8037 to i64
  store i64 %8038, i64* %RDX.i105, align 8
  store %struct.Memory* %loadMem_436c58, %struct.Memory** %MEMORY
  %loadMem_436c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 33
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %8041 to i64*
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8043 = getelementptr inbounds %struct.GPR, %struct.GPR* %8042, i32 0, i32 5
  %8044 = getelementptr inbounds %struct.Reg, %struct.Reg* %8043, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %8044 to i64*
  %8045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8046 = getelementptr inbounds %struct.GPR, %struct.GPR* %8045, i32 0, i32 7
  %8047 = getelementptr inbounds %struct.Reg, %struct.Reg* %8046, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %8047 to i64*
  %8048 = load i64, i64* %RCX.i102
  %8049 = load i64, i64* %RDX.i103
  %8050 = mul i64 %8049, 8
  %8051 = add i64 %8050, %8048
  %8052 = load i64, i64* %PC.i101
  %8053 = add i64 %8052, 4
  store i64 %8053, i64* %PC.i101
  %8054 = inttoptr i64 %8051 to i64*
  %8055 = load i64, i64* %8054
  store i64 %8055, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_436c5c, %struct.Memory** %MEMORY
  %loadMem_436c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8057 = getelementptr inbounds %struct.GPR, %struct.GPR* %8056, i32 0, i32 33
  %8058 = getelementptr inbounds %struct.Reg, %struct.Reg* %8057, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %8058 to i64*
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 1
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %8061 to i32*
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 5
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %8064 to i64*
  %8065 = load i64, i64* %RCX.i100
  %8066 = add i64 %8065, 8
  %8067 = load i32, i32* %EAX.i99
  %8068 = zext i32 %8067 to i64
  %8069 = load i64, i64* %PC.i98
  %8070 = add i64 %8069, 3
  store i64 %8070, i64* %PC.i98
  %8071 = inttoptr i64 %8066 to i32*
  store i32 %8067, i32* %8071
  store %struct.Memory* %loadMem_436c60, %struct.Memory** %MEMORY
  br label %block_.L_436c63

block_.L_436c63:                                  ; preds = %block_436c51, %block_.L_436c05
  %loadMem_436c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8073 = getelementptr inbounds %struct.GPR, %struct.GPR* %8072, i32 0, i32 33
  %8074 = getelementptr inbounds %struct.Reg, %struct.Reg* %8073, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %8074 to i64*
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8076 = getelementptr inbounds %struct.GPR, %struct.GPR* %8075, i32 0, i32 1
  %8077 = getelementptr inbounds %struct.Reg, %struct.Reg* %8076, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %8077 to i64*
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8079 = getelementptr inbounds %struct.GPR, %struct.GPR* %8078, i32 0, i32 15
  %8080 = getelementptr inbounds %struct.Reg, %struct.Reg* %8079, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %8080 to i64*
  %8081 = load i64, i64* %RBP.i97
  %8082 = sub i64 %8081, 48
  %8083 = load i64, i64* %PC.i95
  %8084 = add i64 %8083, 4
  store i64 %8084, i64* %PC.i95
  %8085 = inttoptr i64 %8082 to i64*
  %8086 = load i64, i64* %8085
  store i64 %8086, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_436c63, %struct.Memory** %MEMORY
  %loadMem_436c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8088 = getelementptr inbounds %struct.GPR, %struct.GPR* %8087, i32 0, i32 33
  %8089 = getelementptr inbounds %struct.Reg, %struct.Reg* %8088, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8089 to i64*
  %8090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8091 = getelementptr inbounds %struct.GPR, %struct.GPR* %8090, i32 0, i32 5
  %8092 = getelementptr inbounds %struct.Reg, %struct.Reg* %8091, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %8092 to i64*
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8094 = getelementptr inbounds %struct.GPR, %struct.GPR* %8093, i32 0, i32 15
  %8095 = getelementptr inbounds %struct.Reg, %struct.Reg* %8094, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %8095 to i64*
  %8096 = load i64, i64* %RBP.i94
  %8097 = sub i64 %8096, 76
  %8098 = load i64, i64* %PC.i92
  %8099 = add i64 %8098, 4
  store i64 %8099, i64* %PC.i92
  %8100 = inttoptr i64 %8097 to i32*
  %8101 = load i32, i32* %8100
  %8102 = sext i32 %8101 to i64
  store i64 %8102, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_436c67, %struct.Memory** %MEMORY
  %loadMem_436c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8104 = getelementptr inbounds %struct.GPR, %struct.GPR* %8103, i32 0, i32 33
  %8105 = getelementptr inbounds %struct.Reg, %struct.Reg* %8104, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %8105 to i64*
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 1
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %8108 to i64*
  %8109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8110 = getelementptr inbounds %struct.GPR, %struct.GPR* %8109, i32 0, i32 5
  %8111 = getelementptr inbounds %struct.Reg, %struct.Reg* %8110, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %8111 to i64*
  %8112 = load i64, i64* %RAX.i90
  %8113 = load i64, i64* %RCX.i91
  %8114 = mul i64 %8113, 8
  %8115 = add i64 %8114, %8112
  %8116 = load i64, i64* %PC.i89
  %8117 = add i64 %8116, 4
  store i64 %8117, i64* %PC.i89
  %8118 = inttoptr i64 %8115 to i64*
  %8119 = load i64, i64* %8118
  store i64 %8119, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_436c6b, %struct.Memory** %MEMORY
  %loadMem_436c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 33
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %8122 to i64*
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 1
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %8125 to i64*
  %8126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8127 = getelementptr inbounds %struct.GPR, %struct.GPR* %8126, i32 0, i32 7
  %8128 = getelementptr inbounds %struct.Reg, %struct.Reg* %8127, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %8128 to i64*
  %8129 = load i64, i64* %RAX.i87
  %8130 = add i64 %8129, 4
  %8131 = load i64, i64* %PC.i86
  %8132 = add i64 %8131, 3
  store i64 %8132, i64* %PC.i86
  %8133 = inttoptr i64 %8130 to i32*
  %8134 = load i32, i32* %8133
  %8135 = zext i32 %8134 to i64
  store i64 %8135, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_436c6f, %struct.Memory** %MEMORY
  %loadMem_436c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8137 = getelementptr inbounds %struct.GPR, %struct.GPR* %8136, i32 0, i32 33
  %8138 = getelementptr inbounds %struct.Reg, %struct.Reg* %8137, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %8138 to i64*
  %8139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8140 = getelementptr inbounds %struct.GPR, %struct.GPR* %8139, i32 0, i32 7
  %8141 = getelementptr inbounds %struct.Reg, %struct.Reg* %8140, i32 0, i32 0
  %EDX.i84 = bitcast %union.anon* %8141 to i32*
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8143 = getelementptr inbounds %struct.GPR, %struct.GPR* %8142, i32 0, i32 15
  %8144 = getelementptr inbounds %struct.Reg, %struct.Reg* %8143, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %8144 to i64*
  %8145 = load i64, i64* %RBP.i85
  %8146 = sub i64 %8145, 84
  %8147 = load i32, i32* %EDX.i84
  %8148 = zext i32 %8147 to i64
  %8149 = load i64, i64* %PC.i83
  %8150 = add i64 %8149, 3
  store i64 %8150, i64* %PC.i83
  %8151 = inttoptr i64 %8146 to i32*
  store i32 %8147, i32* %8151
  store %struct.Memory* %loadMem_436c72, %struct.Memory** %MEMORY
  %loadMem_436c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8153 = getelementptr inbounds %struct.GPR, %struct.GPR* %8152, i32 0, i32 33
  %8154 = getelementptr inbounds %struct.Reg, %struct.Reg* %8153, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8154 to i64*
  %8155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8156 = getelementptr inbounds %struct.GPR, %struct.GPR* %8155, i32 0, i32 1
  %8157 = getelementptr inbounds %struct.Reg, %struct.Reg* %8156, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %8157 to i64*
  %8158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8159 = getelementptr inbounds %struct.GPR, %struct.GPR* %8158, i32 0, i32 15
  %8160 = getelementptr inbounds %struct.Reg, %struct.Reg* %8159, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %8160 to i64*
  %8161 = load i64, i64* %RBP.i82
  %8162 = sub i64 %8161, 48
  %8163 = load i64, i64* %PC.i80
  %8164 = add i64 %8163, 4
  store i64 %8164, i64* %PC.i80
  %8165 = inttoptr i64 %8162 to i64*
  %8166 = load i64, i64* %8165
  store i64 %8166, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_436c75, %struct.Memory** %MEMORY
  %loadMem_436c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8168 = getelementptr inbounds %struct.GPR, %struct.GPR* %8167, i32 0, i32 33
  %8169 = getelementptr inbounds %struct.Reg, %struct.Reg* %8168, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8169 to i64*
  %8170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8171 = getelementptr inbounds %struct.GPR, %struct.GPR* %8170, i32 0, i32 5
  %8172 = getelementptr inbounds %struct.Reg, %struct.Reg* %8171, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %8172 to i64*
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8174 = getelementptr inbounds %struct.GPR, %struct.GPR* %8173, i32 0, i32 15
  %8175 = getelementptr inbounds %struct.Reg, %struct.Reg* %8174, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %8175 to i64*
  %8176 = load i64, i64* %RBP.i79
  %8177 = sub i64 %8176, 76
  %8178 = load i64, i64* %PC.i77
  %8179 = add i64 %8178, 4
  store i64 %8179, i64* %PC.i77
  %8180 = inttoptr i64 %8177 to i32*
  %8181 = load i32, i32* %8180
  %8182 = sext i32 %8181 to i64
  store i64 %8182, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_436c79, %struct.Memory** %MEMORY
  %loadMem_436c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8184 = getelementptr inbounds %struct.GPR, %struct.GPR* %8183, i32 0, i32 33
  %8185 = getelementptr inbounds %struct.Reg, %struct.Reg* %8184, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %8185 to i64*
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8187 = getelementptr inbounds %struct.GPR, %struct.GPR* %8186, i32 0, i32 1
  %8188 = getelementptr inbounds %struct.Reg, %struct.Reg* %8187, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %8188 to i64*
  %8189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8190 = getelementptr inbounds %struct.GPR, %struct.GPR* %8189, i32 0, i32 5
  %8191 = getelementptr inbounds %struct.Reg, %struct.Reg* %8190, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %8191 to i64*
  %8192 = load i64, i64* %RAX.i75
  %8193 = load i64, i64* %RCX.i76
  %8194 = mul i64 %8193, 8
  %8195 = add i64 %8194, %8192
  %8196 = load i64, i64* %PC.i74
  %8197 = add i64 %8196, 4
  store i64 %8197, i64* %PC.i74
  %8198 = inttoptr i64 %8195 to i64*
  %8199 = load i64, i64* %8198
  store i64 %8199, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_436c7d, %struct.Memory** %MEMORY
  %loadMem_436c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8201 = getelementptr inbounds %struct.GPR, %struct.GPR* %8200, i32 0, i32 33
  %8202 = getelementptr inbounds %struct.Reg, %struct.Reg* %8201, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %8202 to i64*
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8204 = getelementptr inbounds %struct.GPR, %struct.GPR* %8203, i32 0, i32 7
  %8205 = getelementptr inbounds %struct.Reg, %struct.Reg* %8204, i32 0, i32 0
  %EDX.i72 = bitcast %union.anon* %8205 to i32*
  %8206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8207 = getelementptr inbounds %struct.GPR, %struct.GPR* %8206, i32 0, i32 1
  %8208 = getelementptr inbounds %struct.Reg, %struct.Reg* %8207, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %8208 to i64*
  %8209 = load i32, i32* %EDX.i72
  %8210 = zext i32 %8209 to i64
  %8211 = load i64, i64* %RAX.i73
  %8212 = add i64 %8211, 8
  %8213 = load i64, i64* %PC.i71
  %8214 = add i64 %8213, 3
  store i64 %8214, i64* %PC.i71
  %8215 = inttoptr i64 %8212 to i32*
  %8216 = load i32, i32* %8215
  %8217 = sub i32 %8209, %8216
  %8218 = icmp ult i32 %8209, %8216
  %8219 = zext i1 %8218 to i8
  %8220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8219, i8* %8220, align 1
  %8221 = and i32 %8217, 255
  %8222 = call i32 @llvm.ctpop.i32(i32 %8221)
  %8223 = trunc i32 %8222 to i8
  %8224 = and i8 %8223, 1
  %8225 = xor i8 %8224, 1
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8225, i8* %8226, align 1
  %8227 = xor i32 %8216, %8209
  %8228 = xor i32 %8227, %8217
  %8229 = lshr i32 %8228, 4
  %8230 = trunc i32 %8229 to i8
  %8231 = and i8 %8230, 1
  %8232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8231, i8* %8232, align 1
  %8233 = icmp eq i32 %8217, 0
  %8234 = zext i1 %8233 to i8
  %8235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8234, i8* %8235, align 1
  %8236 = lshr i32 %8217, 31
  %8237 = trunc i32 %8236 to i8
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8237, i8* %8238, align 1
  %8239 = lshr i32 %8209, 31
  %8240 = lshr i32 %8216, 31
  %8241 = xor i32 %8240, %8239
  %8242 = xor i32 %8236, %8239
  %8243 = add i32 %8242, %8241
  %8244 = icmp eq i32 %8243, 2
  %8245 = zext i1 %8244 to i8
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8245, i8* %8246, align 1
  store %struct.Memory* %loadMem_436c81, %struct.Memory** %MEMORY
  %loadMem_436c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8248 = getelementptr inbounds %struct.GPR, %struct.GPR* %8247, i32 0, i32 33
  %8249 = getelementptr inbounds %struct.Reg, %struct.Reg* %8248, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %8249 to i64*
  %8250 = load i64, i64* %PC.i70
  %8251 = add i64 %8250, 24
  %8252 = load i64, i64* %PC.i70
  %8253 = add i64 %8252, 6
  %8254 = load i64, i64* %PC.i70
  %8255 = add i64 %8254, 6
  store i64 %8255, i64* %PC.i70
  %8256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8257 = load i8, i8* %8256, align 1
  %8258 = icmp ne i8 %8257, 0
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8260 = load i8, i8* %8259, align 1
  %8261 = icmp ne i8 %8260, 0
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8263 = load i8, i8* %8262, align 1
  %8264 = icmp ne i8 %8263, 0
  %8265 = xor i1 %8261, %8264
  %8266 = or i1 %8258, %8265
  %8267 = zext i1 %8266 to i8
  store i8 %8267, i8* %BRANCH_TAKEN, align 1
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8269 = select i1 %8266, i64 %8251, i64 %8253
  store i64 %8269, i64* %8268, align 8
  store %struct.Memory* %loadMem_436c84, %struct.Memory** %MEMORY
  %loadBr_436c84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436c84 = icmp eq i8 %loadBr_436c84, 1
  br i1 %cmpBr_436c84, label %block_.L_436c9c, label %block_436c8a

block_436c8a:                                     ; preds = %block_.L_436c63
  %loadMem_436c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8271 = getelementptr inbounds %struct.GPR, %struct.GPR* %8270, i32 0, i32 33
  %8272 = getelementptr inbounds %struct.Reg, %struct.Reg* %8271, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %8272 to i64*
  %8273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8274 = getelementptr inbounds %struct.GPR, %struct.GPR* %8273, i32 0, i32 1
  %8275 = getelementptr inbounds %struct.Reg, %struct.Reg* %8274, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %8275 to i64*
  %8276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8277 = getelementptr inbounds %struct.GPR, %struct.GPR* %8276, i32 0, i32 15
  %8278 = getelementptr inbounds %struct.Reg, %struct.Reg* %8277, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %8278 to i64*
  %8279 = load i64, i64* %RBP.i69
  %8280 = sub i64 %8279, 84
  %8281 = load i64, i64* %PC.i67
  %8282 = add i64 %8281, 3
  store i64 %8282, i64* %PC.i67
  %8283 = inttoptr i64 %8280 to i32*
  %8284 = load i32, i32* %8283
  %8285 = zext i32 %8284 to i64
  store i64 %8285, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_436c8a, %struct.Memory** %MEMORY
  %loadMem_436c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8287 = getelementptr inbounds %struct.GPR, %struct.GPR* %8286, i32 0, i32 33
  %8288 = getelementptr inbounds %struct.Reg, %struct.Reg* %8287, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8288 to i64*
  %8289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8290 = getelementptr inbounds %struct.GPR, %struct.GPR* %8289, i32 0, i32 5
  %8291 = getelementptr inbounds %struct.Reg, %struct.Reg* %8290, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %8291 to i64*
  %8292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8293 = getelementptr inbounds %struct.GPR, %struct.GPR* %8292, i32 0, i32 15
  %8294 = getelementptr inbounds %struct.Reg, %struct.Reg* %8293, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %8294 to i64*
  %8295 = load i64, i64* %RBP.i66
  %8296 = sub i64 %8295, 48
  %8297 = load i64, i64* %PC.i64
  %8298 = add i64 %8297, 4
  store i64 %8298, i64* %PC.i64
  %8299 = inttoptr i64 %8296 to i64*
  %8300 = load i64, i64* %8299
  store i64 %8300, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_436c8d, %struct.Memory** %MEMORY
  %loadMem_436c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8302 = getelementptr inbounds %struct.GPR, %struct.GPR* %8301, i32 0, i32 33
  %8303 = getelementptr inbounds %struct.Reg, %struct.Reg* %8302, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8303 to i64*
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8305 = getelementptr inbounds %struct.GPR, %struct.GPR* %8304, i32 0, i32 7
  %8306 = getelementptr inbounds %struct.Reg, %struct.Reg* %8305, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %8306 to i64*
  %8307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8308 = getelementptr inbounds %struct.GPR, %struct.GPR* %8307, i32 0, i32 15
  %8309 = getelementptr inbounds %struct.Reg, %struct.Reg* %8308, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %8309 to i64*
  %8310 = load i64, i64* %RBP.i63
  %8311 = sub i64 %8310, 76
  %8312 = load i64, i64* %PC.i61
  %8313 = add i64 %8312, 4
  store i64 %8313, i64* %PC.i61
  %8314 = inttoptr i64 %8311 to i32*
  %8315 = load i32, i32* %8314
  %8316 = sext i32 %8315 to i64
  store i64 %8316, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_436c91, %struct.Memory** %MEMORY
  %loadMem_436c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8318 = getelementptr inbounds %struct.GPR, %struct.GPR* %8317, i32 0, i32 33
  %8319 = getelementptr inbounds %struct.Reg, %struct.Reg* %8318, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8319 to i64*
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8321 = getelementptr inbounds %struct.GPR, %struct.GPR* %8320, i32 0, i32 5
  %8322 = getelementptr inbounds %struct.Reg, %struct.Reg* %8321, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %8322 to i64*
  %8323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8324 = getelementptr inbounds %struct.GPR, %struct.GPR* %8323, i32 0, i32 7
  %8325 = getelementptr inbounds %struct.Reg, %struct.Reg* %8324, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %8325 to i64*
  %8326 = load i64, i64* %RCX.i59
  %8327 = load i64, i64* %RDX.i60
  %8328 = mul i64 %8327, 8
  %8329 = add i64 %8328, %8326
  %8330 = load i64, i64* %PC.i58
  %8331 = add i64 %8330, 4
  store i64 %8331, i64* %PC.i58
  %8332 = inttoptr i64 %8329 to i64*
  %8333 = load i64, i64* %8332
  store i64 %8333, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_436c95, %struct.Memory** %MEMORY
  %loadMem_436c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8335 = getelementptr inbounds %struct.GPR, %struct.GPR* %8334, i32 0, i32 33
  %8336 = getelementptr inbounds %struct.Reg, %struct.Reg* %8335, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8336 to i64*
  %8337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8338 = getelementptr inbounds %struct.GPR, %struct.GPR* %8337, i32 0, i32 1
  %8339 = getelementptr inbounds %struct.Reg, %struct.Reg* %8338, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %8339 to i32*
  %8340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8341 = getelementptr inbounds %struct.GPR, %struct.GPR* %8340, i32 0, i32 5
  %8342 = getelementptr inbounds %struct.Reg, %struct.Reg* %8341, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %8342 to i64*
  %8343 = load i64, i64* %RCX.i57
  %8344 = add i64 %8343, 8
  %8345 = load i32, i32* %EAX.i56
  %8346 = zext i32 %8345 to i64
  %8347 = load i64, i64* %PC.i55
  %8348 = add i64 %8347, 3
  store i64 %8348, i64* %PC.i55
  %8349 = inttoptr i64 %8344 to i32*
  store i32 %8345, i32* %8349
  store %struct.Memory* %loadMem_436c99, %struct.Memory** %MEMORY
  br label %block_.L_436c9c

block_.L_436c9c:                                  ; preds = %block_436c8a, %block_.L_436c63
  %loadMem_436c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8351 = getelementptr inbounds %struct.GPR, %struct.GPR* %8350, i32 0, i32 33
  %8352 = getelementptr inbounds %struct.Reg, %struct.Reg* %8351, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %8352 to i64*
  %8353 = load i64, i64* %PC.i54
  %8354 = add i64 %8353, 5
  %8355 = load i64, i64* %PC.i54
  %8356 = add i64 %8355, 5
  store i64 %8356, i64* %PC.i54
  %8357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8354, i64* %8357, align 8
  store %struct.Memory* %loadMem_436c9c, %struct.Memory** %MEMORY
  br label %block_.L_436ca1

block_.L_436ca1:                                  ; preds = %block_.L_436c9c
  %loadMem_436ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8359 = getelementptr inbounds %struct.GPR, %struct.GPR* %8358, i32 0, i32 33
  %8360 = getelementptr inbounds %struct.Reg, %struct.Reg* %8359, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %8360 to i64*
  %8361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8362 = getelementptr inbounds %struct.GPR, %struct.GPR* %8361, i32 0, i32 1
  %8363 = getelementptr inbounds %struct.Reg, %struct.Reg* %8362, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %8363 to i64*
  %8364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8365 = getelementptr inbounds %struct.GPR, %struct.GPR* %8364, i32 0, i32 15
  %8366 = getelementptr inbounds %struct.Reg, %struct.Reg* %8365, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %8366 to i64*
  %8367 = load i64, i64* %RBP.i53
  %8368 = sub i64 %8367, 76
  %8369 = load i64, i64* %PC.i51
  %8370 = add i64 %8369, 3
  store i64 %8370, i64* %PC.i51
  %8371 = inttoptr i64 %8368 to i32*
  %8372 = load i32, i32* %8371
  %8373 = zext i32 %8372 to i64
  store i64 %8373, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_436ca1, %struct.Memory** %MEMORY
  %loadMem_436ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8375 = getelementptr inbounds %struct.GPR, %struct.GPR* %8374, i32 0, i32 33
  %8376 = getelementptr inbounds %struct.Reg, %struct.Reg* %8375, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %8376 to i64*
  %8377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8378 = getelementptr inbounds %struct.GPR, %struct.GPR* %8377, i32 0, i32 1
  %8379 = getelementptr inbounds %struct.Reg, %struct.Reg* %8378, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %8379 to i64*
  %8380 = load i64, i64* %RAX.i50
  %8381 = load i64, i64* %PC.i49
  %8382 = add i64 %8381, 3
  store i64 %8382, i64* %PC.i49
  %8383 = trunc i64 %8380 to i32
  %8384 = add i32 1, %8383
  %8385 = zext i32 %8384 to i64
  store i64 %8385, i64* %RAX.i50, align 8
  %8386 = icmp ult i32 %8384, %8383
  %8387 = icmp ult i32 %8384, 1
  %8388 = or i1 %8386, %8387
  %8389 = zext i1 %8388 to i8
  %8390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8389, i8* %8390, align 1
  %8391 = and i32 %8384, 255
  %8392 = call i32 @llvm.ctpop.i32(i32 %8391)
  %8393 = trunc i32 %8392 to i8
  %8394 = and i8 %8393, 1
  %8395 = xor i8 %8394, 1
  %8396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8395, i8* %8396, align 1
  %8397 = xor i64 1, %8380
  %8398 = trunc i64 %8397 to i32
  %8399 = xor i32 %8398, %8384
  %8400 = lshr i32 %8399, 4
  %8401 = trunc i32 %8400 to i8
  %8402 = and i8 %8401, 1
  %8403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8402, i8* %8403, align 1
  %8404 = icmp eq i32 %8384, 0
  %8405 = zext i1 %8404 to i8
  %8406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8405, i8* %8406, align 1
  %8407 = lshr i32 %8384, 31
  %8408 = trunc i32 %8407 to i8
  %8409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8408, i8* %8409, align 1
  %8410 = lshr i32 %8383, 31
  %8411 = xor i32 %8407, %8410
  %8412 = add i32 %8411, %8407
  %8413 = icmp eq i32 %8412, 2
  %8414 = zext i1 %8413 to i8
  %8415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8414, i8* %8415, align 1
  store %struct.Memory* %loadMem_436ca4, %struct.Memory** %MEMORY
  %loadMem_436ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8417 = getelementptr inbounds %struct.GPR, %struct.GPR* %8416, i32 0, i32 33
  %8418 = getelementptr inbounds %struct.Reg, %struct.Reg* %8417, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8418 to i64*
  %8419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8420 = getelementptr inbounds %struct.GPR, %struct.GPR* %8419, i32 0, i32 1
  %8421 = getelementptr inbounds %struct.Reg, %struct.Reg* %8420, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8421 to i32*
  %8422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8423 = getelementptr inbounds %struct.GPR, %struct.GPR* %8422, i32 0, i32 15
  %8424 = getelementptr inbounds %struct.Reg, %struct.Reg* %8423, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %8424 to i64*
  %8425 = load i64, i64* %RBP.i48
  %8426 = sub i64 %8425, 76
  %8427 = load i32, i32* %EAX.i
  %8428 = zext i32 %8427 to i64
  %8429 = load i64, i64* %PC.i47
  %8430 = add i64 %8429, 3
  store i64 %8430, i64* %PC.i47
  %8431 = inttoptr i64 %8426 to i32*
  store i32 %8427, i32* %8431
  store %struct.Memory* %loadMem_436ca7, %struct.Memory** %MEMORY
  %loadMem_436caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %8432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8433 = getelementptr inbounds %struct.GPR, %struct.GPR* %8432, i32 0, i32 33
  %8434 = getelementptr inbounds %struct.Reg, %struct.Reg* %8433, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %8434 to i64*
  %8435 = load i64, i64* %PC.i46
  %8436 = add i64 %8435, -1550
  %8437 = load i64, i64* %PC.i46
  %8438 = add i64 %8437, 5
  store i64 %8438, i64* %PC.i46
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8436, i64* %8439, align 8
  store %struct.Memory* %loadMem_436caa, %struct.Memory** %MEMORY
  br label %block_.L_43669c

block_.L_436caf:                                  ; preds = %block_.L_43669c
  %loadMem_436caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8441 = getelementptr inbounds %struct.GPR, %struct.GPR* %8440, i32 0, i32 33
  %8442 = getelementptr inbounds %struct.Reg, %struct.Reg* %8441, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8442 to i64*
  %8443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8444 = getelementptr inbounds %struct.GPR, %struct.GPR* %8443, i32 0, i32 1
  %8445 = getelementptr inbounds %struct.Reg, %struct.Reg* %8444, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %8445 to i64*
  %8446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8447 = getelementptr inbounds %struct.GPR, %struct.GPR* %8446, i32 0, i32 15
  %8448 = getelementptr inbounds %struct.Reg, %struct.Reg* %8447, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %8448 to i64*
  %8449 = load i64, i64* %RBP.i45
  %8450 = sub i64 %8449, 48
  %8451 = load i64, i64* %PC.i43
  %8452 = add i64 %8451, 4
  store i64 %8452, i64* %PC.i43
  %8453 = inttoptr i64 %8450 to i64*
  %8454 = load i64, i64* %8453
  store i64 %8454, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_436caf, %struct.Memory** %MEMORY
  %loadMem_436cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8456 = getelementptr inbounds %struct.GPR, %struct.GPR* %8455, i32 0, i32 33
  %8457 = getelementptr inbounds %struct.Reg, %struct.Reg* %8456, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8457 to i64*
  %8458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8459 = getelementptr inbounds %struct.GPR, %struct.GPR* %8458, i32 0, i32 5
  %8460 = getelementptr inbounds %struct.Reg, %struct.Reg* %8459, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %8460 to i64*
  %8461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8462 = getelementptr inbounds %struct.GPR, %struct.GPR* %8461, i32 0, i32 15
  %8463 = getelementptr inbounds %struct.Reg, %struct.Reg* %8462, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8463 to i64*
  %8464 = load i64, i64* %RBP.i42
  %8465 = sub i64 %8464, 4
  %8466 = load i64, i64* %PC.i40
  %8467 = add i64 %8466, 4
  store i64 %8467, i64* %PC.i40
  %8468 = inttoptr i64 %8465 to i32*
  %8469 = load i32, i32* %8468
  %8470 = sext i32 %8469 to i64
  store i64 %8470, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_436cb3, %struct.Memory** %MEMORY
  %loadMem_436cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8472 = getelementptr inbounds %struct.GPR, %struct.GPR* %8471, i32 0, i32 33
  %8473 = getelementptr inbounds %struct.Reg, %struct.Reg* %8472, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %8473 to i64*
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8475 = getelementptr inbounds %struct.GPR, %struct.GPR* %8474, i32 0, i32 1
  %8476 = getelementptr inbounds %struct.Reg, %struct.Reg* %8475, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %8476 to i64*
  %8477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8478 = getelementptr inbounds %struct.GPR, %struct.GPR* %8477, i32 0, i32 5
  %8479 = getelementptr inbounds %struct.Reg, %struct.Reg* %8478, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %8479 to i64*
  %8480 = load i64, i64* %RAX.i38
  %8481 = load i64, i64* %RCX.i39
  %8482 = mul i64 %8481, 8
  %8483 = add i64 %8482, %8480
  %8484 = load i64, i64* %PC.i37
  %8485 = add i64 %8484, 4
  store i64 %8485, i64* %PC.i37
  %8486 = inttoptr i64 %8483 to i64*
  %8487 = load i64, i64* %8486
  store i64 %8487, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_436cb7, %struct.Memory** %MEMORY
  %loadMem_436cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8489 = getelementptr inbounds %struct.GPR, %struct.GPR* %8488, i32 0, i32 33
  %8490 = getelementptr inbounds %struct.Reg, %struct.Reg* %8489, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8490 to i64*
  %8491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8492 = getelementptr inbounds %struct.GPR, %struct.GPR* %8491, i32 0, i32 1
  %8493 = getelementptr inbounds %struct.Reg, %struct.Reg* %8492, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8493 to i64*
  %8494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8495 = getelementptr inbounds %struct.GPR, %struct.GPR* %8494, i32 0, i32 7
  %8496 = getelementptr inbounds %struct.Reg, %struct.Reg* %8495, i32 0, i32 0
  %RDX.i36 = bitcast %union.anon* %8496 to i64*
  %8497 = load i64, i64* %RAX.i
  %8498 = add i64 %8497, 8
  %8499 = load i64, i64* %PC.i35
  %8500 = add i64 %8499, 3
  store i64 %8500, i64* %PC.i35
  %8501 = inttoptr i64 %8498 to i32*
  %8502 = load i32, i32* %8501
  %8503 = zext i32 %8502 to i64
  store i64 %8503, i64* %RDX.i36, align 8
  store %struct.Memory* %loadMem_436cbb, %struct.Memory** %MEMORY
  %loadMem_436cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8505 = getelementptr inbounds %struct.GPR, %struct.GPR* %8504, i32 0, i32 33
  %8506 = getelementptr inbounds %struct.Reg, %struct.Reg* %8505, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8506 to i64*
  %8507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8508 = getelementptr inbounds %struct.GPR, %struct.GPR* %8507, i32 0, i32 7
  %8509 = getelementptr inbounds %struct.Reg, %struct.Reg* %8508, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %8509 to i32*
  %8510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8511 = getelementptr inbounds %struct.GPR, %struct.GPR* %8510, i32 0, i32 15
  %8512 = getelementptr inbounds %struct.Reg, %struct.Reg* %8511, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %8512 to i64*
  %8513 = load i64, i64* %RBP.i34
  %8514 = sub i64 %8513, 84
  %8515 = load i32, i32* %EDX.i
  %8516 = zext i32 %8515 to i64
  %8517 = load i64, i64* %PC.i33
  %8518 = add i64 %8517, 3
  store i64 %8518, i64* %PC.i33
  %8519 = inttoptr i64 %8514 to i32*
  store i32 %8515, i32* %8519
  store %struct.Memory* %loadMem_436cbe, %struct.Memory** %MEMORY
  %loadMem_436cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8521 = getelementptr inbounds %struct.GPR, %struct.GPR* %8520, i32 0, i32 33
  %8522 = getelementptr inbounds %struct.Reg, %struct.Reg* %8521, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8522 to i64*
  %8523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8524 = getelementptr inbounds %struct.GPR, %struct.GPR* %8523, i32 0, i32 15
  %8525 = getelementptr inbounds %struct.Reg, %struct.Reg* %8524, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %8525 to i64*
  %8526 = load i64, i64* %RBP.i32
  %8527 = sub i64 %8526, 32
  %8528 = load i64, i64* %PC.i31
  %8529 = add i64 %8528, 5
  store i64 %8529, i64* %PC.i31
  %8530 = inttoptr i64 %8527 to i64*
  %8531 = load i64, i64* %8530
  %8532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8532, align 1
  %8533 = trunc i64 %8531 to i32
  %8534 = and i32 %8533, 255
  %8535 = call i32 @llvm.ctpop.i32(i32 %8534)
  %8536 = trunc i32 %8535 to i8
  %8537 = and i8 %8536, 1
  %8538 = xor i8 %8537, 1
  %8539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8538, i8* %8539, align 1
  %8540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8540, align 1
  %8541 = icmp eq i64 %8531, 0
  %8542 = zext i1 %8541 to i8
  %8543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8542, i8* %8543, align 1
  %8544 = lshr i64 %8531, 63
  %8545 = trunc i64 %8544 to i8
  %8546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8545, i8* %8546, align 1
  %8547 = lshr i64 %8531, 63
  %8548 = xor i64 %8544, %8547
  %8549 = add i64 %8548, %8547
  %8550 = icmp eq i64 %8549, 2
  %8551 = zext i1 %8550 to i8
  %8552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8551, i8* %8552, align 1
  store %struct.Memory* %loadMem_436cc1, %struct.Memory** %MEMORY
  %loadMem_436cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8554 = getelementptr inbounds %struct.GPR, %struct.GPR* %8553, i32 0, i32 33
  %8555 = getelementptr inbounds %struct.Reg, %struct.Reg* %8554, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8555 to i64*
  %8556 = load i64, i64* %PC.i30
  %8557 = add i64 %8556, 40
  %8558 = load i64, i64* %PC.i30
  %8559 = add i64 %8558, 6
  %8560 = load i64, i64* %PC.i30
  %8561 = add i64 %8560, 6
  store i64 %8561, i64* %PC.i30
  %8562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8563 = load i8, i8* %8562, align 1
  store i8 %8563, i8* %BRANCH_TAKEN, align 1
  %8564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8565 = icmp ne i8 %8563, 0
  %8566 = select i1 %8565, i64 %8557, i64 %8559
  store i64 %8566, i64* %8564, align 8
  store %struct.Memory* %loadMem_436cc6, %struct.Memory** %MEMORY
  %loadBr_436cc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436cc6 = icmp eq i8 %loadBr_436cc6, 1
  br i1 %cmpBr_436cc6, label %block_.L_436cee, label %block_436ccc

block_436ccc:                                     ; preds = %block_.L_436caf
  %loadMem_436ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8568 = getelementptr inbounds %struct.GPR, %struct.GPR* %8567, i32 0, i32 33
  %8569 = getelementptr inbounds %struct.Reg, %struct.Reg* %8568, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8569 to i64*
  %8570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8571 = getelementptr inbounds %struct.GPR, %struct.GPR* %8570, i32 0, i32 15
  %8572 = getelementptr inbounds %struct.Reg, %struct.Reg* %8571, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %8572 to i64*
  %8573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8574 = getelementptr inbounds %struct.GPR, %struct.GPR* %8573, i32 0, i32 17
  %8575 = getelementptr inbounds %struct.Reg, %struct.Reg* %8574, i32 0, i32 0
  %R8.i = bitcast %union.anon* %8575 to i64*
  %8576 = load i64, i64* %RBP.i29
  %8577 = sub i64 %8576, 40
  %8578 = load i64, i64* %PC.i28
  %8579 = add i64 %8578, 4
  store i64 %8579, i64* %PC.i28
  store i64 %8577, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_436ccc, %struct.Memory** %MEMORY
  %loadMem_436cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8581 = getelementptr inbounds %struct.GPR, %struct.GPR* %8580, i32 0, i32 33
  %8582 = getelementptr inbounds %struct.Reg, %struct.Reg* %8581, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8582 to i64*
  %8583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8584 = getelementptr inbounds %struct.GPR, %struct.GPR* %8583, i32 0, i32 11
  %8585 = getelementptr inbounds %struct.Reg, %struct.Reg* %8584, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %8585 to i64*
  %8586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8587 = getelementptr inbounds %struct.GPR, %struct.GPR* %8586, i32 0, i32 15
  %8588 = getelementptr inbounds %struct.Reg, %struct.Reg* %8587, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %8588 to i64*
  %8589 = load i64, i64* %RBP.i27
  %8590 = sub i64 %8589, 4
  %8591 = load i64, i64* %PC.i25
  %8592 = add i64 %8591, 3
  store i64 %8592, i64* %PC.i25
  %8593 = inttoptr i64 %8590 to i32*
  %8594 = load i32, i32* %8593
  %8595 = zext i32 %8594 to i64
  store i64 %8595, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_436cd0, %struct.Memory** %MEMORY
  %loadMem_436cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8597 = getelementptr inbounds %struct.GPR, %struct.GPR* %8596, i32 0, i32 33
  %8598 = getelementptr inbounds %struct.Reg, %struct.Reg* %8597, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8598 to i64*
  %8599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8600 = getelementptr inbounds %struct.GPR, %struct.GPR* %8599, i32 0, i32 9
  %8601 = getelementptr inbounds %struct.Reg, %struct.Reg* %8600, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8601 to i64*
  %8602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8603 = getelementptr inbounds %struct.GPR, %struct.GPR* %8602, i32 0, i32 15
  %8604 = getelementptr inbounds %struct.Reg, %struct.Reg* %8603, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %8604 to i64*
  %8605 = load i64, i64* %RBP.i24
  %8606 = sub i64 %8605, 8
  %8607 = load i64, i64* %PC.i23
  %8608 = add i64 %8607, 3
  store i64 %8608, i64* %PC.i23
  %8609 = inttoptr i64 %8606 to i32*
  %8610 = load i32, i32* %8609
  %8611 = zext i32 %8610 to i64
  store i64 %8611, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_436cd3, %struct.Memory** %MEMORY
  %loadMem_436cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8613 = getelementptr inbounds %struct.GPR, %struct.GPR* %8612, i32 0, i32 33
  %8614 = getelementptr inbounds %struct.Reg, %struct.Reg* %8613, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8614 to i64*
  %8615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8616 = getelementptr inbounds %struct.GPR, %struct.GPR* %8615, i32 0, i32 7
  %8617 = getelementptr inbounds %struct.Reg, %struct.Reg* %8616, i32 0, i32 0
  %RDX.i21 = bitcast %union.anon* %8617 to i64*
  %8618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8619 = getelementptr inbounds %struct.GPR, %struct.GPR* %8618, i32 0, i32 15
  %8620 = getelementptr inbounds %struct.Reg, %struct.Reg* %8619, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %8620 to i64*
  %8621 = load i64, i64* %RBP.i22
  %8622 = sub i64 %8621, 16
  %8623 = load i64, i64* %PC.i20
  %8624 = add i64 %8623, 4
  store i64 %8624, i64* %PC.i20
  %8625 = inttoptr i64 %8622 to i64*
  %8626 = load i64, i64* %8625
  store i64 %8626, i64* %RDX.i21, align 8
  store %struct.Memory* %loadMem_436cd6, %struct.Memory** %MEMORY
  %loadMem_436cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8628 = getelementptr inbounds %struct.GPR, %struct.GPR* %8627, i32 0, i32 33
  %8629 = getelementptr inbounds %struct.Reg, %struct.Reg* %8628, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8629 to i64*
  %8630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8631 = getelementptr inbounds %struct.GPR, %struct.GPR* %8630, i32 0, i32 5
  %8632 = getelementptr inbounds %struct.Reg, %struct.Reg* %8631, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %8632 to i64*
  %8633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8634 = getelementptr inbounds %struct.GPR, %struct.GPR* %8633, i32 0, i32 15
  %8635 = getelementptr inbounds %struct.Reg, %struct.Reg* %8634, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %8635 to i64*
  %8636 = load i64, i64* %RBP.i19
  %8637 = sub i64 %8636, 24
  %8638 = load i64, i64* %PC.i17
  %8639 = add i64 %8638, 4
  store i64 %8639, i64* %PC.i17
  %8640 = inttoptr i64 %8637 to i64*
  %8641 = load i64, i64* %8640
  store i64 %8641, i64* %RCX.i18, align 8
  store %struct.Memory* %loadMem_436cda, %struct.Memory** %MEMORY
  %loadMem1_436cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %8642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8643 = getelementptr inbounds %struct.GPR, %struct.GPR* %8642, i32 0, i32 33
  %8644 = getelementptr inbounds %struct.Reg, %struct.Reg* %8643, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8644 to i64*
  %8645 = load i64, i64* %PC.i16
  %8646 = add i64 %8645, 50
  %8647 = load i64, i64* %PC.i16
  %8648 = add i64 %8647, 5
  %8649 = load i64, i64* %PC.i16
  %8650 = add i64 %8649, 5
  store i64 %8650, i64* %PC.i16
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8652 = load i64, i64* %8651, align 8
  %8653 = add i64 %8652, -8
  %8654 = inttoptr i64 %8653 to i64*
  store i64 %8648, i64* %8654
  store i64 %8653, i64* %8651, align 8
  %8655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8646, i64* %8655, align 8
  store %struct.Memory* %loadMem1_436cde, %struct.Memory** %MEMORY
  %loadMem2_436cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436cde = load i64, i64* %3
  %call2_436cde = call %struct.Memory* @sub_436d10.P7OptimalAccuracyTrace(%struct.State* %0, i64 %loadPC_436cde, %struct.Memory* %loadMem2_436cde)
  store %struct.Memory* %call2_436cde, %struct.Memory** %MEMORY
  %loadMem_436ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8657 = getelementptr inbounds %struct.GPR, %struct.GPR* %8656, i32 0, i32 33
  %8658 = getelementptr inbounds %struct.Reg, %struct.Reg* %8657, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8658 to i64*
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8660 = getelementptr inbounds %struct.GPR, %struct.GPR* %8659, i32 0, i32 5
  %8661 = getelementptr inbounds %struct.Reg, %struct.Reg* %8660, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %8661 to i64*
  %8662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8663 = getelementptr inbounds %struct.GPR, %struct.GPR* %8662, i32 0, i32 15
  %8664 = getelementptr inbounds %struct.Reg, %struct.Reg* %8663, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %8664 to i64*
  %8665 = load i64, i64* %RBP.i15
  %8666 = sub i64 %8665, 40
  %8667 = load i64, i64* %PC.i13
  %8668 = add i64 %8667, 4
  store i64 %8668, i64* %PC.i13
  %8669 = inttoptr i64 %8666 to i64*
  %8670 = load i64, i64* %8669
  store i64 %8670, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_436ce3, %struct.Memory** %MEMORY
  %loadMem_436ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8672 = getelementptr inbounds %struct.GPR, %struct.GPR* %8671, i32 0, i32 33
  %8673 = getelementptr inbounds %struct.Reg, %struct.Reg* %8672, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8673 to i64*
  %8674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8675 = getelementptr inbounds %struct.GPR, %struct.GPR* %8674, i32 0, i32 7
  %8676 = getelementptr inbounds %struct.Reg, %struct.Reg* %8675, i32 0, i32 0
  %RDX.i11 = bitcast %union.anon* %8676 to i64*
  %8677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8678 = getelementptr inbounds %struct.GPR, %struct.GPR* %8677, i32 0, i32 15
  %8679 = getelementptr inbounds %struct.Reg, %struct.Reg* %8678, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %8679 to i64*
  %8680 = load i64, i64* %RBP.i12
  %8681 = sub i64 %8680, 32
  %8682 = load i64, i64* %PC.i10
  %8683 = add i64 %8682, 4
  store i64 %8683, i64* %PC.i10
  %8684 = inttoptr i64 %8681 to i64*
  %8685 = load i64, i64* %8684
  store i64 %8685, i64* %RDX.i11, align 8
  store %struct.Memory* %loadMem_436ce7, %struct.Memory** %MEMORY
  %loadMem_436ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8687 = getelementptr inbounds %struct.GPR, %struct.GPR* %8686, i32 0, i32 33
  %8688 = getelementptr inbounds %struct.Reg, %struct.Reg* %8687, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8688 to i64*
  %8689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8690 = getelementptr inbounds %struct.GPR, %struct.GPR* %8689, i32 0, i32 5
  %8691 = getelementptr inbounds %struct.Reg, %struct.Reg* %8690, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8691 to i64*
  %8692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8693 = getelementptr inbounds %struct.GPR, %struct.GPR* %8692, i32 0, i32 7
  %8694 = getelementptr inbounds %struct.Reg, %struct.Reg* %8693, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8694 to i64*
  %8695 = load i64, i64* %RDX.i
  %8696 = load i64, i64* %RCX.i
  %8697 = load i64, i64* %PC.i9
  %8698 = add i64 %8697, 3
  store i64 %8698, i64* %PC.i9
  %8699 = inttoptr i64 %8695 to i64*
  store i64 %8696, i64* %8699
  store %struct.Memory* %loadMem_436ceb, %struct.Memory** %MEMORY
  br label %block_.L_436cee

block_.L_436cee:                                  ; preds = %block_436ccc, %block_.L_436caf
  %loadMem_436cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8701 = getelementptr inbounds %struct.GPR, %struct.GPR* %8700, i32 0, i32 33
  %8702 = getelementptr inbounds %struct.Reg, %struct.Reg* %8701, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8702 to i64*
  %8703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8704 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8703, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %8704 to %"class.std::bitset"*
  %8705 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %8706 = load i64, i64* %PC.i8
  %8707 = add i64 %8706, ptrtoint (%G_0x1da32__rip__type* @G_0x1da32__rip_ to i64)
  %8708 = load i64, i64* %PC.i8
  %8709 = add i64 %8708, 8
  store i64 %8709, i64* %PC.i8
  %8710 = inttoptr i64 %8707 to float*
  %8711 = load float, float* %8710
  %8712 = bitcast i8* %8705 to float*
  store float %8711, float* %8712, align 1
  %8713 = getelementptr inbounds i8, i8* %8705, i64 4
  %8714 = bitcast i8* %8713 to float*
  store float 0.000000e+00, float* %8714, align 1
  %8715 = getelementptr inbounds i8, i8* %8705, i64 8
  %8716 = bitcast i8* %8715 to float*
  store float 0.000000e+00, float* %8716, align 1
  %8717 = getelementptr inbounds i8, i8* %8705, i64 12
  %8718 = bitcast i8* %8717 to float*
  store float 0.000000e+00, float* %8718, align 1
  store %struct.Memory* %loadMem_436cee, %struct.Memory** %MEMORY
  %loadMem_436cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8720 = getelementptr inbounds %struct.GPR, %struct.GPR* %8719, i32 0, i32 33
  %8721 = getelementptr inbounds %struct.Reg, %struct.Reg* %8720, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8721 to i64*
  %8722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8723 = getelementptr inbounds %struct.GPR, %struct.GPR* %8722, i32 0, i32 11
  %8724 = getelementptr inbounds %struct.Reg, %struct.Reg* %8723, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8724 to i64*
  %8725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8726 = getelementptr inbounds %struct.GPR, %struct.GPR* %8725, i32 0, i32 15
  %8727 = getelementptr inbounds %struct.Reg, %struct.Reg* %8726, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8727 to i64*
  %8728 = load i64, i64* %RBP.i7
  %8729 = sub i64 %8728, 84
  %8730 = load i64, i64* %PC.i6
  %8731 = add i64 %8730, 3
  store i64 %8731, i64* %PC.i6
  %8732 = inttoptr i64 %8729 to i32*
  %8733 = load i32, i32* %8732
  %8734 = zext i32 %8733 to i64
  store i64 %8734, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_436cf6, %struct.Memory** %MEMORY
  %loadMem1_436cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8736 = getelementptr inbounds %struct.GPR, %struct.GPR* %8735, i32 0, i32 33
  %8737 = getelementptr inbounds %struct.Reg, %struct.Reg* %8736, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8737 to i64*
  %8738 = load i64, i64* %PC.i5
  %8739 = add i64 %8738, -61065
  %8740 = load i64, i64* %PC.i5
  %8741 = add i64 %8740, 5
  %8742 = load i64, i64* %PC.i5
  %8743 = add i64 %8742, 5
  store i64 %8743, i64* %PC.i5
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8745 = load i64, i64* %8744, align 8
  %8746 = add i64 %8745, -8
  %8747 = inttoptr i64 %8746 to i64*
  store i64 %8741, i64* %8747
  store i64 %8746, i64* %8744, align 8
  %8748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8739, i64* %8748, align 8
  store %struct.Memory* %loadMem1_436cf9, %struct.Memory** %MEMORY
  %loadMem2_436cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436cf9 = load i64, i64* %3
  %call2_436cf9 = call %struct.Memory* @sub_427e70.Score2Prob(%struct.State* %0, i64 %loadPC_436cf9, %struct.Memory* %loadMem2_436cf9)
  store %struct.Memory* %call2_436cf9, %struct.Memory** %MEMORY
  %loadMem_436cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8750 = getelementptr inbounds %struct.GPR, %struct.GPR* %8749, i32 0, i32 33
  %8751 = getelementptr inbounds %struct.Reg, %struct.Reg* %8750, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8751 to i64*
  %8752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8753 = getelementptr inbounds %struct.GPR, %struct.GPR* %8752, i32 0, i32 13
  %8754 = getelementptr inbounds %struct.Reg, %struct.Reg* %8753, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8754 to i64*
  %8755 = load i64, i64* %RSP.i
  %8756 = load i64, i64* %PC.i4
  %8757 = add i64 %8756, 4
  store i64 %8757, i64* %PC.i4
  %8758 = add i64 96, %8755
  store i64 %8758, i64* %RSP.i, align 8
  %8759 = icmp ult i64 %8758, %8755
  %8760 = icmp ult i64 %8758, 96
  %8761 = or i1 %8759, %8760
  %8762 = zext i1 %8761 to i8
  %8763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8762, i8* %8763, align 1
  %8764 = trunc i64 %8758 to i32
  %8765 = and i32 %8764, 255
  %8766 = call i32 @llvm.ctpop.i32(i32 %8765)
  %8767 = trunc i32 %8766 to i8
  %8768 = and i8 %8767, 1
  %8769 = xor i8 %8768, 1
  %8770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8769, i8* %8770, align 1
  %8771 = xor i64 96, %8755
  %8772 = xor i64 %8771, %8758
  %8773 = lshr i64 %8772, 4
  %8774 = trunc i64 %8773 to i8
  %8775 = and i8 %8774, 1
  %8776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8775, i8* %8776, align 1
  %8777 = icmp eq i64 %8758, 0
  %8778 = zext i1 %8777 to i8
  %8779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8778, i8* %8779, align 1
  %8780 = lshr i64 %8758, 63
  %8781 = trunc i64 %8780 to i8
  %8782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8781, i8* %8782, align 1
  %8783 = lshr i64 %8755, 63
  %8784 = xor i64 %8780, %8783
  %8785 = add i64 %8784, %8780
  %8786 = icmp eq i64 %8785, 2
  %8787 = zext i1 %8786 to i8
  %8788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8787, i8* %8788, align 1
  store %struct.Memory* %loadMem_436cfe, %struct.Memory** %MEMORY
  %loadMem_436d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8790 = getelementptr inbounds %struct.GPR, %struct.GPR* %8789, i32 0, i32 33
  %8791 = getelementptr inbounds %struct.Reg, %struct.Reg* %8790, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8791 to i64*
  %8792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8793 = getelementptr inbounds %struct.GPR, %struct.GPR* %8792, i32 0, i32 15
  %8794 = getelementptr inbounds %struct.Reg, %struct.Reg* %8793, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8794 to i64*
  %8795 = load i64, i64* %PC.i2
  %8796 = add i64 %8795, 1
  store i64 %8796, i64* %PC.i2
  %8797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8798 = load i64, i64* %8797, align 8
  %8799 = add i64 %8798, 8
  %8800 = inttoptr i64 %8798 to i64*
  %8801 = load i64, i64* %8800
  store i64 %8801, i64* %RBP.i3, align 8
  store i64 %8799, i64* %8797, align 8
  store %struct.Memory* %loadMem_436d02, %struct.Memory** %MEMORY
  %loadMem_436d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8803 = getelementptr inbounds %struct.GPR, %struct.GPR* %8802, i32 0, i32 33
  %8804 = getelementptr inbounds %struct.Reg, %struct.Reg* %8803, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8804 to i64*
  %8805 = load i64, i64* %PC.i1
  %8806 = add i64 %8805, 1
  store i64 %8806, i64* %PC.i1
  %8807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8809 = load i64, i64* %8808, align 8
  %8810 = inttoptr i64 %8809 to i64*
  %8811 = load i64, i64* %8810
  store i64 %8811, i64* %8807, align 8
  %8812 = add i64 %8809, 8
  store i64 %8812, i64* %8808, align 8
  store %struct.Memory* %loadMem_436d03, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_436d03
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0xc521974f__0xc__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jg_.L_436695(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_436645(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jg_.L_436caf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_436a22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_436757(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4367a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4367f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_43683a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
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
  store i64 %23, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
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
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ILogsum(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 -987654321, i32* %18
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

define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RCX
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4368dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_436927(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_436988(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4369d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4366e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xc521974f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = sub i32 %9, -987654321
  %14 = icmp ult i32 %9, -987654321
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
  %23 = xor i64 -987654321, %10
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
  %37 = xor i32 1, %36
  %38 = xor i32 %33, %36
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_436a80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_436af6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jle_.L_436ae3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_436ae8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_436a9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_436b54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jle_.L_436b8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = sub i32 %9, -987654321
  %14 = icmp ult i32 %9, -987654321
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
  %23 = xor i64 -987654321, %10
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
  %37 = xor i32 1, %36
  %38 = xor i32 %33, %36
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_436bce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %12, %18
  %20 = icmp ult i32 %12, %18
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %19, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %18, %12
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %18, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_436c05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_436c63(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_jle_.L_436c9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_436ca1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43669c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_436cee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x28__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.P7OptimalAccuracyTrace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x1da32__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1da32__rip__type* @G_0x1da32__rip_ to i64)
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Score2Prob(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
