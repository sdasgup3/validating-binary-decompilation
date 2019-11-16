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
%G_0x3a637__rip__type = type <{ [8 x i8] }>
%G_0x3a6a9__rip__type = type <{ [8 x i8] }>
%G_0x3a6f1__rip__type = type <{ [8 x i8] }>
%G_0x3a7ac__rip__type = type <{ [8 x i8] }>
%G_0x3a7e9__rip__type = type <{ [8 x i8] }>
%G_0x3a819__rip__type = type <{ [8 x i8] }>
%G__0x456e97_type = type <{ [8 x i8] }>
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
@G_0x3a637__rip_ = global %G_0x3a637__rip__type zeroinitializer
@G_0x3a6a9__rip_ = global %G_0x3a6a9__rip__type zeroinitializer
@G_0x3a6f1__rip_ = global %G_0x3a6f1__rip__type zeroinitializer
@G_0x3a7ac__rip_ = global %G_0x3a7ac__rip__type zeroinitializer
@G_0x3a7e9__rip_ = global %G_0x3a7e9__rip__type zeroinitializer
@G_0x3a819__rip_ = global %G_0x3a819__rip__type zeroinitializer
@G__0x456e97 = global %G__0x456e97_type zeroinitializer

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

declare %struct.Memory* @sub_41a2e0.EVDDistribution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41a340.EVDCensoredFit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41a7c0.EVDMaxLikelyFit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @ExtremeValueFitHistogram(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_419e50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_419e50, %struct.Memory** %MEMORY
  %loadMem_419e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i10 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i10
  %27 = load i64, i64* %PC.i9
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i9
  store i64 %26, i64* %RBP.i11, align 8
  store %struct.Memory* %loadMem_419e51, %struct.Memory** %MEMORY
  %loadMem_419e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i22 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i22
  %36 = load i64, i64* %PC.i21
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i21
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i22, align 8
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
  store %struct.Memory* %loadMem_419e54, %struct.Memory** %MEMORY
  %loadMem_419e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i77
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i76
  %79 = load i64, i64* %PC.i75
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i75
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_419e5b, %struct.Memory** %MEMORY
  %loadMem_419e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i85
  %92 = sub i64 %91, 20
  %93 = load i32, i32* %ESI.i
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i84
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i84
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_419e5f, %struct.Memory** %MEMORY
  %loadMem_419e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %104, i64 0, i64 0
  %XMM0.i111 = bitcast %union.VectorReg* %105 to %union.vec128_t*
  %106 = load i64, i64* %RBP.i110
  %107 = sub i64 %106, 24
  %108 = bitcast %union.vec128_t* %XMM0.i111 to i8*
  %109 = load i64, i64* %PC.i109
  %110 = add i64 %109, 5
  store i64 %110, i64* %PC.i109
  %111 = bitcast i8* %108 to <2 x float>*
  %112 = load <2 x float>, <2 x float>* %111, align 1
  %113 = extractelement <2 x float> %112, i32 0
  %114 = inttoptr i64 %107 to float*
  store float %113, float* %114
  store %struct.Memory* %loadMem_419e62, %struct.Memory** %MEMORY
  %loadMem_419e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RDI.i122 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i123
  %125 = sub i64 %124, 16
  %126 = load i64, i64* %PC.i121
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i121
  %128 = inttoptr i64 %125 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %RDI.i122, align 8
  store %struct.Memory* %loadMem_419e67, %struct.Memory** %MEMORY
  %loadMem_419e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RSI.i563 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RDI.i564 = bitcast %union.anon* %138 to i64*
  %139 = load i64, i64* %RDI.i564
  %140 = add i64 %139, 20
  %141 = load i64, i64* %PC.i562
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC.i562
  %143 = inttoptr i64 %140 to i32*
  %144 = load i32, i32* %143
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RSI.i563, align 8
  store %struct.Memory* %loadMem_419e6b, %struct.Memory** %MEMORY
  %loadMem_419e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %ESI.i665 = bitcast %union.anon* %151 to i32*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %RBP.i666
  %156 = sub i64 %155, 68
  %157 = load i32, i32* %ESI.i665
  %158 = zext i32 %157 to i64
  %159 = load i64, i64* %PC.i664
  %160 = add i64 %159, 3
  store i64 %160, i64* %PC.i664
  %161 = inttoptr i64 %156 to i32*
  store i32 %157, i32* %161
  store %struct.Memory* %loadMem_419e6e, %struct.Memory** %MEMORY
  %loadMem_419e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i663
  %169 = sub i64 %168, 20
  %170 = load i64, i64* %PC.i662
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC.i662
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %174, align 1
  %175 = and i32 %173, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %179, i8* %180, align 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %181, align 1
  %182 = icmp eq i32 %173, 0
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i32 %173, 31
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %186, i8* %187, align 1
  %188 = lshr i32 %173, 31
  %189 = xor i32 %185, %188
  %190 = add i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1
  store %struct.Memory* %loadMem_419e71, %struct.Memory** %MEMORY
  %loadMem_419e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %PC.i661
  %198 = add i64 %197, 127
  %199 = load i64, i64* %PC.i661
  %200 = add i64 %199, 6
  %201 = load i64, i64* %PC.i661
  %202 = add i64 %201, 6
  store i64 %202, i64* %PC.i661
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* %BRANCH_TAKEN, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %206 = icmp ne i8 %204, 0
  %207 = select i1 %206, i64 %198, i64 %200
  store i64 %207, i64* %205, align 8
  store %struct.Memory* %loadMem_419e75, %struct.Memory** %MEMORY
  %loadBr_419e75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419e75 = icmp eq i8 %loadBr_419e75, 1
  br i1 %cmpBr_419e75, label %block_.L_419ef4, label %block_419e7b

block_419e7b:                                     ; preds = %entry
  %loadMem_419e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 15
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %RBP.i660
  %215 = sub i64 %214, 84
  %216 = load i64, i64* %PC.i659
  %217 = add i64 %216, 7
  store i64 %217, i64* %PC.i659
  %218 = inttoptr i64 %215 to i32*
  store i32 -1, i32* %218
  store %struct.Memory* %loadMem_419e7b, %struct.Memory** %MEMORY
  %loadMem_419e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i658
  %229 = sub i64 %228, 16
  %230 = load i64, i64* %PC.i656
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC.i656
  %232 = inttoptr i64 %229 to i64*
  %233 = load i64, i64* %232
  store i64 %233, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_419e82, %struct.Memory** %MEMORY
  %loadMem_419e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %242 to i64*
  %243 = load i64, i64* %RAX.i654
  %244 = add i64 %243, 20
  %245 = load i64, i64* %PC.i653
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC.i653
  %247 = inttoptr i64 %244 to i32*
  %248 = load i32, i32* %247
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RCX.i655, align 8
  store %struct.Memory* %loadMem_419e86, %struct.Memory** %MEMORY
  %loadMem_419e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %ECX.i651 = bitcast %union.anon* %255 to i32*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RBP.i652
  %260 = sub i64 %259, 64
  %261 = load i32, i32* %ECX.i651
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %PC.i650
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC.i650
  %265 = inttoptr i64 %260 to i32*
  store i32 %261, i32* %265
  store %struct.Memory* %loadMem_419e89, %struct.Memory** %MEMORY
  br label %block_.L_419e8c

block_.L_419e8c:                                  ; preds = %block_.L_419ee1, %block_419e7b
  %loadMem_419e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i649
  %276 = sub i64 %275, 64
  %277 = load i64, i64* %PC.i647
  %278 = add i64 %277, 3
  store i64 %278, i64* %PC.i647
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_419e8c, %struct.Memory** %MEMORY
  %loadMem_419e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RBP.i646
  %292 = sub i64 %291, 16
  %293 = load i64, i64* %PC.i644
  %294 = add i64 %293, 4
  store i64 %294, i64* %PC.i644
  %295 = inttoptr i64 %292 to i64*
  %296 = load i64, i64* %295
  store i64 %296, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_419e8f, %struct.Memory** %MEMORY
  %loadMem_419e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %EAX.i642 = bitcast %union.anon* %302 to i32*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %305 to i64*
  %306 = load i32, i32* %EAX.i642
  %307 = zext i32 %306 to i64
  %308 = load i64, i64* %RCX.i643
  %309 = add i64 %308, 16
  %310 = load i64, i64* %PC.i641
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC.i641
  %312 = inttoptr i64 %309 to i32*
  %313 = load i32, i32* %312
  %314 = sub i32 %306, %313
  %315 = icmp ult i32 %306, %313
  %316 = zext i1 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %316, i8* %317, align 1
  %318 = and i32 %314, 255
  %319 = call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %322, i8* %323, align 1
  %324 = xor i32 %313, %306
  %325 = xor i32 %324, %314
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %328, i8* %329, align 1
  %330 = icmp eq i32 %314, 0
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %331, i8* %332, align 1
  %333 = lshr i32 %314, 31
  %334 = trunc i32 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %334, i8* %335, align 1
  %336 = lshr i32 %306, 31
  %337 = lshr i32 %313, 31
  %338 = xor i32 %337, %336
  %339 = xor i32 %333, %336
  %340 = add i32 %339, %338
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %342, i8* %343, align 1
  store %struct.Memory* %loadMem_419e93, %struct.Memory** %MEMORY
  %loadMem_419e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %PC.i640
  %348 = add i64 %347, 89
  %349 = load i64, i64* %PC.i640
  %350 = add i64 %349, 6
  %351 = load i64, i64* %PC.i640
  %352 = add i64 %351, 6
  store i64 %352, i64* %PC.i640
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %354 = load i8, i8* %353, align 1
  %355 = icmp eq i8 %354, 0
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %357 = load i8, i8* %356, align 1
  %358 = icmp ne i8 %357, 0
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %360 = load i8, i8* %359, align 1
  %361 = icmp ne i8 %360, 0
  %362 = xor i1 %358, %361
  %363 = xor i1 %362, true
  %364 = and i1 %355, %363
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %BRANCH_TAKEN, align 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %367 = select i1 %364, i64 %348, i64 %350
  store i64 %367, i64* %366, align 8
  store %struct.Memory* %loadMem_419e96, %struct.Memory** %MEMORY
  %loadBr_419e96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419e96 = icmp eq i8 %loadBr_419e96, 1
  br i1 %cmpBr_419e96, label %block_.L_419eef, label %block_419e9c

block_419e9c:                                     ; preds = %block_.L_419e8c
  %loadMem_419e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i639
  %378 = sub i64 %377, 16
  %379 = load i64, i64* %PC.i637
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC.i637
  %381 = inttoptr i64 %378 to i64*
  %382 = load i64, i64* %381
  store i64 %382, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_419e9c, %struct.Memory** %MEMORY
  %loadMem_419ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %RAX.i636
  %390 = load i64, i64* %PC.i635
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC.i635
  %392 = inttoptr i64 %389 to i64*
  %393 = load i64, i64* %392
  store i64 %393, i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_419ea0, %struct.Memory** %MEMORY
  %loadMem_419ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i634
  %404 = sub i64 %403, 64
  %405 = load i64, i64* %PC.i632
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i632
  %407 = inttoptr i64 %404 to i32*
  %408 = load i32, i32* %407
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_419ea3, %struct.Memory** %MEMORY
  %loadMem_419ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 7
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RDX.i630 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 15
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %418 to i64*
  %419 = load i64, i64* %RBP.i631
  %420 = sub i64 %419, 16
  %421 = load i64, i64* %PC.i629
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC.i629
  %423 = inttoptr i64 %420 to i64*
  %424 = load i64, i64* %423
  store i64 %424, i64* %RDX.i630, align 8
  store %struct.Memory* %loadMem_419ea6, %struct.Memory** %MEMORY
  %loadMem_419eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 7
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %RCX.i627
  %435 = load i64, i64* %RDX.i628
  %436 = add i64 %435, 8
  %437 = load i64, i64* %PC.i626
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC.i626
  %439 = trunc i64 %434 to i32
  %440 = inttoptr i64 %436 to i32*
  %441 = load i32, i32* %440
  %442 = sub i32 %439, %441
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX.i627, align 8
  %444 = icmp ult i32 %439, %441
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %445, i8* %446, align 1
  %447 = and i32 %442, 255
  %448 = call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %451, i8* %452, align 1
  %453 = xor i32 %441, %439
  %454 = xor i32 %453, %442
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %457, i8* %458, align 1
  %459 = icmp eq i32 %442, 0
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %460, i8* %461, align 1
  %462 = lshr i32 %442, 31
  %463 = trunc i32 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %463, i8* %464, align 1
  %465 = lshr i32 %439, 31
  %466 = lshr i32 %441, 31
  %467 = xor i32 %466, %465
  %468 = xor i32 %462, %465
  %469 = add i32 %468, %467
  %470 = icmp eq i32 %469, 2
  %471 = zext i1 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %471, i8* %472, align 1
  store %struct.Memory* %loadMem_419eaa, %struct.Memory** %MEMORY
  %loadMem_419ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %ECX.i624 = bitcast %union.anon* %478 to i32*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 7
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RDX.i625 = bitcast %union.anon* %481 to i64*
  %482 = load i32, i32* %ECX.i624
  %483 = zext i32 %482 to i64
  %484 = load i64, i64* %PC.i623
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC.i623
  %486 = shl i64 %483, 32
  %487 = ashr exact i64 %486, 32
  store i64 %487, i64* %RDX.i625, align 8
  store %struct.Memory* %loadMem_419ead, %struct.Memory** %MEMORY
  %loadMem_419eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 5
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 7
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RDX.i622 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RAX.i620
  %501 = load i64, i64* %RDX.i622
  %502 = mul i64 %501, 4
  %503 = add i64 %502, %500
  %504 = load i64, i64* %PC.i619
  %505 = add i64 %504, 3
  store i64 %505, i64* %PC.i619
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RCX.i621, align 8
  store %struct.Memory* %loadMem_419eb0, %struct.Memory** %MEMORY
  %loadMem_419eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %ECX.i617 = bitcast %union.anon* %514 to i32*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %517 to i64*
  %518 = load i32, i32* %ECX.i617
  %519 = zext i32 %518 to i64
  %520 = load i64, i64* %RBP.i618
  %521 = sub i64 %520, 84
  %522 = load i64, i64* %PC.i616
  %523 = add i64 %522, 3
  store i64 %523, i64* %PC.i616
  %524 = inttoptr i64 %521 to i32*
  %525 = load i32, i32* %524
  %526 = sub i32 %518, %525
  %527 = icmp ult i32 %518, %525
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %528, i8* %529, align 1
  %530 = and i32 %526, 255
  %531 = call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %534, i8* %535, align 1
  %536 = xor i32 %525, %518
  %537 = xor i32 %536, %526
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %540, i8* %541, align 1
  %542 = icmp eq i32 %526, 0
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %543, i8* %544, align 1
  %545 = lshr i32 %526, 31
  %546 = trunc i32 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %546, i8* %547, align 1
  %548 = lshr i32 %518, 31
  %549 = lshr i32 %525, 31
  %550 = xor i32 %549, %548
  %551 = xor i32 %545, %548
  %552 = add i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %554, i8* %555, align 1
  store %struct.Memory* %loadMem_419eb3, %struct.Memory** %MEMORY
  %loadMem_419eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %PC.i615
  %560 = add i64 %559, 38
  %561 = load i64, i64* %PC.i615
  %562 = add i64 %561, 6
  %563 = load i64, i64* %PC.i615
  %564 = add i64 %563, 6
  store i64 %564, i64* %PC.i615
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %566 = load i8, i8* %565, align 1
  %567 = icmp ne i8 %566, 0
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %569 = load i8, i8* %568, align 1
  %570 = icmp ne i8 %569, 0
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %572 = load i8, i8* %571, align 1
  %573 = icmp ne i8 %572, 0
  %574 = xor i1 %570, %573
  %575 = or i1 %567, %574
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %BRANCH_TAKEN, align 1
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %578 = select i1 %575, i64 %560, i64 %562
  store i64 %578, i64* %577, align 8
  store %struct.Memory* %loadMem_419eb6, %struct.Memory** %MEMORY
  %loadBr_419eb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419eb6 = icmp eq i8 %loadBr_419eb6, 1
  br i1 %cmpBr_419eb6, label %block_.L_419edc, label %block_419ebc

block_419ebc:                                     ; preds = %block_419e9c
  %loadMem_419ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 15
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %587 to i64*
  %588 = load i64, i64* %RBP.i614
  %589 = sub i64 %588, 16
  %590 = load i64, i64* %PC.i612
  %591 = add i64 %590, 4
  store i64 %591, i64* %PC.i612
  %592 = inttoptr i64 %589 to i64*
  %593 = load i64, i64* %592
  store i64 %593, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_419ebc, %struct.Memory** %MEMORY
  %loadMem_419ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %599 to i64*
  %600 = load i64, i64* %RAX.i611
  %601 = load i64, i64* %PC.i610
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC.i610
  %603 = inttoptr i64 %600 to i64*
  %604 = load i64, i64* %603
  store i64 %604, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_419ec0, %struct.Memory** %MEMORY
  %loadMem_419ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 15
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %RBP.i609
  %615 = sub i64 %614, 64
  %616 = load i64, i64* %PC.i607
  %617 = add i64 %616, 3
  store i64 %617, i64* %PC.i607
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_419ec3, %struct.Memory** %MEMORY
  %loadMem_419ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 7
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RDX.i605 = bitcast %union.anon* %626 to i64*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 15
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %629 to i64*
  %630 = load i64, i64* %RBP.i606
  %631 = sub i64 %630, 16
  %632 = load i64, i64* %PC.i604
  %633 = add i64 %632, 4
  store i64 %633, i64* %PC.i604
  %634 = inttoptr i64 %631 to i64*
  %635 = load i64, i64* %634
  store i64 %635, i64* %RDX.i605, align 8
  store %struct.Memory* %loadMem_419ec6, %struct.Memory** %MEMORY
  %loadMem_419eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 5
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 7
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RDX.i603 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RCX.i602
  %646 = load i64, i64* %RDX.i603
  %647 = add i64 %646, 8
  %648 = load i64, i64* %PC.i601
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC.i601
  %650 = trunc i64 %645 to i32
  %651 = inttoptr i64 %647 to i32*
  %652 = load i32, i32* %651
  %653 = sub i32 %650, %652
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RCX.i602, align 8
  %655 = icmp ult i32 %650, %652
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %656, i8* %657, align 1
  %658 = and i32 %653, 255
  %659 = call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %662, i8* %663, align 1
  %664 = xor i32 %652, %650
  %665 = xor i32 %664, %653
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %668, i8* %669, align 1
  %670 = icmp eq i32 %653, 0
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %671, i8* %672, align 1
  %673 = lshr i32 %653, 31
  %674 = trunc i32 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %674, i8* %675, align 1
  %676 = lshr i32 %650, 31
  %677 = lshr i32 %652, 31
  %678 = xor i32 %677, %676
  %679 = xor i32 %673, %676
  %680 = add i32 %679, %678
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %682, i8* %683, align 1
  store %struct.Memory* %loadMem_419eca, %struct.Memory** %MEMORY
  %loadMem_419ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 5
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %ECX.i599 = bitcast %union.anon* %689 to i32*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 7
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RDX.i600 = bitcast %union.anon* %692 to i64*
  %693 = load i32, i32* %ECX.i599
  %694 = zext i32 %693 to i64
  %695 = load i64, i64* %PC.i598
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i598
  %697 = shl i64 %694, 32
  %698 = ashr exact i64 %697, 32
  store i64 %698, i64* %RDX.i600, align 8
  store %struct.Memory* %loadMem_419ecd, %struct.Memory** %MEMORY
  %loadMem_419ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 1
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 5
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 7
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %RAX.i595
  %712 = load i64, i64* %RDX.i597
  %713 = mul i64 %712, 4
  %714 = add i64 %713, %711
  %715 = load i64, i64* %PC.i594
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC.i594
  %717 = inttoptr i64 %714 to i32*
  %718 = load i32, i32* %717
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RCX.i596, align 8
  store %struct.Memory* %loadMem_419ed0, %struct.Memory** %MEMORY
  %loadMem_419ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 5
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %ECX.i592 = bitcast %union.anon* %725 to i32*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 15
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RBP.i593
  %730 = sub i64 %729, 84
  %731 = load i32, i32* %ECX.i592
  %732 = zext i32 %731 to i64
  %733 = load i64, i64* %PC.i591
  %734 = add i64 %733, 3
  store i64 %734, i64* %PC.i591
  %735 = inttoptr i64 %730 to i32*
  store i32 %731, i32* %735
  store %struct.Memory* %loadMem_419ed3, %struct.Memory** %MEMORY
  %loadMem_419ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i590
  %746 = sub i64 %745, 64
  %747 = load i64, i64* %PC.i588
  %748 = add i64 %747, 3
  store i64 %748, i64* %PC.i588
  %749 = inttoptr i64 %746 to i32*
  %750 = load i32, i32* %749
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_419ed6, %struct.Memory** %MEMORY
  %loadMem_419ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 5
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %ECX.i586 = bitcast %union.anon* %757 to i32*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 15
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RBP.i587
  %762 = sub i64 %761, 68
  %763 = load i32, i32* %ECX.i586
  %764 = zext i32 %763 to i64
  %765 = load i64, i64* %PC.i585
  %766 = add i64 %765, 3
  store i64 %766, i64* %PC.i585
  %767 = inttoptr i64 %762 to i32*
  store i32 %763, i32* %767
  store %struct.Memory* %loadMem_419ed9, %struct.Memory** %MEMORY
  br label %block_.L_419edc

block_.L_419edc:                                  ; preds = %block_419ebc, %block_419e9c
  %loadMem_419edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 33
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %770 to i64*
  %771 = load i64, i64* %PC.i584
  %772 = add i64 %771, 5
  %773 = load i64, i64* %PC.i584
  %774 = add i64 %773, 5
  store i64 %774, i64* %PC.i584
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %772, i64* %775, align 8
  store %struct.Memory* %loadMem_419edc, %struct.Memory** %MEMORY
  br label %block_.L_419ee1

block_.L_419ee1:                                  ; preds = %block_.L_419edc
  %loadMem_419ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 1
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RBP.i583
  %786 = sub i64 %785, 64
  %787 = load i64, i64* %PC.i581
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC.i581
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_419ee1, %struct.Memory** %MEMORY
  %loadMem_419ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RAX.i580
  %799 = load i64, i64* %PC.i579
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i579
  %801 = trunc i64 %798 to i32
  %802 = add i32 1, %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i580, align 8
  %804 = icmp ult i32 %802, %801
  %805 = icmp ult i32 %802, 1
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %807, i8* %808, align 1
  %809 = and i32 %802, 255
  %810 = call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %813, i8* %814, align 1
  %815 = xor i64 1, %798
  %816 = trunc i64 %815 to i32
  %817 = xor i32 %816, %802
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %820, i8* %821, align 1
  %822 = icmp eq i32 %802, 0
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %823, i8* %824, align 1
  %825 = lshr i32 %802, 31
  %826 = trunc i32 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1
  %828 = lshr i32 %801, 31
  %829 = xor i32 %825, %828
  %830 = add i32 %829, %825
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %832, i8* %833, align 1
  store %struct.Memory* %loadMem_419ee4, %struct.Memory** %MEMORY
  %loadMem_419ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %839 to i32*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 15
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RBP.i578
  %844 = sub i64 %843, 64
  %845 = load i32, i32* %EAX.i577
  %846 = zext i32 %845 to i64
  %847 = load i64, i64* %PC.i576
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC.i576
  %849 = inttoptr i64 %844 to i32*
  store i32 %845, i32* %849
  store %struct.Memory* %loadMem_419ee7, %struct.Memory** %MEMORY
  %loadMem_419eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %PC.i575
  %854 = add i64 %853, -94
  %855 = load i64, i64* %PC.i575
  %856 = add i64 %855, 5
  store i64 %856, i64* %PC.i575
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %854, i64* %857, align 8
  store %struct.Memory* %loadMem_419eea, %struct.Memory** %MEMORY
  br label %block_.L_419e8c

block_.L_419eef:                                  ; preds = %block_.L_419e8c
  %loadMem_419eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %PC.i574
  %862 = add i64 %861, 5
  %863 = load i64, i64* %PC.i574
  %864 = add i64 %863, 5
  store i64 %864, i64* %PC.i574
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %862, i64* %865, align 8
  store %struct.Memory* %loadMem_419eef, %struct.Memory** %MEMORY
  br label %block_.L_419ef4

block_.L_419ef4:                                  ; preds = %block_.L_419eef, %entry
  %loadMem_419ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 15
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %872, i64 0, i64 0
  %YMM0.i573 = bitcast %union.VectorReg* %873 to %"class.std::bitset"*
  %874 = bitcast %"class.std::bitset"* %YMM0.i573 to i8*
  %875 = load i64, i64* %RBP.i572
  %876 = sub i64 %875, 24
  %877 = load i64, i64* %PC.i571
  %878 = add i64 %877, 5
  store i64 %878, i64* %PC.i571
  %879 = inttoptr i64 %876 to float*
  %880 = load float, float* %879
  %881 = bitcast i8* %874 to float*
  store float %880, float* %881, align 1
  %882 = getelementptr inbounds i8, i8* %874, i64 4
  %883 = bitcast i8* %882 to float*
  store float 0.000000e+00, float* %883, align 1
  %884 = getelementptr inbounds i8, i8* %874, i64 8
  %885 = bitcast i8* %884 to float*
  store float 0.000000e+00, float* %885, align 1
  %886 = getelementptr inbounds i8, i8* %874, i64 12
  %887 = bitcast i8* %886 to float*
  store float 0.000000e+00, float* %887, align 1
  store %struct.Memory* %loadMem_419ef4, %struct.Memory** %MEMORY
  %loadMem_419ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 15
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RBP.i570
  %898 = sub i64 %897, 16
  %899 = load i64, i64* %PC.i568
  %900 = add i64 %899, 4
  store i64 %900, i64* %PC.i568
  %901 = inttoptr i64 %898 to i64*
  %902 = load i64, i64* %901
  store i64 %902, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_419ef9, %struct.Memory** %MEMORY
  %loadMem_419efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 1
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %910 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %909, i64 0, i64 1
  %YMM1.i567 = bitcast %union.VectorReg* %910 to %"class.std::bitset"*
  %911 = bitcast %"class.std::bitset"* %YMM1.i567 to i8*
  %912 = load i64, i64* %RAX.i566
  %913 = add i64 %912, 16
  %914 = load i64, i64* %PC.i565
  %915 = add i64 %914, 5
  store i64 %915, i64* %PC.i565
  %916 = bitcast i8* %911 to <2 x i32>*
  %917 = load <2 x i32>, <2 x i32>* %916, align 1
  %918 = getelementptr inbounds i8, i8* %911, i64 8
  %919 = bitcast i8* %918 to <2 x i32>*
  %920 = load <2 x i32>, <2 x i32>* %919, align 1
  %921 = inttoptr i64 %913 to i32*
  %922 = load i32, i32* %921
  %923 = sitofp i32 %922 to float
  %924 = bitcast i8* %911 to float*
  store float %923, float* %924, align 1
  %925 = extractelement <2 x i32> %917, i32 1
  %926 = getelementptr inbounds i8, i8* %911, i64 4
  %927 = bitcast i8* %926 to i32*
  store i32 %925, i32* %927, align 1
  %928 = extractelement <2 x i32> %920, i32 0
  %929 = bitcast i8* %918 to i32*
  store i32 %928, i32* %929, align 1
  %930 = extractelement <2 x i32> %920, i32 1
  %931 = getelementptr inbounds i8, i8* %911, i64 12
  %932 = bitcast i8* %931 to i32*
  store i32 %930, i32* %932, align 1
  store %struct.Memory* %loadMem_419efd, %struct.Memory** %MEMORY
  %loadMem_419f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %936, i64 0, i64 0
  %XMM0.i560 = bitcast %union.VectorReg* %937 to %union.vec128_t*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %938, i64 0, i64 1
  %XMM1.i561 = bitcast %union.VectorReg* %939 to %union.vec128_t*
  %940 = bitcast %union.vec128_t* %XMM1.i561 to i8*
  %941 = bitcast %union.vec128_t* %XMM0.i560 to i8*
  %942 = load i64, i64* %PC.i559
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i559
  %944 = bitcast i8* %940 to <2 x float>*
  %945 = load <2 x float>, <2 x float>* %944, align 1
  %946 = extractelement <2 x float> %945, i32 0
  %947 = bitcast i8* %941 to <2 x float>*
  %948 = load <2 x float>, <2 x float>* %947, align 1
  %949 = extractelement <2 x float> %948, i32 0
  %950 = fcmp uno float %946, %949
  br i1 %950, label %951, label %963

; <label>:951:                                    ; preds = %block_.L_419ef4
  %952 = fadd float %946, %949
  %953 = bitcast float %952 to i32
  %954 = and i32 %953, 2143289344
  %955 = icmp eq i32 %954, 2139095040
  %956 = and i32 %953, 4194303
  %957 = icmp ne i32 %956, 0
  %958 = and i1 %955, %957
  br i1 %958, label %959, label %969

; <label>:959:                                    ; preds = %951
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %961 = load i64, i64* %960, align 8
  %962 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %961, %struct.Memory* %loadMem_419f02)
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:963:                                    ; preds = %block_.L_419ef4
  %964 = fcmp ogt float %946, %949
  br i1 %964, label %969, label %965

; <label>:965:                                    ; preds = %963
  %966 = fcmp olt float %946, %949
  br i1 %966, label %969, label %967

; <label>:967:                                    ; preds = %965
  %968 = fcmp oeq float %946, %949
  br i1 %968, label %969, label %976

; <label>:969:                                    ; preds = %967, %965, %963, %951
  %970 = phi i8 [ 0, %963 ], [ 0, %965 ], [ 1, %967 ], [ 1, %951 ]
  %971 = phi i8 [ 0, %963 ], [ 0, %965 ], [ 0, %967 ], [ 1, %951 ]
  %972 = phi i8 [ 0, %963 ], [ 1, %965 ], [ 0, %967 ], [ 1, %951 ]
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %970, i8* %973, align 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %971, i8* %974, align 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %972, i8* %975, align 1
  br label %976

; <label>:976:                                    ; preds = %969, %967
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %977, align 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %978, align 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %979, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %959, %976
  %980 = phi %struct.Memory* [ %962, %959 ], [ %loadMem_419f02, %976 ]
  store %struct.Memory* %980, %struct.Memory** %MEMORY
  %loadMem_419f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %PC.i558
  %985 = add i64 %984, 21
  %986 = load i64, i64* %PC.i558
  %987 = add i64 %986, 6
  %988 = load i64, i64* %PC.i558
  %989 = add i64 %988, 6
  store i64 %989, i64* %PC.i558
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %991 = load i8, i8* %990, align 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %993 = load i8, i8* %992, align 1
  %994 = or i8 %993, %991
  %995 = icmp ne i8 %994, 0
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %BRANCH_TAKEN, align 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %998 = select i1 %995, i64 %985, i64 %987
  store i64 %998, i64* %997, align 8
  store %struct.Memory* %loadMem_419f05, %struct.Memory** %MEMORY
  %loadBr_419f05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f05 = icmp eq i8 %loadBr_419f05, 1
  br i1 %cmpBr_419f05, label %block_.L_419f1a, label %block_419f0b

block_419f0b:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_419f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 15
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1005, i64 0, i64 0
  %YMM0.i557 = bitcast %union.VectorReg* %1006 to %"class.std::bitset"*
  %1007 = bitcast %"class.std::bitset"* %YMM0.i557 to i8*
  %1008 = load i64, i64* %RBP.i556
  %1009 = sub i64 %1008, 24
  %1010 = load i64, i64* %PC.i555
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %PC.i555
  %1012 = inttoptr i64 %1009 to float*
  %1013 = load float, float* %1012
  %1014 = bitcast i8* %1007 to float*
  store float %1013, float* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1007, i64 4
  %1016 = bitcast i8* %1015 to float*
  store float 0.000000e+00, float* %1016, align 1
  %1017 = getelementptr inbounds i8, i8* %1007, i64 8
  %1018 = bitcast i8* %1017 to float*
  store float 0.000000e+00, float* %1018, align 1
  %1019 = getelementptr inbounds i8, i8* %1007, i64 12
  %1020 = bitcast i8* %1019 to float*
  store float 0.000000e+00, float* %1020, align 1
  store %struct.Memory* %loadMem_419f0b, %struct.Memory** %MEMORY
  %loadMem_419f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1028 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1027, i64 0, i64 0
  %XMM0.i554 = bitcast %union.VectorReg* %1028 to %union.vec128_t*
  %1029 = load i64, i64* %RBP.i553
  %1030 = sub i64 %1029, 100
  %1031 = bitcast %union.vec128_t* %XMM0.i554 to i8*
  %1032 = load i64, i64* %PC.i552
  %1033 = add i64 %1032, 5
  store i64 %1033, i64* %PC.i552
  %1034 = bitcast i8* %1031 to <2 x float>*
  %1035 = load <2 x float>, <2 x float>* %1034, align 1
  %1036 = extractelement <2 x float> %1035, i32 0
  %1037 = inttoptr i64 %1030 to float*
  store float %1036, float* %1037
  store %struct.Memory* %loadMem_419f10, %struct.Memory** %MEMORY
  %loadMem_419f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1040 to i64*
  %1041 = load i64, i64* %PC.i551
  %1042 = add i64 %1041, 19
  %1043 = load i64, i64* %PC.i551
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %PC.i551
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1042, i64* %1045, align 8
  store %struct.Memory* %loadMem_419f15, %struct.Memory** %MEMORY
  br label %block_.L_419f28

block_.L_419f1a:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_419f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RBP.i550
  %1056 = sub i64 %1055, 16
  %1057 = load i64, i64* %PC.i548
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %PC.i548
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059
  store i64 %1060, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_419f1a, %struct.Memory** %MEMORY
  %loadMem_419f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1067, i64 0, i64 0
  %YMM0.i547 = bitcast %union.VectorReg* %1068 to %"class.std::bitset"*
  %1069 = bitcast %"class.std::bitset"* %YMM0.i547 to i8*
  %1070 = load i64, i64* %RAX.i546
  %1071 = add i64 %1070, 16
  %1072 = load i64, i64* %PC.i545
  %1073 = add i64 %1072, 5
  store i64 %1073, i64* %PC.i545
  %1074 = bitcast i8* %1069 to <2 x i32>*
  %1075 = load <2 x i32>, <2 x i32>* %1074, align 1
  %1076 = getelementptr inbounds i8, i8* %1069, i64 8
  %1077 = bitcast i8* %1076 to <2 x i32>*
  %1078 = load <2 x i32>, <2 x i32>* %1077, align 1
  %1079 = inttoptr i64 %1071 to i32*
  %1080 = load i32, i32* %1079
  %1081 = sitofp i32 %1080 to float
  %1082 = bitcast i8* %1069 to float*
  store float %1081, float* %1082, align 1
  %1083 = extractelement <2 x i32> %1075, i32 1
  %1084 = getelementptr inbounds i8, i8* %1069, i64 4
  %1085 = bitcast i8* %1084 to i32*
  store i32 %1083, i32* %1085, align 1
  %1086 = extractelement <2 x i32> %1078, i32 0
  %1087 = bitcast i8* %1076 to i32*
  store i32 %1086, i32* %1087, align 1
  %1088 = extractelement <2 x i32> %1078, i32 1
  %1089 = getelementptr inbounds i8, i8* %1069, i64 12
  %1090 = bitcast i8* %1089 to i32*
  store i32 %1088, i32* %1090, align 1
  store %struct.Memory* %loadMem_419f1e, %struct.Memory** %MEMORY
  %loadMem_419f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1097, i64 0, i64 0
  %XMM0.i544 = bitcast %union.VectorReg* %1098 to %union.vec128_t*
  %1099 = load i64, i64* %RBP.i543
  %1100 = sub i64 %1099, 100
  %1101 = bitcast %union.vec128_t* %XMM0.i544 to i8*
  %1102 = load i64, i64* %PC.i542
  %1103 = add i64 %1102, 5
  store i64 %1103, i64* %PC.i542
  %1104 = bitcast i8* %1101 to <2 x float>*
  %1105 = load <2 x float>, <2 x float>* %1104, align 1
  %1106 = extractelement <2 x float> %1105, i32 0
  %1107 = inttoptr i64 %1100 to float*
  store float %1106, float* %1107
  store %struct.Memory* %loadMem_419f23, %struct.Memory** %MEMORY
  br label %block_.L_419f28

block_.L_419f28:                                  ; preds = %block_.L_419f1a, %block_419f0b
  %loadMem_419f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 15
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1114, i64 0, i64 0
  %YMM0.i541 = bitcast %union.VectorReg* %1115 to %"class.std::bitset"*
  %1116 = bitcast %"class.std::bitset"* %YMM0.i541 to i8*
  %1117 = load i64, i64* %RBP.i540
  %1118 = sub i64 %1117, 100
  %1119 = load i64, i64* %PC.i539
  %1120 = add i64 %1119, 5
  store i64 %1120, i64* %PC.i539
  %1121 = inttoptr i64 %1118 to float*
  %1122 = load float, float* %1121
  %1123 = bitcast i8* %1116 to float*
  store float %1122, float* %1123, align 1
  %1124 = getelementptr inbounds i8, i8* %1116, i64 4
  %1125 = bitcast i8* %1124 to float*
  store float 0.000000e+00, float* %1125, align 1
  %1126 = getelementptr inbounds i8, i8* %1116, i64 8
  %1127 = bitcast i8* %1126 to float*
  store float 0.000000e+00, float* %1127, align 1
  %1128 = getelementptr inbounds i8, i8* %1116, i64 12
  %1129 = bitcast i8* %1128 to float*
  store float 0.000000e+00, float* %1129, align 1
  store %struct.Memory* %loadMem_419f28, %struct.Memory** %MEMORY
  %loadMem_419f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 1
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1136, i64 0, i64 0
  %XMM0.i538 = bitcast %union.VectorReg* %1137 to %union.vec128_t*
  %1138 = bitcast %union.vec128_t* %XMM0.i538 to i8*
  %1139 = load i64, i64* %PC.i536
  %1140 = add i64 %1139, 4
  store i64 %1140, i64* %PC.i536
  %1141 = bitcast i8* %1138 to <2 x float>*
  %1142 = load <2 x float>, <2 x float>* %1141, align 1
  %1143 = extractelement <2 x float> %1142, i32 0
  %1144 = call float @llvm.trunc.f32(float %1143)
  %1145 = call float @llvm.fabs.f32(float %1144)
  %1146 = fcmp ogt float %1145, 0x41E0000000000000
  %1147 = fptosi float %1144 to i32
  %1148 = zext i32 %1147 to i64
  %1149 = select i1 %1146, i64 2147483648, i64 %1148
  store i64 %1149, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_419f2d, %struct.Memory** %MEMORY
  %loadMem_419f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %EAX.i534 = bitcast %union.anon* %1155 to i32*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 15
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RBP.i535
  %1160 = sub i64 %1159, 72
  %1161 = load i32, i32* %EAX.i534
  %1162 = zext i32 %1161 to i64
  %1163 = load i64, i64* %PC.i533
  %1164 = add i64 %1163, 3
  store i64 %1164, i64* %PC.i533
  %1165 = inttoptr i64 %1160 to i32*
  store i32 %1161, i32* %1165
  store %struct.Memory* %loadMem_419f31, %struct.Memory** %MEMORY
  %loadMem_419f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 15
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RBP.i532
  %1173 = sub i64 %1172, 80
  %1174 = load i64, i64* %PC.i531
  %1175 = add i64 %1174, 7
  store i64 %1175, i64* %PC.i531
  %1176 = inttoptr i64 %1173 to i32*
  store i32 0, i32* %1176
  store %struct.Memory* %loadMem_419f34, %struct.Memory** %MEMORY
  br label %block_.L_419f3b

block_.L_419f3b:                                  ; preds = %block_.L_41a247, %block_.L_419f28
  %loadMem_419f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 15
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RBP.i530
  %1184 = sub i64 %1183, 80
  %1185 = load i64, i64* %PC.i529
  %1186 = add i64 %1185, 4
  store i64 %1186, i64* %PC.i529
  %1187 = inttoptr i64 %1184 to i32*
  %1188 = load i32, i32* %1187
  %1189 = sub i32 %1188, 100
  %1190 = icmp ult i32 %1188, 100
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1191, i8* %1192, align 1
  %1193 = and i32 %1189, 255
  %1194 = call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1197, i8* %1198, align 1
  %1199 = xor i32 %1188, 100
  %1200 = xor i32 %1199, %1189
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1203, i8* %1204, align 1
  %1205 = icmp eq i32 %1189, 0
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1206, i8* %1207, align 1
  %1208 = lshr i32 %1189, 31
  %1209 = trunc i32 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1209, i8* %1210, align 1
  %1211 = lshr i32 %1188, 31
  %1212 = xor i32 %1208, %1211
  %1213 = add i32 %1212, %1211
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1215, i8* %1216, align 1
  store %struct.Memory* %loadMem_419f3b, %struct.Memory** %MEMORY
  %loadMem_419f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %PC.i528
  %1221 = add i64 %1220, 796
  %1222 = load i64, i64* %PC.i528
  %1223 = add i64 %1222, 6
  %1224 = load i64, i64* %PC.i528
  %1225 = add i64 %1224, 6
  store i64 %1225, i64* %PC.i528
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1227 = load i8, i8* %1226, align 1
  %1228 = icmp ne i8 %1227, 0
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1230 = load i8, i8* %1229, align 1
  %1231 = icmp ne i8 %1230, 0
  %1232 = xor i1 %1228, %1231
  %1233 = xor i1 %1232, true
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %BRANCH_TAKEN, align 1
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1236 = select i1 %1232, i64 %1223, i64 %1221
  store i64 %1236, i64* %1235, align 8
  store %struct.Memory* %loadMem_419f3f, %struct.Memory** %MEMORY
  %loadBr_419f3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f3f = icmp eq i8 %loadBr_419f3f, 1
  br i1 %cmpBr_419f3f, label %block_.L_41a25b, label %block_419f45

block_419f45:                                     ; preds = %block_.L_419f3b
  %loadMem_419f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i527
  %1244 = sub i64 %1243, 32
  %1245 = load i64, i64* %PC.i526
  %1246 = add i64 %1245, 8
  store i64 %1246, i64* %PC.i526
  %1247 = inttoptr i64 %1244 to i64*
  store i64 0, i64* %1247
  store %struct.Memory* %loadMem_419f45, %struct.Memory** %MEMORY
  %loadMem_419f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 15
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1253 to i64*
  %1254 = load i64, i64* %RBP.i525
  %1255 = sub i64 %1254, 40
  %1256 = load i64, i64* %PC.i524
  %1257 = add i64 %1256, 8
  store i64 %1257, i64* %PC.i524
  %1258 = inttoptr i64 %1255 to i64*
  store i64 0, i64* %1258
  store %struct.Memory* %loadMem_419f4d, %struct.Memory** %MEMORY
  %loadMem_419f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 15
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %RBP.i523
  %1269 = sub i64 %1268, 72
  %1270 = load i64, i64* %PC.i521
  %1271 = add i64 %1270, 3
  store i64 %1271, i64* %PC.i521
  %1272 = inttoptr i64 %1269 to i32*
  %1273 = load i32, i32* %1272
  %1274 = zext i32 %1273 to i64
  store i64 %1274, i64* %RAX.i522, align 8
  store %struct.Memory* %loadMem_419f55, %struct.Memory** %MEMORY
  %loadMem_419f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 1
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 15
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %1283 to i64*
  %1284 = load i64, i64* %RAX.i519
  %1285 = load i64, i64* %RBP.i520
  %1286 = sub i64 %1285, 68
  %1287 = load i64, i64* %PC.i518
  %1288 = add i64 %1287, 3
  store i64 %1288, i64* %PC.i518
  %1289 = trunc i64 %1284 to i32
  %1290 = inttoptr i64 %1286 to i32*
  %1291 = load i32, i32* %1290
  %1292 = sub i32 %1289, %1291
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i519, align 8
  %1294 = icmp ult i32 %1289, %1291
  %1295 = zext i1 %1294 to i8
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1295, i8* %1296, align 1
  %1297 = and i32 %1292, 255
  %1298 = call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1301, i8* %1302, align 1
  %1303 = xor i32 %1291, %1289
  %1304 = xor i32 %1303, %1292
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1307, i8* %1308, align 1
  %1309 = icmp eq i32 %1292, 0
  %1310 = zext i1 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1310, i8* %1311, align 1
  %1312 = lshr i32 %1292, 31
  %1313 = trunc i32 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1313, i8* %1314, align 1
  %1315 = lshr i32 %1289, 31
  %1316 = lshr i32 %1291, 31
  %1317 = xor i32 %1316, %1315
  %1318 = xor i32 %1312, %1315
  %1319 = add i32 %1318, %1317
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1321, i8* %1322, align 1
  store %struct.Memory* %loadMem_419f58, %struct.Memory** %MEMORY
  %loadMem_419f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 33
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 1
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RAX.i517
  %1330 = load i64, i64* %PC.i516
  %1331 = add i64 %1330, 3
  store i64 %1331, i64* %PC.i516
  %1332 = trunc i64 %1329 to i32
  %1333 = add i32 1, %1332
  %1334 = zext i32 %1333 to i64
  store i64 %1334, i64* %RAX.i517, align 8
  %1335 = icmp ult i32 %1333, %1332
  %1336 = icmp ult i32 %1333, 1
  %1337 = or i1 %1335, %1336
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1338, i8* %1339, align 1
  %1340 = and i32 %1333, 255
  %1341 = call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1344, i8* %1345, align 1
  %1346 = xor i64 1, %1329
  %1347 = trunc i64 %1346 to i32
  %1348 = xor i32 %1347, %1333
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1351, i8* %1352, align 1
  %1353 = icmp eq i32 %1333, 0
  %1354 = zext i1 %1353 to i8
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1354, i8* %1355, align 1
  %1356 = lshr i32 %1333, 31
  %1357 = trunc i32 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1357, i8* %1358, align 1
  %1359 = lshr i32 %1332, 31
  %1360 = xor i32 %1356, %1359
  %1361 = add i32 %1360, %1356
  %1362 = icmp eq i32 %1361, 2
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1363, i8* %1364, align 1
  store %struct.Memory* %loadMem_419f5b, %struct.Memory** %MEMORY
  %loadMem_419f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 1
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %EAX.i514 = bitcast %union.anon* %1370 to i32*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i515
  %1375 = sub i64 %1374, 52
  %1376 = load i32, i32* %EAX.i514
  %1377 = zext i32 %1376 to i64
  %1378 = load i64, i64* %PC.i513
  %1379 = add i64 %1378, 3
  store i64 %1379, i64* %PC.i513
  %1380 = inttoptr i64 %1375 to i32*
  store i32 %1376, i32* %1380
  store %struct.Memory* %loadMem_419f5e, %struct.Memory** %MEMORY
  %loadMem_419f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i512
  %1388 = sub i64 %1387, 52
  %1389 = load i64, i64* %PC.i511
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %PC.i511
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = sub i32 %1392, 5
  %1394 = icmp ult i32 %1392, 5
  %1395 = zext i1 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1395, i8* %1396, align 1
  %1397 = and i32 %1393, 255
  %1398 = call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1401, i8* %1402, align 1
  %1403 = xor i32 %1392, 5
  %1404 = xor i32 %1403, %1393
  %1405 = lshr i32 %1404, 4
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1407, i8* %1408, align 1
  %1409 = icmp eq i32 %1393, 0
  %1410 = zext i1 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1410, i8* %1411, align 1
  %1412 = lshr i32 %1393, 31
  %1413 = trunc i32 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1413, i8* %1414, align 1
  %1415 = lshr i32 %1392, 31
  %1416 = xor i32 %1412, %1415
  %1417 = add i32 %1416, %1415
  %1418 = icmp eq i32 %1417, 2
  %1419 = zext i1 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1419, i8* %1420, align 1
  store %struct.Memory* %loadMem_419f61, %struct.Memory** %MEMORY
  %loadMem_419f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %PC.i510
  %1425 = add i64 %1424, 11
  %1426 = load i64, i64* %PC.i510
  %1427 = add i64 %1426, 6
  %1428 = load i64, i64* %PC.i510
  %1429 = add i64 %1428, 6
  store i64 %1429, i64* %PC.i510
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1431 = load i8, i8* %1430, align 1
  %1432 = icmp ne i8 %1431, 0
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1434 = load i8, i8* %1433, align 1
  %1435 = icmp ne i8 %1434, 0
  %1436 = xor i1 %1432, %1435
  %1437 = xor i1 %1436, true
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %BRANCH_TAKEN, align 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1440 = select i1 %1436, i64 %1427, i64 %1425
  store i64 %1440, i64* %1439, align 8
  store %struct.Memory* %loadMem_419f65, %struct.Memory** %MEMORY
  %loadBr_419f65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f65 = icmp eq i8 %loadBr_419f65, 1
  br i1 %cmpBr_419f65, label %block_.L_419f70, label %block_419f6b

block_419f6b:                                     ; preds = %block_419f45
  %loadMem_419f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %PC.i509
  %1445 = add i64 %1444, 798
  %1446 = load i64, i64* %PC.i509
  %1447 = add i64 %1446, 5
  store i64 %1447, i64* %PC.i509
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1445, i64* %1448, align 8
  store %struct.Memory* %loadMem_419f6b, %struct.Memory** %MEMORY
  br label %block_.L_41a289

block_.L_419f70:                                  ; preds = %block_419f45
  %loadMem_419f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 11
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RDI.i508 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %PC.i507
  %1456 = add i64 %1455, 10
  store i64 %1456, i64* %PC.i507
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i508, align 8
  store %struct.Memory* %loadMem_419f70, %struct.Memory** %MEMORY
  %loadMem_419f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 9
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RSI.i506 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %PC.i505
  %1464 = add i64 %1463, 5
  store i64 %1464, i64* %PC.i505
  store i64 600, i64* %RSI.i506, align 8
  store %struct.Memory* %loadMem_419f7a, %struct.Memory** %MEMORY
  %loadMem_419f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 1
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %1473 to i64*
  %1474 = load i64, i64* %RBP.i504
  %1475 = sub i64 %1474, 52
  %1476 = load i64, i64* %PC.i502
  %1477 = add i64 %1476, 4
  store i64 %1477, i64* %PC.i502
  %1478 = inttoptr i64 %1475 to i32*
  %1479 = load i32, i32* %1478
  %1480 = sext i32 %1479 to i64
  store i64 %1480, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_419f7f, %struct.Memory** %MEMORY
  %loadMem_419f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1486 to i64*
  %1487 = load i64, i64* %RAX.i501
  %1488 = load i64, i64* %PC.i500
  %1489 = add i64 %1488, 4
  store i64 %1489, i64* %PC.i500
  %1490 = shl i64 %1487, 1
  %1491 = icmp slt i64 %1490, 0
  %1492 = shl i64 %1490, 1
  store i64 %1492, i64* %RAX.i501, align 8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1494 = zext i1 %1491 to i8
  store i8 %1494, i8* %1493, align 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1496 = trunc i64 %1492 to i32
  %1497 = and i32 %1496, 254
  %1498 = call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %1495, align 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1502, align 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1504 = icmp eq i64 %1492, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %1503, align 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1507 = lshr i64 %1492, 63
  %1508 = trunc i64 %1507 to i8
  store i8 %1508, i8* %1506, align 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1509, align 1
  store %struct.Memory* %loadMem_419f83, %struct.Memory** %MEMORY
  %loadMem_419f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 1
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 7
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RAX.i498
  %1520 = load i64, i64* %PC.i497
  %1521 = add i64 %1520, 3
  store i64 %1521, i64* %PC.i497
  store i64 %1519, i64* %RDX.i499, align 8
  store %struct.Memory* %loadMem_419f87, %struct.Memory** %MEMORY
  %loadMem1_419f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 33
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %PC.i496
  %1526 = add i64 %1525, 180438
  %1527 = load i64, i64* %PC.i496
  %1528 = add i64 %1527, 5
  %1529 = load i64, i64* %PC.i496
  %1530 = add i64 %1529, 5
  store i64 %1530, i64* %PC.i496
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1532 = load i64, i64* %1531, align 8
  %1533 = add i64 %1532, -8
  %1534 = inttoptr i64 %1533 to i64*
  store i64 %1528, i64* %1534
  store i64 %1533, i64* %1531, align 8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1526, i64* %1535, align 8
  store %struct.Memory* %loadMem1_419f8a, %struct.Memory** %MEMORY
  %loadMem2_419f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419f8a = load i64, i64* %3
  %call2_419f8a = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_419f8a, %struct.Memory* %loadMem2_419f8a)
  store %struct.Memory* %call2_419f8a, %struct.Memory** %MEMORY
  %loadMem_419f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 11
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RDI.i495 = bitcast %union.anon* %1541 to i64*
  %1542 = load i64, i64* %PC.i494
  %1543 = add i64 %1542, 10
  store i64 %1543, i64* %PC.i494
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i495, align 8
  store %struct.Memory* %loadMem_419f8f, %struct.Memory** %MEMORY
  %loadMem_419f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 9
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RSI.i493 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %PC.i492
  %1551 = add i64 %1550, 5
  store i64 %1551, i64* %PC.i492
  store i64 601, i64* %RSI.i493, align 8
  store %struct.Memory* %loadMem_419f99, %struct.Memory** %MEMORY
  %loadMem_419f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RBP.i491
  %1562 = sub i64 %1561, 32
  %1563 = load i64, i64* %RAX.i490
  %1564 = load i64, i64* %PC.i489
  %1565 = add i64 %1564, 4
  store i64 %1565, i64* %PC.i489
  %1566 = inttoptr i64 %1562 to i64*
  store i64 %1563, i64* %1566
  store %struct.Memory* %loadMem_419f9e, %struct.Memory** %MEMORY
  %loadMem_419fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 1
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 15
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %RBP.i488
  %1577 = sub i64 %1576, 52
  %1578 = load i64, i64* %PC.i486
  %1579 = add i64 %1578, 4
  store i64 %1579, i64* %PC.i486
  %1580 = inttoptr i64 %1577 to i32*
  %1581 = load i32, i32* %1580
  %1582 = sext i32 %1581 to i64
  store i64 %1582, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_419fa2, %struct.Memory** %MEMORY
  %loadMem_419fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 1
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %1588 to i64*
  %1589 = load i64, i64* %RAX.i485
  %1590 = load i64, i64* %PC.i484
  %1591 = add i64 %1590, 4
  store i64 %1591, i64* %PC.i484
  %1592 = shl i64 %1589, 1
  %1593 = icmp slt i64 %1592, 0
  %1594 = shl i64 %1592, 1
  store i64 %1594, i64* %RAX.i485, align 8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1596 = zext i1 %1593 to i8
  store i8 %1596, i8* %1595, align 1
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1598 = trunc i64 %1594 to i32
  %1599 = and i32 %1598, 254
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %1597, align 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1604, align 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1606 = icmp eq i64 %1594, 0
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %1605, align 1
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1609 = lshr i64 %1594, 63
  %1610 = trunc i64 %1609 to i8
  store i8 %1610, i8* %1608, align 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1611, align 1
  store %struct.Memory* %loadMem_419fa6, %struct.Memory** %MEMORY
  %loadMem_419faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 1
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 7
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RAX.i482
  %1622 = load i64, i64* %PC.i481
  %1623 = add i64 %1622, 3
  store i64 %1623, i64* %PC.i481
  store i64 %1621, i64* %RDX.i483, align 8
  store %struct.Memory* %loadMem_419faa, %struct.Memory** %MEMORY
  %loadMem1_419fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %PC.i480
  %1628 = add i64 %1627, 180403
  %1629 = load i64, i64* %PC.i480
  %1630 = add i64 %1629, 5
  %1631 = load i64, i64* %PC.i480
  %1632 = add i64 %1631, 5
  store i64 %1632, i64* %PC.i480
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1634 = load i64, i64* %1633, align 8
  %1635 = add i64 %1634, -8
  %1636 = inttoptr i64 %1635 to i64*
  store i64 %1630, i64* %1636
  store i64 %1635, i64* %1633, align 8
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1628, i64* %1637, align 8
  store %struct.Memory* %loadMem1_419fad, %struct.Memory** %MEMORY
  %loadMem2_419fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419fad = load i64, i64* %3
  %call2_419fad = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_419fad, %struct.Memory* %loadMem2_419fad)
  store %struct.Memory* %call2_419fad, %struct.Memory** %MEMORY
  %loadMem_419fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 15
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RBP.i479
  %1648 = sub i64 %1647, 40
  %1649 = load i64, i64* %RAX.i478
  %1650 = load i64, i64* %PC.i477
  %1651 = add i64 %1650, 4
  store i64 %1651, i64* %PC.i477
  %1652 = inttoptr i64 %1648 to i64*
  store i64 %1649, i64* %1652
  store %struct.Memory* %loadMem_419fb2, %struct.Memory** %MEMORY
  %loadMem_419fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RBP.i476
  %1660 = sub i64 %1659, 44
  %1661 = load i64, i64* %PC.i475
  %1662 = add i64 %1661, 7
  store i64 %1662, i64* %PC.i475
  %1663 = inttoptr i64 %1660 to i32*
  store i32 0, i32* %1663
  store %struct.Memory* %loadMem_419fb6, %struct.Memory** %MEMORY
  %loadMem_419fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 9
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RSI.i473 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 15
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RBP.i474
  %1674 = sub i64 %1673, 68
  %1675 = load i64, i64* %PC.i472
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %PC.i472
  %1677 = inttoptr i64 %1674 to i32*
  %1678 = load i32, i32* %1677
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RSI.i473, align 8
  store %struct.Memory* %loadMem_419fbd, %struct.Memory** %MEMORY
  %loadMem_419fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 9
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %ESI.i470 = bitcast %union.anon* %1685 to i32*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i471
  %1690 = sub i64 %1689, 64
  %1691 = load i32, i32* %ESI.i470
  %1692 = zext i32 %1691 to i64
  %1693 = load i64, i64* %PC.i469
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %PC.i469
  %1695 = inttoptr i64 %1690 to i32*
  store i32 %1691, i32* %1695
  store %struct.Memory* %loadMem_419fc0, %struct.Memory** %MEMORY
  br label %block_.L_419fc3

block_.L_419fc3:                                  ; preds = %block_419fcf, %block_.L_419f70
  %loadMem_419fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 1
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RBP.i468
  %1706 = sub i64 %1705, 64
  %1707 = load i64, i64* %PC.i466
  %1708 = add i64 %1707, 3
  store i64 %1708, i64* %PC.i466
  %1709 = inttoptr i64 %1706 to i32*
  %1710 = load i32, i32* %1709
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_419fc3, %struct.Memory** %MEMORY
  %loadMem_419fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 1
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %EAX.i464 = bitcast %union.anon* %1717 to i32*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 15
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %1720 to i64*
  %1721 = load i32, i32* %EAX.i464
  %1722 = zext i32 %1721 to i64
  %1723 = load i64, i64* %RBP.i465
  %1724 = sub i64 %1723, 72
  %1725 = load i64, i64* %PC.i463
  %1726 = add i64 %1725, 3
  store i64 %1726, i64* %PC.i463
  %1727 = inttoptr i64 %1724 to i32*
  %1728 = load i32, i32* %1727
  %1729 = sub i32 %1721, %1728
  %1730 = icmp ult i32 %1721, %1728
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1731, i8* %1732, align 1
  %1733 = and i32 %1729, 255
  %1734 = call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1737, i8* %1738, align 1
  %1739 = xor i32 %1728, %1721
  %1740 = xor i32 %1739, %1729
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1743, i8* %1744, align 1
  %1745 = icmp eq i32 %1729, 0
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1746, i8* %1747, align 1
  %1748 = lshr i32 %1729, 31
  %1749 = trunc i32 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1749, i8* %1750, align 1
  %1751 = lshr i32 %1721, 31
  %1752 = lshr i32 %1728, 31
  %1753 = xor i32 %1752, %1751
  %1754 = xor i32 %1748, %1751
  %1755 = add i32 %1754, %1753
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1757, i8* %1758, align 1
  store %struct.Memory* %loadMem_419fc6, %struct.Memory** %MEMORY
  %loadMem_419fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %PC.i462
  %1763 = add i64 %1762, 131
  %1764 = load i64, i64* %PC.i462
  %1765 = add i64 %1764, 6
  %1766 = load i64, i64* %PC.i462
  %1767 = add i64 %1766, 6
  store i64 %1767, i64* %PC.i462
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1769 = load i8, i8* %1768, align 1
  %1770 = icmp eq i8 %1769, 0
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1772 = load i8, i8* %1771, align 1
  %1773 = icmp ne i8 %1772, 0
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1775 = load i8, i8* %1774, align 1
  %1776 = icmp ne i8 %1775, 0
  %1777 = xor i1 %1773, %1776
  %1778 = xor i1 %1777, true
  %1779 = and i1 %1770, %1778
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %BRANCH_TAKEN, align 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1782 = select i1 %1779, i64 %1763, i64 %1765
  store i64 %1782, i64* %1781, align 8
  store %struct.Memory* %loadMem_419fc9, %struct.Memory** %MEMORY
  %loadBr_419fc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419fc9 = icmp eq i8 %loadBr_419fc9, 1
  br i1 %cmpBr_419fc9, label %block_.L_41a04c, label %block_419fcf

block_419fcf:                                     ; preds = %block_.L_419fc3
  %loadMem_419fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1786, i64 0, i64 0
  %YMM0.i461 = bitcast %union.VectorReg* %1787 to %"class.std::bitset"*
  %1788 = bitcast %"class.std::bitset"* %YMM0.i461 to i8*
  %1789 = load i64, i64* %PC.i460
  %1790 = add i64 %1789, ptrtoint (%G_0x3a819__rip__type* @G_0x3a819__rip_ to i64)
  %1791 = load i64, i64* %PC.i460
  %1792 = add i64 %1791, 8
  store i64 %1792, i64* %PC.i460
  %1793 = inttoptr i64 %1790 to double*
  %1794 = load double, double* %1793
  %1795 = bitcast i8* %1788 to double*
  store double %1794, double* %1795, align 1
  %1796 = getelementptr inbounds i8, i8* %1788, i64 8
  %1797 = bitcast i8* %1796 to double*
  store double 0.000000e+00, double* %1797, align 1
  store %struct.Memory* %loadMem_419fcf, %struct.Memory** %MEMORY
  %loadMem_419fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 15
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1804, i64 0, i64 1
  %YMM1.i459 = bitcast %union.VectorReg* %1805 to %"class.std::bitset"*
  %1806 = bitcast %"class.std::bitset"* %YMM1.i459 to i8*
  %1807 = load i64, i64* %RBP.i458
  %1808 = sub i64 %1807, 64
  %1809 = load i64, i64* %PC.i457
  %1810 = add i64 %1809, 5
  store i64 %1810, i64* %PC.i457
  %1811 = bitcast i8* %1806 to <2 x i32>*
  %1812 = load <2 x i32>, <2 x i32>* %1811, align 1
  %1813 = getelementptr inbounds i8, i8* %1806, i64 8
  %1814 = bitcast i8* %1813 to <2 x i32>*
  %1815 = load <2 x i32>, <2 x i32>* %1814, align 1
  %1816 = inttoptr i64 %1808 to i32*
  %1817 = load i32, i32* %1816
  %1818 = sitofp i32 %1817 to float
  %1819 = bitcast i8* %1806 to float*
  store float %1818, float* %1819, align 1
  %1820 = extractelement <2 x i32> %1812, i32 1
  %1821 = getelementptr inbounds i8, i8* %1806, i64 4
  %1822 = bitcast i8* %1821 to i32*
  store i32 %1820, i32* %1822, align 1
  %1823 = extractelement <2 x i32> %1815, i32 0
  %1824 = bitcast i8* %1813 to i32*
  store i32 %1823, i32* %1824, align 1
  %1825 = extractelement <2 x i32> %1815, i32 1
  %1826 = getelementptr inbounds i8, i8* %1806, i64 12
  %1827 = bitcast i8* %1826 to i32*
  store i32 %1825, i32* %1827, align 1
  store %struct.Memory* %loadMem_419fd7, %struct.Memory** %MEMORY
  %loadMem_419fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1831, i64 0, i64 1
  %YMM1.i455 = bitcast %union.VectorReg* %1832 to %"class.std::bitset"*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1833, i64 0, i64 1
  %XMM1.i456 = bitcast %union.VectorReg* %1834 to %union.vec128_t*
  %1835 = bitcast %"class.std::bitset"* %YMM1.i455 to i8*
  %1836 = bitcast %union.vec128_t* %XMM1.i456 to i8*
  %1837 = load i64, i64* %PC.i454
  %1838 = add i64 %1837, 4
  store i64 %1838, i64* %PC.i454
  %1839 = bitcast i8* %1836 to <2 x float>*
  %1840 = load <2 x float>, <2 x float>* %1839, align 1
  %1841 = extractelement <2 x float> %1840, i32 0
  %1842 = fpext float %1841 to double
  %1843 = bitcast i8* %1835 to double*
  store double %1842, double* %1843, align 1
  store %struct.Memory* %loadMem_419fdc, %struct.Memory** %MEMORY
  %loadMem_419fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1848 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1847, i64 0, i64 1
  %YMM1.i452 = bitcast %union.VectorReg* %1848 to %"class.std::bitset"*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1849, i64 0, i64 0
  %XMM0.i453 = bitcast %union.VectorReg* %1850 to %union.vec128_t*
  %1851 = bitcast %"class.std::bitset"* %YMM1.i452 to i8*
  %1852 = bitcast %"class.std::bitset"* %YMM1.i452 to i8*
  %1853 = bitcast %union.vec128_t* %XMM0.i453 to i8*
  %1854 = load i64, i64* %PC.i451
  %1855 = add i64 %1854, 4
  store i64 %1855, i64* %PC.i451
  %1856 = bitcast i8* %1852 to double*
  %1857 = load double, double* %1856, align 1
  %1858 = getelementptr inbounds i8, i8* %1852, i64 8
  %1859 = bitcast i8* %1858 to i64*
  %1860 = load i64, i64* %1859, align 1
  %1861 = bitcast i8* %1853 to double*
  %1862 = load double, double* %1861, align 1
  %1863 = fadd double %1857, %1862
  %1864 = bitcast i8* %1851 to double*
  store double %1863, double* %1864, align 1
  %1865 = getelementptr inbounds i8, i8* %1851, i64 8
  %1866 = bitcast i8* %1865 to i64*
  store i64 %1860, i64* %1866, align 1
  store %struct.Memory* %loadMem_419fe0, %struct.Memory** %MEMORY
  %loadMem_419fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1870, i64 0, i64 0
  %YMM0.i449 = bitcast %union.VectorReg* %1871 to %"class.std::bitset"*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1872, i64 0, i64 1
  %XMM1.i450 = bitcast %union.VectorReg* %1873 to %union.vec128_t*
  %1874 = bitcast %"class.std::bitset"* %YMM0.i449 to i8*
  %1875 = bitcast %union.vec128_t* %XMM1.i450 to i8*
  %1876 = load i64, i64* %PC.i448
  %1877 = add i64 %1876, 4
  store i64 %1877, i64* %PC.i448
  %1878 = bitcast i8* %1874 to <2 x i32>*
  %1879 = load <2 x i32>, <2 x i32>* %1878, align 1
  %1880 = getelementptr inbounds i8, i8* %1874, i64 8
  %1881 = bitcast i8* %1880 to <2 x i32>*
  %1882 = load <2 x i32>, <2 x i32>* %1881, align 1
  %1883 = bitcast i8* %1875 to double*
  %1884 = load double, double* %1883, align 1
  %1885 = fptrunc double %1884 to float
  %1886 = bitcast i8* %1874 to float*
  store float %1885, float* %1886, align 1
  %1887 = extractelement <2 x i32> %1879, i32 1
  %1888 = getelementptr inbounds i8, i8* %1874, i64 4
  %1889 = bitcast i8* %1888 to i32*
  store i32 %1887, i32* %1889, align 1
  %1890 = extractelement <2 x i32> %1882, i32 0
  %1891 = bitcast i8* %1880 to i32*
  store i32 %1890, i32* %1891, align 1
  %1892 = extractelement <2 x i32> %1882, i32 1
  %1893 = getelementptr inbounds i8, i8* %1874, i64 12
  %1894 = bitcast i8* %1893 to i32*
  store i32 %1892, i32* %1894, align 1
  store %struct.Memory* %loadMem_419fe4, %struct.Memory** %MEMORY
  %loadMem_419fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 1
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 15
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RBP.i447
  %1905 = sub i64 %1904, 32
  %1906 = load i64, i64* %PC.i445
  %1907 = add i64 %1906, 4
  store i64 %1907, i64* %PC.i445
  %1908 = inttoptr i64 %1905 to i64*
  %1909 = load i64, i64* %1908
  store i64 %1909, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_419fe8, %struct.Memory** %MEMORY
  %loadMem_419fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 5
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RBP.i444
  %1920 = sub i64 %1919, 64
  %1921 = load i64, i64* %PC.i442
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %PC.i442
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_419fec, %struct.Memory** %MEMORY
  %loadMem_419fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 5
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 15
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %RCX.i440
  %1936 = load i64, i64* %RBP.i441
  %1937 = sub i64 %1936, 68
  %1938 = load i64, i64* %PC.i439
  %1939 = add i64 %1938, 3
  store i64 %1939, i64* %PC.i439
  %1940 = trunc i64 %1935 to i32
  %1941 = inttoptr i64 %1937 to i32*
  %1942 = load i32, i32* %1941
  %1943 = sub i32 %1940, %1942
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RCX.i440, align 8
  %1945 = icmp ult i32 %1940, %1942
  %1946 = zext i1 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1946, i8* %1947, align 1
  %1948 = and i32 %1943, 255
  %1949 = call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1952, i8* %1953, align 1
  %1954 = xor i32 %1942, %1940
  %1955 = xor i32 %1954, %1943
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1958, i8* %1959, align 1
  %1960 = icmp eq i32 %1943, 0
  %1961 = zext i1 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1961, i8* %1962, align 1
  %1963 = lshr i32 %1943, 31
  %1964 = trunc i32 %1963 to i8
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1964, i8* %1965, align 1
  %1966 = lshr i32 %1940, 31
  %1967 = lshr i32 %1942, 31
  %1968 = xor i32 %1967, %1966
  %1969 = xor i32 %1963, %1966
  %1970 = add i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1972, i8* %1973, align 1
  store %struct.Memory* %loadMem_419fef, %struct.Memory** %MEMORY
  %loadMem_419ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 5
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %ECX.i437 = bitcast %union.anon* %1979 to i32*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 7
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %1982 to i64*
  %1983 = load i32, i32* %ECX.i437
  %1984 = zext i32 %1983 to i64
  %1985 = load i64, i64* %PC.i436
  %1986 = add i64 %1985, 3
  store i64 %1986, i64* %PC.i436
  %1987 = shl i64 %1984, 32
  %1988 = ashr exact i64 %1987, 32
  store i64 %1988, i64* %RDX.i438, align 8
  store %struct.Memory* %loadMem_419ff2, %struct.Memory** %MEMORY
  %loadMem_419ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 1
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 7
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 0
  %XMM0.i435 = bitcast %union.VectorReg* %1999 to %union.vec128_t*
  %2000 = load i64, i64* %RAX.i433
  %2001 = load i64, i64* %RDX.i434
  %2002 = mul i64 %2001, 4
  %2003 = add i64 %2002, %2000
  %2004 = bitcast %union.vec128_t* %XMM0.i435 to i8*
  %2005 = load i64, i64* %PC.i432
  %2006 = add i64 %2005, 5
  store i64 %2006, i64* %PC.i432
  %2007 = bitcast i8* %2004 to <2 x float>*
  %2008 = load <2 x float>, <2 x float>* %2007, align 1
  %2009 = extractelement <2 x float> %2008, i32 0
  %2010 = inttoptr i64 %2003 to float*
  store float %2009, float* %2010
  store %struct.Memory* %loadMem_419ff5, %struct.Memory** %MEMORY
  %loadMem_419ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 1
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RBP.i431
  %2021 = sub i64 %2020, 16
  %2022 = load i64, i64* %PC.i429
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %PC.i429
  %2024 = inttoptr i64 %2021 to i64*
  %2025 = load i64, i64* %2024
  store i64 %2025, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_419ffa, %struct.Memory** %MEMORY
  %loadMem_419ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RAX.i428
  %2033 = load i64, i64* %PC.i427
  %2034 = add i64 %2033, 3
  store i64 %2034, i64* %PC.i427
  %2035 = inttoptr i64 %2032 to i64*
  %2036 = load i64, i64* %2035
  store i64 %2036, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_419ffe, %struct.Memory** %MEMORY
  %loadMem_41a001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 5
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 15
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %RBP.i426
  %2047 = sub i64 %2046, 64
  %2048 = load i64, i64* %PC.i424
  %2049 = add i64 %2048, 3
  store i64 %2049, i64* %PC.i424
  %2050 = inttoptr i64 %2047 to i32*
  %2051 = load i32, i32* %2050
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_41a001, %struct.Memory** %MEMORY
  %loadMem_41a004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 7
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i423
  %2063 = sub i64 %2062, 16
  %2064 = load i64, i64* %PC.i421
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC.i421
  %2066 = inttoptr i64 %2063 to i64*
  %2067 = load i64, i64* %2066
  store i64 %2067, i64* %RDX.i422, align 8
  store %struct.Memory* %loadMem_41a004, %struct.Memory** %MEMORY
  %loadMem_41a008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 5
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 7
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %RCX.i419
  %2078 = load i64, i64* %RDX.i420
  %2079 = add i64 %2078, 8
  %2080 = load i64, i64* %PC.i418
  %2081 = add i64 %2080, 3
  store i64 %2081, i64* %PC.i418
  %2082 = trunc i64 %2077 to i32
  %2083 = inttoptr i64 %2079 to i32*
  %2084 = load i32, i32* %2083
  %2085 = sub i32 %2082, %2084
  %2086 = zext i32 %2085 to i64
  store i64 %2086, i64* %RCX.i419, align 8
  %2087 = icmp ult i32 %2082, %2084
  %2088 = zext i1 %2087 to i8
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2088, i8* %2089, align 1
  %2090 = and i32 %2085, 255
  %2091 = call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2094, i8* %2095, align 1
  %2096 = xor i32 %2084, %2082
  %2097 = xor i32 %2096, %2085
  %2098 = lshr i32 %2097, 4
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2100, i8* %2101, align 1
  %2102 = icmp eq i32 %2085, 0
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2103, i8* %2104, align 1
  %2105 = lshr i32 %2085, 31
  %2106 = trunc i32 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2106, i8* %2107, align 1
  %2108 = lshr i32 %2082, 31
  %2109 = lshr i32 %2084, 31
  %2110 = xor i32 %2109, %2108
  %2111 = xor i32 %2105, %2108
  %2112 = add i32 %2111, %2110
  %2113 = icmp eq i32 %2112, 2
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2114, i8* %2115, align 1
  store %struct.Memory* %loadMem_41a008, %struct.Memory** %MEMORY
  %loadMem_41a00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 5
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %ECX.i416 = bitcast %union.anon* %2121 to i32*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 7
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RDX.i417 = bitcast %union.anon* %2124 to i64*
  %2125 = load i32, i32* %ECX.i416
  %2126 = zext i32 %2125 to i64
  %2127 = load i64, i64* %PC.i415
  %2128 = add i64 %2127, 3
  store i64 %2128, i64* %PC.i415
  %2129 = shl i64 %2126, 32
  %2130 = ashr exact i64 %2129, 32
  store i64 %2130, i64* %RDX.i417, align 8
  store %struct.Memory* %loadMem_41a00b, %struct.Memory** %MEMORY
  %loadMem_41a00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 33
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 1
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 5
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 7
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %2142 to i64*
  %2143 = load i64, i64* %RAX.i412
  %2144 = load i64, i64* %RDX.i414
  %2145 = mul i64 %2144, 4
  %2146 = add i64 %2145, %2143
  %2147 = load i64, i64* %PC.i411
  %2148 = add i64 %2147, 3
  store i64 %2148, i64* %PC.i411
  %2149 = inttoptr i64 %2146 to i32*
  %2150 = load i32, i32* %2149
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_41a00e, %struct.Memory** %MEMORY
  %loadMem_41a011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 33
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 1
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 15
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %RBP.i410
  %2162 = sub i64 %2161, 40
  %2163 = load i64, i64* %PC.i408
  %2164 = add i64 %2163, 4
  store i64 %2164, i64* %PC.i408
  %2165 = inttoptr i64 %2162 to i64*
  %2166 = load i64, i64* %2165
  store i64 %2166, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_41a011, %struct.Memory** %MEMORY
  %loadMem_41a015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 9
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RSI.i406 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %RBP.i407
  %2177 = sub i64 %2176, 64
  %2178 = load i64, i64* %PC.i405
  %2179 = add i64 %2178, 3
  store i64 %2179, i64* %PC.i405
  %2180 = inttoptr i64 %2177 to i32*
  %2181 = load i32, i32* %2180
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RSI.i406, align 8
  store %struct.Memory* %loadMem_41a015, %struct.Memory** %MEMORY
  %loadMem_41a018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 9
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RSI.i403 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 15
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %RSI.i403
  %2193 = load i64, i64* %RBP.i404
  %2194 = sub i64 %2193, 68
  %2195 = load i64, i64* %PC.i402
  %2196 = add i64 %2195, 3
  store i64 %2196, i64* %PC.i402
  %2197 = trunc i64 %2192 to i32
  %2198 = inttoptr i64 %2194 to i32*
  %2199 = load i32, i32* %2198
  %2200 = sub i32 %2197, %2199
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RSI.i403, align 8
  %2202 = icmp ult i32 %2197, %2199
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2203, i8* %2204, align 1
  %2205 = and i32 %2200, 255
  %2206 = call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2209, i8* %2210, align 1
  %2211 = xor i32 %2199, %2197
  %2212 = xor i32 %2211, %2200
  %2213 = lshr i32 %2212, 4
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2215, i8* %2216, align 1
  %2217 = icmp eq i32 %2200, 0
  %2218 = zext i1 %2217 to i8
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2218, i8* %2219, align 1
  %2220 = lshr i32 %2200, 31
  %2221 = trunc i32 %2220 to i8
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2221, i8* %2222, align 1
  %2223 = lshr i32 %2197, 31
  %2224 = lshr i32 %2199, 31
  %2225 = xor i32 %2224, %2223
  %2226 = xor i32 %2220, %2223
  %2227 = add i32 %2226, %2225
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2229, i8* %2230, align 1
  store %struct.Memory* %loadMem_41a018, %struct.Memory** %MEMORY
  %loadMem_41a01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 9
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %ESI.i400 = bitcast %union.anon* %2236 to i32*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 7
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %2239 to i64*
  %2240 = load i32, i32* %ESI.i400
  %2241 = zext i32 %2240 to i64
  %2242 = load i64, i64* %PC.i399
  %2243 = add i64 %2242, 3
  store i64 %2243, i64* %PC.i399
  %2244 = shl i64 %2241, 32
  %2245 = ashr exact i64 %2244, 32
  store i64 %2245, i64* %RDX.i401, align 8
  store %struct.Memory* %loadMem_41a01b, %struct.Memory** %MEMORY
  %loadMem_41a01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 5
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %ECX.i396 = bitcast %union.anon* %2251 to i32*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 7
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RAX.i397
  %2259 = load i64, i64* %RDX.i398
  %2260 = mul i64 %2259, 4
  %2261 = add i64 %2260, %2258
  %2262 = load i32, i32* %ECX.i396
  %2263 = zext i32 %2262 to i64
  %2264 = load i64, i64* %PC.i395
  %2265 = add i64 %2264, 3
  store i64 %2265, i64* %PC.i395
  %2266 = inttoptr i64 %2261 to i32*
  store i32 %2262, i32* %2266
  store %struct.Memory* %loadMem_41a01e, %struct.Memory** %MEMORY
  %loadMem_41a021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RBP.i394
  %2277 = sub i64 %2276, 16
  %2278 = load i64, i64* %PC.i392
  %2279 = add i64 %2278, 4
  store i64 %2279, i64* %PC.i392
  %2280 = inttoptr i64 %2277 to i64*
  %2281 = load i64, i64* %2280
  store i64 %2281, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_41a021, %struct.Memory** %MEMORY
  %loadMem_41a025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 1
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %2287 to i64*
  %2288 = load i64, i64* %RAX.i391
  %2289 = load i64, i64* %PC.i390
  %2290 = add i64 %2289, 3
  store i64 %2290, i64* %PC.i390
  %2291 = inttoptr i64 %2288 to i64*
  %2292 = load i64, i64* %2291
  store i64 %2292, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_41a025, %struct.Memory** %MEMORY
  %loadMem_41a028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 5
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 15
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RBP.i389
  %2303 = sub i64 %2302, 64
  %2304 = load i64, i64* %PC.i387
  %2305 = add i64 %2304, 3
  store i64 %2305, i64* %PC.i387
  %2306 = inttoptr i64 %2303 to i32*
  %2307 = load i32, i32* %2306
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_41a028, %struct.Memory** %MEMORY
  %loadMem_41a02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 7
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RDX.i385 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 15
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2317 to i64*
  %2318 = load i64, i64* %RBP.i386
  %2319 = sub i64 %2318, 16
  %2320 = load i64, i64* %PC.i384
  %2321 = add i64 %2320, 4
  store i64 %2321, i64* %PC.i384
  %2322 = inttoptr i64 %2319 to i64*
  %2323 = load i64, i64* %2322
  store i64 %2323, i64* %RDX.i385, align 8
  store %struct.Memory* %loadMem_41a02b, %struct.Memory** %MEMORY
  %loadMem_41a02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 5
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 7
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RCX.i382
  %2334 = load i64, i64* %RDX.i383
  %2335 = add i64 %2334, 8
  %2336 = load i64, i64* %PC.i381
  %2337 = add i64 %2336, 3
  store i64 %2337, i64* %PC.i381
  %2338 = trunc i64 %2333 to i32
  %2339 = inttoptr i64 %2335 to i32*
  %2340 = load i32, i32* %2339
  %2341 = sub i32 %2338, %2340
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RCX.i382, align 8
  %2343 = icmp ult i32 %2338, %2340
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
  %2352 = xor i32 %2340, %2338
  %2353 = xor i32 %2352, %2341
  %2354 = lshr i32 %2353, 4
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2356, i8* %2357, align 1
  %2358 = icmp eq i32 %2341, 0
  %2359 = zext i1 %2358 to i8
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2359, i8* %2360, align 1
  %2361 = lshr i32 %2341, 31
  %2362 = trunc i32 %2361 to i8
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2362, i8* %2363, align 1
  %2364 = lshr i32 %2338, 31
  %2365 = lshr i32 %2340, 31
  %2366 = xor i32 %2365, %2364
  %2367 = xor i32 %2361, %2364
  %2368 = add i32 %2367, %2366
  %2369 = icmp eq i32 %2368, 2
  %2370 = zext i1 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2370, i8* %2371, align 1
  store %struct.Memory* %loadMem_41a02f, %struct.Memory** %MEMORY
  %loadMem_41a032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 5
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %ECX.i379 = bitcast %union.anon* %2377 to i32*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 7
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %2380 to i64*
  %2381 = load i32, i32* %ECX.i379
  %2382 = zext i32 %2381 to i64
  %2383 = load i64, i64* %PC.i378
  %2384 = add i64 %2383, 3
  store i64 %2384, i64* %PC.i378
  %2385 = shl i64 %2382, 32
  %2386 = ashr exact i64 %2385, 32
  store i64 %2386, i64* %RDX.i380, align 8
  store %struct.Memory* %loadMem_41a032, %struct.Memory** %MEMORY
  %loadMem_41a035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 1
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 5
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 7
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RDX.i377 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %RAX.i375
  %2400 = load i64, i64* %RDX.i377
  %2401 = mul i64 %2400, 4
  %2402 = add i64 %2401, %2399
  %2403 = load i64, i64* %PC.i374
  %2404 = add i64 %2403, 3
  store i64 %2404, i64* %PC.i374
  %2405 = inttoptr i64 %2402 to i32*
  %2406 = load i32, i32* %2405
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_41a035, %struct.Memory** %MEMORY
  %loadMem_41a038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 5
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 15
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2416 to i64*
  %2417 = load i64, i64* %RCX.i372
  %2418 = load i64, i64* %RBP.i373
  %2419 = sub i64 %2418, 44
  %2420 = load i64, i64* %PC.i371
  %2421 = add i64 %2420, 3
  store i64 %2421, i64* %PC.i371
  %2422 = trunc i64 %2417 to i32
  %2423 = inttoptr i64 %2419 to i32*
  %2424 = load i32, i32* %2423
  %2425 = add i32 %2424, %2422
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RCX.i372, align 8
  %2427 = icmp ult i32 %2425, %2422
  %2428 = icmp ult i32 %2425, %2424
  %2429 = or i1 %2427, %2428
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2430, i8* %2431, align 1
  %2432 = and i32 %2425, 255
  %2433 = call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2436, i8* %2437, align 1
  %2438 = xor i32 %2424, %2422
  %2439 = xor i32 %2438, %2425
  %2440 = lshr i32 %2439, 4
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2442, i8* %2443, align 1
  %2444 = icmp eq i32 %2425, 0
  %2445 = zext i1 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2445, i8* %2446, align 1
  %2447 = lshr i32 %2425, 31
  %2448 = trunc i32 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2448, i8* %2449, align 1
  %2450 = lshr i32 %2422, 31
  %2451 = lshr i32 %2424, 31
  %2452 = xor i32 %2447, %2450
  %2453 = xor i32 %2447, %2451
  %2454 = add i32 %2452, %2453
  %2455 = icmp eq i32 %2454, 2
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2456, i8* %2457, align 1
  store %struct.Memory* %loadMem_41a038, %struct.Memory** %MEMORY
  %loadMem_41a03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 5
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %ECX.i369 = bitcast %union.anon* %2463 to i32*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 15
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %RBP.i370
  %2468 = sub i64 %2467, 44
  %2469 = load i32, i32* %ECX.i369
  %2470 = zext i32 %2469 to i64
  %2471 = load i64, i64* %PC.i368
  %2472 = add i64 %2471, 3
  store i64 %2472, i64* %PC.i368
  %2473 = inttoptr i64 %2468 to i32*
  store i32 %2469, i32* %2473
  store %struct.Memory* %loadMem_41a03b, %struct.Memory** %MEMORY
  %loadMem_41a03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 1
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 15
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RBP.i367
  %2484 = sub i64 %2483, 64
  %2485 = load i64, i64* %PC.i365
  %2486 = add i64 %2485, 3
  store i64 %2486, i64* %PC.i365
  %2487 = inttoptr i64 %2484 to i32*
  %2488 = load i32, i32* %2487
  %2489 = zext i32 %2488 to i64
  store i64 %2489, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_41a03e, %struct.Memory** %MEMORY
  %loadMem_41a041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 1
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RAX.i364
  %2497 = load i64, i64* %PC.i363
  %2498 = add i64 %2497, 3
  store i64 %2498, i64* %PC.i363
  %2499 = trunc i64 %2496 to i32
  %2500 = add i32 1, %2499
  %2501 = zext i32 %2500 to i64
  store i64 %2501, i64* %RAX.i364, align 8
  %2502 = icmp ult i32 %2500, %2499
  %2503 = icmp ult i32 %2500, 1
  %2504 = or i1 %2502, %2503
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2505, i8* %2506, align 1
  %2507 = and i32 %2500, 255
  %2508 = call i32 @llvm.ctpop.i32(i32 %2507)
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2511, i8* %2512, align 1
  %2513 = xor i64 1, %2496
  %2514 = trunc i64 %2513 to i32
  %2515 = xor i32 %2514, %2500
  %2516 = lshr i32 %2515, 4
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2518, i8* %2519, align 1
  %2520 = icmp eq i32 %2500, 0
  %2521 = zext i1 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2521, i8* %2522, align 1
  %2523 = lshr i32 %2500, 31
  %2524 = trunc i32 %2523 to i8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2524, i8* %2525, align 1
  %2526 = lshr i32 %2499, 31
  %2527 = xor i32 %2523, %2526
  %2528 = add i32 %2527, %2523
  %2529 = icmp eq i32 %2528, 2
  %2530 = zext i1 %2529 to i8
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2530, i8* %2531, align 1
  store %struct.Memory* %loadMem_41a041, %struct.Memory** %MEMORY
  %loadMem_41a044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 1
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %2537 to i32*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 15
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %RBP.i362
  %2542 = sub i64 %2541, 64
  %2543 = load i32, i32* %EAX.i361
  %2544 = zext i32 %2543 to i64
  %2545 = load i64, i64* %PC.i360
  %2546 = add i64 %2545, 3
  store i64 %2546, i64* %PC.i360
  %2547 = inttoptr i64 %2542 to i32*
  store i32 %2543, i32* %2547
  store %struct.Memory* %loadMem_41a044, %struct.Memory** %MEMORY
  %loadMem_41a047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %PC.i359
  %2552 = add i64 %2551, -132
  %2553 = load i64, i64* %PC.i359
  %2554 = add i64 %2553, 5
  store i64 %2554, i64* %PC.i359
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2552, i64* %2555, align 8
  store %struct.Memory* %loadMem_41a047, %struct.Memory** %MEMORY
  br label %block_.L_419fc3

block_.L_41a04c:                                  ; preds = %block_.L_419fc3
  %loadMem_41a04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i358
  %2563 = sub i64 %2562, 44
  %2564 = load i64, i64* %PC.i357
  %2565 = add i64 %2564, 4
  store i64 %2565, i64* %PC.i357
  %2566 = inttoptr i64 %2563 to i32*
  %2567 = load i32, i32* %2566
  %2568 = sub i32 %2567, 100
  %2569 = icmp ult i32 %2567, 100
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2570, i8* %2571, align 1
  %2572 = and i32 %2568, 255
  %2573 = call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2576, i8* %2577, align 1
  %2578 = xor i32 %2567, 100
  %2579 = xor i32 %2578, %2568
  %2580 = lshr i32 %2579, 4
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2582, i8* %2583, align 1
  %2584 = icmp eq i32 %2568, 0
  %2585 = zext i1 %2584 to i8
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2585, i8* %2586, align 1
  %2587 = lshr i32 %2568, 31
  %2588 = trunc i32 %2587 to i8
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2588, i8* %2589, align 1
  %2590 = lshr i32 %2567, 31
  %2591 = xor i32 %2587, %2590
  %2592 = add i32 %2591, %2590
  %2593 = icmp eq i32 %2592, 2
  %2594 = zext i1 %2593 to i8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2594, i8* %2595, align 1
  store %struct.Memory* %loadMem_41a04c, %struct.Memory** %MEMORY
  %loadMem_41a050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 33
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2598 to i64*
  %2599 = load i64, i64* %PC.i356
  %2600 = add i64 %2599, 11
  %2601 = load i64, i64* %PC.i356
  %2602 = add i64 %2601, 6
  %2603 = load i64, i64* %PC.i356
  %2604 = add i64 %2603, 6
  store i64 %2604, i64* %PC.i356
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2606 = load i8, i8* %2605, align 1
  %2607 = icmp ne i8 %2606, 0
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2609 = load i8, i8* %2608, align 1
  %2610 = icmp ne i8 %2609, 0
  %2611 = xor i1 %2607, %2610
  %2612 = xor i1 %2611, true
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %BRANCH_TAKEN, align 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2615 = select i1 %2611, i64 %2602, i64 %2600
  store i64 %2615, i64* %2614, align 8
  store %struct.Memory* %loadMem_41a050, %struct.Memory** %MEMORY
  %loadBr_41a050 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a050 = icmp eq i8 %loadBr_41a050, 1
  br i1 %cmpBr_41a050, label %block_.L_41a05b, label %block_41a056

block_41a056:                                     ; preds = %block_.L_41a04c
  %loadMem_41a056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %PC.i355
  %2620 = add i64 %2619, 563
  %2621 = load i64, i64* %PC.i355
  %2622 = add i64 %2621, 5
  store i64 %2622, i64* %PC.i355
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2620, i64* %2623, align 8
  store %struct.Memory* %loadMem_41a056, %struct.Memory** %MEMORY
  br label %block_.L_41a289

block_.L_41a05b:                                  ; preds = %block_.L_41a04c
  %loadMem_41a05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i354
  %2631 = sub i64 %2630, 20
  %2632 = load i64, i64* %PC.i353
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %PC.i353
  %2634 = inttoptr i64 %2631 to i32*
  %2635 = load i32, i32* %2634
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2636, align 1
  %2637 = and i32 %2635, 255
  %2638 = call i32 @llvm.ctpop.i32(i32 %2637)
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2641, i8* %2642, align 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2643, align 1
  %2644 = icmp eq i32 %2635, 0
  %2645 = zext i1 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2645, i8* %2646, align 1
  %2647 = lshr i32 %2635, 31
  %2648 = trunc i32 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2648, i8* %2649, align 1
  %2650 = lshr i32 %2635, 31
  %2651 = xor i32 %2647, %2650
  %2652 = add i32 %2651, %2650
  %2653 = icmp eq i32 %2652, 2
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2654, i8* %2655, align 1
  store %struct.Memory* %loadMem_41a05b, %struct.Memory** %MEMORY
  %loadMem_41a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2658 to i64*
  %2659 = load i64, i64* %PC.i352
  %2660 = add i64 %2659, 253
  %2661 = load i64, i64* %PC.i352
  %2662 = add i64 %2661, 6
  %2663 = load i64, i64* %PC.i352
  %2664 = add i64 %2663, 6
  store i64 %2664, i64* %PC.i352
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2666 = load i8, i8* %2665, align 1
  store i8 %2666, i8* %BRANCH_TAKEN, align 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2668 = icmp ne i8 %2666, 0
  %2669 = select i1 %2668, i64 %2660, i64 %2662
  store i64 %2669, i64* %2667, align 8
  store %struct.Memory* %loadMem_41a05f, %struct.Memory** %MEMORY
  %loadBr_41a05f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a05f = icmp eq i8 %loadBr_41a05f, 1
  br i1 %cmpBr_41a05f, label %block_.L_41a15c, label %block_41a065

block_41a065:                                     ; preds = %block_.L_41a05b
  %loadMem_41a065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i351
  %2677 = sub i64 %2676, 80
  %2678 = load i64, i64* %PC.i350
  %2679 = add i64 %2678, 4
  store i64 %2679, i64* %PC.i350
  %2680 = inttoptr i64 %2677 to i32*
  %2681 = load i32, i32* %2680
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2682, align 1
  %2683 = and i32 %2681, 255
  %2684 = call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2687, i8* %2688, align 1
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2689, align 1
  %2690 = icmp eq i32 %2681, 0
  %2691 = zext i1 %2690 to i8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2691, i8* %2692, align 1
  %2693 = lshr i32 %2681, 31
  %2694 = trunc i32 %2693 to i8
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2694, i8* %2695, align 1
  %2696 = lshr i32 %2681, 31
  %2697 = xor i32 %2693, %2696
  %2698 = add i32 %2697, %2696
  %2699 = icmp eq i32 %2698, 2
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2700, i8* %2701, align 1
  store %struct.Memory* %loadMem_41a065, %struct.Memory** %MEMORY
  %loadMem_41a069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %PC.i349
  %2706 = add i64 %2705, 106
  %2707 = load i64, i64* %PC.i349
  %2708 = add i64 %2707, 6
  %2709 = load i64, i64* %PC.i349
  %2710 = add i64 %2709, 6
  store i64 %2710, i64* %PC.i349
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2712 = load i8, i8* %2711, align 1
  %2713 = icmp eq i8 %2712, 0
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %BRANCH_TAKEN, align 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2716 = select i1 %2713, i64 %2706, i64 %2708
  store i64 %2716, i64* %2715, align 8
  store %struct.Memory* %loadMem_41a069, %struct.Memory** %MEMORY
  %loadBr_41a069 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a069 = icmp eq i8 %loadBr_41a069, 1
  br i1 %cmpBr_41a069, label %block_.L_41a0d3, label %block_41a06f

block_41a06f:                                     ; preds = %block_41a065
  %loadMem_41a06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2720, i64 0, i64 0
  %YMM0.i348 = bitcast %union.VectorReg* %2721 to %"class.std::bitset"*
  %2722 = bitcast %"class.std::bitset"* %YMM0.i348 to i8*
  %2723 = load i64, i64* %PC.i347
  %2724 = add i64 %2723, ptrtoint (%G_0x3a7e9__rip__type* @G_0x3a7e9__rip_ to i64)
  %2725 = load i64, i64* %PC.i347
  %2726 = add i64 %2725, 8
  store i64 %2726, i64* %PC.i347
  %2727 = inttoptr i64 %2724 to double*
  %2728 = load double, double* %2727
  %2729 = bitcast i8* %2722 to double*
  store double %2728, double* %2729, align 1
  %2730 = getelementptr inbounds i8, i8* %2722, i64 8
  %2731 = bitcast i8* %2730 to double*
  store double 0.000000e+00, double* %2731, align 1
  store %struct.Memory* %loadMem_41a06f, %struct.Memory** %MEMORY
  %loadMem_41a077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 1
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 15
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RBP.i346
  %2742 = sub i64 %2741, 16
  %2743 = load i64, i64* %PC.i344
  %2744 = add i64 %2743, 4
  store i64 %2744, i64* %PC.i344
  %2745 = inttoptr i64 %2742 to i64*
  %2746 = load i64, i64* %2745
  store i64 %2746, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_41a077, %struct.Memory** %MEMORY
  %loadMem_41a07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 1
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 5
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %RAX.i342
  %2757 = add i64 %2756, 28
  %2758 = load i64, i64* %PC.i341
  %2759 = add i64 %2758, 3
  store i64 %2759, i64* %PC.i341
  %2760 = inttoptr i64 %2757 to i32*
  %2761 = load i32, i32* %2760
  %2762 = zext i32 %2761 to i64
  store i64 %2762, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_41a07b, %struct.Memory** %MEMORY
  %loadMem_41a07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 5
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 15
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %RCX.i339
  %2773 = load i64, i64* %RBP.i340
  %2774 = sub i64 %2773, 44
  %2775 = load i64, i64* %PC.i338
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i338
  %2777 = trunc i64 %2772 to i32
  %2778 = inttoptr i64 %2774 to i32*
  %2779 = load i32, i32* %2778
  %2780 = sub i32 %2777, %2779
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RCX.i339, align 8
  %2782 = icmp ult i32 %2777, %2779
  %2783 = zext i1 %2782 to i8
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2783, i8* %2784, align 1
  %2785 = and i32 %2780, 255
  %2786 = call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2789, i8* %2790, align 1
  %2791 = xor i32 %2779, %2777
  %2792 = xor i32 %2791, %2780
  %2793 = lshr i32 %2792, 4
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2795, i8* %2796, align 1
  %2797 = icmp eq i32 %2780, 0
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2798, i8* %2799, align 1
  %2800 = lshr i32 %2780, 31
  %2801 = trunc i32 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2801, i8* %2802, align 1
  %2803 = lshr i32 %2777, 31
  %2804 = lshr i32 %2779, 31
  %2805 = xor i32 %2804, %2803
  %2806 = xor i32 %2800, %2803
  %2807 = add i32 %2806, %2805
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2809, i8* %2810, align 1
  store %struct.Memory* %loadMem_41a07e, %struct.Memory** %MEMORY
  %loadMem_41a081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 15
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2818 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2817, i64 0, i64 1
  %YMM1.i337 = bitcast %union.VectorReg* %2818 to %"class.std::bitset"*
  %2819 = bitcast %"class.std::bitset"* %YMM1.i337 to i8*
  %2820 = load i64, i64* %RBP.i336
  %2821 = sub i64 %2820, 44
  %2822 = load i64, i64* %PC.i335
  %2823 = add i64 %2822, 5
  store i64 %2823, i64* %PC.i335
  %2824 = bitcast i8* %2819 to <2 x i32>*
  %2825 = load <2 x i32>, <2 x i32>* %2824, align 1
  %2826 = getelementptr inbounds i8, i8* %2819, i64 8
  %2827 = bitcast i8* %2826 to <2 x i32>*
  %2828 = load <2 x i32>, <2 x i32>* %2827, align 1
  %2829 = inttoptr i64 %2821 to i32*
  %2830 = load i32, i32* %2829
  %2831 = sitofp i32 %2830 to float
  %2832 = bitcast i8* %2819 to float*
  store float %2831, float* %2832, align 1
  %2833 = extractelement <2 x i32> %2825, i32 1
  %2834 = getelementptr inbounds i8, i8* %2819, i64 4
  %2835 = bitcast i8* %2834 to i32*
  store i32 %2833, i32* %2835, align 1
  %2836 = extractelement <2 x i32> %2828, i32 0
  %2837 = bitcast i8* %2826 to i32*
  store i32 %2836, i32* %2837, align 1
  %2838 = extractelement <2 x i32> %2828, i32 1
  %2839 = getelementptr inbounds i8, i8* %2819, i64 12
  %2840 = bitcast i8* %2839 to i32*
  store i32 %2838, i32* %2840, align 1
  store %struct.Memory* %loadMem_41a081, %struct.Memory** %MEMORY
  %loadMem_41a086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2844, i64 0, i64 1
  %YMM1.i333 = bitcast %union.VectorReg* %2845 to %"class.std::bitset"*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2846, i64 0, i64 1
  %XMM1.i334 = bitcast %union.VectorReg* %2847 to %union.vec128_t*
  %2848 = bitcast %"class.std::bitset"* %YMM1.i333 to i8*
  %2849 = bitcast %union.vec128_t* %XMM1.i334 to i8*
  %2850 = load i64, i64* %PC.i332
  %2851 = add i64 %2850, 4
  store i64 %2851, i64* %PC.i332
  %2852 = bitcast i8* %2849 to <2 x float>*
  %2853 = load <2 x float>, <2 x float>* %2852, align 1
  %2854 = extractelement <2 x float> %2853, i32 0
  %2855 = fpext float %2854 to double
  %2856 = bitcast i8* %2848 to double*
  store double %2855, double* %2856, align 1
  store %struct.Memory* %loadMem_41a086, %struct.Memory** %MEMORY
  %loadMem_41a08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2860, i64 0, i64 0
  %YMM0.i330 = bitcast %union.VectorReg* %2861 to %"class.std::bitset"*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2862, i64 0, i64 1
  %XMM1.i331 = bitcast %union.VectorReg* %2863 to %union.vec128_t*
  %2864 = bitcast %"class.std::bitset"* %YMM0.i330 to i8*
  %2865 = bitcast %"class.std::bitset"* %YMM0.i330 to i8*
  %2866 = bitcast %union.vec128_t* %XMM1.i331 to i8*
  %2867 = load i64, i64* %PC.i329
  %2868 = add i64 %2867, 4
  store i64 %2868, i64* %PC.i329
  %2869 = bitcast i8* %2865 to double*
  %2870 = load double, double* %2869, align 1
  %2871 = getelementptr inbounds i8, i8* %2865, i64 8
  %2872 = bitcast i8* %2871 to i64*
  %2873 = load i64, i64* %2872, align 1
  %2874 = bitcast i8* %2866 to double*
  %2875 = load double, double* %2874, align 1
  %2876 = fmul double %2870, %2875
  %2877 = bitcast i8* %2864 to double*
  store double %2876, double* %2877, align 1
  %2878 = getelementptr inbounds i8, i8* %2864, i64 8
  %2879 = bitcast i8* %2878 to i64*
  store i64 %2873, i64* %2879, align 1
  store %struct.Memory* %loadMem_41a08a, %struct.Memory** %MEMORY
  %loadMem_41a08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 7
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2886, i64 0, i64 0
  %XMM0.i328 = bitcast %union.VectorReg* %2887 to %union.vec128_t*
  %2888 = bitcast %union.vec128_t* %XMM0.i328 to i8*
  %2889 = load i64, i64* %PC.i326
  %2890 = add i64 %2889, 4
  store i64 %2890, i64* %PC.i326
  %2891 = bitcast i8* %2888 to double*
  %2892 = load double, double* %2891, align 1
  %2893 = call double @llvm.trunc.f64(double %2892)
  %2894 = call double @llvm.fabs.f64(double %2893)
  %2895 = fcmp ogt double %2894, 0x41DFFFFFFFC00000
  %2896 = fptosi double %2893 to i32
  %2897 = zext i32 %2896 to i64
  %2898 = select i1 %2895, i64 2147483648, i64 %2897
  store i64 %2898, i64* %RDX.i327, align 8
  store %struct.Memory* %loadMem_41a08e, %struct.Memory** %MEMORY
  %loadMem_41a092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 5
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %ECX.i324 = bitcast %union.anon* %2904 to i32*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 7
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %EDX.i325 = bitcast %union.anon* %2907 to i32*
  %2908 = load i32, i32* %ECX.i324
  %2909 = zext i32 %2908 to i64
  %2910 = load i32, i32* %EDX.i325
  %2911 = zext i32 %2910 to i64
  %2912 = load i64, i64* %PC.i323
  %2913 = add i64 %2912, 2
  store i64 %2913, i64* %PC.i323
  %2914 = sub i32 %2908, %2910
  %2915 = icmp ult i32 %2908, %2910
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2916, i8* %2917, align 1
  %2918 = and i32 %2914, 255
  %2919 = call i32 @llvm.ctpop.i32(i32 %2918)
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2922, i8* %2923, align 1
  %2924 = xor i64 %2911, %2909
  %2925 = trunc i64 %2924 to i32
  %2926 = xor i32 %2925, %2914
  %2927 = lshr i32 %2926, 4
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2929, i8* %2930, align 1
  %2931 = icmp eq i32 %2914, 0
  %2932 = zext i1 %2931 to i8
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2932, i8* %2933, align 1
  %2934 = lshr i32 %2914, 31
  %2935 = trunc i32 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2935, i8* %2936, align 1
  %2937 = lshr i32 %2908, 31
  %2938 = lshr i32 %2910, 31
  %2939 = xor i32 %2938, %2937
  %2940 = xor i32 %2934, %2937
  %2941 = add i32 %2940, %2939
  %2942 = icmp eq i32 %2941, 2
  %2943 = zext i1 %2942 to i8
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2943, i8* %2944, align 1
  store %struct.Memory* %loadMem_41a092, %struct.Memory** %MEMORY
  %loadMem_41a094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %PC.i322
  %2949 = add i64 %2948, 24
  %2950 = load i64, i64* %PC.i322
  %2951 = add i64 %2950, 6
  %2952 = load i64, i64* %PC.i322
  %2953 = add i64 %2952, 6
  store i64 %2953, i64* %PC.i322
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2955 = load i8, i8* %2954, align 1
  %2956 = icmp ne i8 %2955, 0
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2958 = load i8, i8* %2957, align 1
  %2959 = icmp ne i8 %2958, 0
  %2960 = xor i1 %2956, %2959
  %2961 = xor i1 %2960, true
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %BRANCH_TAKEN, align 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2964 = select i1 %2960, i64 %2951, i64 %2949
  store i64 %2964, i64* %2963, align 8
  store %struct.Memory* %loadMem_41a094, %struct.Memory** %MEMORY
  %loadBr_41a094 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a094 = icmp eq i8 %loadBr_41a094, 1
  br i1 %cmpBr_41a094, label %block_.L_41a0ac, label %block_41a09a

block_41a09a:                                     ; preds = %block_41a06f
  %loadMem_41a09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 33
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 1
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 15
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %RBP.i321
  %2975 = sub i64 %2974, 16
  %2976 = load i64, i64* %PC.i319
  %2977 = add i64 %2976, 4
  store i64 %2977, i64* %PC.i319
  %2978 = inttoptr i64 %2975 to i64*
  %2979 = load i64, i64* %2978
  store i64 %2979, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_41a09a, %struct.Memory** %MEMORY
  %loadMem_41a09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RAX.i317
  %2990 = add i64 %2989, 28
  %2991 = load i64, i64* %PC.i316
  %2992 = add i64 %2991, 3
  store i64 %2992, i64* %PC.i316
  %2993 = inttoptr i64 %2990 to i32*
  %2994 = load i32, i32* %2993
  %2995 = zext i32 %2994 to i64
  store i64 %2995, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_41a09e, %struct.Memory** %MEMORY
  %loadMem_41a0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 5
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RCX.i314
  %3006 = load i64, i64* %RBP.i315
  %3007 = sub i64 %3006, 44
  %3008 = load i64, i64* %PC.i313
  %3009 = add i64 %3008, 3
  store i64 %3009, i64* %PC.i313
  %3010 = trunc i64 %3005 to i32
  %3011 = inttoptr i64 %3007 to i32*
  %3012 = load i32, i32* %3011
  %3013 = sub i32 %3010, %3012
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RCX.i314, align 8
  %3015 = icmp ult i32 %3010, %3012
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3016, i8* %3017, align 1
  %3018 = and i32 %3013, 255
  %3019 = call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3022, i8* %3023, align 1
  %3024 = xor i32 %3012, %3010
  %3025 = xor i32 %3024, %3013
  %3026 = lshr i32 %3025, 4
  %3027 = trunc i32 %3026 to i8
  %3028 = and i8 %3027, 1
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3028, i8* %3029, align 1
  %3030 = icmp eq i32 %3013, 0
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3031, i8* %3032, align 1
  %3033 = lshr i32 %3013, 31
  %3034 = trunc i32 %3033 to i8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3034, i8* %3035, align 1
  %3036 = lshr i32 %3010, 31
  %3037 = lshr i32 %3012, 31
  %3038 = xor i32 %3037, %3036
  %3039 = xor i32 %3033, %3036
  %3040 = add i32 %3039, %3038
  %3041 = icmp eq i32 %3040, 2
  %3042 = zext i1 %3041 to i8
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3042, i8* %3043, align 1
  store %struct.Memory* %loadMem_41a0a1, %struct.Memory** %MEMORY
  %loadMem_41a0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 5
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %ECX.i311 = bitcast %union.anon* %3049 to i32*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 15
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RBP.i312
  %3054 = sub i64 %3053, 104
  %3055 = load i32, i32* %ECX.i311
  %3056 = zext i32 %3055 to i64
  %3057 = load i64, i64* %PC.i310
  %3058 = add i64 %3057, 3
  store i64 %3058, i64* %PC.i310
  %3059 = inttoptr i64 %3054 to i32*
  store i32 %3055, i32* %3059
  store %struct.Memory* %loadMem_41a0a4, %struct.Memory** %MEMORY
  %loadMem_41a0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %PC.i309
  %3064 = add i64 %3063, 33
  %3065 = load i64, i64* %PC.i309
  %3066 = add i64 %3065, 5
  store i64 %3066, i64* %PC.i309
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3064, i64* %3067, align 8
  store %struct.Memory* %loadMem_41a0a7, %struct.Memory** %MEMORY
  br label %block_.L_41a0c8

block_.L_41a0ac:                                  ; preds = %block_41a06f
  %loadMem_41a0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3072 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3071, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %3072 to %"class.std::bitset"*
  %3073 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %3074 = load i64, i64* %PC.i307
  %3075 = add i64 %3074, ptrtoint (%G_0x3a7ac__rip__type* @G_0x3a7ac__rip_ to i64)
  %3076 = load i64, i64* %PC.i307
  %3077 = add i64 %3076, 8
  store i64 %3077, i64* %PC.i307
  %3078 = inttoptr i64 %3075 to double*
  %3079 = load double, double* %3078
  %3080 = bitcast i8* %3073 to double*
  store double %3079, double* %3080, align 1
  %3081 = getelementptr inbounds i8, i8* %3073, i64 8
  %3082 = bitcast i8* %3081 to double*
  store double 0.000000e+00, double* %3082, align 1
  store %struct.Memory* %loadMem_41a0ac, %struct.Memory** %MEMORY
  %loadMem_41a0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 15
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3089, i64 0, i64 1
  %YMM1.i306 = bitcast %union.VectorReg* %3090 to %"class.std::bitset"*
  %3091 = bitcast %"class.std::bitset"* %YMM1.i306 to i8*
  %3092 = load i64, i64* %RBP.i305
  %3093 = sub i64 %3092, 44
  %3094 = load i64, i64* %PC.i304
  %3095 = add i64 %3094, 5
  store i64 %3095, i64* %PC.i304
  %3096 = bitcast i8* %3091 to <2 x i32>*
  %3097 = load <2 x i32>, <2 x i32>* %3096, align 1
  %3098 = getelementptr inbounds i8, i8* %3091, i64 8
  %3099 = bitcast i8* %3098 to <2 x i32>*
  %3100 = load <2 x i32>, <2 x i32>* %3099, align 1
  %3101 = inttoptr i64 %3093 to i32*
  %3102 = load i32, i32* %3101
  %3103 = sitofp i32 %3102 to float
  %3104 = bitcast i8* %3091 to float*
  store float %3103, float* %3104, align 1
  %3105 = extractelement <2 x i32> %3097, i32 1
  %3106 = getelementptr inbounds i8, i8* %3091, i64 4
  %3107 = bitcast i8* %3106 to i32*
  store i32 %3105, i32* %3107, align 1
  %3108 = extractelement <2 x i32> %3100, i32 0
  %3109 = bitcast i8* %3098 to i32*
  store i32 %3108, i32* %3109, align 1
  %3110 = extractelement <2 x i32> %3100, i32 1
  %3111 = getelementptr inbounds i8, i8* %3091, i64 12
  %3112 = bitcast i8* %3111 to i32*
  store i32 %3110, i32* %3112, align 1
  store %struct.Memory* %loadMem_41a0b4, %struct.Memory** %MEMORY
  %loadMem_41a0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3116, i64 0, i64 1
  %YMM1.i302 = bitcast %union.VectorReg* %3117 to %"class.std::bitset"*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3118, i64 0, i64 1
  %XMM1.i303 = bitcast %union.VectorReg* %3119 to %union.vec128_t*
  %3120 = bitcast %"class.std::bitset"* %YMM1.i302 to i8*
  %3121 = bitcast %union.vec128_t* %XMM1.i303 to i8*
  %3122 = load i64, i64* %PC.i301
  %3123 = add i64 %3122, 4
  store i64 %3123, i64* %PC.i301
  %3124 = bitcast i8* %3121 to <2 x float>*
  %3125 = load <2 x float>, <2 x float>* %3124, align 1
  %3126 = extractelement <2 x float> %3125, i32 0
  %3127 = fpext float %3126 to double
  %3128 = bitcast i8* %3120 to double*
  store double %3127, double* %3128, align 1
  store %struct.Memory* %loadMem_41a0b9, %struct.Memory** %MEMORY
  %loadMem_41a0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3133 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3132, i64 0, i64 0
  %YMM0.i299 = bitcast %union.VectorReg* %3133 to %"class.std::bitset"*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3135 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3134, i64 0, i64 1
  %XMM1.i300 = bitcast %union.VectorReg* %3135 to %union.vec128_t*
  %3136 = bitcast %"class.std::bitset"* %YMM0.i299 to i8*
  %3137 = bitcast %"class.std::bitset"* %YMM0.i299 to i8*
  %3138 = bitcast %union.vec128_t* %XMM1.i300 to i8*
  %3139 = load i64, i64* %PC.i298
  %3140 = add i64 %3139, 4
  store i64 %3140, i64* %PC.i298
  %3141 = bitcast i8* %3137 to double*
  %3142 = load double, double* %3141, align 1
  %3143 = getelementptr inbounds i8, i8* %3137, i64 8
  %3144 = bitcast i8* %3143 to i64*
  %3145 = load i64, i64* %3144, align 1
  %3146 = bitcast i8* %3138 to double*
  %3147 = load double, double* %3146, align 1
  %3148 = fmul double %3142, %3147
  %3149 = bitcast i8* %3136 to double*
  store double %3148, double* %3149, align 1
  %3150 = getelementptr inbounds i8, i8* %3136, i64 8
  %3151 = bitcast i8* %3150 to i64*
  store i64 %3145, i64* %3151, align 1
  store %struct.Memory* %loadMem_41a0bd, %struct.Memory** %MEMORY
  %loadMem_41a0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 1
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3158, i64 0, i64 0
  %XMM0.i297 = bitcast %union.VectorReg* %3159 to %union.vec128_t*
  %3160 = bitcast %union.vec128_t* %XMM0.i297 to i8*
  %3161 = load i64, i64* %PC.i295
  %3162 = add i64 %3161, 4
  store i64 %3162, i64* %PC.i295
  %3163 = bitcast i8* %3160 to double*
  %3164 = load double, double* %3163, align 1
  %3165 = call double @llvm.trunc.f64(double %3164)
  %3166 = call double @llvm.fabs.f64(double %3165)
  %3167 = fcmp ogt double %3166, 0x41DFFFFFFFC00000
  %3168 = fptosi double %3165 to i32
  %3169 = zext i32 %3168 to i64
  %3170 = select i1 %3167, i64 2147483648, i64 %3169
  store i64 %3170, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_41a0c1, %struct.Memory** %MEMORY
  %loadMem_41a0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 1
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %3176 to i32*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 15
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RBP.i294
  %3181 = sub i64 %3180, 104
  %3182 = load i32, i32* %EAX.i293
  %3183 = zext i32 %3182 to i64
  %3184 = load i64, i64* %PC.i292
  %3185 = add i64 %3184, 3
  store i64 %3185, i64* %PC.i292
  %3186 = inttoptr i64 %3181 to i32*
  store i32 %3182, i32* %3186
  store %struct.Memory* %loadMem_41a0c5, %struct.Memory** %MEMORY
  br label %block_.L_41a0c8

block_.L_41a0c8:                                  ; preds = %block_.L_41a0ac, %block_41a09a
  %loadMem_41a0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 15
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %3195 to i64*
  %3196 = load i64, i64* %RBP.i291
  %3197 = sub i64 %3196, 104
  %3198 = load i64, i64* %PC.i289
  %3199 = add i64 %3198, 3
  store i64 %3199, i64* %PC.i289
  %3200 = inttoptr i64 %3197 to i32*
  %3201 = load i32, i32* %3200
  %3202 = zext i32 %3201 to i64
  store i64 %3202, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_41a0c8, %struct.Memory** %MEMORY
  %loadMem_41a0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 33
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 1
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %3208 to i32*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 15
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3211 to i64*
  %3212 = load i64, i64* %RBP.i288
  %3213 = sub i64 %3212, 48
  %3214 = load i32, i32* %EAX.i287
  %3215 = zext i32 %3214 to i64
  %3216 = load i64, i64* %PC.i286
  %3217 = add i64 %3216, 3
  store i64 %3217, i64* %PC.i286
  %3218 = inttoptr i64 %3213 to i32*
  store i32 %3214, i32* %3218
  store %struct.Memory* %loadMem_41a0cb, %struct.Memory** %MEMORY
  %loadMem_41a0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %PC.i285
  %3223 = add i64 %3222, 137
  %3224 = load i64, i64* %PC.i285
  %3225 = add i64 %3224, 5
  store i64 %3225, i64* %PC.i285
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3223, i64* %3226, align 8
  store %struct.Memory* %loadMem_41a0ce, %struct.Memory** %MEMORY
  br label %block_.L_41a157

block_.L_41a0d3:                                  ; preds = %block_41a065
  %loadMem_41a0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 15
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3233, i64 0, i64 0
  %YMM0.i284 = bitcast %union.VectorReg* %3234 to %"class.std::bitset"*
  %3235 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %3236 = load i64, i64* %RBP.i283
  %3237 = sub i64 %3236, 68
  %3238 = load i64, i64* %PC.i282
  %3239 = add i64 %3238, 5
  store i64 %3239, i64* %PC.i282
  %3240 = bitcast i8* %3235 to <2 x i32>*
  %3241 = load <2 x i32>, <2 x i32>* %3240, align 1
  %3242 = getelementptr inbounds i8, i8* %3235, i64 8
  %3243 = bitcast i8* %3242 to <2 x i32>*
  %3244 = load <2 x i32>, <2 x i32>* %3243, align 1
  %3245 = inttoptr i64 %3237 to i32*
  %3246 = load i32, i32* %3245
  %3247 = sitofp i32 %3246 to float
  %3248 = bitcast i8* %3235 to float*
  store float %3247, float* %3248, align 1
  %3249 = extractelement <2 x i32> %3241, i32 1
  %3250 = getelementptr inbounds i8, i8* %3235, i64 4
  %3251 = bitcast i8* %3250 to i32*
  store i32 %3249, i32* %3251, align 1
  %3252 = extractelement <2 x i32> %3244, i32 0
  %3253 = bitcast i8* %3242 to i32*
  store i32 %3252, i32* %3253, align 1
  %3254 = extractelement <2 x i32> %3244, i32 1
  %3255 = getelementptr inbounds i8, i8* %3235, i64 12
  %3256 = bitcast i8* %3255 to i32*
  store i32 %3254, i32* %3256, align 1
  store %struct.Memory* %loadMem_41a0d3, %struct.Memory** %MEMORY
  %loadMem_41a0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 15
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3263, i64 0, i64 1
  %YMM1.i281 = bitcast %union.VectorReg* %3264 to %"class.std::bitset"*
  %3265 = bitcast %"class.std::bitset"* %YMM1.i281 to i8*
  %3266 = load i64, i64* %RBP.i280
  %3267 = sub i64 %3266, 60
  %3268 = load i64, i64* %PC.i279
  %3269 = add i64 %3268, 5
  store i64 %3269, i64* %PC.i279
  %3270 = inttoptr i64 %3267 to float*
  %3271 = load float, float* %3270
  %3272 = bitcast i8* %3265 to float*
  store float %3271, float* %3272, align 1
  %3273 = getelementptr inbounds i8, i8* %3265, i64 4
  %3274 = bitcast i8* %3273 to float*
  store float 0.000000e+00, float* %3274, align 1
  %3275 = getelementptr inbounds i8, i8* %3265, i64 8
  %3276 = bitcast i8* %3275 to float*
  store float 0.000000e+00, float* %3276, align 1
  %3277 = getelementptr inbounds i8, i8* %3265, i64 12
  %3278 = bitcast i8* %3277 to float*
  store float 0.000000e+00, float* %3278, align 1
  store %struct.Memory* %loadMem_41a0d8, %struct.Memory** %MEMORY
  %loadMem_41a0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 15
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3285, i64 0, i64 2
  %YMM2.i278 = bitcast %union.VectorReg* %3286 to %"class.std::bitset"*
  %3287 = bitcast %"class.std::bitset"* %YMM2.i278 to i8*
  %3288 = load i64, i64* %RBP.i277
  %3289 = sub i64 %3288, 56
  %3290 = load i64, i64* %PC.i276
  %3291 = add i64 %3290, 5
  store i64 %3291, i64* %PC.i276
  %3292 = inttoptr i64 %3289 to float*
  %3293 = load float, float* %3292
  %3294 = bitcast i8* %3287 to float*
  store float %3293, float* %3294, align 1
  %3295 = getelementptr inbounds i8, i8* %3287, i64 4
  %3296 = bitcast i8* %3295 to float*
  store float 0.000000e+00, float* %3296, align 1
  %3297 = getelementptr inbounds i8, i8* %3287, i64 8
  %3298 = bitcast i8* %3297 to float*
  store float 0.000000e+00, float* %3298, align 1
  %3299 = getelementptr inbounds i8, i8* %3287, i64 12
  %3300 = bitcast i8* %3299 to float*
  store float 0.000000e+00, float* %3300, align 1
  store %struct.Memory* %loadMem_41a0dd, %struct.Memory** %MEMORY
  %loadMem1_41a0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %PC.i275
  %3305 = add i64 %3304, 510
  %3306 = load i64, i64* %PC.i275
  %3307 = add i64 %3306, 5
  %3308 = load i64, i64* %PC.i275
  %3309 = add i64 %3308, 5
  store i64 %3309, i64* %PC.i275
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3311 = load i64, i64* %3310, align 8
  %3312 = add i64 %3311, -8
  %3313 = inttoptr i64 %3312 to i64*
  store i64 %3307, i64* %3313
  store i64 %3312, i64* %3310, align 8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3305, i64* %3314, align 8
  store %struct.Memory* %loadMem1_41a0e2, %struct.Memory** %MEMORY
  %loadMem2_41a0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a0e2 = load i64, i64* %3
  %call2_41a0e2 = call %struct.Memory* @sub_41a2e0.EVDDistribution(%struct.State* %0, i64 %loadPC_41a0e2, %struct.Memory* %loadMem2_41a0e2)
  store %struct.Memory* %call2_41a0e2, %struct.Memory** %MEMORY
  %loadMem_41a0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3318, i64 0, i64 1
  %YMM1.i274 = bitcast %union.VectorReg* %3319 to %"class.std::bitset"*
  %3320 = bitcast %"class.std::bitset"* %YMM1.i274 to i8*
  %3321 = load i64, i64* %PC.i273
  %3322 = add i64 %3321, ptrtoint (%G_0x3a6f1__rip__type* @G_0x3a6f1__rip_ to i64)
  %3323 = load i64, i64* %PC.i273
  %3324 = add i64 %3323, 8
  store i64 %3324, i64* %PC.i273
  %3325 = inttoptr i64 %3322 to double*
  %3326 = load double, double* %3325
  %3327 = bitcast i8* %3320 to double*
  store double %3326, double* %3327, align 1
  %3328 = getelementptr inbounds i8, i8* %3320, i64 8
  %3329 = bitcast i8* %3328 to double*
  store double 0.000000e+00, double* %3329, align 1
  store %struct.Memory* %loadMem_41a0e7, %struct.Memory** %MEMORY
  %loadMem_41a0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 15
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3337 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3336, i64 0, i64 0
  %XMM0.i272 = bitcast %union.VectorReg* %3337 to %union.vec128_t*
  %3338 = load i64, i64* %RBP.i271
  %3339 = sub i64 %3338, 96
  %3340 = bitcast %union.vec128_t* %XMM0.i272 to i8*
  %3341 = load i64, i64* %PC.i270
  %3342 = add i64 %3341, 5
  store i64 %3342, i64* %PC.i270
  %3343 = bitcast i8* %3340 to double*
  %3344 = load double, double* %3343, align 1
  %3345 = inttoptr i64 %3339 to double*
  store double %3344, double* %3345
  store %struct.Memory* %loadMem_41a0ef, %struct.Memory** %MEMORY
  %loadMem_41a0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 1
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 15
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %RBP.i269
  %3356 = sub i64 %3355, 16
  %3357 = load i64, i64* %PC.i267
  %3358 = add i64 %3357, 4
  store i64 %3358, i64* %PC.i267
  %3359 = inttoptr i64 %3356 to i64*
  %3360 = load i64, i64* %3359
  store i64 %3360, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_41a0f4, %struct.Memory** %MEMORY
  %loadMem_41a0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 1
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 5
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %RAX.i265
  %3371 = add i64 %3370, 28
  %3372 = load i64, i64* %PC.i264
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %PC.i264
  %3374 = inttoptr i64 %3371 to i32*
  %3375 = load i32, i32* %3374
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_41a0f8, %struct.Memory** %MEMORY
  %loadMem_41a0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 5
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 15
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %RCX.i262
  %3387 = load i64, i64* %RBP.i263
  %3388 = sub i64 %3387, 44
  %3389 = load i64, i64* %PC.i261
  %3390 = add i64 %3389, 3
  store i64 %3390, i64* %PC.i261
  %3391 = trunc i64 %3386 to i32
  %3392 = inttoptr i64 %3388 to i32*
  %3393 = load i32, i32* %3392
  %3394 = sub i32 %3391, %3393
  %3395 = zext i32 %3394 to i64
  store i64 %3395, i64* %RCX.i262, align 8
  %3396 = icmp ult i32 %3391, %3393
  %3397 = zext i1 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3397, i8* %3398, align 1
  %3399 = and i32 %3394, 255
  %3400 = call i32 @llvm.ctpop.i32(i32 %3399)
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3403, i8* %3404, align 1
  %3405 = xor i32 %3393, %3391
  %3406 = xor i32 %3405, %3394
  %3407 = lshr i32 %3406, 4
  %3408 = trunc i32 %3407 to i8
  %3409 = and i8 %3408, 1
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3409, i8* %3410, align 1
  %3411 = icmp eq i32 %3394, 0
  %3412 = zext i1 %3411 to i8
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3412, i8* %3413, align 1
  %3414 = lshr i32 %3394, 31
  %3415 = trunc i32 %3414 to i8
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3415, i8* %3416, align 1
  %3417 = lshr i32 %3391, 31
  %3418 = lshr i32 %3393, 31
  %3419 = xor i32 %3418, %3417
  %3420 = xor i32 %3414, %3417
  %3421 = add i32 %3420, %3419
  %3422 = icmp eq i32 %3421, 2
  %3423 = zext i1 %3422 to i8
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3423, i8* %3424, align 1
  store %struct.Memory* %loadMem_41a0fb, %struct.Memory** %MEMORY
  %loadMem_41a0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 15
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3431, i64 0, i64 0
  %YMM0.i260 = bitcast %union.VectorReg* %3432 to %"class.std::bitset"*
  %3433 = bitcast %"class.std::bitset"* %YMM0.i260 to i8*
  %3434 = load i64, i64* %RBP.i259
  %3435 = sub i64 %3434, 44
  %3436 = load i64, i64* %PC.i258
  %3437 = add i64 %3436, 5
  store i64 %3437, i64* %PC.i258
  %3438 = inttoptr i64 %3435 to i32*
  %3439 = load i32, i32* %3438
  %3440 = sitofp i32 %3439 to double
  %3441 = bitcast i8* %3433 to double*
  store double %3440, double* %3441, align 1
  store %struct.Memory* %loadMem_41a0fe, %struct.Memory** %MEMORY
  %loadMem_41a103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 15
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3449 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3448, i64 0, i64 0
  %YMM0.i257 = bitcast %union.VectorReg* %3449 to %"class.std::bitset"*
  %3450 = bitcast %"class.std::bitset"* %YMM0.i257 to i8*
  %3451 = bitcast %"class.std::bitset"* %YMM0.i257 to i8*
  %3452 = load i64, i64* %RBP.i256
  %3453 = sub i64 %3452, 96
  %3454 = load i64, i64* %PC.i255
  %3455 = add i64 %3454, 5
  store i64 %3455, i64* %PC.i255
  %3456 = bitcast i8* %3451 to double*
  %3457 = load double, double* %3456, align 1
  %3458 = getelementptr inbounds i8, i8* %3451, i64 8
  %3459 = bitcast i8* %3458 to i64*
  %3460 = load i64, i64* %3459, align 1
  %3461 = inttoptr i64 %3453 to double*
  %3462 = load double, double* %3461
  %3463 = fmul double %3457, %3462
  %3464 = bitcast i8* %3450 to double*
  store double %3463, double* %3464, align 1
  %3465 = getelementptr inbounds i8, i8* %3450, i64 8
  %3466 = bitcast i8* %3465 to i64*
  store i64 %3460, i64* %3466, align 1
  store %struct.Memory* %loadMem_41a103, %struct.Memory** %MEMORY
  %loadMem_41a108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 33
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3469 to i64*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 15
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3473, i64 0, i64 1
  %YMM1.i254 = bitcast %union.VectorReg* %3474 to %"class.std::bitset"*
  %3475 = bitcast %"class.std::bitset"* %YMM1.i254 to i8*
  %3476 = bitcast %"class.std::bitset"* %YMM1.i254 to i8*
  %3477 = load i64, i64* %RBP.i253
  %3478 = sub i64 %3477, 96
  %3479 = load i64, i64* %PC.i252
  %3480 = add i64 %3479, 5
  store i64 %3480, i64* %PC.i252
  %3481 = bitcast i8* %3476 to double*
  %3482 = load double, double* %3481, align 1
  %3483 = getelementptr inbounds i8, i8* %3476, i64 8
  %3484 = bitcast i8* %3483 to i64*
  %3485 = load i64, i64* %3484, align 1
  %3486 = inttoptr i64 %3478 to double*
  %3487 = load double, double* %3486
  %3488 = fsub double %3482, %3487
  %3489 = bitcast i8* %3475 to double*
  store double %3488, double* %3489, align 1
  %3490 = getelementptr inbounds i8, i8* %3475, i64 8
  %3491 = bitcast i8* %3490 to i64*
  store i64 %3485, i64* %3491, align 1
  store %struct.Memory* %loadMem_41a108, %struct.Memory** %MEMORY
  %loadMem_41a10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3495, i64 0, i64 0
  %YMM0.i250 = bitcast %union.VectorReg* %3496 to %"class.std::bitset"*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3497, i64 0, i64 1
  %XMM1.i251 = bitcast %union.VectorReg* %3498 to %union.vec128_t*
  %3499 = bitcast %"class.std::bitset"* %YMM0.i250 to i8*
  %3500 = bitcast %"class.std::bitset"* %YMM0.i250 to i8*
  %3501 = bitcast %union.vec128_t* %XMM1.i251 to i8*
  %3502 = load i64, i64* %PC.i249
  %3503 = add i64 %3502, 4
  store i64 %3503, i64* %PC.i249
  %3504 = bitcast i8* %3500 to double*
  %3505 = load double, double* %3504, align 1
  %3506 = getelementptr inbounds i8, i8* %3500, i64 8
  %3507 = bitcast i8* %3506 to i64*
  %3508 = load i64, i64* %3507, align 1
  %3509 = bitcast i8* %3501 to double*
  %3510 = load double, double* %3509, align 1
  %3511 = fdiv double %3505, %3510
  %3512 = bitcast i8* %3499 to double*
  store double %3511, double* %3512, align 1
  %3513 = getelementptr inbounds i8, i8* %3499, i64 8
  %3514 = bitcast i8* %3513 to i64*
  store i64 %3508, i64* %3514, align 1
  store %struct.Memory* %loadMem_41a10d, %struct.Memory** %MEMORY
  %loadMem_41a111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 33
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 7
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3522 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3521, i64 0, i64 0
  %XMM0.i248 = bitcast %union.VectorReg* %3522 to %union.vec128_t*
  %3523 = bitcast %union.vec128_t* %XMM0.i248 to i8*
  %3524 = load i64, i64* %PC.i246
  %3525 = add i64 %3524, 4
  store i64 %3525, i64* %PC.i246
  %3526 = bitcast i8* %3523 to double*
  %3527 = load double, double* %3526, align 1
  %3528 = call double @llvm.trunc.f64(double %3527)
  %3529 = call double @llvm.fabs.f64(double %3528)
  %3530 = fcmp ogt double %3529, 0x41DFFFFFFFC00000
  %3531 = fptosi double %3528 to i32
  %3532 = zext i32 %3531 to i64
  %3533 = select i1 %3530, i64 2147483648, i64 %3532
  store i64 %3533, i64* %RDX.i247, align 8
  store %struct.Memory* %loadMem_41a111, %struct.Memory** %MEMORY
  %loadMem_41a115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 5
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %ECX.i245 = bitcast %union.anon* %3539 to i32*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 7
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3542 to i32*
  %3543 = load i32, i32* %ECX.i245
  %3544 = zext i32 %3543 to i64
  %3545 = load i32, i32* %EDX.i
  %3546 = zext i32 %3545 to i64
  %3547 = load i64, i64* %PC.i244
  %3548 = add i64 %3547, 2
  store i64 %3548, i64* %PC.i244
  %3549 = sub i32 %3543, %3545
  %3550 = icmp ult i32 %3543, %3545
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3551, i8* %3552, align 1
  %3553 = and i32 %3549, 255
  %3554 = call i32 @llvm.ctpop.i32(i32 %3553)
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3557, i8* %3558, align 1
  %3559 = xor i64 %3546, %3544
  %3560 = trunc i64 %3559 to i32
  %3561 = xor i32 %3560, %3549
  %3562 = lshr i32 %3561, 4
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3564, i8* %3565, align 1
  %3566 = icmp eq i32 %3549, 0
  %3567 = zext i1 %3566 to i8
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3567, i8* %3568, align 1
  %3569 = lshr i32 %3549, 31
  %3570 = trunc i32 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3570, i8* %3571, align 1
  %3572 = lshr i32 %3543, 31
  %3573 = lshr i32 %3545, 31
  %3574 = xor i32 %3573, %3572
  %3575 = xor i32 %3569, %3572
  %3576 = add i32 %3575, %3574
  %3577 = icmp eq i32 %3576, 2
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3578, i8* %3579, align 1
  store %struct.Memory* %loadMem_41a115, %struct.Memory** %MEMORY
  %loadMem_41a117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i243
  %3584 = add i64 %3583, 24
  %3585 = load i64, i64* %PC.i243
  %3586 = add i64 %3585, 6
  %3587 = load i64, i64* %PC.i243
  %3588 = add i64 %3587, 6
  store i64 %3588, i64* %PC.i243
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3590 = load i8, i8* %3589, align 1
  %3591 = icmp ne i8 %3590, 0
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3593 = load i8, i8* %3592, align 1
  %3594 = icmp ne i8 %3593, 0
  %3595 = xor i1 %3591, %3594
  %3596 = xor i1 %3595, true
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %BRANCH_TAKEN, align 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3599 = select i1 %3595, i64 %3586, i64 %3584
  store i64 %3599, i64* %3598, align 8
  store %struct.Memory* %loadMem_41a117, %struct.Memory** %MEMORY
  %loadBr_41a117 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a117 = icmp eq i8 %loadBr_41a117, 1
  br i1 %cmpBr_41a117, label %block_.L_41a12f, label %block_41a11d

block_41a11d:                                     ; preds = %block_.L_41a0d3
  %loadMem_41a11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 1
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 15
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3608 to i64*
  %3609 = load i64, i64* %RBP.i242
  %3610 = sub i64 %3609, 16
  %3611 = load i64, i64* %PC.i240
  %3612 = add i64 %3611, 4
  store i64 %3612, i64* %PC.i240
  %3613 = inttoptr i64 %3610 to i64*
  %3614 = load i64, i64* %3613
  store i64 %3614, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_41a11d, %struct.Memory** %MEMORY
  %loadMem_41a121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 1
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 5
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RAX.i238
  %3625 = add i64 %3624, 28
  %3626 = load i64, i64* %PC.i237
  %3627 = add i64 %3626, 3
  store i64 %3627, i64* %PC.i237
  %3628 = inttoptr i64 %3625 to i32*
  %3629 = load i32, i32* %3628
  %3630 = zext i32 %3629 to i64
  store i64 %3630, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_41a121, %struct.Memory** %MEMORY
  %loadMem_41a124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 5
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 15
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RCX.i235
  %3641 = load i64, i64* %RBP.i236
  %3642 = sub i64 %3641, 44
  %3643 = load i64, i64* %PC.i234
  %3644 = add i64 %3643, 3
  store i64 %3644, i64* %PC.i234
  %3645 = trunc i64 %3640 to i32
  %3646 = inttoptr i64 %3642 to i32*
  %3647 = load i32, i32* %3646
  %3648 = sub i32 %3645, %3647
  %3649 = zext i32 %3648 to i64
  store i64 %3649, i64* %RCX.i235, align 8
  %3650 = icmp ult i32 %3645, %3647
  %3651 = zext i1 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3651, i8* %3652, align 1
  %3653 = and i32 %3648, 255
  %3654 = call i32 @llvm.ctpop.i32(i32 %3653)
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = xor i8 %3656, 1
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3657, i8* %3658, align 1
  %3659 = xor i32 %3647, %3645
  %3660 = xor i32 %3659, %3648
  %3661 = lshr i32 %3660, 4
  %3662 = trunc i32 %3661 to i8
  %3663 = and i8 %3662, 1
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3663, i8* %3664, align 1
  %3665 = icmp eq i32 %3648, 0
  %3666 = zext i1 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3666, i8* %3667, align 1
  %3668 = lshr i32 %3648, 31
  %3669 = trunc i32 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3669, i8* %3670, align 1
  %3671 = lshr i32 %3645, 31
  %3672 = lshr i32 %3647, 31
  %3673 = xor i32 %3672, %3671
  %3674 = xor i32 %3668, %3671
  %3675 = add i32 %3674, %3673
  %3676 = icmp eq i32 %3675, 2
  %3677 = zext i1 %3676 to i8
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3677, i8* %3678, align 1
  store %struct.Memory* %loadMem_41a124, %struct.Memory** %MEMORY
  %loadMem_41a127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 5
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3684 to i32*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i233
  %3689 = sub i64 %3688, 108
  %3690 = load i32, i32* %ECX.i
  %3691 = zext i32 %3690 to i64
  %3692 = load i64, i64* %PC.i232
  %3693 = add i64 %3692, 3
  store i64 %3693, i64* %PC.i232
  %3694 = inttoptr i64 %3689 to i32*
  store i32 %3690, i32* %3694
  store %struct.Memory* %loadMem_41a127, %struct.Memory** %MEMORY
  %loadMem_41a12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3697 to i64*
  %3698 = load i64, i64* %PC.i231
  %3699 = add i64 %3698, 39
  %3700 = load i64, i64* %PC.i231
  %3701 = add i64 %3700, 5
  store i64 %3701, i64* %PC.i231
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3699, i64* %3702, align 8
  store %struct.Memory* %loadMem_41a12a, %struct.Memory** %MEMORY
  br label %block_.L_41a151

block_.L_41a12f:                                  ; preds = %block_.L_41a0d3
  %loadMem_41a12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3706, i64 0, i64 0
  %YMM0.i230 = bitcast %union.VectorReg* %3707 to %"class.std::bitset"*
  %3708 = bitcast %"class.std::bitset"* %YMM0.i230 to i8*
  %3709 = load i64, i64* %PC.i229
  %3710 = add i64 %3709, ptrtoint (%G_0x3a6a9__rip__type* @G_0x3a6a9__rip_ to i64)
  %3711 = load i64, i64* %PC.i229
  %3712 = add i64 %3711, 8
  store i64 %3712, i64* %PC.i229
  %3713 = inttoptr i64 %3710 to double*
  %3714 = load double, double* %3713
  %3715 = bitcast i8* %3708 to double*
  store double %3714, double* %3715, align 1
  %3716 = getelementptr inbounds i8, i8* %3708, i64 8
  %3717 = bitcast i8* %3716 to double*
  store double 0.000000e+00, double* %3717, align 1
  store %struct.Memory* %loadMem_41a12f, %struct.Memory** %MEMORY
  %loadMem_41a137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 15
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3724, i64 0, i64 1
  %YMM1.i228 = bitcast %union.VectorReg* %3725 to %"class.std::bitset"*
  %3726 = bitcast %"class.std::bitset"* %YMM1.i228 to i8*
  %3727 = load i64, i64* %RBP.i227
  %3728 = sub i64 %3727, 44
  %3729 = load i64, i64* %PC.i226
  %3730 = add i64 %3729, 5
  store i64 %3730, i64* %PC.i226
  %3731 = inttoptr i64 %3728 to i32*
  %3732 = load i32, i32* %3731
  %3733 = sitofp i32 %3732 to double
  %3734 = bitcast i8* %3726 to double*
  store double %3733, double* %3734, align 1
  store %struct.Memory* %loadMem_41a137, %struct.Memory** %MEMORY
  %loadMem_41a13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 15
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3741, i64 0, i64 1
  %YMM1.i225 = bitcast %union.VectorReg* %3742 to %"class.std::bitset"*
  %3743 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %3744 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %3745 = load i64, i64* %RBP.i224
  %3746 = sub i64 %3745, 96
  %3747 = load i64, i64* %PC.i223
  %3748 = add i64 %3747, 5
  store i64 %3748, i64* %PC.i223
  %3749 = bitcast i8* %3744 to double*
  %3750 = load double, double* %3749, align 1
  %3751 = getelementptr inbounds i8, i8* %3744, i64 8
  %3752 = bitcast i8* %3751 to i64*
  %3753 = load i64, i64* %3752, align 1
  %3754 = inttoptr i64 %3746 to double*
  %3755 = load double, double* %3754
  %3756 = fmul double %3750, %3755
  %3757 = bitcast i8* %3743 to double*
  store double %3756, double* %3757, align 1
  %3758 = getelementptr inbounds i8, i8* %3743, i64 8
  %3759 = bitcast i8* %3758 to i64*
  store i64 %3753, i64* %3759, align 1
  store %struct.Memory* %loadMem_41a13c, %struct.Memory** %MEMORY
  %loadMem_41a141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 33
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 15
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3767 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3766, i64 0, i64 0
  %YMM0.i222 = bitcast %union.VectorReg* %3767 to %"class.std::bitset"*
  %3768 = bitcast %"class.std::bitset"* %YMM0.i222 to i8*
  %3769 = bitcast %"class.std::bitset"* %YMM0.i222 to i8*
  %3770 = load i64, i64* %RBP.i221
  %3771 = sub i64 %3770, 96
  %3772 = load i64, i64* %PC.i220
  %3773 = add i64 %3772, 5
  store i64 %3773, i64* %PC.i220
  %3774 = bitcast i8* %3769 to double*
  %3775 = load double, double* %3774, align 1
  %3776 = getelementptr inbounds i8, i8* %3769, i64 8
  %3777 = bitcast i8* %3776 to i64*
  %3778 = load i64, i64* %3777, align 1
  %3779 = inttoptr i64 %3771 to double*
  %3780 = load double, double* %3779
  %3781 = fsub double %3775, %3780
  %3782 = bitcast i8* %3768 to double*
  store double %3781, double* %3782, align 1
  %3783 = getelementptr inbounds i8, i8* %3768, i64 8
  %3784 = bitcast i8* %3783 to i64*
  store i64 %3778, i64* %3784, align 1
  store %struct.Memory* %loadMem_41a141, %struct.Memory** %MEMORY
  %loadMem_41a146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3788, i64 0, i64 1
  %YMM1.i218 = bitcast %union.VectorReg* %3789 to %"class.std::bitset"*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3790, i64 0, i64 0
  %XMM0.i219 = bitcast %union.VectorReg* %3791 to %union.vec128_t*
  %3792 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %3793 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %3794 = bitcast %union.vec128_t* %XMM0.i219 to i8*
  %3795 = load i64, i64* %PC.i217
  %3796 = add i64 %3795, 4
  store i64 %3796, i64* %PC.i217
  %3797 = bitcast i8* %3793 to double*
  %3798 = load double, double* %3797, align 1
  %3799 = getelementptr inbounds i8, i8* %3793, i64 8
  %3800 = bitcast i8* %3799 to i64*
  %3801 = load i64, i64* %3800, align 1
  %3802 = bitcast i8* %3794 to double*
  %3803 = load double, double* %3802, align 1
  %3804 = fdiv double %3798, %3803
  %3805 = bitcast i8* %3792 to double*
  store double %3804, double* %3805, align 1
  %3806 = getelementptr inbounds i8, i8* %3792, i64 8
  %3807 = bitcast i8* %3806 to i64*
  store i64 %3801, i64* %3807, align 1
  store %struct.Memory* %loadMem_41a146, %struct.Memory** %MEMORY
  %loadMem_41a14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 1
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3814, i64 0, i64 1
  %XMM1.i216 = bitcast %union.VectorReg* %3815 to %union.vec128_t*
  %3816 = bitcast %union.vec128_t* %XMM1.i216 to i8*
  %3817 = load i64, i64* %PC.i214
  %3818 = add i64 %3817, 4
  store i64 %3818, i64* %PC.i214
  %3819 = bitcast i8* %3816 to double*
  %3820 = load double, double* %3819, align 1
  %3821 = call double @llvm.trunc.f64(double %3820)
  %3822 = call double @llvm.fabs.f64(double %3821)
  %3823 = fcmp ogt double %3822, 0x41DFFFFFFFC00000
  %3824 = fptosi double %3821 to i32
  %3825 = zext i32 %3824 to i64
  %3826 = select i1 %3823, i64 2147483648, i64 %3825
  store i64 %3826, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_41a14a, %struct.Memory** %MEMORY
  %loadMem_41a14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 1
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %3832 to i32*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 15
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %RBP.i213
  %3837 = sub i64 %3836, 108
  %3838 = load i32, i32* %EAX.i212
  %3839 = zext i32 %3838 to i64
  %3840 = load i64, i64* %PC.i211
  %3841 = add i64 %3840, 3
  store i64 %3841, i64* %PC.i211
  %3842 = inttoptr i64 %3837 to i32*
  store i32 %3838, i32* %3842
  store %struct.Memory* %loadMem_41a14e, %struct.Memory** %MEMORY
  br label %block_.L_41a151

block_.L_41a151:                                  ; preds = %block_.L_41a12f, %block_41a11d
  %loadMem_41a151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 15
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %RBP.i210
  %3853 = sub i64 %3852, 108
  %3854 = load i64, i64* %PC.i208
  %3855 = add i64 %3854, 3
  store i64 %3855, i64* %PC.i208
  %3856 = inttoptr i64 %3853 to i32*
  %3857 = load i32, i32* %3856
  %3858 = zext i32 %3857 to i64
  store i64 %3858, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_41a151, %struct.Memory** %MEMORY
  %loadMem_41a154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 1
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %3864 to i32*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 15
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %3867 to i64*
  %3868 = load i64, i64* %RBP.i207
  %3869 = sub i64 %3868, 48
  %3870 = load i32, i32* %EAX.i206
  %3871 = zext i32 %3870 to i64
  %3872 = load i64, i64* %PC.i205
  %3873 = add i64 %3872, 3
  store i64 %3873, i64* %PC.i205
  %3874 = inttoptr i64 %3869 to i32*
  store i32 %3870, i32* %3874
  store %struct.Memory* %loadMem_41a154, %struct.Memory** %MEMORY
  br label %block_.L_41a157

block_.L_41a157:                                  ; preds = %block_.L_41a151, %block_.L_41a0c8
  %loadMem_41a157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3877 to i64*
  %3878 = load i64, i64* %PC.i204
  %3879 = add i64 %3878, 5
  %3880 = load i64, i64* %PC.i204
  %3881 = add i64 %3880, 5
  store i64 %3881, i64* %PC.i204
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3879, i64* %3882, align 8
  store %struct.Memory* %loadMem_41a157, %struct.Memory** %MEMORY
  br label %block_.L_41a15c

block_.L_41a15c:                                  ; preds = %block_.L_41a157, %block_.L_41a05b
  %loadMem_41a15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RBP.i203
  %3890 = sub i64 %3889, 20
  %3891 = load i64, i64* %PC.i202
  %3892 = add i64 %3891, 4
  store i64 %3892, i64* %PC.i202
  %3893 = inttoptr i64 %3890 to i32*
  %3894 = load i32, i32* %3893
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3895, align 1
  %3896 = and i32 %3894, 255
  %3897 = call i32 @llvm.ctpop.i32(i32 %3896)
  %3898 = trunc i32 %3897 to i8
  %3899 = and i8 %3898, 1
  %3900 = xor i8 %3899, 1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3900, i8* %3901, align 1
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3902, align 1
  %3903 = icmp eq i32 %3894, 0
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3904, i8* %3905, align 1
  %3906 = lshr i32 %3894, 31
  %3907 = trunc i32 %3906 to i8
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3907, i8* %3908, align 1
  %3909 = lshr i32 %3894, 31
  %3910 = xor i32 %3906, %3909
  %3911 = add i32 %3910, %3909
  %3912 = icmp eq i32 %3911, 2
  %3913 = zext i1 %3912 to i8
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3913, i8* %3914, align 1
  store %struct.Memory* %loadMem_41a15c, %struct.Memory** %MEMORY
  %loadMem_41a160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 33
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3917 to i64*
  %3918 = load i64, i64* %PC.i201
  %3919 = add i64 %3918, 57
  %3920 = load i64, i64* %PC.i201
  %3921 = add i64 %3920, 6
  %3922 = load i64, i64* %PC.i201
  %3923 = add i64 %3922, 6
  store i64 %3923, i64* %PC.i201
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3925 = load i8, i8* %3924, align 1
  store i8 %3925, i8* %BRANCH_TAKEN, align 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3927 = icmp ne i8 %3925, 0
  %3928 = select i1 %3927, i64 %3919, i64 %3921
  store i64 %3928, i64* %3926, align 8
  store %struct.Memory* %loadMem_41a160, %struct.Memory** %MEMORY
  %loadBr_41a160 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a160 = icmp eq i8 %loadBr_41a160, 1
  br i1 %cmpBr_41a160, label %block_.L_41a199, label %block_41a166

block_41a166:                                     ; preds = %block_.L_41a15c
  %loadMem_41a166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 15
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 17
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %R8.i200 = bitcast %union.anon* %3937 to i64*
  %3938 = load i64, i64* %RBP.i199
  %3939 = sub i64 %3938, 60
  %3940 = load i64, i64* %PC.i198
  %3941 = add i64 %3940, 4
  store i64 %3941, i64* %PC.i198
  store i64 %3939, i64* %R8.i200, align 8
  store %struct.Memory* %loadMem_41a166, %struct.Memory** %MEMORY
  %loadMem_41a16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 19
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %RBP.i197
  %3952 = sub i64 %3951, 56
  %3953 = load i64, i64* %PC.i196
  %3954 = add i64 %3953, 4
  store i64 %3954, i64* %PC.i196
  store i64 %3952, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_41a16a, %struct.Memory** %MEMORY
  %loadMem_41a16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 11
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 15
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %RBP.i195
  %3965 = sub i64 %3964, 32
  %3966 = load i64, i64* %PC.i193
  %3967 = add i64 %3966, 4
  store i64 %3967, i64* %PC.i193
  %3968 = inttoptr i64 %3965 to i64*
  %3969 = load i64, i64* %3968
  store i64 %3969, i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_41a16e, %struct.Memory** %MEMORY
  %loadMem_41a172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 9
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RSI.i191 = bitcast %union.anon* %3975 to i64*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 15
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3978 to i64*
  %3979 = load i64, i64* %RBP.i192
  %3980 = sub i64 %3979, 40
  %3981 = load i64, i64* %PC.i190
  %3982 = add i64 %3981, 4
  store i64 %3982, i64* %PC.i190
  %3983 = inttoptr i64 %3980 to i64*
  %3984 = load i64, i64* %3983
  store i64 %3984, i64* %RSI.i191, align 8
  store %struct.Memory* %loadMem_41a172, %struct.Memory** %MEMORY
  %loadMem_41a176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 33
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 7
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 15
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3993 to i64*
  %3994 = load i64, i64* %RBP.i189
  %3995 = sub i64 %3994, 52
  %3996 = load i64, i64* %PC.i187
  %3997 = add i64 %3996, 3
  store i64 %3997, i64* %PC.i187
  %3998 = inttoptr i64 %3995 to i32*
  %3999 = load i32, i32* %3998
  %4000 = zext i32 %3999 to i64
  store i64 %4000, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_41a176, %struct.Memory** %MEMORY
  %loadMem_41a179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 5
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 15
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RBP.i186
  %4011 = sub i64 %4010, 48
  %4012 = load i64, i64* %PC.i184
  %4013 = add i64 %4012, 3
  store i64 %4013, i64* %PC.i184
  %4014 = inttoptr i64 %4011 to i32*
  %4015 = load i32, i32* %4014
  %4016 = zext i32 %4015 to i64
  store i64 %4016, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_41a179, %struct.Memory** %MEMORY
  %loadMem_41a17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 33
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 15
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4023, i64 0, i64 0
  %YMM0.i183 = bitcast %union.VectorReg* %4024 to %"class.std::bitset"*
  %4025 = bitcast %"class.std::bitset"* %YMM0.i183 to i8*
  %4026 = load i64, i64* %RBP.i182
  %4027 = sub i64 %4026, 68
  %4028 = load i64, i64* %PC.i181
  %4029 = add i64 %4028, 5
  store i64 %4029, i64* %PC.i181
  %4030 = bitcast i8* %4025 to <2 x i32>*
  %4031 = load <2 x i32>, <2 x i32>* %4030, align 1
  %4032 = getelementptr inbounds i8, i8* %4025, i64 8
  %4033 = bitcast i8* %4032 to <2 x i32>*
  %4034 = load <2 x i32>, <2 x i32>* %4033, align 1
  %4035 = inttoptr i64 %4027 to i32*
  %4036 = load i32, i32* %4035
  %4037 = sitofp i32 %4036 to float
  %4038 = bitcast i8* %4025 to float*
  store float %4037, float* %4038, align 1
  %4039 = extractelement <2 x i32> %4031, i32 1
  %4040 = getelementptr inbounds i8, i8* %4025, i64 4
  %4041 = bitcast i8* %4040 to i32*
  store i32 %4039, i32* %4041, align 1
  %4042 = extractelement <2 x i32> %4034, i32 0
  %4043 = bitcast i8* %4032 to i32*
  store i32 %4042, i32* %4043, align 1
  %4044 = extractelement <2 x i32> %4034, i32 1
  %4045 = getelementptr inbounds i8, i8* %4025, i64 12
  %4046 = bitcast i8* %4045 to i32*
  store i32 %4044, i32* %4046, align 1
  store %struct.Memory* %loadMem_41a17c, %struct.Memory** %MEMORY
  %loadMem1_41a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 33
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4049 to i64*
  %4050 = load i64, i64* %PC.i180
  %4051 = add i64 %4050, 447
  %4052 = load i64, i64* %PC.i180
  %4053 = add i64 %4052, 5
  %4054 = load i64, i64* %PC.i180
  %4055 = add i64 %4054, 5
  store i64 %4055, i64* %PC.i180
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4057 = load i64, i64* %4056, align 8
  %4058 = add i64 %4057, -8
  %4059 = inttoptr i64 %4058 to i64*
  store i64 %4053, i64* %4059
  store i64 %4058, i64* %4056, align 8
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4051, i64* %4060, align 8
  store %struct.Memory* %loadMem1_41a181, %struct.Memory** %MEMORY
  %loadMem2_41a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a181 = load i64, i64* %3
  %call2_41a181 = call %struct.Memory* @sub_41a340.EVDCensoredFit(%struct.State* %0, i64 %loadPC_41a181, %struct.Memory* %loadMem2_41a181)
  store %struct.Memory* %call2_41a181, %struct.Memory** %MEMORY
  %loadMem_41a186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 1
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %EAX.i179 = bitcast %union.anon* %4066 to i32*
  %4067 = load i32, i32* %EAX.i179
  %4068 = zext i32 %4067 to i64
  %4069 = load i64, i64* %PC.i178
  %4070 = add i64 %4069, 3
  store i64 %4070, i64* %PC.i178
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4071, align 1
  %4072 = and i32 %4067, 255
  %4073 = call i32 @llvm.ctpop.i32(i32 %4072)
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = xor i8 %4075, 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4076, i8* %4077, align 1
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4078, align 1
  %4079 = icmp eq i32 %4067, 0
  %4080 = zext i1 %4079 to i8
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4080, i8* %4081, align 1
  %4082 = lshr i32 %4067, 31
  %4083 = trunc i32 %4082 to i8
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4083, i8* %4084, align 1
  %4085 = lshr i32 %4067, 31
  %4086 = xor i32 %4082, %4085
  %4087 = add i32 %4086, %4085
  %4088 = icmp eq i32 %4087, 2
  %4089 = zext i1 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4089, i8* %4090, align 1
  store %struct.Memory* %loadMem_41a186, %struct.Memory** %MEMORY
  %loadMem_41a189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %PC.i177
  %4095 = add i64 %4094, 11
  %4096 = load i64, i64* %PC.i177
  %4097 = add i64 %4096, 6
  %4098 = load i64, i64* %PC.i177
  %4099 = add i64 %4098, 6
  store i64 %4099, i64* %PC.i177
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4101 = load i8, i8* %4100, align 1
  %4102 = icmp eq i8 %4101, 0
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %BRANCH_TAKEN, align 1
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4105 = select i1 %4102, i64 %4095, i64 %4097
  store i64 %4105, i64* %4104, align 8
  store %struct.Memory* %loadMem_41a189, %struct.Memory** %MEMORY
  %loadBr_41a189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a189 = icmp eq i8 %loadBr_41a189, 1
  br i1 %cmpBr_41a189, label %block_.L_41a194, label %block_41a18f

block_41a18f:                                     ; preds = %block_41a166
  %loadMem_41a18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %PC.i176
  %4110 = add i64 %4109, 250
  %4111 = load i64, i64* %PC.i176
  %4112 = add i64 %4111, 5
  store i64 %4112, i64* %PC.i176
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4110, i64* %4113, align 8
  store %struct.Memory* %loadMem_41a18f, %struct.Memory** %MEMORY
  br label %block_.L_41a289

block_.L_41a194:                                  ; preds = %block_41a166
  %loadMem_41a194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 33
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4116 to i64*
  %4117 = load i64, i64* %PC.i175
  %4118 = add i64 %4117, 48
  %4119 = load i64, i64* %PC.i175
  %4120 = add i64 %4119, 5
  store i64 %4120, i64* %PC.i175
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4118, i64* %4121, align 8
  store %struct.Memory* %loadMem_41a194, %struct.Memory** %MEMORY
  br label %block_.L_41a1c4

block_.L_41a199:                                  ; preds = %block_.L_41a15c
  %loadMem_41a199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 33
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 5
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 15
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %RBP.i174
  %4132 = sub i64 %4131, 60
  %4133 = load i64, i64* %PC.i172
  %4134 = add i64 %4133, 4
  store i64 %4134, i64* %PC.i172
  store i64 %4132, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_41a199, %struct.Memory** %MEMORY
  %loadMem_41a19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 33
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 17
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4143 to i64*
  %4144 = load i64, i64* %RBP.i171
  %4145 = sub i64 %4144, 56
  %4146 = load i64, i64* %PC.i170
  %4147 = add i64 %4146, 4
  store i64 %4147, i64* %PC.i170
  store i64 %4145, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_41a19d, %struct.Memory** %MEMORY
  %loadMem_41a1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 11
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RDI.i168 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 15
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %RBP.i169
  %4158 = sub i64 %4157, 32
  %4159 = load i64, i64* %PC.i167
  %4160 = add i64 %4159, 4
  store i64 %4160, i64* %PC.i167
  %4161 = inttoptr i64 %4158 to i64*
  %4162 = load i64, i64* %4161
  store i64 %4162, i64* %RDI.i168, align 8
  store %struct.Memory* %loadMem_41a1a1, %struct.Memory** %MEMORY
  %loadMem_41a1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 9
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RSI.i165 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 15
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RBP.i166
  %4173 = sub i64 %4172, 40
  %4174 = load i64, i64* %PC.i164
  %4175 = add i64 %4174, 4
  store i64 %4175, i64* %PC.i164
  %4176 = inttoptr i64 %4173 to i64*
  %4177 = load i64, i64* %4176
  store i64 %4177, i64* %RSI.i165, align 8
  store %struct.Memory* %loadMem_41a1a5, %struct.Memory** %MEMORY
  %loadMem_41a1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 7
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 15
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %RBP.i163
  %4188 = sub i64 %4187, 52
  %4189 = load i64, i64* %PC.i162
  %4190 = add i64 %4189, 3
  store i64 %4190, i64* %PC.i162
  %4191 = inttoptr i64 %4188 to i32*
  %4192 = load i32, i32* %4191
  %4193 = zext i32 %4192 to i64
  store i64 %4193, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_41a1a9, %struct.Memory** %MEMORY
  %loadMem1_41a1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4196 to i64*
  %4197 = load i64, i64* %PC.i161
  %4198 = add i64 %4197, 1556
  %4199 = load i64, i64* %PC.i161
  %4200 = add i64 %4199, 5
  %4201 = load i64, i64* %PC.i161
  %4202 = add i64 %4201, 5
  store i64 %4202, i64* %PC.i161
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4204 = load i64, i64* %4203, align 8
  %4205 = add i64 %4204, -8
  %4206 = inttoptr i64 %4205 to i64*
  store i64 %4200, i64* %4206
  store i64 %4205, i64* %4203, align 8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4198, i64* %4207, align 8
  store %struct.Memory* %loadMem1_41a1ac, %struct.Memory** %MEMORY
  %loadMem2_41a1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a1ac = load i64, i64* %3
  %call2_41a1ac = call %struct.Memory* @sub_41a7c0.EVDMaxLikelyFit(%struct.State* %0, i64 %loadPC_41a1ac, %struct.Memory* %loadMem2_41a1ac)
  store %struct.Memory* %call2_41a1ac, %struct.Memory** %MEMORY
  %loadMem_41a1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 33
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4210 to i64*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 1
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %4213 to i32*
  %4214 = load i32, i32* %EAX.i160
  %4215 = zext i32 %4214 to i64
  %4216 = load i64, i64* %PC.i159
  %4217 = add i64 %4216, 3
  store i64 %4217, i64* %PC.i159
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4218, align 1
  %4219 = and i32 %4214, 255
  %4220 = call i32 @llvm.ctpop.i32(i32 %4219)
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = xor i8 %4222, 1
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4223, i8* %4224, align 1
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4225, align 1
  %4226 = icmp eq i32 %4214, 0
  %4227 = zext i1 %4226 to i8
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4227, i8* %4228, align 1
  %4229 = lshr i32 %4214, 31
  %4230 = trunc i32 %4229 to i8
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4230, i8* %4231, align 1
  %4232 = lshr i32 %4214, 31
  %4233 = xor i32 %4229, %4232
  %4234 = add i32 %4233, %4232
  %4235 = icmp eq i32 %4234, 2
  %4236 = zext i1 %4235 to i8
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4236, i8* %4237, align 1
  store %struct.Memory* %loadMem_41a1b1, %struct.Memory** %MEMORY
  %loadMem_41a1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %PC.i158
  %4242 = add i64 %4241, 11
  %4243 = load i64, i64* %PC.i158
  %4244 = add i64 %4243, 6
  %4245 = load i64, i64* %PC.i158
  %4246 = add i64 %4245, 6
  store i64 %4246, i64* %PC.i158
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4248 = load i8, i8* %4247, align 1
  %4249 = icmp eq i8 %4248, 0
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %BRANCH_TAKEN, align 1
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4252 = select i1 %4249, i64 %4242, i64 %4244
  store i64 %4252, i64* %4251, align 8
  store %struct.Memory* %loadMem_41a1b4, %struct.Memory** %MEMORY
  %loadBr_41a1b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a1b4 = icmp eq i8 %loadBr_41a1b4, 1
  br i1 %cmpBr_41a1b4, label %block_.L_41a1bf, label %block_41a1ba

block_41a1ba:                                     ; preds = %block_.L_41a199
  %loadMem_41a1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4255 to i64*
  %4256 = load i64, i64* %PC.i157
  %4257 = add i64 %4256, 207
  %4258 = load i64, i64* %PC.i157
  %4259 = add i64 %4258, 5
  store i64 %4259, i64* %PC.i157
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4257, i64* %4260, align 8
  store %struct.Memory* %loadMem_41a1ba, %struct.Memory** %MEMORY
  br label %block_.L_41a289

block_.L_41a1bf:                                  ; preds = %block_.L_41a199
  %loadMem_41a1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 33
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4263 to i64*
  %4264 = load i64, i64* %PC.i156
  %4265 = add i64 %4264, 5
  %4266 = load i64, i64* %PC.i156
  %4267 = add i64 %4266, 5
  store i64 %4267, i64* %PC.i156
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4265, i64* %4268, align 8
  store %struct.Memory* %loadMem_41a1bf, %struct.Memory** %MEMORY
  br label %block_.L_41a1c4

block_.L_41a1c4:                                  ; preds = %block_.L_41a1bf, %block_.L_41a194
  %loadMem_41a1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 15
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4275, i64 0, i64 0
  %YMM0.i155 = bitcast %union.VectorReg* %4276 to %"class.std::bitset"*
  %4277 = bitcast %"class.std::bitset"* %YMM0.i155 to i8*
  %4278 = load i64, i64* %RBP.i154
  %4279 = sub i64 %4278, 60
  %4280 = load i64, i64* %PC.i153
  %4281 = add i64 %4280, 5
  store i64 %4281, i64* %PC.i153
  %4282 = inttoptr i64 %4279 to float*
  %4283 = load float, float* %4282
  %4284 = fpext float %4283 to double
  %4285 = bitcast i8* %4277 to double*
  store double %4284, double* %4285, align 1
  store %struct.Memory* %loadMem_41a1c4, %struct.Memory** %MEMORY
  %loadMem_41a1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 1
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 15
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %4294 to i64*
  %4295 = load i64, i64* %RBP.i152
  %4296 = sub i64 %4295, 44
  %4297 = load i64, i64* %PC.i150
  %4298 = add i64 %4297, 3
  store i64 %4298, i64* %PC.i150
  %4299 = inttoptr i64 %4296 to i32*
  %4300 = load i32, i32* %4299
  %4301 = zext i32 %4300 to i64
  store i64 %4301, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_41a1c9, %struct.Memory** %MEMORY
  %loadMem_41a1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4304 to i64*
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 1
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 15
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %RAX.i148
  %4312 = load i64, i64* %RBP.i149
  %4313 = sub i64 %4312, 48
  %4314 = load i64, i64* %PC.i147
  %4315 = add i64 %4314, 3
  store i64 %4315, i64* %PC.i147
  %4316 = trunc i64 %4311 to i32
  %4317 = inttoptr i64 %4313 to i32*
  %4318 = load i32, i32* %4317
  %4319 = add i32 %4318, %4316
  %4320 = zext i32 %4319 to i64
  store i64 %4320, i64* %RAX.i148, align 8
  %4321 = icmp ult i32 %4319, %4316
  %4322 = icmp ult i32 %4319, %4318
  %4323 = or i1 %4321, %4322
  %4324 = zext i1 %4323 to i8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4324, i8* %4325, align 1
  %4326 = and i32 %4319, 255
  %4327 = call i32 @llvm.ctpop.i32(i32 %4326)
  %4328 = trunc i32 %4327 to i8
  %4329 = and i8 %4328, 1
  %4330 = xor i8 %4329, 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4330, i8* %4331, align 1
  %4332 = xor i32 %4318, %4316
  %4333 = xor i32 %4332, %4319
  %4334 = lshr i32 %4333, 4
  %4335 = trunc i32 %4334 to i8
  %4336 = and i8 %4335, 1
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4336, i8* %4337, align 1
  %4338 = icmp eq i32 %4319, 0
  %4339 = zext i1 %4338 to i8
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4339, i8* %4340, align 1
  %4341 = lshr i32 %4319, 31
  %4342 = trunc i32 %4341 to i8
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4342, i8* %4343, align 1
  %4344 = lshr i32 %4316, 31
  %4345 = lshr i32 %4318, 31
  %4346 = xor i32 %4341, %4344
  %4347 = xor i32 %4341, %4345
  %4348 = add i32 %4346, %4347
  %4349 = icmp eq i32 %4348, 2
  %4350 = zext i1 %4349 to i8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4350, i8* %4351, align 1
  store %struct.Memory* %loadMem_41a1cc, %struct.Memory** %MEMORY
  %loadMem_41a1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 1
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %4357 to i64*
  %4358 = load i64, i64* %RAX.i146
  %4359 = load i64, i64* %PC.i145
  %4360 = add i64 %4359, 3
  store i64 %4360, i64* %PC.i145
  %4361 = trunc i64 %4358 to i32
  %4362 = sub i32 %4361, 1
  %4363 = zext i32 %4362 to i64
  store i64 %4363, i64* %RAX.i146, align 8
  %4364 = icmp ult i32 %4361, 1
  %4365 = zext i1 %4364 to i8
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4365, i8* %4366, align 1
  %4367 = and i32 %4362, 255
  %4368 = call i32 @llvm.ctpop.i32(i32 %4367)
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = xor i8 %4370, 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4371, i8* %4372, align 1
  %4373 = xor i64 1, %4358
  %4374 = trunc i64 %4373 to i32
  %4375 = xor i32 %4374, %4362
  %4376 = lshr i32 %4375, 4
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4378, i8* %4379, align 1
  %4380 = icmp eq i32 %4362, 0
  %4381 = zext i1 %4380 to i8
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4381, i8* %4382, align 1
  %4383 = lshr i32 %4362, 31
  %4384 = trunc i32 %4383 to i8
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4384, i8* %4385, align 1
  %4386 = lshr i32 %4361, 31
  %4387 = xor i32 %4383, %4386
  %4388 = add i32 %4387, %4386
  %4389 = icmp eq i32 %4388, 2
  %4390 = zext i1 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4390, i8* %4391, align 1
  store %struct.Memory* %loadMem_41a1cf, %struct.Memory** %MEMORY
  %loadMem_41a1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 33
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 1
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %4397 to i32*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4399 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4398, i64 0, i64 1
  %YMM1.i144 = bitcast %union.VectorReg* %4399 to %"class.std::bitset"*
  %4400 = bitcast %"class.std::bitset"* %YMM1.i144 to i8*
  %4401 = load i32, i32* %EAX.i143
  %4402 = zext i32 %4401 to i64
  %4403 = load i64, i64* %PC.i142
  %4404 = add i64 %4403, 4
  store i64 %4404, i64* %PC.i142
  %4405 = sitofp i32 %4401 to double
  %4406 = bitcast i8* %4400 to double*
  store double %4405, double* %4406, align 1
  store %struct.Memory* %loadMem_41a1d2, %struct.Memory** %MEMORY
  %loadMem_41a1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 33
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4409 to i64*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 1
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %4412 to i64*
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 15
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %4415 to i64*
  %4416 = load i64, i64* %RBP.i141
  %4417 = sub i64 %4416, 44
  %4418 = load i64, i64* %PC.i139
  %4419 = add i64 %4418, 3
  store i64 %4419, i64* %PC.i139
  %4420 = inttoptr i64 %4417 to i32*
  %4421 = load i32, i32* %4420
  %4422 = zext i32 %4421 to i64
  store i64 %4422, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_41a1d6, %struct.Memory** %MEMORY
  %loadMem_41a1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 1
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 15
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RAX.i137
  %4433 = load i64, i64* %RBP.i138
  %4434 = sub i64 %4433, 48
  %4435 = load i64, i64* %PC.i136
  %4436 = add i64 %4435, 3
  store i64 %4436, i64* %PC.i136
  %4437 = trunc i64 %4432 to i32
  %4438 = inttoptr i64 %4434 to i32*
  %4439 = load i32, i32* %4438
  %4440 = add i32 %4439, %4437
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %RAX.i137, align 8
  %4442 = icmp ult i32 %4440, %4437
  %4443 = icmp ult i32 %4440, %4439
  %4444 = or i1 %4442, %4443
  %4445 = zext i1 %4444 to i8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4445, i8* %4446, align 1
  %4447 = and i32 %4440, 255
  %4448 = call i32 @llvm.ctpop.i32(i32 %4447)
  %4449 = trunc i32 %4448 to i8
  %4450 = and i8 %4449, 1
  %4451 = xor i8 %4450, 1
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4451, i8* %4452, align 1
  %4453 = xor i32 %4439, %4437
  %4454 = xor i32 %4453, %4440
  %4455 = lshr i32 %4454, 4
  %4456 = trunc i32 %4455 to i8
  %4457 = and i8 %4456, 1
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4457, i8* %4458, align 1
  %4459 = icmp eq i32 %4440, 0
  %4460 = zext i1 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4460, i8* %4461, align 1
  %4462 = lshr i32 %4440, 31
  %4463 = trunc i32 %4462 to i8
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4463, i8* %4464, align 1
  %4465 = lshr i32 %4437, 31
  %4466 = lshr i32 %4439, 31
  %4467 = xor i32 %4462, %4465
  %4468 = xor i32 %4462, %4466
  %4469 = add i32 %4467, %4468
  %4470 = icmp eq i32 %4469, 2
  %4471 = zext i1 %4470 to i8
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4471, i8* %4472, align 1
  store %struct.Memory* %loadMem_41a1d9, %struct.Memory** %MEMORY
  %loadMem_41a1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 1
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %4478 to i32*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4479, i64 0, i64 2
  %YMM2.i135 = bitcast %union.VectorReg* %4480 to %"class.std::bitset"*
  %4481 = bitcast %"class.std::bitset"* %YMM2.i135 to i8*
  %4482 = load i32, i32* %EAX.i134
  %4483 = zext i32 %4482 to i64
  %4484 = load i64, i64* %PC.i133
  %4485 = add i64 %4484, 4
  store i64 %4485, i64* %PC.i133
  %4486 = sitofp i32 %4482 to double
  %4487 = bitcast i8* %4481 to double*
  store double %4486, double* %4487, align 1
  store %struct.Memory* %loadMem_41a1dc, %struct.Memory** %MEMORY
  %loadMem_41a1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 33
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4491, i64 0, i64 1
  %YMM1.i132 = bitcast %union.VectorReg* %4492 to %"class.std::bitset"*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4493, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4494 to %union.vec128_t*
  %4495 = bitcast %"class.std::bitset"* %YMM1.i132 to i8*
  %4496 = bitcast %"class.std::bitset"* %YMM1.i132 to i8*
  %4497 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4498 = load i64, i64* %PC.i131
  %4499 = add i64 %4498, 4
  store i64 %4499, i64* %PC.i131
  %4500 = bitcast i8* %4496 to double*
  %4501 = load double, double* %4500, align 1
  %4502 = getelementptr inbounds i8, i8* %4496, i64 8
  %4503 = bitcast i8* %4502 to i64*
  %4504 = load i64, i64* %4503, align 1
  %4505 = bitcast i8* %4497 to double*
  %4506 = load double, double* %4505, align 1
  %4507 = fdiv double %4501, %4506
  %4508 = bitcast i8* %4495 to double*
  store double %4507, double* %4508, align 1
  %4509 = getelementptr inbounds i8, i8* %4495, i64 8
  %4510 = bitcast i8* %4509 to i64*
  store i64 %4504, i64* %4510, align 1
  store %struct.Memory* %loadMem_41a1e0, %struct.Memory** %MEMORY
  %loadMem_41a1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 15
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4517, i64 0, i64 0
  %XMM0.i130 = bitcast %union.VectorReg* %4518 to %union.vec128_t*
  %4519 = load i64, i64* %RBP.i129
  %4520 = sub i64 %4519, 120
  %4521 = bitcast %union.vec128_t* %XMM0.i130 to i8*
  %4522 = load i64, i64* %PC.i128
  %4523 = add i64 %4522, 5
  store i64 %4523, i64* %PC.i128
  %4524 = bitcast i8* %4521 to double*
  %4525 = load double, double* %4524, align 1
  %4526 = inttoptr i64 %4520 to double*
  store double %4525, double* %4526
  store %struct.Memory* %loadMem_41a1e4, %struct.Memory** %MEMORY
  %loadMem_41a1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4530, i64 0, i64 0
  %YMM0.i126 = bitcast %union.VectorReg* %4531 to %"class.std::bitset"*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4532, i64 0, i64 1
  %XMM1.i127 = bitcast %union.VectorReg* %4533 to %union.vec128_t*
  %4534 = bitcast %"class.std::bitset"* %YMM0.i126 to i8*
  %4535 = bitcast %union.vec128_t* %XMM1.i127 to i8*
  %4536 = load i64, i64* %PC.i125
  %4537 = add i64 %4536, 3
  store i64 %4537, i64* %PC.i125
  %4538 = bitcast i8* %4535 to <2 x i32>*
  %4539 = load <2 x i32>, <2 x i32>* %4538, align 1
  %4540 = getelementptr inbounds i8, i8* %4535, i64 8
  %4541 = bitcast i8* %4540 to <2 x i32>*
  %4542 = load <2 x i32>, <2 x i32>* %4541, align 1
  %4543 = extractelement <2 x i32> %4539, i32 0
  %4544 = bitcast i8* %4534 to i32*
  store i32 %4543, i32* %4544, align 1
  %4545 = extractelement <2 x i32> %4539, i32 1
  %4546 = getelementptr inbounds i8, i8* %4534, i64 4
  %4547 = bitcast i8* %4546 to i32*
  store i32 %4545, i32* %4547, align 1
  %4548 = extractelement <2 x i32> %4542, i32 0
  %4549 = getelementptr inbounds i8, i8* %4534, i64 8
  %4550 = bitcast i8* %4549 to i32*
  store i32 %4548, i32* %4550, align 1
  %4551 = extractelement <2 x i32> %4542, i32 1
  %4552 = getelementptr inbounds i8, i8* %4534, i64 12
  %4553 = bitcast i8* %4552 to i32*
  store i32 %4551, i32* %4553, align 1
  store %struct.Memory* %loadMem_41a1e9, %struct.Memory** %MEMORY
  %loadMem1_41a1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %PC.i124
  %4558 = add i64 %4557, -101628
  %4559 = load i64, i64* %PC.i124
  %4560 = add i64 %4559, 5
  %4561 = load i64, i64* %PC.i124
  %4562 = add i64 %4561, 5
  store i64 %4562, i64* %PC.i124
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4564 = load i64, i64* %4563, align 8
  %4565 = add i64 %4564, -8
  %4566 = inttoptr i64 %4565 to i64*
  store i64 %4560, i64* %4566
  store i64 %4565, i64* %4563, align 8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4558, i64* %4567, align 8
  store %struct.Memory* %loadMem1_41a1ec, %struct.Memory** %MEMORY
  %loadMem2_41a1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a1ec = load i64, i64* %3
  %4568 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_41a1ec)
  store %struct.Memory* %4568, %struct.Memory** %MEMORY
  %loadMem_41a1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 33
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4572, i64 0, i64 1
  %YMM1.i120 = bitcast %union.VectorReg* %4573 to %"class.std::bitset"*
  %4574 = bitcast %"class.std::bitset"* %YMM1.i120 to i8*
  %4575 = load i64, i64* %PC.i119
  %4576 = add i64 %4575, ptrtoint (%G_0x3a637__rip__type* @G_0x3a637__rip_ to i64)
  %4577 = load i64, i64* %PC.i119
  %4578 = add i64 %4577, 8
  store i64 %4578, i64* %PC.i119
  %4579 = inttoptr i64 %4576 to double*
  %4580 = load double, double* %4579
  %4581 = bitcast i8* %4574 to double*
  store double %4580, double* %4581, align 1
  %4582 = getelementptr inbounds i8, i8* %4574, i64 8
  %4583 = bitcast i8* %4582 to double*
  store double 0.000000e+00, double* %4583, align 1
  store %struct.Memory* %loadMem_41a1f1, %struct.Memory** %MEMORY
  %loadMem_41a1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4588 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4587, i64 0, i64 1
  %YMM1.i117 = bitcast %union.VectorReg* %4588 to %"class.std::bitset"*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4589, i64 0, i64 0
  %XMM0.i118 = bitcast %union.VectorReg* %4590 to %union.vec128_t*
  %4591 = bitcast %"class.std::bitset"* %YMM1.i117 to i8*
  %4592 = bitcast %"class.std::bitset"* %YMM1.i117 to i8*
  %4593 = bitcast %union.vec128_t* %XMM0.i118 to i8*
  %4594 = load i64, i64* %PC.i116
  %4595 = add i64 %4594, 4
  store i64 %4595, i64* %PC.i116
  %4596 = bitcast i8* %4592 to double*
  %4597 = load double, double* %4596, align 1
  %4598 = getelementptr inbounds i8, i8* %4592, i64 8
  %4599 = bitcast i8* %4598 to i64*
  %4600 = load i64, i64* %4599, align 1
  %4601 = bitcast i8* %4593 to double*
  %4602 = load double, double* %4601, align 1
  %4603 = fmul double %4597, %4602
  %4604 = bitcast i8* %4591 to double*
  store double %4603, double* %4604, align 1
  %4605 = getelementptr inbounds i8, i8* %4591, i64 8
  %4606 = bitcast i8* %4605 to i64*
  store i64 %4600, i64* %4606, align 1
  store %struct.Memory* %loadMem_41a1f9, %struct.Memory** %MEMORY
  %loadMem_41a1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4611 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4610, i64 0, i64 0
  %YMM0.i114 = bitcast %union.VectorReg* %4611 to %"class.std::bitset"*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4612, i64 0, i64 1
  %XMM1.i115 = bitcast %union.VectorReg* %4613 to %union.vec128_t*
  %4614 = bitcast %"class.std::bitset"* %YMM0.i114 to i8*
  %4615 = bitcast %union.vec128_t* %XMM1.i115 to i8*
  %4616 = load i64, i64* %PC.i113
  %4617 = add i64 %4616, 3
  store i64 %4617, i64* %PC.i113
  %4618 = bitcast i8* %4615 to <2 x i32>*
  %4619 = load <2 x i32>, <2 x i32>* %4618, align 1
  %4620 = getelementptr inbounds i8, i8* %4615, i64 8
  %4621 = bitcast i8* %4620 to <2 x i32>*
  %4622 = load <2 x i32>, <2 x i32>* %4621, align 1
  %4623 = extractelement <2 x i32> %4619, i32 0
  %4624 = bitcast i8* %4614 to i32*
  store i32 %4623, i32* %4624, align 1
  %4625 = extractelement <2 x i32> %4619, i32 1
  %4626 = getelementptr inbounds i8, i8* %4614, i64 4
  %4627 = bitcast i8* %4626 to i32*
  store i32 %4625, i32* %4627, align 1
  %4628 = extractelement <2 x i32> %4622, i32 0
  %4629 = getelementptr inbounds i8, i8* %4614, i64 8
  %4630 = bitcast i8* %4629 to i32*
  store i32 %4628, i32* %4630, align 1
  %4631 = extractelement <2 x i32> %4622, i32 1
  %4632 = getelementptr inbounds i8, i8* %4614, i64 12
  %4633 = bitcast i8* %4632 to i32*
  store i32 %4631, i32* %4633, align 1
  store %struct.Memory* %loadMem_41a1fd, %struct.Memory** %MEMORY
  %loadMem1_41a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %PC.i112
  %4638 = add i64 %4637, -101648
  %4639 = load i64, i64* %PC.i112
  %4640 = add i64 %4639, 5
  %4641 = load i64, i64* %PC.i112
  %4642 = add i64 %4641, 5
  store i64 %4642, i64* %PC.i112
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4644 = load i64, i64* %4643, align 8
  %4645 = add i64 %4644, -8
  %4646 = inttoptr i64 %4645 to i64*
  store i64 %4640, i64* %4646
  store i64 %4645, i64* %4643, align 8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4638, i64* %4647, align 8
  store %struct.Memory* %loadMem1_41a200, %struct.Memory** %MEMORY
  %loadMem2_41a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a200 = load i64, i64* %3
  %4648 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_41a200)
  store %struct.Memory* %4648, %struct.Memory** %MEMORY
  %loadMem_41a205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4651 to i64*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 15
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4655, i64 0, i64 1
  %YMM1.i108 = bitcast %union.VectorReg* %4656 to %"class.std::bitset"*
  %4657 = bitcast %"class.std::bitset"* %YMM1.i108 to i8*
  %4658 = load i64, i64* %RBP.i107
  %4659 = sub i64 %4658, 56
  %4660 = load i64, i64* %PC.i106
  %4661 = add i64 %4660, 5
  store i64 %4661, i64* %PC.i106
  %4662 = inttoptr i64 %4659 to float*
  %4663 = load float, float* %4662
  %4664 = fpext float %4663 to double
  %4665 = bitcast i8* %4657 to double*
  store double %4664, double* %4665, align 1
  store %struct.Memory* %loadMem_41a205, %struct.Memory** %MEMORY
  %loadMem_41a20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4669, i64 0, i64 0
  %YMM0.i104 = bitcast %union.VectorReg* %4670 to %"class.std::bitset"*
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4671, i64 0, i64 1
  %XMM1.i105 = bitcast %union.VectorReg* %4672 to %union.vec128_t*
  %4673 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %4674 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %4675 = bitcast %union.vec128_t* %XMM1.i105 to i8*
  %4676 = load i64, i64* %PC.i103
  %4677 = add i64 %4676, 4
  store i64 %4677, i64* %PC.i103
  %4678 = bitcast i8* %4674 to double*
  %4679 = load double, double* %4678, align 1
  %4680 = getelementptr inbounds i8, i8* %4674, i64 8
  %4681 = bitcast i8* %4680 to i64*
  %4682 = load i64, i64* %4681, align 1
  %4683 = bitcast i8* %4675 to double*
  %4684 = load double, double* %4683, align 1
  %4685 = fdiv double %4679, %4684
  %4686 = bitcast i8* %4673 to double*
  store double %4685, double* %4686, align 1
  %4687 = getelementptr inbounds i8, i8* %4673, i64 8
  %4688 = bitcast i8* %4687 to i64*
  store i64 %4682, i64* %4688, align 1
  store %struct.Memory* %loadMem_41a20a, %struct.Memory** %MEMORY
  %loadMem_41a20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 33
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4691 to i64*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 15
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4696 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4695, i64 0, i64 1
  %YMM1.i102 = bitcast %union.VectorReg* %4696 to %"class.std::bitset"*
  %4697 = bitcast %"class.std::bitset"* %YMM1.i102 to i8*
  %4698 = load i64, i64* %RBP.i101
  %4699 = sub i64 %4698, 120
  %4700 = load i64, i64* %PC.i100
  %4701 = add i64 %4700, 5
  store i64 %4701, i64* %PC.i100
  %4702 = inttoptr i64 %4699 to double*
  %4703 = load double, double* %4702
  %4704 = bitcast i8* %4697 to double*
  store double %4703, double* %4704, align 1
  %4705 = getelementptr inbounds i8, i8* %4697, i64 8
  %4706 = bitcast i8* %4705 to double*
  store double 0.000000e+00, double* %4706, align 1
  store %struct.Memory* %loadMem_41a20e, %struct.Memory** %MEMORY
  %loadMem_41a213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4709 to i64*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4710, i64 0, i64 1
  %YMM1.i99 = bitcast %union.VectorReg* %4711 to %"class.std::bitset"*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4712, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4713 to %union.vec128_t*
  %4714 = bitcast %"class.std::bitset"* %YMM1.i99 to i8*
  %4715 = bitcast %"class.std::bitset"* %YMM1.i99 to i8*
  %4716 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4717 = load i64, i64* %PC.i98
  %4718 = add i64 %4717, 4
  store i64 %4718, i64* %PC.i98
  %4719 = bitcast i8* %4715 to double*
  %4720 = load double, double* %4719, align 1
  %4721 = getelementptr inbounds i8, i8* %4715, i64 8
  %4722 = bitcast i8* %4721 to i64*
  %4723 = load i64, i64* %4722, align 1
  %4724 = bitcast i8* %4716 to double*
  %4725 = load double, double* %4724, align 1
  %4726 = fsub double %4720, %4725
  %4727 = bitcast i8* %4714 to double*
  store double %4726, double* %4727, align 1
  %4728 = getelementptr inbounds i8, i8* %4714, i64 8
  %4729 = bitcast i8* %4728 to i64*
  store i64 %4723, i64* %4729, align 1
  store %struct.Memory* %loadMem_41a213, %struct.Memory** %MEMORY
  %loadMem_41a217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4732 to i64*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 1
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4736, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4737 to %union.vec128_t*
  %4738 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4739 = load i64, i64* %PC.i96
  %4740 = add i64 %4739, 4
  store i64 %4740, i64* %PC.i96
  %4741 = bitcast i8* %4738 to double*
  %4742 = load double, double* %4741, align 1
  %4743 = call double @llvm.trunc.f64(double %4742)
  %4744 = call double @llvm.fabs.f64(double %4743)
  %4745 = fcmp ogt double %4744, 0x41DFFFFFFFC00000
  %4746 = fptosi double %4743 to i32
  %4747 = zext i32 %4746 to i64
  %4748 = select i1 %4745, i64 2147483648, i64 %4747
  store i64 %4748, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_41a217, %struct.Memory** %MEMORY
  %loadMem_41a21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 33
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 1
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %4754 to i32*
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 15
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %4757 to i64*
  %4758 = load i64, i64* %RBP.i95
  %4759 = sub i64 %4758, 76
  %4760 = load i32, i32* %EAX.i94
  %4761 = zext i32 %4760 to i64
  %4762 = load i64, i64* %PC.i93
  %4763 = add i64 %4762, 3
  store i64 %4763, i64* %PC.i93
  %4764 = inttoptr i64 %4759 to i32*
  store i32 %4760, i32* %4764
  store %struct.Memory* %loadMem_41a21b, %struct.Memory** %MEMORY
  %loadMem_41a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 33
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4767 to i64*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 5
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 15
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4773 to i64*
  %4774 = load i64, i64* %RBP.i92
  %4775 = sub i64 %4774, 32
  %4776 = load i64, i64* %PC.i90
  %4777 = add i64 %4776, 4
  store i64 %4777, i64* %PC.i90
  %4778 = inttoptr i64 %4775 to i64*
  %4779 = load i64, i64* %4778
  store i64 %4779, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_41a21e, %struct.Memory** %MEMORY
  %loadMem_41a222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 5
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 11
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RDI.i89 = bitcast %union.anon* %4788 to i64*
  %4789 = load i64, i64* %RCX.i88
  %4790 = load i64, i64* %PC.i87
  %4791 = add i64 %4790, 3
  store i64 %4791, i64* %PC.i87
  store i64 %4789, i64* %RDI.i89, align 8
  store %struct.Memory* %loadMem_41a222, %struct.Memory** %MEMORY
  %loadMem1_41a225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 33
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4794 to i64*
  %4795 = load i64, i64* %PC.i86
  %4796 = add i64 %4795, -102053
  %4797 = load i64, i64* %PC.i86
  %4798 = add i64 %4797, 5
  %4799 = load i64, i64* %PC.i86
  %4800 = add i64 %4799, 5
  store i64 %4800, i64* %PC.i86
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4802 = load i64, i64* %4801, align 8
  %4803 = add i64 %4802, -8
  %4804 = inttoptr i64 %4803 to i64*
  store i64 %4798, i64* %4804
  store i64 %4803, i64* %4801, align 8
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4796, i64* %4805, align 8
  store %struct.Memory* %loadMem1_41a225, %struct.Memory** %MEMORY
  %loadMem2_41a225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a225 = load i64, i64* %3
  %4806 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_41a225)
  store %struct.Memory* %4806, %struct.Memory** %MEMORY
  %loadMem_41a22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 5
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i83
  %4817 = sub i64 %4816, 40
  %4818 = load i64, i64* %PC.i81
  %4819 = add i64 %4818, 4
  store i64 %4819, i64* %PC.i81
  %4820 = inttoptr i64 %4817 to i64*
  %4821 = load i64, i64* %4820
  store i64 %4821, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_41a22a, %struct.Memory** %MEMORY
  %loadMem_41a22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 5
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 11
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %4830 to i64*
  %4831 = load i64, i64* %RCX.i
  %4832 = load i64, i64* %PC.i79
  %4833 = add i64 %4832, 3
  store i64 %4833, i64* %PC.i79
  store i64 %4831, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_41a22e, %struct.Memory** %MEMORY
  %loadMem1_41a231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 33
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %PC.i78
  %4838 = add i64 %4837, -102065
  %4839 = load i64, i64* %PC.i78
  %4840 = add i64 %4839, 5
  %4841 = load i64, i64* %PC.i78
  %4842 = add i64 %4841, 5
  store i64 %4842, i64* %PC.i78
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4844 = load i64, i64* %4843, align 8
  %4845 = add i64 %4844, -8
  %4846 = inttoptr i64 %4845 to i64*
  store i64 %4840, i64* %4846
  store i64 %4845, i64* %4843, align 8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4838, i64* %4847, align 8
  store %struct.Memory* %loadMem1_41a231, %struct.Memory** %MEMORY
  %loadMem2_41a231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a231 = load i64, i64* %3
  %4848 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_41a231)
  store %struct.Memory* %4848, %struct.Memory** %MEMORY
  %loadMem_41a236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 33
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 1
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 15
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %RBP.i74
  %4859 = sub i64 %4858, 76
  %4860 = load i64, i64* %PC.i72
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i72
  %4862 = inttoptr i64 %4859 to i32*
  %4863 = load i32, i32* %4862
  %4864 = zext i32 %4863 to i64
  store i64 %4864, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_41a236, %struct.Memory** %MEMORY
  %loadMem_41a239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 1
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %4870 to i32*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 15
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %4873 to i64*
  %4874 = load i32, i32* %EAX.i70
  %4875 = zext i32 %4874 to i64
  %4876 = load i64, i64* %RBP.i71
  %4877 = sub i64 %4876, 72
  %4878 = load i64, i64* %PC.i69
  %4879 = add i64 %4878, 3
  store i64 %4879, i64* %PC.i69
  %4880 = inttoptr i64 %4877 to i32*
  %4881 = load i32, i32* %4880
  %4882 = sub i32 %4874, %4881
  %4883 = icmp ult i32 %4874, %4881
  %4884 = zext i1 %4883 to i8
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4884, i8* %4885, align 1
  %4886 = and i32 %4882, 255
  %4887 = call i32 @llvm.ctpop.i32(i32 %4886)
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  %4890 = xor i8 %4889, 1
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4890, i8* %4891, align 1
  %4892 = xor i32 %4881, %4874
  %4893 = xor i32 %4892, %4882
  %4894 = lshr i32 %4893, 4
  %4895 = trunc i32 %4894 to i8
  %4896 = and i8 %4895, 1
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4896, i8* %4897, align 1
  %4898 = icmp eq i32 %4882, 0
  %4899 = zext i1 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4899, i8* %4900, align 1
  %4901 = lshr i32 %4882, 31
  %4902 = trunc i32 %4901 to i8
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4902, i8* %4903, align 1
  %4904 = lshr i32 %4874, 31
  %4905 = lshr i32 %4881, 31
  %4906 = xor i32 %4905, %4904
  %4907 = xor i32 %4901, %4904
  %4908 = add i32 %4907, %4906
  %4909 = icmp eq i32 %4908, 2
  %4910 = zext i1 %4909 to i8
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4910, i8* %4911, align 1
  store %struct.Memory* %loadMem_41a239, %struct.Memory** %MEMORY
  %loadMem_41a23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 33
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %PC.i68
  %4916 = add i64 %4915, 11
  %4917 = load i64, i64* %PC.i68
  %4918 = add i64 %4917, 6
  %4919 = load i64, i64* %PC.i68
  %4920 = add i64 %4919, 6
  store i64 %4920, i64* %PC.i68
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4922 = load i8, i8* %4921, align 1
  %4923 = icmp ne i8 %4922, 0
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4925 = load i8, i8* %4924, align 1
  %4926 = icmp ne i8 %4925, 0
  %4927 = xor i1 %4923, %4926
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %BRANCH_TAKEN, align 1
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4930 = select i1 %4927, i64 %4916, i64 %4918
  store i64 %4930, i64* %4929, align 8
  store %struct.Memory* %loadMem_41a23c, %struct.Memory** %MEMORY
  %loadBr_41a23c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a23c = icmp eq i8 %loadBr_41a23c, 1
  br i1 %cmpBr_41a23c, label %block_.L_41a247, label %block_41a242

block_41a242:                                     ; preds = %block_.L_41a1c4
  %loadMem_41a242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4933 to i64*
  %4934 = load i64, i64* %PC.i67
  %4935 = add i64 %4934, 25
  %4936 = load i64, i64* %PC.i67
  %4937 = add i64 %4936, 5
  store i64 %4937, i64* %PC.i67
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4935, i64* %4938, align 8
  store %struct.Memory* %loadMem_41a242, %struct.Memory** %MEMORY
  br label %block_.L_41a25b

block_.L_41a247:                                  ; preds = %block_.L_41a1c4
  %loadMem_41a247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 1
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 15
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %RBP.i66
  %4949 = sub i64 %4948, 76
  %4950 = load i64, i64* %PC.i64
  %4951 = add i64 %4950, 3
  store i64 %4951, i64* %PC.i64
  %4952 = inttoptr i64 %4949 to i32*
  %4953 = load i32, i32* %4952
  %4954 = zext i32 %4953 to i64
  store i64 %4954, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_41a247, %struct.Memory** %MEMORY
  %loadMem_41a24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 1
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %4960 to i32*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 15
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %4963 to i64*
  %4964 = load i64, i64* %RBP.i63
  %4965 = sub i64 %4964, 72
  %4966 = load i32, i32* %EAX.i62
  %4967 = zext i32 %4966 to i64
  %4968 = load i64, i64* %PC.i61
  %4969 = add i64 %4968, 3
  store i64 %4969, i64* %PC.i61
  %4970 = inttoptr i64 %4965 to i32*
  store i32 %4966, i32* %4970
  store %struct.Memory* %loadMem_41a24a, %struct.Memory** %MEMORY
  %loadMem_41a24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 1
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 15
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %RBP.i60
  %4981 = sub i64 %4980, 80
  %4982 = load i64, i64* %PC.i58
  %4983 = add i64 %4982, 3
  store i64 %4983, i64* %PC.i58
  %4984 = inttoptr i64 %4981 to i32*
  %4985 = load i32, i32* %4984
  %4986 = zext i32 %4985 to i64
  store i64 %4986, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_41a24d, %struct.Memory** %MEMORY
  %loadMem_41a250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 33
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 1
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4992 to i64*
  %4993 = load i64, i64* %RAX.i57
  %4994 = load i64, i64* %PC.i56
  %4995 = add i64 %4994, 3
  store i64 %4995, i64* %PC.i56
  %4996 = trunc i64 %4993 to i32
  %4997 = add i32 1, %4996
  %4998 = zext i32 %4997 to i64
  store i64 %4998, i64* %RAX.i57, align 8
  %4999 = icmp ult i32 %4997, %4996
  %5000 = icmp ult i32 %4997, 1
  %5001 = or i1 %4999, %5000
  %5002 = zext i1 %5001 to i8
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5002, i8* %5003, align 1
  %5004 = and i32 %4997, 255
  %5005 = call i32 @llvm.ctpop.i32(i32 %5004)
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  %5008 = xor i8 %5007, 1
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5008, i8* %5009, align 1
  %5010 = xor i64 1, %4993
  %5011 = trunc i64 %5010 to i32
  %5012 = xor i32 %5011, %4997
  %5013 = lshr i32 %5012, 4
  %5014 = trunc i32 %5013 to i8
  %5015 = and i8 %5014, 1
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5015, i8* %5016, align 1
  %5017 = icmp eq i32 %4997, 0
  %5018 = zext i1 %5017 to i8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5018, i8* %5019, align 1
  %5020 = lshr i32 %4997, 31
  %5021 = trunc i32 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5021, i8* %5022, align 1
  %5023 = lshr i32 %4996, 31
  %5024 = xor i32 %5020, %5023
  %5025 = add i32 %5024, %5020
  %5026 = icmp eq i32 %5025, 2
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5027, i8* %5028, align 1
  store %struct.Memory* %loadMem_41a250, %struct.Memory** %MEMORY
  %loadMem_41a253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 1
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5034 to i32*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 15
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %RBP.i55
  %5039 = sub i64 %5038, 80
  %5040 = load i32, i32* %EAX.i
  %5041 = zext i32 %5040 to i64
  %5042 = load i64, i64* %PC.i54
  %5043 = add i64 %5042, 3
  store i64 %5043, i64* %PC.i54
  %5044 = inttoptr i64 %5039 to i32*
  store i32 %5040, i32* %5044
  store %struct.Memory* %loadMem_41a253, %struct.Memory** %MEMORY
  %loadMem_41a256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %PC.i53
  %5049 = add i64 %5048, -795
  %5050 = load i64, i64* %PC.i53
  %5051 = add i64 %5050, 5
  store i64 %5051, i64* %PC.i53
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5049, i64* %5052, align 8
  store %struct.Memory* %loadMem_41a256, %struct.Memory** %MEMORY
  br label %block_.L_419f3b

block_.L_41a25b:                                  ; preds = %block_41a242, %block_.L_419f3b
  %loadMem_41a25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 9
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5058 to i64*
  %5059 = load i64, i64* %PC.i52
  %5060 = add i64 %5059, 5
  store i64 %5060, i64* %PC.i52
  store i64 1, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41a25b, %struct.Memory** %MEMORY
  %loadMem_41a260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 11
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RDI.i50 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 15
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RBP.i51
  %5071 = sub i64 %5070, 16
  %5072 = load i64, i64* %PC.i49
  %5073 = add i64 %5072, 4
  store i64 %5073, i64* %PC.i49
  %5074 = inttoptr i64 %5071 to i64*
  %5075 = load i64, i64* %5074
  store i64 %5075, i64* %RDI.i50, align 8
  store %struct.Memory* %loadMem_41a260, %struct.Memory** %MEMORY
  %loadMem_41a264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 15
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5081 to i64*
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5082, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5083 to %"class.std::bitset"*
  %5084 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5085 = load i64, i64* %RBP.i48
  %5086 = sub i64 %5085, 60
  %5087 = load i64, i64* %PC.i47
  %5088 = add i64 %5087, 5
  store i64 %5088, i64* %PC.i47
  %5089 = inttoptr i64 %5086 to float*
  %5090 = load float, float* %5089
  %5091 = bitcast i8* %5084 to float*
  store float %5090, float* %5091, align 1
  %5092 = getelementptr inbounds i8, i8* %5084, i64 4
  %5093 = bitcast i8* %5092 to float*
  store float 0.000000e+00, float* %5093, align 1
  %5094 = getelementptr inbounds i8, i8* %5084, i64 8
  %5095 = bitcast i8* %5094 to float*
  store float 0.000000e+00, float* %5095, align 1
  %5096 = getelementptr inbounds i8, i8* %5084, i64 12
  %5097 = bitcast i8* %5096 to float*
  store float 0.000000e+00, float* %5097, align 1
  store %struct.Memory* %loadMem_41a264, %struct.Memory** %MEMORY
  %loadMem_41a269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 15
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5104, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5105 to %"class.std::bitset"*
  %5106 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5107 = load i64, i64* %RBP.i46
  %5108 = sub i64 %5107, 56
  %5109 = load i64, i64* %PC.i45
  %5110 = add i64 %5109, 5
  store i64 %5110, i64* %PC.i45
  %5111 = inttoptr i64 %5108 to float*
  %5112 = load float, float* %5111
  %5113 = bitcast i8* %5106 to float*
  store float %5112, float* %5113, align 1
  %5114 = getelementptr inbounds i8, i8* %5106, i64 4
  %5115 = bitcast i8* %5114 to float*
  store float 0.000000e+00, float* %5115, align 1
  %5116 = getelementptr inbounds i8, i8* %5106, i64 8
  %5117 = bitcast i8* %5116 to float*
  store float 0.000000e+00, float* %5117, align 1
  %5118 = getelementptr inbounds i8, i8* %5106, i64 12
  %5119 = bitcast i8* %5118 to float*
  store float 0.000000e+00, float* %5119, align 1
  store %struct.Memory* %loadMem_41a269, %struct.Memory** %MEMORY
  %loadMem_41a26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 33
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5122 to i64*
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 15
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5126, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %5127 to %"class.std::bitset"*
  %5128 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %5129 = load i64, i64* %RBP.i44
  %5130 = sub i64 %5129, 68
  %5131 = load i64, i64* %PC.i43
  %5132 = add i64 %5131, 5
  store i64 %5132, i64* %PC.i43
  %5133 = bitcast i8* %5128 to <2 x i32>*
  %5134 = load <2 x i32>, <2 x i32>* %5133, align 1
  %5135 = getelementptr inbounds i8, i8* %5128, i64 8
  %5136 = bitcast i8* %5135 to <2 x i32>*
  %5137 = load <2 x i32>, <2 x i32>* %5136, align 1
  %5138 = inttoptr i64 %5130 to i32*
  %5139 = load i32, i32* %5138
  %5140 = sitofp i32 %5139 to float
  %5141 = bitcast i8* %5128 to float*
  store float %5140, float* %5141, align 1
  %5142 = extractelement <2 x i32> %5134, i32 1
  %5143 = getelementptr inbounds i8, i8* %5128, i64 4
  %5144 = bitcast i8* %5143 to i32*
  store i32 %5142, i32* %5144, align 1
  %5145 = extractelement <2 x i32> %5137, i32 0
  %5146 = bitcast i8* %5135 to i32*
  store i32 %5145, i32* %5146, align 1
  %5147 = extractelement <2 x i32> %5137, i32 1
  %5148 = getelementptr inbounds i8, i8* %5128, i64 12
  %5149 = bitcast i8* %5148 to i32*
  store i32 %5147, i32* %5149, align 1
  store %struct.Memory* %loadMem_41a26e, %struct.Memory** %MEMORY
  %loadMem_41a273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 15
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5156, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %5157 to %"class.std::bitset"*
  %5158 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %5159 = load i64, i64* %RBP.i42
  %5160 = sub i64 %5159, 72
  %5161 = load i64, i64* %PC.i41
  %5162 = add i64 %5161, 5
  store i64 %5162, i64* %PC.i41
  %5163 = bitcast i8* %5158 to <2 x i32>*
  %5164 = load <2 x i32>, <2 x i32>* %5163, align 1
  %5165 = getelementptr inbounds i8, i8* %5158, i64 8
  %5166 = bitcast i8* %5165 to <2 x i32>*
  %5167 = load <2 x i32>, <2 x i32>* %5166, align 1
  %5168 = inttoptr i64 %5160 to i32*
  %5169 = load i32, i32* %5168
  %5170 = sitofp i32 %5169 to float
  %5171 = bitcast i8* %5158 to float*
  store float %5170, float* %5171, align 1
  %5172 = extractelement <2 x i32> %5164, i32 1
  %5173 = getelementptr inbounds i8, i8* %5158, i64 4
  %5174 = bitcast i8* %5173 to i32*
  store i32 %5172, i32* %5174, align 1
  %5175 = extractelement <2 x i32> %5167, i32 0
  %5176 = bitcast i8* %5165 to i32*
  store i32 %5175, i32* %5176, align 1
  %5177 = extractelement <2 x i32> %5167, i32 1
  %5178 = getelementptr inbounds i8, i8* %5158, i64 12
  %5179 = bitcast i8* %5178 to i32*
  store i32 %5177, i32* %5179, align 1
  store %struct.Memory* %loadMem_41a273, %struct.Memory** %MEMORY
  %loadMem1_41a278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 33
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %PC.i40
  %5184 = add i64 %5183, -1880
  %5185 = load i64, i64* %PC.i40
  %5186 = add i64 %5185, 5
  %5187 = load i64, i64* %PC.i40
  %5188 = add i64 %5187, 5
  store i64 %5188, i64* %PC.i40
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5190 = load i64, i64* %5189, align 8
  %5191 = add i64 %5190, -8
  %5192 = inttoptr i64 %5191 to i64*
  store i64 %5186, i64* %5192
  store i64 %5191, i64* %5189, align 8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5184, i64* %5193, align 8
  store %struct.Memory* %loadMem1_41a278, %struct.Memory** %MEMORY
  %loadMem2_41a278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a278 = load i64, i64* %3
  %call2_41a278 = call %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* %0, i64 %loadPC_41a278, %struct.Memory* %loadMem2_41a278)
  store %struct.Memory* %call2_41a278, %struct.Memory** %MEMORY
  %loadMem_41a27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 33
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 15
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %RBP.i39
  %5201 = sub i64 %5200, 4
  %5202 = load i64, i64* %PC.i38
  %5203 = add i64 %5202, 7
  store i64 %5203, i64* %PC.i38
  %5204 = inttoptr i64 %5201 to i32*
  store i32 1, i32* %5204
  store %struct.Memory* %loadMem_41a27d, %struct.Memory** %MEMORY
  %loadMem_41a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 33
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5207 to i64*
  %5208 = load i64, i64* %PC.i37
  %5209 = add i64 %5208, 67
  %5210 = load i64, i64* %PC.i37
  %5211 = add i64 %5210, 5
  store i64 %5211, i64* %PC.i37
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5209, i64* %5212, align 8
  store %struct.Memory* %loadMem_41a284, %struct.Memory** %MEMORY
  br label %block_.L_41a2c7

block_.L_41a289:                                  ; preds = %block_41a1ba, %block_41a18f, %block_41a056, %block_419f6b
  %loadMem_41a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 33
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5215 to i64*
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 11
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %5218 to i64*
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 15
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5221 to i64*
  %5222 = load i64, i64* %RBP.i36
  %5223 = sub i64 %5222, 16
  %5224 = load i64, i64* %PC.i34
  %5225 = add i64 %5224, 4
  store i64 %5225, i64* %PC.i34
  %5226 = inttoptr i64 %5223 to i64*
  %5227 = load i64, i64* %5226
  store i64 %5227, i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_41a289, %struct.Memory** %MEMORY
  %loadMem1_41a28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 33
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5230 to i64*
  %5231 = load i64, i64* %PC.i33
  %5232 = add i64 %5231, -6957
  %5233 = load i64, i64* %PC.i33
  %5234 = add i64 %5233, 5
  %5235 = load i64, i64* %PC.i33
  %5236 = add i64 %5235, 5
  store i64 %5236, i64* %PC.i33
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5238 = load i64, i64* %5237, align 8
  %5239 = add i64 %5238, -8
  %5240 = inttoptr i64 %5239 to i64*
  store i64 %5234, i64* %5240
  store i64 %5239, i64* %5237, align 8
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5232, i64* %5241, align 8
  store %struct.Memory* %loadMem1_41a28d, %struct.Memory** %MEMORY
  %loadMem2_41a28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a28d = load i64, i64* %3
  %call2_41a28d = call %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* %0, i64 %loadPC_41a28d, %struct.Memory* %loadMem2_41a28d)
  store %struct.Memory* %call2_41a28d, %struct.Memory** %MEMORY
  %loadMem_41a292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 15
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %5247 to i64*
  %5248 = load i64, i64* %RBP.i32
  %5249 = sub i64 %5248, 32
  %5250 = load i64, i64* %PC.i31
  %5251 = add i64 %5250, 5
  store i64 %5251, i64* %PC.i31
  %5252 = inttoptr i64 %5249 to i64*
  %5253 = load i64, i64* %5252
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5254, align 1
  %5255 = trunc i64 %5253 to i32
  %5256 = and i32 %5255, 255
  %5257 = call i32 @llvm.ctpop.i32(i32 %5256)
  %5258 = trunc i32 %5257 to i8
  %5259 = and i8 %5258, 1
  %5260 = xor i8 %5259, 1
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5260, i8* %5261, align 1
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5262, align 1
  %5263 = icmp eq i64 %5253, 0
  %5264 = zext i1 %5263 to i8
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5264, i8* %5265, align 1
  %5266 = lshr i64 %5253, 63
  %5267 = trunc i64 %5266 to i8
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5267, i8* %5268, align 1
  %5269 = lshr i64 %5253, 63
  %5270 = xor i64 %5266, %5269
  %5271 = add i64 %5270, %5269
  %5272 = icmp eq i64 %5271, 2
  %5273 = zext i1 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5273, i8* %5274, align 1
  store %struct.Memory* %loadMem_41a292, %struct.Memory** %MEMORY
  %loadMem_41a297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 33
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %PC.i30
  %5279 = add i64 %5278, 18
  %5280 = load i64, i64* %PC.i30
  %5281 = add i64 %5280, 6
  %5282 = load i64, i64* %PC.i30
  %5283 = add i64 %5282, 6
  store i64 %5283, i64* %PC.i30
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5285 = load i8, i8* %5284, align 1
  store i8 %5285, i8* %BRANCH_TAKEN, align 1
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5287 = icmp ne i8 %5285, 0
  %5288 = select i1 %5287, i64 %5279, i64 %5281
  store i64 %5288, i64* %5286, align 8
  store %struct.Memory* %loadMem_41a297, %struct.Memory** %MEMORY
  %loadBr_41a297 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a297 = icmp eq i8 %loadBr_41a297, 1
  br i1 %cmpBr_41a297, label %block_.L_41a2a9, label %block_41a29d

block_41a29d:                                     ; preds = %block_.L_41a289
  %loadMem_41a29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 1
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5294 to i64*
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 15
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %5297 to i64*
  %5298 = load i64, i64* %RBP.i29
  %5299 = sub i64 %5298, 32
  %5300 = load i64, i64* %PC.i27
  %5301 = add i64 %5300, 4
  store i64 %5301, i64* %PC.i27
  %5302 = inttoptr i64 %5299 to i64*
  %5303 = load i64, i64* %5302
  store i64 %5303, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_41a29d, %struct.Memory** %MEMORY
  %loadMem_41a2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 1
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %5309 to i64*
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 11
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %5312 to i64*
  %5313 = load i64, i64* %RAX.i25
  %5314 = load i64, i64* %PC.i24
  %5315 = add i64 %5314, 3
  store i64 %5315, i64* %PC.i24
  store i64 %5313, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_41a2a1, %struct.Memory** %MEMORY
  %loadMem1_41a2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 33
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5318 to i64*
  %5319 = load i64, i64* %PC.i23
  %5320 = add i64 %5319, -102180
  %5321 = load i64, i64* %PC.i23
  %5322 = add i64 %5321, 5
  %5323 = load i64, i64* %PC.i23
  %5324 = add i64 %5323, 5
  store i64 %5324, i64* %PC.i23
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5326 = load i64, i64* %5325, align 8
  %5327 = add i64 %5326, -8
  %5328 = inttoptr i64 %5327 to i64*
  store i64 %5322, i64* %5328
  store i64 %5327, i64* %5325, align 8
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5320, i64* %5329, align 8
  store %struct.Memory* %loadMem1_41a2a4, %struct.Memory** %MEMORY
  %loadMem2_41a2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a2a4 = load i64, i64* %3
  %5330 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_41a2a4)
  store %struct.Memory* %5330, %struct.Memory** %MEMORY
  br label %block_.L_41a2a9

block_.L_41a2a9:                                  ; preds = %block_41a29d, %block_.L_41a289
  %loadMem_41a2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 33
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5333 to i64*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 15
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %5336 to i64*
  %5337 = load i64, i64* %RBP.i20
  %5338 = sub i64 %5337, 40
  %5339 = load i64, i64* %PC.i19
  %5340 = add i64 %5339, 5
  store i64 %5340, i64* %PC.i19
  %5341 = inttoptr i64 %5338 to i64*
  %5342 = load i64, i64* %5341
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5343, align 1
  %5344 = trunc i64 %5342 to i32
  %5345 = and i32 %5344, 255
  %5346 = call i32 @llvm.ctpop.i32(i32 %5345)
  %5347 = trunc i32 %5346 to i8
  %5348 = and i8 %5347, 1
  %5349 = xor i8 %5348, 1
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5349, i8* %5350, align 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5351, align 1
  %5352 = icmp eq i64 %5342, 0
  %5353 = zext i1 %5352 to i8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5353, i8* %5354, align 1
  %5355 = lshr i64 %5342, 63
  %5356 = trunc i64 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5356, i8* %5357, align 1
  %5358 = lshr i64 %5342, 63
  %5359 = xor i64 %5355, %5358
  %5360 = add i64 %5359, %5358
  %5361 = icmp eq i64 %5360, 2
  %5362 = zext i1 %5361 to i8
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5362, i8* %5363, align 1
  store %struct.Memory* %loadMem_41a2a9, %struct.Memory** %MEMORY
  %loadMem_41a2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5366 to i64*
  %5367 = load i64, i64* %PC.i18
  %5368 = add i64 %5367, 18
  %5369 = load i64, i64* %PC.i18
  %5370 = add i64 %5369, 6
  %5371 = load i64, i64* %PC.i18
  %5372 = add i64 %5371, 6
  store i64 %5372, i64* %PC.i18
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5374 = load i8, i8* %5373, align 1
  store i8 %5374, i8* %BRANCH_TAKEN, align 1
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5376 = icmp ne i8 %5374, 0
  %5377 = select i1 %5376, i64 %5368, i64 %5370
  store i64 %5377, i64* %5375, align 8
  store %struct.Memory* %loadMem_41a2ae, %struct.Memory** %MEMORY
  %loadBr_41a2ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a2ae = icmp eq i8 %loadBr_41a2ae, 1
  br i1 %cmpBr_41a2ae, label %block_.L_41a2c0, label %block_41a2b4

block_41a2b4:                                     ; preds = %block_.L_41a2a9
  %loadMem_41a2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RBP.i17
  %5388 = sub i64 %5387, 40
  %5389 = load i64, i64* %PC.i15
  %5390 = add i64 %5389, 4
  store i64 %5390, i64* %PC.i15
  %5391 = inttoptr i64 %5388 to i64*
  %5392 = load i64, i64* %5391
  store i64 %5392, i64* %RAX.i16, align 8
  store %struct.Memory* %loadMem_41a2b4, %struct.Memory** %MEMORY
  %loadMem_41a2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 1
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 11
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5401 to i64*
  %5402 = load i64, i64* %RAX.i14
  %5403 = load i64, i64* %PC.i13
  %5404 = add i64 %5403, 3
  store i64 %5404, i64* %PC.i13
  store i64 %5402, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41a2b8, %struct.Memory** %MEMORY
  %loadMem1_41a2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 33
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5407 to i64*
  %5408 = load i64, i64* %PC.i12
  %5409 = add i64 %5408, -102203
  %5410 = load i64, i64* %PC.i12
  %5411 = add i64 %5410, 5
  %5412 = load i64, i64* %PC.i12
  %5413 = add i64 %5412, 5
  store i64 %5413, i64* %PC.i12
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5415 = load i64, i64* %5414, align 8
  %5416 = add i64 %5415, -8
  %5417 = inttoptr i64 %5416 to i64*
  store i64 %5411, i64* %5417
  store i64 %5416, i64* %5414, align 8
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5409, i64* %5418, align 8
  store %struct.Memory* %loadMem1_41a2bb, %struct.Memory** %MEMORY
  %loadMem2_41a2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a2bb = load i64, i64* %3
  %5419 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_41a2bb)
  store %struct.Memory* %5419, %struct.Memory** %MEMORY
  br label %block_.L_41a2c0

block_.L_41a2c0:                                  ; preds = %block_41a2b4, %block_.L_41a2a9
  %loadMem_41a2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 33
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 15
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5425 to i64*
  %5426 = load i64, i64* %RBP.i8
  %5427 = sub i64 %5426, 4
  %5428 = load i64, i64* %PC.i7
  %5429 = add i64 %5428, 7
  store i64 %5429, i64* %PC.i7
  %5430 = inttoptr i64 %5427 to i32*
  store i32 0, i32* %5430
  store %struct.Memory* %loadMem_41a2c0, %struct.Memory** %MEMORY
  br label %block_.L_41a2c7

block_.L_41a2c7:                                  ; preds = %block_.L_41a2c0, %block_.L_41a25b
  %loadMem_41a2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 33
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5433 to i64*
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 1
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5436 to i64*
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 15
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5439 to i64*
  %5440 = load i64, i64* %RBP.i6
  %5441 = sub i64 %5440, 4
  %5442 = load i64, i64* %PC.i5
  %5443 = add i64 %5442, 3
  store i64 %5443, i64* %PC.i5
  %5444 = inttoptr i64 %5441 to i32*
  %5445 = load i32, i32* %5444
  %5446 = zext i32 %5445 to i64
  store i64 %5446, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41a2c7, %struct.Memory** %MEMORY
  %loadMem_41a2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 33
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5449 to i64*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 13
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5452 to i64*
  %5453 = load i64, i64* %RSP.i
  %5454 = load i64, i64* %PC.i4
  %5455 = add i64 %5454, 7
  store i64 %5455, i64* %PC.i4
  %5456 = add i64 128, %5453
  store i64 %5456, i64* %RSP.i, align 8
  %5457 = icmp ult i64 %5456, %5453
  %5458 = icmp ult i64 %5456, 128
  %5459 = or i1 %5457, %5458
  %5460 = zext i1 %5459 to i8
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5460, i8* %5461, align 1
  %5462 = trunc i64 %5456 to i32
  %5463 = and i32 %5462, 255
  %5464 = call i32 @llvm.ctpop.i32(i32 %5463)
  %5465 = trunc i32 %5464 to i8
  %5466 = and i8 %5465, 1
  %5467 = xor i8 %5466, 1
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5467, i8* %5468, align 1
  %5469 = xor i64 128, %5453
  %5470 = xor i64 %5469, %5456
  %5471 = lshr i64 %5470, 4
  %5472 = trunc i64 %5471 to i8
  %5473 = and i8 %5472, 1
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5473, i8* %5474, align 1
  %5475 = icmp eq i64 %5456, 0
  %5476 = zext i1 %5475 to i8
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5476, i8* %5477, align 1
  %5478 = lshr i64 %5456, 63
  %5479 = trunc i64 %5478 to i8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5479, i8* %5480, align 1
  %5481 = lshr i64 %5453, 63
  %5482 = xor i64 %5478, %5481
  %5483 = add i64 %5482, %5478
  %5484 = icmp eq i64 %5483, 2
  %5485 = zext i1 %5484 to i8
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5485, i8* %5486, align 1
  store %struct.Memory* %loadMem_41a2ca, %struct.Memory** %MEMORY
  %loadMem_41a2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 33
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5489 to i64*
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 15
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %PC.i2
  %5494 = add i64 %5493, 1
  store i64 %5494, i64* %PC.i2
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5496 = load i64, i64* %5495, align 8
  %5497 = add i64 %5496, 8
  %5498 = inttoptr i64 %5496 to i64*
  %5499 = load i64, i64* %5498
  store i64 %5499, i64* %RBP.i3, align 8
  store i64 %5497, i64* %5495, align 8
  store %struct.Memory* %loadMem_41a2d1, %struct.Memory** %MEMORY
  %loadMem_41a2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 33
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5502 to i64*
  %5503 = load i64, i64* %PC.i1
  %5504 = add i64 %5503, 1
  store i64 %5504, i64* %PC.i1
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5507 = load i64, i64* %5506, align 8
  %5508 = inttoptr i64 %5507 to i64*
  %5509 = load i64, i64* %5508
  store i64 %5509, i64* %5505, align 8
  %5510 = add i64 %5507, 8
  store i64 %5510, i64* %5506, align 8
  store %struct.Memory* %loadMem_41a2d2, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41a2d2
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_419ef4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
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

define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 16
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

define %struct.Memory* @routine_jg_.L_419eef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 8
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

define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 84
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

define %struct.Memory* @routine_jle_.L_419edc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419ee1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_419e8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_419ef4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = bitcast i8* %11 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = extractelement <2 x float> %18, i32 0
  %20 = fcmp uno float %16, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd float %16, %19
  %23 = bitcast float %22 to i32
  %24 = and i32 %23, 2143289344
  %25 = icmp eq i32 %24, 2139095040
  %26 = and i32 %23, 4194303
  %27 = icmp ne i32 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt float %16, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt float %16, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq float %16, %19
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %37, %35, %33, %21
  %40 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 1, %37 ], [ 1, %21 ]
  %41 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 0, %37 ], [ 1, %21 ]
  %42 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 0, %37 ], [ 1, %21 ]
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %39, %37
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %49, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jbe_.L_419f1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 100
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = fcmp ogt float %18, 0x41E0000000000000
  %20 = fptosi float %17 to i32
  %21 = zext i32 %20 to i64
  %22 = select i1 %19, i64 2147483648, i64 %21
  store i64 %22, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x64__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 100
  %16 = icmp ult i32 %14, 100
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
  %25 = xor i32 %14, 100
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

define %struct.Memory* @routine_jge_.L_41a25b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
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

define %struct.Memory* @routine_jge_.L_419f70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a289(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x456e97___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x258___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 600, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x259___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 601, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 72
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

define %struct.Memory* @routine_jg_.L_41a04c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3a819__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a819__rip__type* @G_0x3a819__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_movss__xmm0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x44__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419fc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x64__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 100
  %16 = icmp ult i32 %14, 100
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
  %25 = xor i32 %14, 100
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

define %struct.Memory* @routine_jge_.L_41a05b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_41a15c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41a0d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3a7e9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a7e9__rip__type* @G_0x3a7e9__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x2c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
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

define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
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
  store i64 %21, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jge_.L_41a0ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a0c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x3a7ac__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a7ac__rip__type* @G_0x3a7ac__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_41a157(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x44__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.EVDDistribution(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3a6f1__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x3a6f1__rip__type* @G_0x3a6f1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41a12f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a151(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x3a6a9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3a6a9__rip__type* @G_0x3a6a9__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x2c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a15c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_41a199(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x3c__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.EVDCensoredFit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41a194(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a1c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.EVDMaxLikelyFit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41a1bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.log_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3a637__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x3a637__rip__type* @G_0x3a637__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_jl_.L_41a247(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a25b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_419f3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x44__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x48__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ExtremeValueSetHistogram(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a2c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.UnfitHistogram(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_41a2a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_41a2c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
