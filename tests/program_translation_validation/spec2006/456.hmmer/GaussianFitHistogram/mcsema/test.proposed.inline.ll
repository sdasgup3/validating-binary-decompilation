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
%G_0x39250__rip__type = type <{ [8 x i8] }>
%G_0x3934a__rip__type = type <{ [8 x i8] }>
%G_0x39458__rip__type = type <{ [8 x i8] }>
%G_0x39460__rip__type = type <{ [8 x i8] }>
%G_0x39470__rip__type = type <{ [8 x i8] }>
%G_0x394af__rip__type = type <{ [8 x i8] }>
%G_0x394b0__rip__type = type <{ [8 x i8] }>
%G_0x395ff__rip__type = type <{ [8 x i8] }>
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
@G_0x39250__rip_ = global %G_0x39250__rip__type zeroinitializer
@G_0x3934a__rip_ = global %G_0x3934a__rip__type zeroinitializer
@G_0x39458__rip_ = global %G_0x39458__rip__type zeroinitializer
@G_0x39460__rip_ = global %G_0x39460__rip__type zeroinitializer
@G_0x39470__rip_ = global %G_0x39470__rip__type zeroinitializer
@G_0x394af__rip_ = global %G_0x394af__rip__type zeroinitializer
@G_0x394b0__rip_ = global %G_0x394b0__rip__type zeroinitializer
@G_0x395ff__rip_ = global %G_0x395ff__rip__type zeroinitializer
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

declare %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_445080.IncompleteGamma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @GaussianFitHistogram(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41b180 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41b180, %struct.Memory** %MEMORY
  %loadMem_41b181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i175 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i175
  %27 = load i64, i64* %PC.i174
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i174
  store i64 %26, i64* %RBP.i176, align 8
  store %struct.Memory* %loadMem_41b181, %struct.Memory** %MEMORY
  %loadMem_41b184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i276 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i276
  %36 = load i64, i64* %PC.i275
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i275
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i276, align 8
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
  store %struct.Memory* %loadMem_41b184, %struct.Memory** %MEMORY
  %loadMem_41b188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i704 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i705
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i704
  %79 = load i64, i64* %PC.i703
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i703
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_41b188, %struct.Memory** %MEMORY
  %loadMem_41b18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %89 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %88, i64 0, i64 0
  %XMM0.i702 = bitcast %union.VectorReg* %89 to %union.vec128_t*
  %90 = load i64, i64* %RBP.i701
  %91 = sub i64 %90, 20
  %92 = bitcast %union.vec128_t* %XMM0.i702 to i8*
  %93 = load i64, i64* %PC.i700
  %94 = add i64 %93, 5
  store i64 %94, i64* %PC.i700
  %95 = bitcast i8* %92 to <2 x float>*
  %96 = load <2 x float>, <2 x float>* %95, align 1
  %97 = extractelement <2 x float> %96, i32 0
  %98 = inttoptr i64 %91 to float*
  store float %97, float* %98
  store %struct.Memory* %loadMem_41b18c, %struct.Memory** %MEMORY
  %loadMem_41b191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RDI.i698 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i699
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %PC.i697
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i697
  %112 = inttoptr i64 %109 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %RDI.i698, align 8
  store %struct.Memory* %loadMem_41b191, %struct.Memory** %MEMORY
  %loadMem1_41b195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %116 to i64*
  %117 = load i64, i64* %PC.i696
  %118 = add i64 %117, -10805
  %119 = load i64, i64* %PC.i696
  %120 = add i64 %119, 5
  %121 = load i64, i64* %PC.i696
  %122 = add i64 %121, 5
  store i64 %122, i64* %PC.i696
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, -8
  %126 = inttoptr i64 %125 to i64*
  store i64 %120, i64* %126
  store i64 %125, i64* %123, align 8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %118, i64* %127, align 8
  store %struct.Memory* %loadMem1_41b195, %struct.Memory** %MEMORY
  %loadMem2_41b195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b195 = load i64, i64* %3
  %call2_41b195 = call %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* %0, i64 %loadPC_41b195, %struct.Memory* %loadMem2_41b195)
  store %struct.Memory* %call2_41b195, %struct.Memory** %MEMORY
  %loadMem_41b19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 11
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RDI.i694 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i695
  %138 = sub i64 %137, 16
  %139 = load i64, i64* %PC.i693
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC.i693
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %RDI.i694, align 8
  store %struct.Memory* %loadMem_41b19a, %struct.Memory** %MEMORY
  %loadMem_41b19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 11
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RDI.i692 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RDI.i692
  %150 = add i64 %149, 28
  %151 = load i64, i64* %PC.i691
  %152 = add i64 %151, 7
  store i64 %152, i64* %PC.i691
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = sub i32 %154, 1000
  %156 = icmp ult i32 %154, 1000
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %157, i8* %158, align 1
  %159 = and i32 %155, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1
  %165 = xor i32 %154, 1000
  %166 = xor i32 %165, %155
  %167 = lshr i32 %166, 4
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %169, i8* %170, align 1
  %171 = icmp eq i32 %155, 0
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %172, i8* %173, align 1
  %174 = lshr i32 %155, 31
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %175, i8* %176, align 1
  %177 = lshr i32 %154, 31
  %178 = xor i32 %174, %177
  %179 = add i32 %178, %177
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %181, i8* %182, align 1
  store %struct.Memory* %loadMem_41b19e, %struct.Memory** %MEMORY
  %loadMem_41b1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %PC.i690
  %187 = add i64 %186, 29
  %188 = load i64, i64* %PC.i690
  %189 = add i64 %188, 6
  %190 = load i64, i64* %PC.i690
  %191 = add i64 %190, 6
  store i64 %191, i64* %PC.i690
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %193 = load i8, i8* %192, align 1
  %194 = icmp ne i8 %193, 0
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %196 = load i8, i8* %195, align 1
  %197 = icmp ne i8 %196, 0
  %198 = xor i1 %194, %197
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %BRANCH_TAKEN, align 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %202 = select i1 %198, i64 %189, i64 %187
  store i64 %202, i64* %201, align 8
  store %struct.Memory* %loadMem_41b1a5, %struct.Memory** %MEMORY
  %loadBr_41b1a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b1a5 = icmp eq i8 %loadBr_41b1a5, 1
  br i1 %cmpBr_41b1a5, label %block_.L_41b1c2, label %block_41b1ab

block_41b1ab:                                     ; preds = %entry
  %loadMem_41b1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i689
  %213 = sub i64 %212, 16
  %214 = load i64, i64* %PC.i687
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i687
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_41b1ab, %struct.Memory** %MEMORY
  %loadMem_41b1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RAX.i686
  %225 = add i64 %224, 40
  %226 = load i64, i64* %PC.i685
  %227 = add i64 %226, 7
  store i64 %227, i64* %PC.i685
  %228 = inttoptr i64 %225 to i32*
  store i32 0, i32* %228
  store %struct.Memory* %loadMem_41b1af, %struct.Memory** %MEMORY
  %loadMem_41b1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i684
  %236 = sub i64 %235, 4
  %237 = load i64, i64* %PC.i683
  %238 = add i64 %237, 7
  store i64 %238, i64* %PC.i683
  %239 = inttoptr i64 %236 to i32*
  store i32 0, i32* %239
  store %struct.Memory* %loadMem_41b1b6, %struct.Memory** %MEMORY
  %loadMem_41b1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %242 to i64*
  %243 = load i64, i64* %PC.i682
  %244 = add i64 %243, 1062
  %245 = load i64, i64* %PC.i682
  %246 = add i64 %245, 5
  store i64 %246, i64* %PC.i682
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %244, i64* %247, align 8
  store %struct.Memory* %loadMem_41b1bd, %struct.Memory** %MEMORY
  br label %block_.L_41b5e3

block_.L_41b1c2:                                  ; preds = %entry
  %loadMem_41b1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %251, i64 0, i64 0
  %YMM0.i680 = bitcast %union.VectorReg* %252 to %"class.std::bitset"*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %253, i64 0, i64 0
  %XMM0.i681 = bitcast %union.VectorReg* %254 to %union.vec128_t*
  %255 = bitcast %"class.std::bitset"* %YMM0.i680 to i8*
  %256 = bitcast %"class.std::bitset"* %YMM0.i680 to i8*
  %257 = bitcast %union.vec128_t* %XMM0.i681 to i8*
  %258 = load i64, i64* %PC.i679
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC.i679
  %260 = bitcast i8* %256 to i64*
  %261 = load i64, i64* %260, align 1
  %262 = getelementptr inbounds i8, i8* %256, i64 8
  %263 = bitcast i8* %262 to i64*
  %264 = load i64, i64* %263, align 1
  %265 = bitcast i8* %257 to i64*
  %266 = load i64, i64* %265, align 1
  %267 = getelementptr inbounds i8, i8* %257, i64 8
  %268 = bitcast i8* %267 to i64*
  %269 = load i64, i64* %268, align 1
  %270 = xor i64 %266, %261
  %271 = xor i64 %269, %264
  %272 = trunc i64 %270 to i32
  %273 = lshr i64 %270, 32
  %274 = trunc i64 %273 to i32
  %275 = bitcast i8* %255 to i32*
  store i32 %272, i32* %275, align 1
  %276 = getelementptr inbounds i8, i8* %255, i64 4
  %277 = bitcast i8* %276 to i32*
  store i32 %274, i32* %277, align 1
  %278 = trunc i64 %271 to i32
  %279 = getelementptr inbounds i8, i8* %255, i64 8
  %280 = bitcast i8* %279 to i32*
  store i32 %278, i32* %280, align 1
  %281 = lshr i64 %271, 32
  %282 = trunc i64 %281 to i32
  %283 = getelementptr inbounds i8, i8* %255, i64 12
  %284 = bitcast i8* %283 to i32*
  store i32 %282, i32* %284, align 1
  store %struct.Memory* %loadMem_41b1c2, %struct.Memory** %MEMORY
  %loadMem_41b1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %291, i64 0, i64 0
  %XMM0.i678 = bitcast %union.VectorReg* %292 to %union.vec128_t*
  %293 = load i64, i64* %RBP.i677
  %294 = sub i64 %293, 28
  %295 = bitcast %union.vec128_t* %XMM0.i678 to i8*
  %296 = load i64, i64* %PC.i676
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC.i676
  %298 = bitcast i8* %295 to <2 x float>*
  %299 = load <2 x float>, <2 x float>* %298, align 1
  %300 = extractelement <2 x float> %299, i32 0
  %301 = inttoptr i64 %294 to float*
  store float %300, float* %301
  store %struct.Memory* %loadMem_41b1c5, %struct.Memory** %MEMORY
  %loadMem_41b1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 15
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 0
  %XMM0.i675 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = load i64, i64* %RBP.i674
  %311 = sub i64 %310, 24
  %312 = bitcast %union.vec128_t* %XMM0.i675 to i8*
  %313 = load i64, i64* %PC.i673
  %314 = add i64 %313, 5
  store i64 %314, i64* %PC.i673
  %315 = bitcast i8* %312 to <2 x float>*
  %316 = load <2 x float>, <2 x float>* %315, align 1
  %317 = extractelement <2 x float> %316, i32 0
  %318 = inttoptr i64 %311 to float*
  store float %317, float* %318
  store %struct.Memory* %loadMem_41b1ca, %struct.Memory** %MEMORY
  %loadMem_41b1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 15
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %RBP.i672
  %329 = sub i64 %328, 16
  %330 = load i64, i64* %PC.i670
  %331 = add i64 %330, 4
  store i64 %331, i64* %PC.i670
  %332 = inttoptr i64 %329 to i64*
  %333 = load i64, i64* %332
  store i64 %333, i64* %RAX.i671, align 8
  store %struct.Memory* %loadMem_41b1cf, %struct.Memory** %MEMORY
  %loadMem_41b1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %RAX.i668
  %344 = add i64 %343, 20
  %345 = load i64, i64* %PC.i667
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC.i667
  %347 = inttoptr i64 %344 to i32*
  %348 = load i32, i32* %347
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_41b1d3, %struct.Memory** %MEMORY
  %loadMem_41b1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %ECX.i665 = bitcast %union.anon* %355 to i32*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 15
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %RBP.i666
  %360 = sub i64 %359, 36
  %361 = load i32, i32* %ECX.i665
  %362 = zext i32 %361 to i64
  %363 = load i64, i64* %PC.i664
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC.i664
  %365 = inttoptr i64 %360 to i32*
  store i32 %361, i32* %365
  store %struct.Memory* %loadMem_41b1d6, %struct.Memory** %MEMORY
  br label %block_.L_41b1d9

block_.L_41b1d9:                                  ; preds = %block_41b1e9, %block_.L_41b1c2
  %loadMem_41b1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i663
  %376 = sub i64 %375, 36
  %377 = load i64, i64* %PC.i661
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC.i661
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_41b1d9, %struct.Memory** %MEMORY
  %loadMem_41b1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 15
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %390 to i64*
  %391 = load i64, i64* %RBP.i660
  %392 = sub i64 %391, 16
  %393 = load i64, i64* %PC.i658
  %394 = add i64 %393, 4
  store i64 %394, i64* %PC.i658
  %395 = inttoptr i64 %392 to i64*
  %396 = load i64, i64* %395
  store i64 %396, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_41b1dc, %struct.Memory** %MEMORY
  %loadMem_41b1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %EAX.i656 = bitcast %union.anon* %402 to i32*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %405 to i64*
  %406 = load i32, i32* %EAX.i656
  %407 = zext i32 %406 to i64
  %408 = load i64, i64* %RCX.i657
  %409 = add i64 %408, 16
  %410 = load i64, i64* %PC.i655
  %411 = add i64 %410, 3
  store i64 %411, i64* %PC.i655
  %412 = inttoptr i64 %409 to i32*
  %413 = load i32, i32* %412
  %414 = sub i32 %406, %413
  %415 = icmp ult i32 %406, %413
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %416, i8* %417, align 1
  %418 = and i32 %414, 255
  %419 = call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %422, i8* %423, align 1
  %424 = xor i32 %413, %406
  %425 = xor i32 %424, %414
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %428, i8* %429, align 1
  %430 = icmp eq i32 %414, 0
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %431, i8* %432, align 1
  %433 = lshr i32 %414, 31
  %434 = trunc i32 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %434, i8* %435, align 1
  %436 = lshr i32 %406, 31
  %437 = lshr i32 %413, 31
  %438 = xor i32 %437, %436
  %439 = xor i32 %433, %436
  %440 = add i32 %439, %438
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %442, i8* %443, align 1
  store %struct.Memory* %loadMem_41b1e0, %struct.Memory** %MEMORY
  %loadMem_41b1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %PC.i654
  %448 = add i64 %447, 135
  %449 = load i64, i64* %PC.i654
  %450 = add i64 %449, 6
  %451 = load i64, i64* %PC.i654
  %452 = add i64 %451, 6
  store i64 %452, i64* %PC.i654
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %454 = load i8, i8* %453, align 1
  %455 = icmp eq i8 %454, 0
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %457 = load i8, i8* %456, align 1
  %458 = icmp ne i8 %457, 0
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %460 = load i8, i8* %459, align 1
  %461 = icmp ne i8 %460, 0
  %462 = xor i1 %458, %461
  %463 = xor i1 %462, true
  %464 = and i1 %455, %463
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %BRANCH_TAKEN, align 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %467 = select i1 %464, i64 %448, i64 %450
  store i64 %467, i64* %466, align 8
  store %struct.Memory* %loadMem_41b1e3, %struct.Memory** %MEMORY
  %loadBr_41b1e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b1e3 = icmp eq i8 %loadBr_41b1e3, 1
  br i1 %cmpBr_41b1e3, label %block_.L_41b26a, label %block_41b1e9

block_41b1e9:                                     ; preds = %block_.L_41b1d9
  %loadMem_41b1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %471, i64 0, i64 0
  %YMM0.i653 = bitcast %union.VectorReg* %472 to %"class.std::bitset"*
  %473 = bitcast %"class.std::bitset"* %YMM0.i653 to i8*
  %474 = load i64, i64* %PC.i652
  %475 = add i64 %474, ptrtoint (%G_0x395ff__rip__type* @G_0x395ff__rip_ to i64)
  %476 = load i64, i64* %PC.i652
  %477 = add i64 %476, 8
  store i64 %477, i64* %PC.i652
  %478 = inttoptr i64 %475 to double*
  %479 = load double, double* %478
  %480 = bitcast i8* %473 to double*
  store double %479, double* %480, align 1
  %481 = getelementptr inbounds i8, i8* %473, i64 8
  %482 = bitcast i8* %481 to double*
  store double 0.000000e+00, double* %482, align 1
  store %struct.Memory* %loadMem_41b1e9, %struct.Memory** %MEMORY
  %loadMem_41b1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 15
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %489, i64 0, i64 1
  %YMM1.i651 = bitcast %union.VectorReg* %490 to %"class.std::bitset"*
  %491 = bitcast %"class.std::bitset"* %YMM1.i651 to i8*
  %492 = load i64, i64* %RBP.i650
  %493 = sub i64 %492, 36
  %494 = load i64, i64* %PC.i649
  %495 = add i64 %494, 5
  store i64 %495, i64* %PC.i649
  %496 = bitcast i8* %491 to <2 x i32>*
  %497 = load <2 x i32>, <2 x i32>* %496, align 1
  %498 = getelementptr inbounds i8, i8* %491, i64 8
  %499 = bitcast i8* %498 to <2 x i32>*
  %500 = load <2 x i32>, <2 x i32>* %499, align 1
  %501 = inttoptr i64 %493 to i32*
  %502 = load i32, i32* %501
  %503 = sitofp i32 %502 to float
  %504 = bitcast i8* %491 to float*
  store float %503, float* %504, align 1
  %505 = extractelement <2 x i32> %497, i32 1
  %506 = getelementptr inbounds i8, i8* %491, i64 4
  %507 = bitcast i8* %506 to i32*
  store i32 %505, i32* %507, align 1
  %508 = extractelement <2 x i32> %500, i32 0
  %509 = bitcast i8* %498 to i32*
  store i32 %508, i32* %509, align 1
  %510 = extractelement <2 x i32> %500, i32 1
  %511 = getelementptr inbounds i8, i8* %491, i64 12
  %512 = bitcast i8* %511 to i32*
  store i32 %510, i32* %512, align 1
  store %struct.Memory* %loadMem_41b1f1, %struct.Memory** %MEMORY
  %loadMem_41b1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %516, i64 0, i64 1
  %YMM1.i647 = bitcast %union.VectorReg* %517 to %"class.std::bitset"*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %519 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %518, i64 0, i64 1
  %XMM1.i648 = bitcast %union.VectorReg* %519 to %union.vec128_t*
  %520 = bitcast %"class.std::bitset"* %YMM1.i647 to i8*
  %521 = bitcast %union.vec128_t* %XMM1.i648 to i8*
  %522 = load i64, i64* %PC.i646
  %523 = add i64 %522, 4
  store i64 %523, i64* %PC.i646
  %524 = bitcast i8* %521 to <2 x float>*
  %525 = load <2 x float>, <2 x float>* %524, align 1
  %526 = extractelement <2 x float> %525, i32 0
  %527 = fpext float %526 to double
  %528 = bitcast i8* %520 to double*
  store double %527, double* %528, align 1
  store %struct.Memory* %loadMem_41b1f6, %struct.Memory** %MEMORY
  %loadMem_41b1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %532, i64 0, i64 1
  %YMM1.i644 = bitcast %union.VectorReg* %533 to %"class.std::bitset"*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %534, i64 0, i64 0
  %XMM0.i645 = bitcast %union.VectorReg* %535 to %union.vec128_t*
  %536 = bitcast %"class.std::bitset"* %YMM1.i644 to i8*
  %537 = bitcast %"class.std::bitset"* %YMM1.i644 to i8*
  %538 = bitcast %union.vec128_t* %XMM0.i645 to i8*
  %539 = load i64, i64* %PC.i643
  %540 = add i64 %539, 4
  store i64 %540, i64* %PC.i643
  %541 = bitcast i8* %537 to double*
  %542 = load double, double* %541, align 1
  %543 = getelementptr inbounds i8, i8* %537, i64 8
  %544 = bitcast i8* %543 to i64*
  %545 = load i64, i64* %544, align 1
  %546 = bitcast i8* %538 to double*
  %547 = load double, double* %546, align 1
  %548 = fadd double %542, %547
  %549 = bitcast i8* %536 to double*
  store double %548, double* %549, align 1
  %550 = getelementptr inbounds i8, i8* %536, i64 8
  %551 = bitcast i8* %550 to i64*
  store i64 %545, i64* %551, align 1
  store %struct.Memory* %loadMem_41b1fa, %struct.Memory** %MEMORY
  %loadMem_41b1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %555, i64 0, i64 0
  %YMM0.i641 = bitcast %union.VectorReg* %556 to %"class.std::bitset"*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %558 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %557, i64 0, i64 1
  %XMM1.i642 = bitcast %union.VectorReg* %558 to %union.vec128_t*
  %559 = bitcast %"class.std::bitset"* %YMM0.i641 to i8*
  %560 = bitcast %union.vec128_t* %XMM1.i642 to i8*
  %561 = load i64, i64* %PC.i640
  %562 = add i64 %561, 4
  store i64 %562, i64* %PC.i640
  %563 = bitcast i8* %559 to <2 x i32>*
  %564 = load <2 x i32>, <2 x i32>* %563, align 1
  %565 = getelementptr inbounds i8, i8* %559, i64 8
  %566 = bitcast i8* %565 to <2 x i32>*
  %567 = load <2 x i32>, <2 x i32>* %566, align 1
  %568 = bitcast i8* %560 to double*
  %569 = load double, double* %568, align 1
  %570 = fptrunc double %569 to float
  %571 = bitcast i8* %559 to float*
  store float %570, float* %571, align 1
  %572 = extractelement <2 x i32> %564, i32 1
  %573 = getelementptr inbounds i8, i8* %559, i64 4
  %574 = bitcast i8* %573 to i32*
  store i32 %572, i32* %574, align 1
  %575 = extractelement <2 x i32> %567, i32 0
  %576 = bitcast i8* %565 to i32*
  store i32 %575, i32* %576, align 1
  %577 = extractelement <2 x i32> %567, i32 1
  %578 = getelementptr inbounds i8, i8* %559, i64 12
  %579 = bitcast i8* %578 to i32*
  store i32 %577, i32* %579, align 1
  store %struct.Memory* %loadMem_41b1fe, %struct.Memory** %MEMORY
  %loadMem_41b202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 15
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %586, i64 0, i64 0
  %XMM0.i639 = bitcast %union.VectorReg* %587 to %union.vec128_t*
  %588 = load i64, i64* %RBP.i638
  %589 = sub i64 %588, 32
  %590 = bitcast %union.vec128_t* %XMM0.i639 to i8*
  %591 = load i64, i64* %PC.i637
  %592 = add i64 %591, 5
  store i64 %592, i64* %PC.i637
  %593 = bitcast i8* %590 to <2 x float>*
  %594 = load <2 x float>, <2 x float>* %593, align 1
  %595 = extractelement <2 x float> %594, i32 0
  %596 = inttoptr i64 %589 to float*
  store float %595, float* %596
  store %struct.Memory* %loadMem_41b202, %struct.Memory** %MEMORY
  %loadMem_41b207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RBP.i636
  %607 = sub i64 %606, 16
  %608 = load i64, i64* %PC.i634
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC.i634
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610
  store i64 %611, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_41b207, %struct.Memory** %MEMORY
  %loadMem_41b20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RAX.i633
  %619 = load i64, i64* %PC.i632
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC.i632
  %621 = inttoptr i64 %618 to i64*
  %622 = load i64, i64* %621
  store i64 %622, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_41b20b, %struct.Memory** %MEMORY
  %loadMem_41b20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 15
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %RBP.i631
  %633 = sub i64 %632, 36
  %634 = load i64, i64* %PC.i629
  %635 = add i64 %634, 3
  store i64 %635, i64* %PC.i629
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RCX.i630, align 8
  store %struct.Memory* %loadMem_41b20e, %struct.Memory** %MEMORY
  %loadMem_41b211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 7
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 15
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %647 to i64*
  %648 = load i64, i64* %RBP.i628
  %649 = sub i64 %648, 16
  %650 = load i64, i64* %PC.i626
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i626
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652
  store i64 %653, i64* %RDX.i627, align 8
  store %struct.Memory* %loadMem_41b211, %struct.Memory** %MEMORY
  %loadMem_41b215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 33
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 5
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 7
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RDX.i625 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %RCX.i624
  %664 = load i64, i64* %RDX.i625
  %665 = add i64 %664, 8
  %666 = load i64, i64* %PC.i623
  %667 = add i64 %666, 3
  store i64 %667, i64* %PC.i623
  %668 = trunc i64 %663 to i32
  %669 = inttoptr i64 %665 to i32*
  %670 = load i32, i32* %669
  %671 = sub i32 %668, %670
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RCX.i624, align 8
  %673 = icmp ult i32 %668, %670
  %674 = zext i1 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %674, i8* %675, align 1
  %676 = and i32 %671, 255
  %677 = call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %681, align 1
  %682 = xor i32 %670, %668
  %683 = xor i32 %682, %671
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %686, i8* %687, align 1
  %688 = icmp eq i32 %671, 0
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %689, i8* %690, align 1
  %691 = lshr i32 %671, 31
  %692 = trunc i32 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %692, i8* %693, align 1
  %694 = lshr i32 %668, 31
  %695 = lshr i32 %670, 31
  %696 = xor i32 %695, %694
  %697 = xor i32 %691, %694
  %698 = add i32 %697, %696
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %700, i8* %701, align 1
  store %struct.Memory* %loadMem_41b215, %struct.Memory** %MEMORY
  %loadMem_41b218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 5
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %ECX.i621 = bitcast %union.anon* %707 to i32*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 7
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RDX.i622 = bitcast %union.anon* %710 to i64*
  %711 = load i32, i32* %ECX.i621
  %712 = zext i32 %711 to i64
  %713 = load i64, i64* %PC.i620
  %714 = add i64 %713, 3
  store i64 %714, i64* %PC.i620
  %715 = shl i64 %712, 32
  %716 = ashr exact i64 %715, 32
  store i64 %716, i64* %RDX.i622, align 8
  store %struct.Memory* %loadMem_41b218, %struct.Memory** %MEMORY
  %loadMem_41b21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 7
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RDX.i618 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %726, i64 0, i64 0
  %YMM0.i619 = bitcast %union.VectorReg* %727 to %"class.std::bitset"*
  %728 = bitcast %"class.std::bitset"* %YMM0.i619 to i8*
  %729 = load i64, i64* %RAX.i617
  %730 = load i64, i64* %RDX.i618
  %731 = mul i64 %730, 4
  %732 = add i64 %731, %729
  %733 = load i64, i64* %PC.i616
  %734 = add i64 %733, 5
  store i64 %734, i64* %PC.i616
  %735 = bitcast i8* %728 to <2 x i32>*
  %736 = load <2 x i32>, <2 x i32>* %735, align 1
  %737 = getelementptr inbounds i8, i8* %728, i64 8
  %738 = bitcast i8* %737 to <2 x i32>*
  %739 = load <2 x i32>, <2 x i32>* %738, align 1
  %740 = inttoptr i64 %732 to i32*
  %741 = load i32, i32* %740
  %742 = sitofp i32 %741 to float
  %743 = bitcast i8* %728 to float*
  store float %742, float* %743, align 1
  %744 = extractelement <2 x i32> %736, i32 1
  %745 = getelementptr inbounds i8, i8* %728, i64 4
  %746 = bitcast i8* %745 to i32*
  store i32 %744, i32* %746, align 1
  %747 = extractelement <2 x i32> %739, i32 0
  %748 = bitcast i8* %737 to i32*
  store i32 %747, i32* %748, align 1
  %749 = extractelement <2 x i32> %739, i32 1
  %750 = getelementptr inbounds i8, i8* %728, i64 12
  %751 = bitcast i8* %750 to i32*
  store i32 %749, i32* %751, align 1
  store %struct.Memory* %loadMem_41b21b, %struct.Memory** %MEMORY
  %loadMem_41b220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 15
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %758, i64 0, i64 0
  %YMM0.i615 = bitcast %union.VectorReg* %759 to %"class.std::bitset"*
  %760 = bitcast %"class.std::bitset"* %YMM0.i615 to i8*
  %761 = bitcast %"class.std::bitset"* %YMM0.i615 to i8*
  %762 = load i64, i64* %RBP.i614
  %763 = sub i64 %762, 32
  %764 = load i64, i64* %PC.i613
  %765 = add i64 %764, 5
  store i64 %765, i64* %PC.i613
  %766 = bitcast i8* %761 to <2 x float>*
  %767 = load <2 x float>, <2 x float>* %766, align 1
  %768 = getelementptr inbounds i8, i8* %761, i64 8
  %769 = bitcast i8* %768 to <2 x i32>*
  %770 = load <2 x i32>, <2 x i32>* %769, align 1
  %771 = inttoptr i64 %763 to float*
  %772 = load float, float* %771
  %773 = extractelement <2 x float> %767, i32 0
  %774 = fmul float %773, %772
  %775 = bitcast i8* %760 to float*
  store float %774, float* %775, align 1
  %776 = bitcast <2 x float> %767 to <2 x i32>
  %777 = extractelement <2 x i32> %776, i32 1
  %778 = getelementptr inbounds i8, i8* %760, i64 4
  %779 = bitcast i8* %778 to i32*
  store i32 %777, i32* %779, align 1
  %780 = extractelement <2 x i32> %770, i32 0
  %781 = getelementptr inbounds i8, i8* %760, i64 8
  %782 = bitcast i8* %781 to i32*
  store i32 %780, i32* %782, align 1
  %783 = extractelement <2 x i32> %770, i32 1
  %784 = getelementptr inbounds i8, i8* %760, i64 12
  %785 = bitcast i8* %784 to i32*
  store i32 %783, i32* %785, align 1
  store %struct.Memory* %loadMem_41b220, %struct.Memory** %MEMORY
  %loadMem_41b225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 15
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %792, i64 0, i64 0
  %YMM0.i612 = bitcast %union.VectorReg* %793 to %"class.std::bitset"*
  %794 = bitcast %"class.std::bitset"* %YMM0.i612 to i8*
  %795 = bitcast %"class.std::bitset"* %YMM0.i612 to i8*
  %796 = load i64, i64* %RBP.i611
  %797 = sub i64 %796, 24
  %798 = load i64, i64* %PC.i610
  %799 = add i64 %798, 5
  store i64 %799, i64* %PC.i610
  %800 = bitcast i8* %795 to <2 x float>*
  %801 = load <2 x float>, <2 x float>* %800, align 1
  %802 = getelementptr inbounds i8, i8* %795, i64 8
  %803 = bitcast i8* %802 to <2 x i32>*
  %804 = load <2 x i32>, <2 x i32>* %803, align 1
  %805 = inttoptr i64 %797 to float*
  %806 = load float, float* %805
  %807 = extractelement <2 x float> %801, i32 0
  %808 = fadd float %807, %806
  %809 = bitcast i8* %794 to float*
  store float %808, float* %809, align 1
  %810 = bitcast <2 x float> %801 to <2 x i32>
  %811 = extractelement <2 x i32> %810, i32 1
  %812 = getelementptr inbounds i8, i8* %794, i64 4
  %813 = bitcast i8* %812 to i32*
  store i32 %811, i32* %813, align 1
  %814 = extractelement <2 x i32> %804, i32 0
  %815 = getelementptr inbounds i8, i8* %794, i64 8
  %816 = bitcast i8* %815 to i32*
  store i32 %814, i32* %816, align 1
  %817 = extractelement <2 x i32> %804, i32 1
  %818 = getelementptr inbounds i8, i8* %794, i64 12
  %819 = bitcast i8* %818 to i32*
  store i32 %817, i32* %819, align 1
  store %struct.Memory* %loadMem_41b225, %struct.Memory** %MEMORY
  %loadMem_41b22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 15
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %826, i64 0, i64 0
  %XMM0.i609 = bitcast %union.VectorReg* %827 to %union.vec128_t*
  %828 = load i64, i64* %RBP.i608
  %829 = sub i64 %828, 24
  %830 = bitcast %union.vec128_t* %XMM0.i609 to i8*
  %831 = load i64, i64* %PC.i607
  %832 = add i64 %831, 5
  store i64 %832, i64* %PC.i607
  %833 = bitcast i8* %830 to <2 x float>*
  %834 = load <2 x float>, <2 x float>* %833, align 1
  %835 = extractelement <2 x float> %834, i32 0
  %836 = inttoptr i64 %829 to float*
  store float %835, float* %836
  store %struct.Memory* %loadMem_41b22a, %struct.Memory** %MEMORY
  %loadMem_41b22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 1
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 15
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %845 to i64*
  %846 = load i64, i64* %RBP.i606
  %847 = sub i64 %846, 16
  %848 = load i64, i64* %PC.i604
  %849 = add i64 %848, 4
  store i64 %849, i64* %PC.i604
  %850 = inttoptr i64 %847 to i64*
  %851 = load i64, i64* %850
  store i64 %851, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_41b22f, %struct.Memory** %MEMORY
  %loadMem_41b233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 1
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RAX.i603
  %859 = load i64, i64* %PC.i602
  %860 = add i64 %859, 3
  store i64 %860, i64* %PC.i602
  %861 = inttoptr i64 %858 to i64*
  %862 = load i64, i64* %861
  store i64 %862, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_41b233, %struct.Memory** %MEMORY
  %loadMem_41b236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 5
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 15
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %RBP.i601
  %873 = sub i64 %872, 36
  %874 = load i64, i64* %PC.i599
  %875 = add i64 %874, 3
  store i64 %875, i64* %PC.i599
  %876 = inttoptr i64 %873 to i32*
  %877 = load i32, i32* %876
  %878 = zext i32 %877 to i64
  store i64 %878, i64* %RCX.i600, align 8
  store %struct.Memory* %loadMem_41b236, %struct.Memory** %MEMORY
  %loadMem_41b239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 7
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 15
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RBP.i598
  %889 = sub i64 %888, 16
  %890 = load i64, i64* %PC.i596
  %891 = add i64 %890, 4
  store i64 %891, i64* %PC.i596
  %892 = inttoptr i64 %889 to i64*
  %893 = load i64, i64* %892
  store i64 %893, i64* %RDX.i597, align 8
  store %struct.Memory* %loadMem_41b239, %struct.Memory** %MEMORY
  %loadMem_41b23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 5
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 7
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RDX.i595 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RCX.i594
  %904 = load i64, i64* %RDX.i595
  %905 = add i64 %904, 8
  %906 = load i64, i64* %PC.i593
  %907 = add i64 %906, 3
  store i64 %907, i64* %PC.i593
  %908 = trunc i64 %903 to i32
  %909 = inttoptr i64 %905 to i32*
  %910 = load i32, i32* %909
  %911 = sub i32 %908, %910
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RCX.i594, align 8
  %913 = icmp ult i32 %908, %910
  %914 = zext i1 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %914, i8* %915, align 1
  %916 = and i32 %911, 255
  %917 = call i32 @llvm.ctpop.i32(i32 %916)
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %920, i8* %921, align 1
  %922 = xor i32 %910, %908
  %923 = xor i32 %922, %911
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %926, i8* %927, align 1
  %928 = icmp eq i32 %911, 0
  %929 = zext i1 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %929, i8* %930, align 1
  %931 = lshr i32 %911, 31
  %932 = trunc i32 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %932, i8* %933, align 1
  %934 = lshr i32 %908, 31
  %935 = lshr i32 %910, 31
  %936 = xor i32 %935, %934
  %937 = xor i32 %931, %934
  %938 = add i32 %937, %936
  %939 = icmp eq i32 %938, 2
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %940, i8* %941, align 1
  store %struct.Memory* %loadMem_41b23d, %struct.Memory** %MEMORY
  %loadMem_41b240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 5
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %ECX.i591 = bitcast %union.anon* %947 to i32*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 7
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RDX.i592 = bitcast %union.anon* %950 to i64*
  %951 = load i32, i32* %ECX.i591
  %952 = zext i32 %951 to i64
  %953 = load i64, i64* %PC.i590
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC.i590
  %955 = shl i64 %952, 32
  %956 = ashr exact i64 %955, 32
  store i64 %956, i64* %RDX.i592, align 8
  store %struct.Memory* %loadMem_41b240, %struct.Memory** %MEMORY
  %loadMem_41b243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 33
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 1
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 7
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RDX.i588 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %966, i64 0, i64 0
  %YMM0.i589 = bitcast %union.VectorReg* %967 to %"class.std::bitset"*
  %968 = bitcast %"class.std::bitset"* %YMM0.i589 to i8*
  %969 = load i64, i64* %RAX.i587
  %970 = load i64, i64* %RDX.i588
  %971 = mul i64 %970, 4
  %972 = add i64 %971, %969
  %973 = load i64, i64* %PC.i586
  %974 = add i64 %973, 5
  store i64 %974, i64* %PC.i586
  %975 = bitcast i8* %968 to <2 x i32>*
  %976 = load <2 x i32>, <2 x i32>* %975, align 1
  %977 = getelementptr inbounds i8, i8* %968, i64 8
  %978 = bitcast i8* %977 to <2 x i32>*
  %979 = load <2 x i32>, <2 x i32>* %978, align 1
  %980 = inttoptr i64 %972 to i32*
  %981 = load i32, i32* %980
  %982 = sitofp i32 %981 to float
  %983 = bitcast i8* %968 to float*
  store float %982, float* %983, align 1
  %984 = extractelement <2 x i32> %976, i32 1
  %985 = getelementptr inbounds i8, i8* %968, i64 4
  %986 = bitcast i8* %985 to i32*
  store i32 %984, i32* %986, align 1
  %987 = extractelement <2 x i32> %979, i32 0
  %988 = bitcast i8* %977 to i32*
  store i32 %987, i32* %988, align 1
  %989 = extractelement <2 x i32> %979, i32 1
  %990 = getelementptr inbounds i8, i8* %968, i64 12
  %991 = bitcast i8* %990 to i32*
  store i32 %989, i32* %991, align 1
  store %struct.Memory* %loadMem_41b243, %struct.Memory** %MEMORY
  %loadMem_41b248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %998, i64 0, i64 0
  %YMM0.i585 = bitcast %union.VectorReg* %999 to %"class.std::bitset"*
  %1000 = bitcast %"class.std::bitset"* %YMM0.i585 to i8*
  %1001 = bitcast %"class.std::bitset"* %YMM0.i585 to i8*
  %1002 = load i64, i64* %RBP.i584
  %1003 = sub i64 %1002, 32
  %1004 = load i64, i64* %PC.i583
  %1005 = add i64 %1004, 5
  store i64 %1005, i64* %PC.i583
  %1006 = bitcast i8* %1001 to <2 x float>*
  %1007 = load <2 x float>, <2 x float>* %1006, align 1
  %1008 = getelementptr inbounds i8, i8* %1001, i64 8
  %1009 = bitcast i8* %1008 to <2 x i32>*
  %1010 = load <2 x i32>, <2 x i32>* %1009, align 1
  %1011 = inttoptr i64 %1003 to float*
  %1012 = load float, float* %1011
  %1013 = extractelement <2 x float> %1007, i32 0
  %1014 = fmul float %1013, %1012
  %1015 = bitcast i8* %1000 to float*
  store float %1014, float* %1015, align 1
  %1016 = bitcast <2 x float> %1007 to <2 x i32>
  %1017 = extractelement <2 x i32> %1016, i32 1
  %1018 = getelementptr inbounds i8, i8* %1000, i64 4
  %1019 = bitcast i8* %1018 to i32*
  store i32 %1017, i32* %1019, align 1
  %1020 = extractelement <2 x i32> %1010, i32 0
  %1021 = getelementptr inbounds i8, i8* %1000, i64 8
  %1022 = bitcast i8* %1021 to i32*
  store i32 %1020, i32* %1022, align 1
  %1023 = extractelement <2 x i32> %1010, i32 1
  %1024 = getelementptr inbounds i8, i8* %1000, i64 12
  %1025 = bitcast i8* %1024 to i32*
  store i32 %1023, i32* %1025, align 1
  store %struct.Memory* %loadMem_41b248, %struct.Memory** %MEMORY
  %loadMem_41b24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1032, i64 0, i64 0
  %YMM0.i582 = bitcast %union.VectorReg* %1033 to %"class.std::bitset"*
  %1034 = bitcast %"class.std::bitset"* %YMM0.i582 to i8*
  %1035 = bitcast %"class.std::bitset"* %YMM0.i582 to i8*
  %1036 = load i64, i64* %RBP.i581
  %1037 = sub i64 %1036, 32
  %1038 = load i64, i64* %PC.i580
  %1039 = add i64 %1038, 5
  store i64 %1039, i64* %PC.i580
  %1040 = bitcast i8* %1035 to <2 x float>*
  %1041 = load <2 x float>, <2 x float>* %1040, align 1
  %1042 = getelementptr inbounds i8, i8* %1035, i64 8
  %1043 = bitcast i8* %1042 to <2 x i32>*
  %1044 = load <2 x i32>, <2 x i32>* %1043, align 1
  %1045 = inttoptr i64 %1037 to float*
  %1046 = load float, float* %1045
  %1047 = extractelement <2 x float> %1041, i32 0
  %1048 = fmul float %1047, %1046
  %1049 = bitcast i8* %1034 to float*
  store float %1048, float* %1049, align 1
  %1050 = bitcast <2 x float> %1041 to <2 x i32>
  %1051 = extractelement <2 x i32> %1050, i32 1
  %1052 = getelementptr inbounds i8, i8* %1034, i64 4
  %1053 = bitcast i8* %1052 to i32*
  store i32 %1051, i32* %1053, align 1
  %1054 = extractelement <2 x i32> %1044, i32 0
  %1055 = getelementptr inbounds i8, i8* %1034, i64 8
  %1056 = bitcast i8* %1055 to i32*
  store i32 %1054, i32* %1056, align 1
  %1057 = extractelement <2 x i32> %1044, i32 1
  %1058 = getelementptr inbounds i8, i8* %1034, i64 12
  %1059 = bitcast i8* %1058 to i32*
  store i32 %1057, i32* %1059, align 1
  store %struct.Memory* %loadMem_41b24d, %struct.Memory** %MEMORY
  %loadMem_41b252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1066, i64 0, i64 0
  %YMM0.i579 = bitcast %union.VectorReg* %1067 to %"class.std::bitset"*
  %1068 = bitcast %"class.std::bitset"* %YMM0.i579 to i8*
  %1069 = bitcast %"class.std::bitset"* %YMM0.i579 to i8*
  %1070 = load i64, i64* %RBP.i578
  %1071 = sub i64 %1070, 28
  %1072 = load i64, i64* %PC.i577
  %1073 = add i64 %1072, 5
  store i64 %1073, i64* %PC.i577
  %1074 = bitcast i8* %1069 to <2 x float>*
  %1075 = load <2 x float>, <2 x float>* %1074, align 1
  %1076 = getelementptr inbounds i8, i8* %1069, i64 8
  %1077 = bitcast i8* %1076 to <2 x i32>*
  %1078 = load <2 x i32>, <2 x i32>* %1077, align 1
  %1079 = inttoptr i64 %1071 to float*
  %1080 = load float, float* %1079
  %1081 = extractelement <2 x float> %1075, i32 0
  %1082 = fadd float %1081, %1080
  %1083 = bitcast i8* %1068 to float*
  store float %1082, float* %1083, align 1
  %1084 = bitcast <2 x float> %1075 to <2 x i32>
  %1085 = extractelement <2 x i32> %1084, i32 1
  %1086 = getelementptr inbounds i8, i8* %1068, i64 4
  %1087 = bitcast i8* %1086 to i32*
  store i32 %1085, i32* %1087, align 1
  %1088 = extractelement <2 x i32> %1078, i32 0
  %1089 = getelementptr inbounds i8, i8* %1068, i64 8
  %1090 = bitcast i8* %1089 to i32*
  store i32 %1088, i32* %1090, align 1
  %1091 = extractelement <2 x i32> %1078, i32 1
  %1092 = getelementptr inbounds i8, i8* %1068, i64 12
  %1093 = bitcast i8* %1092 to i32*
  store i32 %1091, i32* %1093, align 1
  store %struct.Memory* %loadMem_41b252, %struct.Memory** %MEMORY
  %loadMem_41b257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 15
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1100, i64 0, i64 0
  %XMM0.i576 = bitcast %union.VectorReg* %1101 to %union.vec128_t*
  %1102 = load i64, i64* %RBP.i575
  %1103 = sub i64 %1102, 28
  %1104 = bitcast %union.vec128_t* %XMM0.i576 to i8*
  %1105 = load i64, i64* %PC.i574
  %1106 = add i64 %1105, 5
  store i64 %1106, i64* %PC.i574
  %1107 = bitcast i8* %1104 to <2 x float>*
  %1108 = load <2 x float>, <2 x float>* %1107, align 1
  %1109 = extractelement <2 x float> %1108, i32 0
  %1110 = inttoptr i64 %1103 to float*
  store float %1109, float* %1110
  store %struct.Memory* %loadMem_41b257, %struct.Memory** %MEMORY
  %loadMem_41b25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RBP.i573
  %1121 = sub i64 %1120, 36
  %1122 = load i64, i64* %PC.i571
  %1123 = add i64 %1122, 3
  store i64 %1123, i64* %PC.i571
  %1124 = inttoptr i64 %1121 to i32*
  %1125 = load i32, i32* %1124
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_41b25c, %struct.Memory** %MEMORY
  %loadMem_41b25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 1
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RAX.i570
  %1134 = load i64, i64* %PC.i569
  %1135 = add i64 %1134, 3
  store i64 %1135, i64* %PC.i569
  %1136 = trunc i64 %1133 to i32
  %1137 = add i32 1, %1136
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RAX.i570, align 8
  %1139 = icmp ult i32 %1137, %1136
  %1140 = icmp ult i32 %1137, 1
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1142, i8* %1143, align 1
  %1144 = and i32 %1137, 255
  %1145 = call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1148, i8* %1149, align 1
  %1150 = xor i64 1, %1133
  %1151 = trunc i64 %1150 to i32
  %1152 = xor i32 %1151, %1137
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1155, i8* %1156, align 1
  %1157 = icmp eq i32 %1137, 0
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1158, i8* %1159, align 1
  %1160 = lshr i32 %1137, 31
  %1161 = trunc i32 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1161, i8* %1162, align 1
  %1163 = lshr i32 %1136, 31
  %1164 = xor i32 %1160, %1163
  %1165 = add i32 %1164, %1160
  %1166 = icmp eq i32 %1165, 2
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1167, i8* %1168, align 1
  store %struct.Memory* %loadMem_41b25f, %struct.Memory** %MEMORY
  %loadMem_41b262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %1174 to i32*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 15
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RBP.i568
  %1179 = sub i64 %1178, 36
  %1180 = load i32, i32* %EAX.i567
  %1181 = zext i32 %1180 to i64
  %1182 = load i64, i64* %PC.i566
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC.i566
  %1184 = inttoptr i64 %1179 to i32*
  store i32 %1180, i32* %1184
  store %struct.Memory* %loadMem_41b262, %struct.Memory** %MEMORY
  %loadMem_41b265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %PC.i565
  %1189 = add i64 %1188, -140
  %1190 = load i64, i64* %PC.i565
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %PC.i565
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1189, i64* %1192, align 8
  store %struct.Memory* %loadMem_41b265, %struct.Memory** %MEMORY
  br label %block_.L_41b1d9

block_.L_41b26a:                                  ; preds = %block_.L_41b1d9
  %loadMem_41b26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 11
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RDI.i564 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %PC.i563
  %1200 = add i64 %1199, 10
  store i64 %1200, i64* %PC.i563
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i564, align 8
  store %struct.Memory* %loadMem_41b26a, %struct.Memory** %MEMORY
  %loadMem_41b274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 9
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RSI.i562 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %PC.i561
  %1208 = add i64 %1207, 5
  store i64 %1208, i64* %PC.i561
  store i64 790, i64* %RSI.i562, align 8
  store %struct.Memory* %loadMem_41b274, %struct.Memory** %MEMORY
  %loadMem_41b279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 15
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RBP.i560
  %1219 = sub i64 %1218, 16
  %1220 = load i64, i64* %PC.i558
  %1221 = add i64 %1220, 4
  store i64 %1221, i64* %PC.i558
  %1222 = inttoptr i64 %1219 to i64*
  %1223 = load i64, i64* %1222
  store i64 %1223, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_41b279, %struct.Memory** %MEMORY
  %loadMem_41b27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 1
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %RAX.i557
  %1231 = add i64 %1230, 40
  %1232 = load i64, i64* %PC.i556
  %1233 = add i64 %1232, 7
  store i64 %1233, i64* %PC.i556
  %1234 = inttoptr i64 %1231 to i32*
  store i32 2, i32* %1234
  store %struct.Memory* %loadMem_41b27d, %struct.Memory** %MEMORY
  %loadMem_41b284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1241, i64 0, i64 0
  %YMM0.i555 = bitcast %union.VectorReg* %1242 to %"class.std::bitset"*
  %1243 = bitcast %"class.std::bitset"* %YMM0.i555 to i8*
  %1244 = load i64, i64* %RBP.i554
  %1245 = sub i64 %1244, 24
  %1246 = load i64, i64* %PC.i553
  %1247 = add i64 %1246, 5
  store i64 %1247, i64* %PC.i553
  %1248 = inttoptr i64 %1245 to float*
  %1249 = load float, float* %1248
  %1250 = bitcast i8* %1243 to float*
  store float %1249, float* %1250, align 1
  %1251 = getelementptr inbounds i8, i8* %1243, i64 4
  %1252 = bitcast i8* %1251 to float*
  store float 0.000000e+00, float* %1252, align 1
  %1253 = getelementptr inbounds i8, i8* %1243, i64 8
  %1254 = bitcast i8* %1253 to float*
  store float 0.000000e+00, float* %1254, align 1
  %1255 = getelementptr inbounds i8, i8* %1243, i64 12
  %1256 = bitcast i8* %1255 to float*
  store float 0.000000e+00, float* %1256, align 1
  store %struct.Memory* %loadMem_41b284, %struct.Memory** %MEMORY
  %loadMem_41b289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 1
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 15
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %1265 to i64*
  %1266 = load i64, i64* %RBP.i552
  %1267 = sub i64 %1266, 16
  %1268 = load i64, i64* %PC.i550
  %1269 = add i64 %1268, 4
  store i64 %1269, i64* %PC.i550
  %1270 = inttoptr i64 %1267 to i64*
  %1271 = load i64, i64* %1270
  store i64 %1271, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_41b289, %struct.Memory** %MEMORY
  %loadMem_41b28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 1
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1278, i64 0, i64 1
  %YMM1.i549 = bitcast %union.VectorReg* %1279 to %"class.std::bitset"*
  %1280 = bitcast %"class.std::bitset"* %YMM1.i549 to i8*
  %1281 = load i64, i64* %RAX.i548
  %1282 = add i64 %1281, 28
  %1283 = load i64, i64* %PC.i547
  %1284 = add i64 %1283, 5
  store i64 %1284, i64* %PC.i547
  %1285 = bitcast i8* %1280 to <2 x i32>*
  %1286 = load <2 x i32>, <2 x i32>* %1285, align 1
  %1287 = getelementptr inbounds i8, i8* %1280, i64 8
  %1288 = bitcast i8* %1287 to <2 x i32>*
  %1289 = load <2 x i32>, <2 x i32>* %1288, align 1
  %1290 = inttoptr i64 %1282 to i32*
  %1291 = load i32, i32* %1290
  %1292 = sitofp i32 %1291 to float
  %1293 = bitcast i8* %1280 to float*
  store float %1292, float* %1293, align 1
  %1294 = extractelement <2 x i32> %1286, i32 1
  %1295 = getelementptr inbounds i8, i8* %1280, i64 4
  %1296 = bitcast i8* %1295 to i32*
  store i32 %1294, i32* %1296, align 1
  %1297 = extractelement <2 x i32> %1289, i32 0
  %1298 = bitcast i8* %1287 to i32*
  store i32 %1297, i32* %1298, align 1
  %1299 = extractelement <2 x i32> %1289, i32 1
  %1300 = getelementptr inbounds i8, i8* %1280, i64 12
  %1301 = bitcast i8* %1300 to i32*
  store i32 %1299, i32* %1301, align 1
  store %struct.Memory* %loadMem_41b28d, %struct.Memory** %MEMORY
  %loadMem_41b292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 33
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1305, i64 0, i64 0
  %YMM0.i545 = bitcast %union.VectorReg* %1306 to %"class.std::bitset"*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1307, i64 0, i64 1
  %XMM1.i546 = bitcast %union.VectorReg* %1308 to %union.vec128_t*
  %1309 = bitcast %"class.std::bitset"* %YMM0.i545 to i8*
  %1310 = bitcast %"class.std::bitset"* %YMM0.i545 to i8*
  %1311 = bitcast %union.vec128_t* %XMM1.i546 to i8*
  %1312 = load i64, i64* %PC.i544
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %PC.i544
  %1314 = bitcast i8* %1310 to <2 x float>*
  %1315 = load <2 x float>, <2 x float>* %1314, align 1
  %1316 = getelementptr inbounds i8, i8* %1310, i64 8
  %1317 = bitcast i8* %1316 to <2 x i32>*
  %1318 = load <2 x i32>, <2 x i32>* %1317, align 1
  %1319 = bitcast i8* %1311 to <2 x float>*
  %1320 = load <2 x float>, <2 x float>* %1319, align 1
  %1321 = extractelement <2 x float> %1315, i32 0
  %1322 = extractelement <2 x float> %1320, i32 0
  %1323 = fdiv float %1321, %1322
  %1324 = bitcast i8* %1309 to float*
  store float %1323, float* %1324, align 1
  %1325 = bitcast <2 x float> %1315 to <2 x i32>
  %1326 = extractelement <2 x i32> %1325, i32 1
  %1327 = getelementptr inbounds i8, i8* %1309, i64 4
  %1328 = bitcast i8* %1327 to i32*
  store i32 %1326, i32* %1328, align 1
  %1329 = extractelement <2 x i32> %1318, i32 0
  %1330 = getelementptr inbounds i8, i8* %1309, i64 8
  %1331 = bitcast i8* %1330 to i32*
  store i32 %1329, i32* %1331, align 1
  %1332 = extractelement <2 x i32> %1318, i32 1
  %1333 = getelementptr inbounds i8, i8* %1309, i64 12
  %1334 = bitcast i8* %1333 to i32*
  store i32 %1332, i32* %1334, align 1
  store %struct.Memory* %loadMem_41b292, %struct.Memory** %MEMORY
  %loadMem_41b296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 1
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 15
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %RBP.i543
  %1345 = sub i64 %1344, 16
  %1346 = load i64, i64* %PC.i541
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %PC.i541
  %1348 = inttoptr i64 %1345 to i64*
  %1349 = load i64, i64* %1348
  store i64 %1349, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_41b296, %struct.Memory** %MEMORY
  %loadMem_41b29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1357 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1356, i64 0, i64 0
  %XMM0.i540 = bitcast %union.VectorReg* %1357 to %union.vec128_t*
  %1358 = load i64, i64* %RAX.i539
  %1359 = add i64 %1358, 44
  %1360 = bitcast %union.vec128_t* %XMM0.i540 to i8*
  %1361 = load i64, i64* %PC.i538
  %1362 = add i64 %1361, 5
  store i64 %1362, i64* %PC.i538
  %1363 = bitcast i8* %1360 to <2 x float>*
  %1364 = load <2 x float>, <2 x float>* %1363, align 1
  %1365 = extractelement <2 x float> %1364, i32 0
  %1366 = inttoptr i64 %1359 to float*
  store float %1365, float* %1366
  store %struct.Memory* %loadMem_41b29a, %struct.Memory** %MEMORY
  %loadMem_41b29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1373, i64 0, i64 0
  %YMM0.i537 = bitcast %union.VectorReg* %1374 to %"class.std::bitset"*
  %1375 = bitcast %"class.std::bitset"* %YMM0.i537 to i8*
  %1376 = load i64, i64* %RBP.i536
  %1377 = sub i64 %1376, 28
  %1378 = load i64, i64* %PC.i535
  %1379 = add i64 %1378, 5
  store i64 %1379, i64* %PC.i535
  %1380 = inttoptr i64 %1377 to float*
  %1381 = load float, float* %1380
  %1382 = bitcast i8* %1375 to float*
  store float %1381, float* %1382, align 1
  %1383 = getelementptr inbounds i8, i8* %1375, i64 4
  %1384 = bitcast i8* %1383 to float*
  store float 0.000000e+00, float* %1384, align 1
  %1385 = getelementptr inbounds i8, i8* %1375, i64 8
  %1386 = bitcast i8* %1385 to float*
  store float 0.000000e+00, float* %1386, align 1
  %1387 = getelementptr inbounds i8, i8* %1375, i64 12
  %1388 = bitcast i8* %1387 to float*
  store float 0.000000e+00, float* %1388, align 1
  store %struct.Memory* %loadMem_41b29f, %struct.Memory** %MEMORY
  %loadMem_41b2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1395, i64 0, i64 1
  %YMM1.i534 = bitcast %union.VectorReg* %1396 to %"class.std::bitset"*
  %1397 = bitcast %"class.std::bitset"* %YMM1.i534 to i8*
  %1398 = load i64, i64* %RBP.i533
  %1399 = sub i64 %1398, 24
  %1400 = load i64, i64* %PC.i532
  %1401 = add i64 %1400, 5
  store i64 %1401, i64* %PC.i532
  %1402 = inttoptr i64 %1399 to float*
  %1403 = load float, float* %1402
  %1404 = bitcast i8* %1397 to float*
  store float %1403, float* %1404, align 1
  %1405 = getelementptr inbounds i8, i8* %1397, i64 4
  %1406 = bitcast i8* %1405 to float*
  store float 0.000000e+00, float* %1406, align 1
  %1407 = getelementptr inbounds i8, i8* %1397, i64 8
  %1408 = bitcast i8* %1407 to float*
  store float 0.000000e+00, float* %1408, align 1
  %1409 = getelementptr inbounds i8, i8* %1397, i64 12
  %1410 = bitcast i8* %1409 to float*
  store float 0.000000e+00, float* %1410, align 1
  store %struct.Memory* %loadMem_41b2a4, %struct.Memory** %MEMORY
  %loadMem_41b2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 15
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1417, i64 0, i64 1
  %YMM1.i531 = bitcast %union.VectorReg* %1418 to %"class.std::bitset"*
  %1419 = bitcast %"class.std::bitset"* %YMM1.i531 to i8*
  %1420 = bitcast %"class.std::bitset"* %YMM1.i531 to i8*
  %1421 = load i64, i64* %RBP.i530
  %1422 = sub i64 %1421, 24
  %1423 = load i64, i64* %PC.i529
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %PC.i529
  %1425 = bitcast i8* %1420 to <2 x float>*
  %1426 = load <2 x float>, <2 x float>* %1425, align 1
  %1427 = getelementptr inbounds i8, i8* %1420, i64 8
  %1428 = bitcast i8* %1427 to <2 x i32>*
  %1429 = load <2 x i32>, <2 x i32>* %1428, align 1
  %1430 = inttoptr i64 %1422 to float*
  %1431 = load float, float* %1430
  %1432 = extractelement <2 x float> %1426, i32 0
  %1433 = fmul float %1432, %1431
  %1434 = bitcast i8* %1419 to float*
  store float %1433, float* %1434, align 1
  %1435 = bitcast <2 x float> %1426 to <2 x i32>
  %1436 = extractelement <2 x i32> %1435, i32 1
  %1437 = getelementptr inbounds i8, i8* %1419, i64 4
  %1438 = bitcast i8* %1437 to i32*
  store i32 %1436, i32* %1438, align 1
  %1439 = extractelement <2 x i32> %1429, i32 0
  %1440 = getelementptr inbounds i8, i8* %1419, i64 8
  %1441 = bitcast i8* %1440 to i32*
  store i32 %1439, i32* %1441, align 1
  %1442 = extractelement <2 x i32> %1429, i32 1
  %1443 = getelementptr inbounds i8, i8* %1419, i64 12
  %1444 = bitcast i8* %1443 to i32*
  store i32 %1442, i32* %1444, align 1
  store %struct.Memory* %loadMem_41b2a9, %struct.Memory** %MEMORY
  %loadMem_41b2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 15
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1453 to i64*
  %1454 = load i64, i64* %RBP.i528
  %1455 = sub i64 %1454, 16
  %1456 = load i64, i64* %PC.i526
  %1457 = add i64 %1456, 4
  store i64 %1457, i64* %PC.i526
  %1458 = inttoptr i64 %1455 to i64*
  %1459 = load i64, i64* %1458
  store i64 %1459, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_41b2ae, %struct.Memory** %MEMORY
  %loadMem_41b2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 1
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1466, i64 0, i64 2
  %YMM2.i525 = bitcast %union.VectorReg* %1467 to %"class.std::bitset"*
  %1468 = bitcast %"class.std::bitset"* %YMM2.i525 to i8*
  %1469 = load i64, i64* %RAX.i524
  %1470 = add i64 %1469, 28
  %1471 = load i64, i64* %PC.i523
  %1472 = add i64 %1471, 5
  store i64 %1472, i64* %PC.i523
  %1473 = bitcast i8* %1468 to <2 x i32>*
  %1474 = load <2 x i32>, <2 x i32>* %1473, align 1
  %1475 = getelementptr inbounds i8, i8* %1468, i64 8
  %1476 = bitcast i8* %1475 to <2 x i32>*
  %1477 = load <2 x i32>, <2 x i32>* %1476, align 1
  %1478 = inttoptr i64 %1470 to i32*
  %1479 = load i32, i32* %1478
  %1480 = sitofp i32 %1479 to float
  %1481 = bitcast i8* %1468 to float*
  store float %1480, float* %1481, align 1
  %1482 = extractelement <2 x i32> %1474, i32 1
  %1483 = getelementptr inbounds i8, i8* %1468, i64 4
  %1484 = bitcast i8* %1483 to i32*
  store i32 %1482, i32* %1484, align 1
  %1485 = extractelement <2 x i32> %1477, i32 0
  %1486 = bitcast i8* %1475 to i32*
  store i32 %1485, i32* %1486, align 1
  %1487 = extractelement <2 x i32> %1477, i32 1
  %1488 = getelementptr inbounds i8, i8* %1468, i64 12
  %1489 = bitcast i8* %1488 to i32*
  store i32 %1487, i32* %1489, align 1
  store %struct.Memory* %loadMem_41b2b2, %struct.Memory** %MEMORY
  %loadMem_41b2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1493, i64 0, i64 1
  %YMM1.i521 = bitcast %union.VectorReg* %1494 to %"class.std::bitset"*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1495, i64 0, i64 2
  %XMM2.i522 = bitcast %union.VectorReg* %1496 to %union.vec128_t*
  %1497 = bitcast %"class.std::bitset"* %YMM1.i521 to i8*
  %1498 = bitcast %"class.std::bitset"* %YMM1.i521 to i8*
  %1499 = bitcast %union.vec128_t* %XMM2.i522 to i8*
  %1500 = load i64, i64* %PC.i520
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i520
  %1502 = bitcast i8* %1498 to <2 x float>*
  %1503 = load <2 x float>, <2 x float>* %1502, align 1
  %1504 = getelementptr inbounds i8, i8* %1498, i64 8
  %1505 = bitcast i8* %1504 to <2 x i32>*
  %1506 = load <2 x i32>, <2 x i32>* %1505, align 1
  %1507 = bitcast i8* %1499 to <2 x float>*
  %1508 = load <2 x float>, <2 x float>* %1507, align 1
  %1509 = extractelement <2 x float> %1503, i32 0
  %1510 = extractelement <2 x float> %1508, i32 0
  %1511 = fdiv float %1509, %1510
  %1512 = bitcast i8* %1497 to float*
  store float %1511, float* %1512, align 1
  %1513 = bitcast <2 x float> %1503 to <2 x i32>
  %1514 = extractelement <2 x i32> %1513, i32 1
  %1515 = getelementptr inbounds i8, i8* %1497, i64 4
  %1516 = bitcast i8* %1515 to i32*
  store i32 %1514, i32* %1516, align 1
  %1517 = extractelement <2 x i32> %1506, i32 0
  %1518 = getelementptr inbounds i8, i8* %1497, i64 8
  %1519 = bitcast i8* %1518 to i32*
  store i32 %1517, i32* %1519, align 1
  %1520 = extractelement <2 x i32> %1506, i32 1
  %1521 = getelementptr inbounds i8, i8* %1497, i64 12
  %1522 = bitcast i8* %1521 to i32*
  store i32 %1520, i32* %1522, align 1
  store %struct.Memory* %loadMem_41b2b7, %struct.Memory** %MEMORY
  %loadMem_41b2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1526, i64 0, i64 0
  %YMM0.i518 = bitcast %union.VectorReg* %1527 to %"class.std::bitset"*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1528, i64 0, i64 1
  %XMM1.i519 = bitcast %union.VectorReg* %1529 to %union.vec128_t*
  %1530 = bitcast %"class.std::bitset"* %YMM0.i518 to i8*
  %1531 = bitcast %"class.std::bitset"* %YMM0.i518 to i8*
  %1532 = bitcast %union.vec128_t* %XMM1.i519 to i8*
  %1533 = load i64, i64* %PC.i517
  %1534 = add i64 %1533, 4
  store i64 %1534, i64* %PC.i517
  %1535 = bitcast i8* %1531 to <2 x float>*
  %1536 = load <2 x float>, <2 x float>* %1535, align 1
  %1537 = getelementptr inbounds i8, i8* %1531, i64 8
  %1538 = bitcast i8* %1537 to <2 x i32>*
  %1539 = load <2 x i32>, <2 x i32>* %1538, align 1
  %1540 = bitcast i8* %1532 to <2 x float>*
  %1541 = load <2 x float>, <2 x float>* %1540, align 1
  %1542 = extractelement <2 x float> %1536, i32 0
  %1543 = extractelement <2 x float> %1541, i32 0
  %1544 = fsub float %1542, %1543
  %1545 = bitcast i8* %1530 to float*
  store float %1544, float* %1545, align 1
  %1546 = bitcast <2 x float> %1536 to <2 x i32>
  %1547 = extractelement <2 x i32> %1546, i32 1
  %1548 = getelementptr inbounds i8, i8* %1530, i64 4
  %1549 = bitcast i8* %1548 to i32*
  store i32 %1547, i32* %1549, align 1
  %1550 = extractelement <2 x i32> %1539, i32 0
  %1551 = getelementptr inbounds i8, i8* %1530, i64 8
  %1552 = bitcast i8* %1551 to i32*
  store i32 %1550, i32* %1552, align 1
  %1553 = extractelement <2 x i32> %1539, i32 1
  %1554 = getelementptr inbounds i8, i8* %1530, i64 12
  %1555 = bitcast i8* %1554 to i32*
  store i32 %1553, i32* %1555, align 1
  store %struct.Memory* %loadMem_41b2bb, %struct.Memory** %MEMORY
  %loadMem_41b2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i516
  %1566 = sub i64 %1565, 16
  %1567 = load i64, i64* %PC.i514
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC.i514
  %1569 = inttoptr i64 %1566 to i64*
  %1570 = load i64, i64* %1569
  store i64 %1570, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_41b2bf, %struct.Memory** %MEMORY
  %loadMem_41b2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 5
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RAX.i512
  %1581 = add i64 %1580, 28
  %1582 = load i64, i64* %PC.i511
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC.i511
  %1584 = inttoptr i64 %1581 to i32*
  %1585 = load i32, i32* %1584
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_41b2c3, %struct.Memory** %MEMORY
  %loadMem_41b2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 5
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RCX.i510
  %1594 = load i64, i64* %PC.i509
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i509
  %1596 = trunc i64 %1593 to i32
  %1597 = sub i32 %1596, 1
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RCX.i510, align 8
  %1599 = icmp ult i32 %1596, 1
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1600, i8* %1601, align 1
  %1602 = and i32 %1597, 255
  %1603 = call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1606, i8* %1607, align 1
  %1608 = xor i64 1, %1593
  %1609 = trunc i64 %1608 to i32
  %1610 = xor i32 %1609, %1597
  %1611 = lshr i32 %1610, 4
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1613, i8* %1614, align 1
  %1615 = icmp eq i32 %1597, 0
  %1616 = zext i1 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1616, i8* %1617, align 1
  %1618 = lshr i32 %1597, 31
  %1619 = trunc i32 %1618 to i8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1619, i8* %1620, align 1
  %1621 = lshr i32 %1596, 31
  %1622 = xor i32 %1618, %1621
  %1623 = add i32 %1622, %1621
  %1624 = icmp eq i32 %1623, 2
  %1625 = zext i1 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1625, i8* %1626, align 1
  store %struct.Memory* %loadMem_41b2c6, %struct.Memory** %MEMORY
  %loadMem_41b2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 5
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %ECX.i507 = bitcast %union.anon* %1632 to i32*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 1
  %YMM1.i508 = bitcast %union.VectorReg* %1634 to %"class.std::bitset"*
  %1635 = bitcast %"class.std::bitset"* %YMM1.i508 to i8*
  %1636 = load i32, i32* %ECX.i507
  %1637 = zext i32 %1636 to i64
  %1638 = load i64, i64* %PC.i506
  %1639 = add i64 %1638, 4
  store i64 %1639, i64* %PC.i506
  %1640 = bitcast i8* %1635 to <2 x i32>*
  %1641 = load <2 x i32>, <2 x i32>* %1640, align 1
  %1642 = getelementptr inbounds i8, i8* %1635, i64 8
  %1643 = bitcast i8* %1642 to <2 x i32>*
  %1644 = load <2 x i32>, <2 x i32>* %1643, align 1
  %1645 = sitofp i32 %1636 to float
  %1646 = bitcast i8* %1635 to float*
  store float %1645, float* %1646, align 1
  %1647 = extractelement <2 x i32> %1641, i32 1
  %1648 = getelementptr inbounds i8, i8* %1635, i64 4
  %1649 = bitcast i8* %1648 to i32*
  store i32 %1647, i32* %1649, align 1
  %1650 = extractelement <2 x i32> %1644, i32 0
  %1651 = bitcast i8* %1642 to i32*
  store i32 %1650, i32* %1651, align 1
  %1652 = extractelement <2 x i32> %1644, i32 1
  %1653 = getelementptr inbounds i8, i8* %1635, i64 12
  %1654 = bitcast i8* %1653 to i32*
  store i32 %1652, i32* %1654, align 1
  store %struct.Memory* %loadMem_41b2c9, %struct.Memory** %MEMORY
  %loadMem_41b2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1658, i64 0, i64 0
  %YMM0.i504 = bitcast %union.VectorReg* %1659 to %"class.std::bitset"*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1660, i64 0, i64 1
  %XMM1.i505 = bitcast %union.VectorReg* %1661 to %union.vec128_t*
  %1662 = bitcast %"class.std::bitset"* %YMM0.i504 to i8*
  %1663 = bitcast %"class.std::bitset"* %YMM0.i504 to i8*
  %1664 = bitcast %union.vec128_t* %XMM1.i505 to i8*
  %1665 = load i64, i64* %PC.i503
  %1666 = add i64 %1665, 4
  store i64 %1666, i64* %PC.i503
  %1667 = bitcast i8* %1663 to <2 x float>*
  %1668 = load <2 x float>, <2 x float>* %1667, align 1
  %1669 = getelementptr inbounds i8, i8* %1663, i64 8
  %1670 = bitcast i8* %1669 to <2 x i32>*
  %1671 = load <2 x i32>, <2 x i32>* %1670, align 1
  %1672 = bitcast i8* %1664 to <2 x float>*
  %1673 = load <2 x float>, <2 x float>* %1672, align 1
  %1674 = extractelement <2 x float> %1668, i32 0
  %1675 = extractelement <2 x float> %1673, i32 0
  %1676 = fdiv float %1674, %1675
  %1677 = bitcast i8* %1662 to float*
  store float %1676, float* %1677, align 1
  %1678 = bitcast <2 x float> %1668 to <2 x i32>
  %1679 = extractelement <2 x i32> %1678, i32 1
  %1680 = getelementptr inbounds i8, i8* %1662, i64 4
  %1681 = bitcast i8* %1680 to i32*
  store i32 %1679, i32* %1681, align 1
  %1682 = extractelement <2 x i32> %1671, i32 0
  %1683 = getelementptr inbounds i8, i8* %1662, i64 8
  %1684 = bitcast i8* %1683 to i32*
  store i32 %1682, i32* %1684, align 1
  %1685 = extractelement <2 x i32> %1671, i32 1
  %1686 = getelementptr inbounds i8, i8* %1662, i64 12
  %1687 = bitcast i8* %1686 to i32*
  store i32 %1685, i32* %1687, align 1
  store %struct.Memory* %loadMem_41b2cd, %struct.Memory** %MEMORY
  %loadMem_41b2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1691, i64 0, i64 0
  %YMM0.i501 = bitcast %union.VectorReg* %1692 to %"class.std::bitset"*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1693, i64 0, i64 0
  %XMM0.i502 = bitcast %union.VectorReg* %1694 to %union.vec128_t*
  %1695 = bitcast %"class.std::bitset"* %YMM0.i501 to i8*
  %1696 = bitcast %union.vec128_t* %XMM0.i502 to i8*
  %1697 = load i64, i64* %PC.i500
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %PC.i500
  %1699 = bitcast i8* %1696 to <2 x float>*
  %1700 = load <2 x float>, <2 x float>* %1699, align 1
  %1701 = extractelement <2 x float> %1700, i32 0
  %1702 = fpext float %1701 to double
  %1703 = bitcast i8* %1695 to double*
  store double %1702, double* %1703, align 1
  store %struct.Memory* %loadMem_41b2d1, %struct.Memory** %MEMORY
  %loadMem_41b2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 11
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RDI.i498 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RBP.i499
  %1714 = sub i64 %1713, 56
  %1715 = load i64, i64* %RDI.i498
  %1716 = load i64, i64* %PC.i497
  %1717 = add i64 %1716, 4
  store i64 %1717, i64* %PC.i497
  %1718 = inttoptr i64 %1714 to i64*
  store i64 %1715, i64* %1718
  store %struct.Memory* %loadMem_41b2d5, %struct.Memory** %MEMORY
  %loadMem_41b2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 9
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1724 to i32*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 15
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RBP.i496
  %1729 = sub i64 %1728, 60
  %1730 = load i32, i32* %ESI.i
  %1731 = zext i32 %1730 to i64
  %1732 = load i64, i64* %PC.i495
  %1733 = add i64 %1732, 3
  store i64 %1733, i64* %PC.i495
  %1734 = inttoptr i64 %1729 to i32*
  store i32 %1730, i32* %1734
  store %struct.Memory* %loadMem_41b2d9, %struct.Memory** %MEMORY
  %loadMem1_41b2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %PC.i494
  %1739 = add i64 %1738, -105452
  %1740 = load i64, i64* %PC.i494
  %1741 = add i64 %1740, 5
  %1742 = load i64, i64* %PC.i494
  %1743 = add i64 %1742, 5
  store i64 %1743, i64* %PC.i494
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1745 = load i64, i64* %1744, align 8
  %1746 = add i64 %1745, -8
  %1747 = inttoptr i64 %1746 to i64*
  store i64 %1741, i64* %1747
  store i64 %1746, i64* %1744, align 8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1739, i64* %1748, align 8
  store %struct.Memory* %loadMem1_41b2dc, %struct.Memory** %MEMORY
  %loadMem2_41b2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b2dc = load i64, i64* %3
  %call2_41b2dc = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_41b2dc, %struct.Memory* %loadMem2_41b2dc)
  store %struct.Memory* %call2_41b2dc, %struct.Memory** %MEMORY
  %loadMem_41b2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1752, i64 0, i64 0
  %YMM0.i492 = bitcast %union.VectorReg* %1753 to %"class.std::bitset"*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1754, i64 0, i64 0
  %XMM0.i493 = bitcast %union.VectorReg* %1755 to %union.vec128_t*
  %1756 = bitcast %"class.std::bitset"* %YMM0.i492 to i8*
  %1757 = bitcast %union.vec128_t* %XMM0.i493 to i8*
  %1758 = load i64, i64* %PC.i491
  %1759 = add i64 %1758, 4
  store i64 %1759, i64* %PC.i491
  %1760 = bitcast i8* %1756 to <2 x i32>*
  %1761 = load <2 x i32>, <2 x i32>* %1760, align 1
  %1762 = getelementptr inbounds i8, i8* %1756, i64 8
  %1763 = bitcast i8* %1762 to <2 x i32>*
  %1764 = load <2 x i32>, <2 x i32>* %1763, align 1
  %1765 = bitcast i8* %1757 to double*
  %1766 = load double, double* %1765, align 1
  %1767 = fptrunc double %1766 to float
  %1768 = bitcast i8* %1756 to float*
  store float %1767, float* %1768, align 1
  %1769 = extractelement <2 x i32> %1761, i32 1
  %1770 = getelementptr inbounds i8, i8* %1756, i64 4
  %1771 = bitcast i8* %1770 to i32*
  store i32 %1769, i32* %1771, align 1
  %1772 = extractelement <2 x i32> %1764, i32 0
  %1773 = bitcast i8* %1762 to i32*
  store i32 %1772, i32* %1773, align 1
  %1774 = extractelement <2 x i32> %1764, i32 1
  %1775 = getelementptr inbounds i8, i8* %1756, i64 12
  %1776 = bitcast i8* %1775 to i32*
  store i32 %1774, i32* %1776, align 1
  store %struct.Memory* %loadMem_41b2e1, %struct.Memory** %MEMORY
  %loadMem_41b2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 1
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 15
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %RBP.i490
  %1787 = sub i64 %1786, 16
  %1788 = load i64, i64* %PC.i488
  %1789 = add i64 %1788, 4
  store i64 %1789, i64* %PC.i488
  %1790 = inttoptr i64 %1787 to i64*
  %1791 = load i64, i64* %1790
  store i64 %1791, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_41b2e5, %struct.Memory** %MEMORY
  %loadMem_41b2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 1
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1798, i64 0, i64 0
  %XMM0.i487 = bitcast %union.VectorReg* %1799 to %union.vec128_t*
  %1800 = load i64, i64* %RAX.i486
  %1801 = add i64 %1800, 48
  %1802 = bitcast %union.vec128_t* %XMM0.i487 to i8*
  %1803 = load i64, i64* %PC.i485
  %1804 = add i64 %1803, 5
  store i64 %1804, i64* %PC.i485
  %1805 = bitcast i8* %1802 to <2 x float>*
  %1806 = load <2 x float>, <2 x float>* %1805, align 1
  %1807 = extractelement <2 x float> %1806, i32 0
  %1808 = inttoptr i64 %1801 to float*
  store float %1807, float* %1808
  store %struct.Memory* %loadMem_41b2e9, %struct.Memory** %MEMORY
  %loadMem_41b2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 15
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RBP.i484
  %1819 = sub i64 %1818, 16
  %1820 = load i64, i64* %PC.i482
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %PC.i482
  %1822 = inttoptr i64 %1819 to i64*
  %1823 = load i64, i64* %1822
  store i64 %1823, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_41b2ee, %struct.Memory** %MEMORY
  %loadMem_41b2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 5
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RAX.i480
  %1834 = add i64 %1833, 12
  %1835 = load i64, i64* %PC.i479
  %1836 = add i64 %1835, 3
  store i64 %1836, i64* %PC.i479
  %1837 = inttoptr i64 %1834 to i32*
  %1838 = load i32, i32* %1837
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RCX.i481, align 8
  store %struct.Memory* %loadMem_41b2f2, %struct.Memory** %MEMORY
  %loadMem_41b2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 1
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 15
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %RBP.i478
  %1850 = sub i64 %1849, 16
  %1851 = load i64, i64* %PC.i476
  %1852 = add i64 %1851, 4
  store i64 %1852, i64* %PC.i476
  %1853 = inttoptr i64 %1850 to i64*
  %1854 = load i64, i64* %1853
  store i64 %1854, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_41b2f5, %struct.Memory** %MEMORY
  %loadMem_41b2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 1
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 5
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %1863 to i64*
  %1864 = load i64, i64* %RCX.i475
  %1865 = load i64, i64* %RAX.i474
  %1866 = add i64 %1865, 8
  %1867 = load i64, i64* %PC.i473
  %1868 = add i64 %1867, 3
  store i64 %1868, i64* %PC.i473
  %1869 = trunc i64 %1864 to i32
  %1870 = inttoptr i64 %1866 to i32*
  %1871 = load i32, i32* %1870
  %1872 = sub i32 %1869, %1871
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RCX.i475, align 8
  %1874 = icmp ult i32 %1869, %1871
  %1875 = zext i1 %1874 to i8
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1875, i8* %1876, align 1
  %1877 = and i32 %1872, 255
  %1878 = call i32 @llvm.ctpop.i32(i32 %1877)
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = xor i8 %1880, 1
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1881, i8* %1882, align 1
  %1883 = xor i32 %1871, %1869
  %1884 = xor i32 %1883, %1872
  %1885 = lshr i32 %1884, 4
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1887, i8* %1888, align 1
  %1889 = icmp eq i32 %1872, 0
  %1890 = zext i1 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1890, i8* %1891, align 1
  %1892 = lshr i32 %1872, 31
  %1893 = trunc i32 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1893, i8* %1894, align 1
  %1895 = lshr i32 %1869, 31
  %1896 = lshr i32 %1871, 31
  %1897 = xor i32 %1896, %1895
  %1898 = xor i32 %1892, %1895
  %1899 = add i32 %1898, %1897
  %1900 = icmp eq i32 %1899, 2
  %1901 = zext i1 %1900 to i8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1901, i8* %1902, align 1
  store %struct.Memory* %loadMem_41b2f9, %struct.Memory** %MEMORY
  %loadMem_41b2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 5
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %RCX.i472
  %1910 = load i64, i64* %PC.i471
  %1911 = add i64 %1910, 3
  store i64 %1911, i64* %PC.i471
  %1912 = trunc i64 %1909 to i32
  %1913 = add i32 1, %1912
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RCX.i472, align 8
  %1915 = icmp ult i32 %1913, %1912
  %1916 = icmp ult i32 %1913, 1
  %1917 = or i1 %1915, %1916
  %1918 = zext i1 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1918, i8* %1919, align 1
  %1920 = and i32 %1913, 255
  %1921 = call i32 @llvm.ctpop.i32(i32 %1920)
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1924, i8* %1925, align 1
  %1926 = xor i64 1, %1909
  %1927 = trunc i64 %1926 to i32
  %1928 = xor i32 %1927, %1913
  %1929 = lshr i32 %1928, 4
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1931, i8* %1932, align 1
  %1933 = icmp eq i32 %1913, 0
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1934, i8* %1935, align 1
  %1936 = lshr i32 %1913, 31
  %1937 = trunc i32 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1937, i8* %1938, align 1
  %1939 = lshr i32 %1912, 31
  %1940 = xor i32 %1936, %1939
  %1941 = add i32 %1940, %1936
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1943, i8* %1944, align 1
  store %struct.Memory* %loadMem_41b2fc, %struct.Memory** %MEMORY
  %loadMem_41b2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 5
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %ECX.i469 = bitcast %union.anon* %1950 to i32*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i470
  %1955 = sub i64 %1954, 44
  %1956 = load i32, i32* %ECX.i469
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i468
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC.i468
  %1960 = inttoptr i64 %1955 to i32*
  store i32 %1956, i32* %1960
  store %struct.Memory* %loadMem_41b2ff, %struct.Memory** %MEMORY
  %loadMem_41b302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 15
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RBP.i467
  %1971 = sub i64 %1970, 44
  %1972 = load i64, i64* %PC.i465
  %1973 = add i64 %1972, 4
  store i64 %1973, i64* %PC.i465
  %1974 = inttoptr i64 %1971 to i32*
  %1975 = load i32, i32* %1974
  %1976 = sext i32 %1975 to i64
  store i64 %1976, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_41b302, %struct.Memory** %MEMORY
  %loadMem_41b306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 1
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1982 to i64*
  %1983 = load i64, i64* %RAX.i464
  %1984 = load i64, i64* %PC.i463
  %1985 = add i64 %1984, 4
  store i64 %1985, i64* %PC.i463
  %1986 = shl i64 %1983, 1
  %1987 = icmp slt i64 %1986, 0
  %1988 = shl i64 %1986, 1
  store i64 %1988, i64* %RAX.i464, align 8
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1990 = zext i1 %1987 to i8
  store i8 %1990, i8* %1989, align 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1992 = trunc i64 %1988 to i32
  %1993 = and i32 %1992, 254
  %1994 = call i32 @llvm.ctpop.i32(i32 %1993)
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  store i8 %1997, i8* %1991, align 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1998, align 1
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2000 = icmp eq i64 %1988, 0
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %1999, align 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2003 = lshr i64 %1988, 63
  %2004 = trunc i64 %2003 to i8
  store i8 %2004, i8* %2002, align 1
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2005, align 1
  store %struct.Memory* %loadMem_41b306, %struct.Memory** %MEMORY
  %loadMem_41b30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 11
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i462
  %2016 = sub i64 %2015, 56
  %2017 = load i64, i64* %PC.i461
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC.i461
  %2019 = inttoptr i64 %2016 to i64*
  %2020 = load i64, i64* %2019
  store i64 %2020, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41b30a, %struct.Memory** %MEMORY
  %loadMem_41b30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 9
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 15
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %RBP.i460
  %2031 = sub i64 %2030, 60
  %2032 = load i64, i64* %PC.i459
  %2033 = add i64 %2032, 3
  store i64 %2033, i64* %PC.i459
  %2034 = inttoptr i64 %2031 to i32*
  %2035 = load i32, i32* %2034
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41b30e, %struct.Memory** %MEMORY
  %loadMem_41b311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 1
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 7
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %RAX.i457
  %2047 = load i64, i64* %PC.i456
  %2048 = add i64 %2047, 3
  store i64 %2048, i64* %PC.i456
  store i64 %2046, i64* %RDX.i458, align 8
  store %struct.Memory* %loadMem_41b311, %struct.Memory** %MEMORY
  %loadMem1_41b314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2051 to i64*
  %2052 = load i64, i64* %PC.i455
  %2053 = add i64 %2052, 175436
  %2054 = load i64, i64* %PC.i455
  %2055 = add i64 %2054, 5
  %2056 = load i64, i64* %PC.i455
  %2057 = add i64 %2056, 5
  store i64 %2057, i64* %PC.i455
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2059 = load i64, i64* %2058, align 8
  %2060 = add i64 %2059, -8
  %2061 = inttoptr i64 %2060 to i64*
  store i64 %2055, i64* %2061
  store i64 %2060, i64* %2058, align 8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2053, i64* %2062, align 8
  store %struct.Memory* %loadMem1_41b314, %struct.Memory** %MEMORY
  %loadMem2_41b314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b314 = load i64, i64* %3
  %call2_41b314 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_41b314, %struct.Memory* %loadMem2_41b314)
  store %struct.Memory* %call2_41b314, %struct.Memory** %MEMORY
  %loadMem_41b319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 7
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RDX.i453 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 15
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %RBP.i454
  %2073 = sub i64 %2072, 16
  %2074 = load i64, i64* %PC.i452
  %2075 = add i64 %2074, 4
  store i64 %2075, i64* %PC.i452
  %2076 = inttoptr i64 %2073 to i64*
  %2077 = load i64, i64* %2076
  store i64 %2077, i64* %RDX.i453, align 8
  store %struct.Memory* %loadMem_41b319, %struct.Memory** %MEMORY
  %loadMem_41b31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 1
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 7
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RDX.i451 = bitcast %union.anon* %2086 to i64*
  %2087 = load i64, i64* %RDX.i451
  %2088 = add i64 %2087, 32
  %2089 = load i64, i64* %RAX.i450
  %2090 = load i64, i64* %PC.i449
  %2091 = add i64 %2090, 4
  store i64 %2091, i64* %PC.i449
  %2092 = inttoptr i64 %2088 to i64*
  store i64 %2089, i64* %2092
  store %struct.Memory* %loadMem_41b31d, %struct.Memory** %MEMORY
  %loadMem_41b321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i448
  %2100 = sub i64 %2099, 48
  %2101 = load i64, i64* %PC.i447
  %2102 = add i64 %2101, 7
  store i64 %2102, i64* %PC.i447
  %2103 = inttoptr i64 %2100 to i32*
  store i32 0, i32* %2103
  store %struct.Memory* %loadMem_41b321, %struct.Memory** %MEMORY
  br label %block_.L_41b328

block_.L_41b328:                                  ; preds = %block_41b334, %block_.L_41b26a
  %loadMem_41b328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 15
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %RBP.i446
  %2114 = sub i64 %2113, 48
  %2115 = load i64, i64* %PC.i444
  %2116 = add i64 %2115, 3
  store i64 %2116, i64* %PC.i444
  %2117 = inttoptr i64 %2114 to i32*
  %2118 = load i32, i32* %2117
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_41b328, %struct.Memory** %MEMORY
  %loadMem_41b32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 33
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 1
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %2125 to i32*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 15
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %2128 to i64*
  %2129 = load i32, i32* %EAX.i442
  %2130 = zext i32 %2129 to i64
  %2131 = load i64, i64* %RBP.i443
  %2132 = sub i64 %2131, 44
  %2133 = load i64, i64* %PC.i441
  %2134 = add i64 %2133, 3
  store i64 %2134, i64* %PC.i441
  %2135 = inttoptr i64 %2132 to i32*
  %2136 = load i32, i32* %2135
  %2137 = sub i32 %2129, %2136
  %2138 = icmp ult i32 %2129, %2136
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2139, i8* %2140, align 1
  %2141 = and i32 %2137, 255
  %2142 = call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2145, i8* %2146, align 1
  %2147 = xor i32 %2136, %2129
  %2148 = xor i32 %2147, %2137
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2151, i8* %2152, align 1
  %2153 = icmp eq i32 %2137, 0
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2154, i8* %2155, align 1
  %2156 = lshr i32 %2137, 31
  %2157 = trunc i32 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2157, i8* %2158, align 1
  %2159 = lshr i32 %2129, 31
  %2160 = lshr i32 %2136, 31
  %2161 = xor i32 %2160, %2159
  %2162 = xor i32 %2156, %2159
  %2163 = add i32 %2162, %2161
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2165, i8* %2166, align 1
  store %struct.Memory* %loadMem_41b32b, %struct.Memory** %MEMORY
  %loadMem_41b32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %PC.i440
  %2171 = add i64 %2170, 40
  %2172 = load i64, i64* %PC.i440
  %2173 = add i64 %2172, 6
  %2174 = load i64, i64* %PC.i440
  %2175 = add i64 %2174, 6
  store i64 %2175, i64* %PC.i440
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2177 = load i8, i8* %2176, align 1
  %2178 = icmp ne i8 %2177, 0
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2180 = load i8, i8* %2179, align 1
  %2181 = icmp ne i8 %2180, 0
  %2182 = xor i1 %2178, %2181
  %2183 = xor i1 %2182, true
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %BRANCH_TAKEN, align 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2186 = select i1 %2182, i64 %2173, i64 %2171
  store i64 %2186, i64* %2185, align 8
  store %struct.Memory* %loadMem_41b32e, %struct.Memory** %MEMORY
  %loadBr_41b32e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b32e = icmp eq i8 %loadBr_41b32e, 1
  br i1 %cmpBr_41b32e, label %block_.L_41b356, label %block_41b334

block_41b334:                                     ; preds = %block_.L_41b328
  %loadMem_41b334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2190, i64 0, i64 0
  %YMM0.i438 = bitcast %union.VectorReg* %2191 to %"class.std::bitset"*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2193 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2192, i64 0, i64 0
  %XMM0.i439 = bitcast %union.VectorReg* %2193 to %union.vec128_t*
  %2194 = bitcast %"class.std::bitset"* %YMM0.i438 to i8*
  %2195 = bitcast %"class.std::bitset"* %YMM0.i438 to i8*
  %2196 = bitcast %union.vec128_t* %XMM0.i439 to i8*
  %2197 = load i64, i64* %PC.i437
  %2198 = add i64 %2197, 3
  store i64 %2198, i64* %PC.i437
  %2199 = bitcast i8* %2195 to i64*
  %2200 = load i64, i64* %2199, align 1
  %2201 = getelementptr inbounds i8, i8* %2195, i64 8
  %2202 = bitcast i8* %2201 to i64*
  %2203 = load i64, i64* %2202, align 1
  %2204 = bitcast i8* %2196 to i64*
  %2205 = load i64, i64* %2204, align 1
  %2206 = getelementptr inbounds i8, i8* %2196, i64 8
  %2207 = bitcast i8* %2206 to i64*
  %2208 = load i64, i64* %2207, align 1
  %2209 = xor i64 %2205, %2200
  %2210 = xor i64 %2208, %2203
  %2211 = trunc i64 %2209 to i32
  %2212 = lshr i64 %2209, 32
  %2213 = trunc i64 %2212 to i32
  %2214 = bitcast i8* %2194 to i32*
  store i32 %2211, i32* %2214, align 1
  %2215 = getelementptr inbounds i8, i8* %2194, i64 4
  %2216 = bitcast i8* %2215 to i32*
  store i32 %2213, i32* %2216, align 1
  %2217 = trunc i64 %2210 to i32
  %2218 = getelementptr inbounds i8, i8* %2194, i64 8
  %2219 = bitcast i8* %2218 to i32*
  store i32 %2217, i32* %2219, align 1
  %2220 = lshr i64 %2210, 32
  %2221 = trunc i64 %2220 to i32
  %2222 = getelementptr inbounds i8, i8* %2194, i64 12
  %2223 = bitcast i8* %2222 to i32*
  store i32 %2221, i32* %2223, align 1
  store %struct.Memory* %loadMem_41b334, %struct.Memory** %MEMORY
  %loadMem_41b337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 33
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2226 to i64*
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 1
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 15
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %2232 to i64*
  %2233 = load i64, i64* %RBP.i436
  %2234 = sub i64 %2233, 16
  %2235 = load i64, i64* %PC.i434
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %PC.i434
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237
  store i64 %2238, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_41b337, %struct.Memory** %MEMORY
  %loadMem_41b33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 1
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RAX.i433
  %2246 = add i64 %2245, 32
  %2247 = load i64, i64* %PC.i432
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i432
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249
  store i64 %2250, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_41b33b, %struct.Memory** %MEMORY
  %loadMem_41b33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 5
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %RBP.i431
  %2261 = sub i64 %2260, 48
  %2262 = load i64, i64* %PC.i429
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %PC.i429
  %2264 = inttoptr i64 %2261 to i32*
  %2265 = load i32, i32* %2264
  %2266 = sext i32 %2265 to i64
  store i64 %2266, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_41b33f, %struct.Memory** %MEMORY
  %loadMem_41b343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 5
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2276, i64 0, i64 0
  %XMM0.i428 = bitcast %union.VectorReg* %2277 to %union.vec128_t*
  %2278 = load i64, i64* %RAX.i426
  %2279 = load i64, i64* %RCX.i427
  %2280 = mul i64 %2279, 4
  %2281 = add i64 %2280, %2278
  %2282 = bitcast %union.vec128_t* %XMM0.i428 to i8*
  %2283 = load i64, i64* %PC.i425
  %2284 = add i64 %2283, 5
  store i64 %2284, i64* %PC.i425
  %2285 = bitcast i8* %2282 to <2 x float>*
  %2286 = load <2 x float>, <2 x float>* %2285, align 1
  %2287 = extractelement <2 x float> %2286, i32 0
  %2288 = inttoptr i64 %2281 to float*
  store float %2287, float* %2288
  store %struct.Memory* %loadMem_41b343, %struct.Memory** %MEMORY
  %loadMem_41b348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i424
  %2299 = sub i64 %2298, 48
  %2300 = load i64, i64* %PC.i422
  %2301 = add i64 %2300, 3
  store i64 %2301, i64* %PC.i422
  %2302 = inttoptr i64 %2299 to i32*
  %2303 = load i32, i32* %2302
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_41b348, %struct.Memory** %MEMORY
  %loadMem_41b34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %2310 to i64*
  %2311 = load i64, i64* %RAX.i421
  %2312 = load i64, i64* %PC.i420
  %2313 = add i64 %2312, 3
  store i64 %2313, i64* %PC.i420
  %2314 = trunc i64 %2311 to i32
  %2315 = add i32 1, %2314
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RAX.i421, align 8
  %2317 = icmp ult i32 %2315, %2314
  %2318 = icmp ult i32 %2315, 1
  %2319 = or i1 %2317, %2318
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2320, i8* %2321, align 1
  %2322 = and i32 %2315, 255
  %2323 = call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2326, i8* %2327, align 1
  %2328 = xor i64 1, %2311
  %2329 = trunc i64 %2328 to i32
  %2330 = xor i32 %2329, %2315
  %2331 = lshr i32 %2330, 4
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2333, i8* %2334, align 1
  %2335 = icmp eq i32 %2315, 0
  %2336 = zext i1 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2336, i8* %2337, align 1
  %2338 = lshr i32 %2315, 31
  %2339 = trunc i32 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2339, i8* %2340, align 1
  %2341 = lshr i32 %2314, 31
  %2342 = xor i32 %2338, %2341
  %2343 = add i32 %2342, %2338
  %2344 = icmp eq i32 %2343, 2
  %2345 = zext i1 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2345, i8* %2346, align 1
  store %struct.Memory* %loadMem_41b34b, %struct.Memory** %MEMORY
  %loadMem_41b34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 1
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %2352 to i32*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 15
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %RBP.i419
  %2357 = sub i64 %2356, 48
  %2358 = load i32, i32* %EAX.i418
  %2359 = zext i32 %2358 to i64
  %2360 = load i64, i64* %PC.i417
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %PC.i417
  %2362 = inttoptr i64 %2357 to i32*
  store i32 %2358, i32* %2362
  store %struct.Memory* %loadMem_41b34e, %struct.Memory** %MEMORY
  %loadMem_41b351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i416
  %2367 = add i64 %2366, -41
  %2368 = load i64, i64* %PC.i416
  %2369 = add i64 %2368, 5
  store i64 %2369, i64* %PC.i416
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2367, i64* %2370, align 8
  store %struct.Memory* %loadMem_41b351, %struct.Memory** %MEMORY
  br label %block_.L_41b328

block_.L_41b356:                                  ; preds = %block_.L_41b328
  %loadMem_41b356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 1
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 15
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %2379 to i64*
  %2380 = load i64, i64* %RBP.i415
  %2381 = sub i64 %2380, 16
  %2382 = load i64, i64* %PC.i413
  %2383 = add i64 %2382, 4
  store i64 %2383, i64* %PC.i413
  %2384 = inttoptr i64 %2381 to i64*
  %2385 = load i64, i64* %2384
  store i64 %2385, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_41b356, %struct.Memory** %MEMORY
  %loadMem_41b35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 1
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 5
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RAX.i411
  %2396 = add i64 %2395, 8
  %2397 = load i64, i64* %PC.i410
  %2398 = add i64 %2397, 3
  store i64 %2398, i64* %PC.i410
  %2399 = inttoptr i64 %2396 to i32*
  %2400 = load i32, i32* %2399
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i412, align 8
  store %struct.Memory* %loadMem_41b35a, %struct.Memory** %MEMORY
  %loadMem_41b35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 5
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %ECX.i408 = bitcast %union.anon* %2407 to i32*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %2410 to i64*
  %2411 = load i64, i64* %RBP.i409
  %2412 = sub i64 %2411, 36
  %2413 = load i32, i32* %ECX.i408
  %2414 = zext i32 %2413 to i64
  %2415 = load i64, i64* %PC.i407
  %2416 = add i64 %2415, 3
  store i64 %2416, i64* %PC.i407
  %2417 = inttoptr i64 %2412 to i32*
  store i32 %2413, i32* %2417
  store %struct.Memory* %loadMem_41b35d, %struct.Memory** %MEMORY
  br label %block_.L_41b360

block_.L_41b360:                                  ; preds = %block_41b370, %block_.L_41b356
  %loadMem_41b360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 1
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 15
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %2426 to i64*
  %2427 = load i64, i64* %RBP.i406
  %2428 = sub i64 %2427, 36
  %2429 = load i64, i64* %PC.i404
  %2430 = add i64 %2429, 3
  store i64 %2430, i64* %PC.i404
  %2431 = inttoptr i64 %2428 to i32*
  %2432 = load i32, i32* %2431
  %2433 = zext i32 %2432 to i64
  store i64 %2433, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_41b360, %struct.Memory** %MEMORY
  %loadMem_41b363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 5
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 15
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %RBP.i403
  %2444 = sub i64 %2443, 16
  %2445 = load i64, i64* %PC.i401
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i401
  %2447 = inttoptr i64 %2444 to i64*
  %2448 = load i64, i64* %2447
  store i64 %2448, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_41b363, %struct.Memory** %MEMORY
  %loadMem_41b367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 1
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %2454 to i32*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 5
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2457 to i64*
  %2458 = load i32, i32* %EAX.i399
  %2459 = zext i32 %2458 to i64
  %2460 = load i64, i64* %RCX.i400
  %2461 = add i64 %2460, 12
  %2462 = load i64, i64* %PC.i398
  %2463 = add i64 %2462, 3
  store i64 %2463, i64* %PC.i398
  %2464 = inttoptr i64 %2461 to i32*
  %2465 = load i32, i32* %2464
  %2466 = sub i32 %2458, %2465
  %2467 = icmp ult i32 %2458, %2465
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2468, i8* %2469, align 1
  %2470 = and i32 %2466, 255
  %2471 = call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2474, i8* %2475, align 1
  %2476 = xor i32 %2465, %2458
  %2477 = xor i32 %2476, %2466
  %2478 = lshr i32 %2477, 4
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2480, i8* %2481, align 1
  %2482 = icmp eq i32 %2466, 0
  %2483 = zext i1 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2483, i8* %2484, align 1
  %2485 = lshr i32 %2466, 31
  %2486 = trunc i32 %2485 to i8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2486, i8* %2487, align 1
  %2488 = lshr i32 %2458, 31
  %2489 = lshr i32 %2465, 31
  %2490 = xor i32 %2489, %2488
  %2491 = xor i32 %2485, %2488
  %2492 = add i32 %2491, %2490
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2494, i8* %2495, align 1
  store %struct.Memory* %loadMem_41b367, %struct.Memory** %MEMORY
  %loadMem_41b36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i397
  %2500 = add i64 %2499, 287
  %2501 = load i64, i64* %PC.i397
  %2502 = add i64 %2501, 6
  %2503 = load i64, i64* %PC.i397
  %2504 = add i64 %2503, 6
  store i64 %2504, i64* %PC.i397
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2506 = load i8, i8* %2505, align 1
  %2507 = icmp eq i8 %2506, 0
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2509 = load i8, i8* %2508, align 1
  %2510 = icmp ne i8 %2509, 0
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2512 = load i8, i8* %2511, align 1
  %2513 = icmp ne i8 %2512, 0
  %2514 = xor i1 %2510, %2513
  %2515 = xor i1 %2514, true
  %2516 = and i1 %2507, %2515
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %BRANCH_TAKEN, align 1
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2519 = select i1 %2516, i64 %2500, i64 %2502
  store i64 %2519, i64* %2518, align 8
  store %struct.Memory* %loadMem_41b36a, %struct.Memory** %MEMORY
  %loadBr_41b36a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b36a = icmp eq i8 %loadBr_41b36a, 1
  br i1 %cmpBr_41b36a, label %block_.L_41b489, label %block_41b370

block_41b370:                                     ; preds = %block_.L_41b360
  %loadMem_41b370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2523, i64 0, i64 0
  %YMM0.i396 = bitcast %union.VectorReg* %2524 to %"class.std::bitset"*
  %2525 = bitcast %"class.std::bitset"* %YMM0.i396 to i8*
  %2526 = load i64, i64* %PC.i395
  %2527 = add i64 %2526, ptrtoint (%G_0x39470__rip__type* @G_0x39470__rip_ to i64)
  %2528 = load i64, i64* %PC.i395
  %2529 = add i64 %2528, 8
  store i64 %2529, i64* %PC.i395
  %2530 = inttoptr i64 %2527 to double*
  %2531 = load double, double* %2530
  %2532 = bitcast i8* %2525 to double*
  store double %2531, double* %2532, align 1
  %2533 = getelementptr inbounds i8, i8* %2525, i64 8
  %2534 = bitcast i8* %2533 to double*
  store double 0.000000e+00, double* %2534, align 1
  store %struct.Memory* %loadMem_41b370, %struct.Memory** %MEMORY
  %loadMem_41b378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2538, i64 0, i64 1
  %YMM1.i394 = bitcast %union.VectorReg* %2539 to %"class.std::bitset"*
  %2540 = bitcast %"class.std::bitset"* %YMM1.i394 to i8*
  %2541 = load i64, i64* %PC.i393
  %2542 = add i64 %2541, ptrtoint (%G_0x394b0__rip__type* @G_0x394b0__rip_ to i64)
  %2543 = load i64, i64* %PC.i393
  %2544 = add i64 %2543, 8
  store i64 %2544, i64* %PC.i393
  %2545 = inttoptr i64 %2542 to double*
  %2546 = load double, double* %2545
  %2547 = bitcast i8* %2540 to double*
  store double %2546, double* %2547, align 1
  %2548 = getelementptr inbounds i8, i8* %2540, i64 8
  %2549 = bitcast i8* %2548 to double*
  store double 0.000000e+00, double* %2549, align 1
  store %struct.Memory* %loadMem_41b378, %struct.Memory** %MEMORY
  %loadMem_41b380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2553, i64 0, i64 2
  %YMM2.i392 = bitcast %union.VectorReg* %2554 to %"class.std::bitset"*
  %2555 = bitcast %"class.std::bitset"* %YMM2.i392 to i8*
  %2556 = load i64, i64* %PC.i391
  %2557 = add i64 %2556, ptrtoint (%G_0x39458__rip__type* @G_0x39458__rip_ to i64)
  %2558 = load i64, i64* %PC.i391
  %2559 = add i64 %2558, 8
  store i64 %2559, i64* %PC.i391
  %2560 = inttoptr i64 %2557 to double*
  %2561 = load double, double* %2560
  %2562 = bitcast i8* %2555 to double*
  store double %2561, double* %2562, align 1
  %2563 = getelementptr inbounds i8, i8* %2555, i64 8
  %2564 = bitcast i8* %2563 to double*
  store double 0.000000e+00, double* %2564, align 1
  store %struct.Memory* %loadMem_41b380, %struct.Memory** %MEMORY
  %loadMem_41b388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2568, i64 0, i64 3
  %YMM3.i390 = bitcast %union.VectorReg* %2569 to %"class.std::bitset"*
  %2570 = bitcast %"class.std::bitset"* %YMM3.i390 to i8*
  %2571 = load i64, i64* %PC.i389
  %2572 = add i64 %2571, ptrtoint (%G_0x39460__rip__type* @G_0x39460__rip_ to i64)
  %2573 = load i64, i64* %PC.i389
  %2574 = add i64 %2573, 8
  store i64 %2574, i64* %PC.i389
  %2575 = inttoptr i64 %2572 to double*
  %2576 = load double, double* %2575
  %2577 = bitcast i8* %2570 to double*
  store double %2576, double* %2577, align 1
  %2578 = getelementptr inbounds i8, i8* %2570, i64 8
  %2579 = bitcast i8* %2578 to double*
  store double 0.000000e+00, double* %2579, align 1
  store %struct.Memory* %loadMem_41b388, %struct.Memory** %MEMORY
  %loadMem_41b390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 15
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2586, i64 0, i64 4
  %YMM4.i388 = bitcast %union.VectorReg* %2587 to %"class.std::bitset"*
  %2588 = bitcast %"class.std::bitset"* %YMM4.i388 to i8*
  %2589 = load i64, i64* %RBP.i387
  %2590 = sub i64 %2589, 36
  %2591 = load i64, i64* %PC.i386
  %2592 = add i64 %2591, 5
  store i64 %2592, i64* %PC.i386
  %2593 = bitcast i8* %2588 to <2 x i32>*
  %2594 = load <2 x i32>, <2 x i32>* %2593, align 1
  %2595 = getelementptr inbounds i8, i8* %2588, i64 8
  %2596 = bitcast i8* %2595 to <2 x i32>*
  %2597 = load <2 x i32>, <2 x i32>* %2596, align 1
  %2598 = inttoptr i64 %2590 to i32*
  %2599 = load i32, i32* %2598
  %2600 = sitofp i32 %2599 to float
  %2601 = bitcast i8* %2588 to float*
  store float %2600, float* %2601, align 1
  %2602 = extractelement <2 x i32> %2594, i32 1
  %2603 = getelementptr inbounds i8, i8* %2588, i64 4
  %2604 = bitcast i8* %2603 to i32*
  store i32 %2602, i32* %2604, align 1
  %2605 = extractelement <2 x i32> %2597, i32 0
  %2606 = bitcast i8* %2595 to i32*
  store i32 %2605, i32* %2606, align 1
  %2607 = extractelement <2 x i32> %2597, i32 1
  %2608 = getelementptr inbounds i8, i8* %2588, i64 12
  %2609 = bitcast i8* %2608 to i32*
  store i32 %2607, i32* %2609, align 1
  store %struct.Memory* %loadMem_41b390, %struct.Memory** %MEMORY
  %loadMem_41b395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2613, i64 0, i64 4
  %YMM4.i384 = bitcast %union.VectorReg* %2614 to %"class.std::bitset"*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2615, i64 0, i64 4
  %XMM4.i385 = bitcast %union.VectorReg* %2616 to %union.vec128_t*
  %2617 = bitcast %"class.std::bitset"* %YMM4.i384 to i8*
  %2618 = bitcast %union.vec128_t* %XMM4.i385 to i8*
  %2619 = load i64, i64* %PC.i383
  %2620 = add i64 %2619, 4
  store i64 %2620, i64* %PC.i383
  %2621 = bitcast i8* %2618 to <2 x float>*
  %2622 = load <2 x float>, <2 x float>* %2621, align 1
  %2623 = extractelement <2 x float> %2622, i32 0
  %2624 = fpext float %2623 to double
  %2625 = bitcast i8* %2617 to double*
  store double %2624, double* %2625, align 1
  store %struct.Memory* %loadMem_41b395, %struct.Memory** %MEMORY
  %loadMem_41b399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2629, i64 0, i64 4
  %YMM4.i381 = bitcast %union.VectorReg* %2630 to %"class.std::bitset"*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2631, i64 0, i64 3
  %XMM3.i382 = bitcast %union.VectorReg* %2632 to %union.vec128_t*
  %2633 = bitcast %"class.std::bitset"* %YMM4.i381 to i8*
  %2634 = bitcast %"class.std::bitset"* %YMM4.i381 to i8*
  %2635 = bitcast %union.vec128_t* %XMM3.i382 to i8*
  %2636 = load i64, i64* %PC.i380
  %2637 = add i64 %2636, 4
  store i64 %2637, i64* %PC.i380
  %2638 = bitcast i8* %2634 to double*
  %2639 = load double, double* %2638, align 1
  %2640 = getelementptr inbounds i8, i8* %2634, i64 8
  %2641 = bitcast i8* %2640 to i64*
  %2642 = load i64, i64* %2641, align 1
  %2643 = bitcast i8* %2635 to double*
  %2644 = load double, double* %2643, align 1
  %2645 = fadd double %2639, %2644
  %2646 = bitcast i8* %2633 to double*
  store double %2645, double* %2646, align 1
  %2647 = getelementptr inbounds i8, i8* %2633, i64 8
  %2648 = bitcast i8* %2647 to i64*
  store i64 %2642, i64* %2648, align 1
  store %struct.Memory* %loadMem_41b399, %struct.Memory** %MEMORY
  %loadMem_41b39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 15
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RBP.i379
  %2659 = sub i64 %2658, 16
  %2660 = load i64, i64* %PC.i377
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i377
  %2662 = inttoptr i64 %2659 to i64*
  %2663 = load i64, i64* %2662
  store i64 %2663, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_41b39d, %struct.Memory** %MEMORY
  %loadMem_41b3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 1
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2670, i64 0, i64 3
  %YMM3.i376 = bitcast %union.VectorReg* %2671 to %"class.std::bitset"*
  %2672 = bitcast %"class.std::bitset"* %YMM3.i376 to i8*
  %2673 = load i64, i64* %RAX.i375
  %2674 = add i64 %2673, 44
  %2675 = load i64, i64* %PC.i374
  %2676 = add i64 %2675, 5
  store i64 %2676, i64* %PC.i374
  %2677 = inttoptr i64 %2674 to float*
  %2678 = load float, float* %2677
  %2679 = fpext float %2678 to double
  %2680 = bitcast i8* %2672 to double*
  store double %2679, double* %2680, align 1
  store %struct.Memory* %loadMem_41b3a1, %struct.Memory** %MEMORY
  %loadMem_41b3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 4
  %YMM4.i372 = bitcast %union.VectorReg* %2685 to %"class.std::bitset"*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2687 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2686, i64 0, i64 3
  %XMM3.i373 = bitcast %union.VectorReg* %2687 to %union.vec128_t*
  %2688 = bitcast %"class.std::bitset"* %YMM4.i372 to i8*
  %2689 = bitcast %"class.std::bitset"* %YMM4.i372 to i8*
  %2690 = bitcast %union.vec128_t* %XMM3.i373 to i8*
  %2691 = load i64, i64* %PC.i371
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i371
  %2693 = bitcast i8* %2689 to double*
  %2694 = load double, double* %2693, align 1
  %2695 = getelementptr inbounds i8, i8* %2689, i64 8
  %2696 = bitcast i8* %2695 to i64*
  %2697 = load i64, i64* %2696, align 1
  %2698 = bitcast i8* %2690 to double*
  %2699 = load double, double* %2698, align 1
  %2700 = fsub double %2694, %2699
  %2701 = bitcast i8* %2688 to double*
  store double %2700, double* %2701, align 1
  %2702 = getelementptr inbounds i8, i8* %2688, i64 8
  %2703 = bitcast i8* %2702 to i64*
  store i64 %2697, i64* %2703, align 1
  store %struct.Memory* %loadMem_41b3a6, %struct.Memory** %MEMORY
  %loadMem_41b3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2708 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2707, i64 0, i64 3
  %YMM3.i369 = bitcast %union.VectorReg* %2708 to %"class.std::bitset"*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2709, i64 0, i64 4
  %XMM4.i370 = bitcast %union.VectorReg* %2710 to %union.vec128_t*
  %2711 = bitcast %"class.std::bitset"* %YMM3.i369 to i8*
  %2712 = bitcast %union.vec128_t* %XMM4.i370 to i8*
  %2713 = load i64, i64* %PC.i368
  %2714 = add i64 %2713, 4
  store i64 %2714, i64* %PC.i368
  %2715 = bitcast i8* %2711 to <2 x i32>*
  %2716 = load <2 x i32>, <2 x i32>* %2715, align 1
  %2717 = getelementptr inbounds i8, i8* %2711, i64 8
  %2718 = bitcast i8* %2717 to <2 x i32>*
  %2719 = load <2 x i32>, <2 x i32>* %2718, align 1
  %2720 = bitcast i8* %2712 to double*
  %2721 = load double, double* %2720, align 1
  %2722 = fptrunc double %2721 to float
  %2723 = bitcast i8* %2711 to float*
  store float %2722, float* %2723, align 1
  %2724 = extractelement <2 x i32> %2716, i32 1
  %2725 = getelementptr inbounds i8, i8* %2711, i64 4
  %2726 = bitcast i8* %2725 to i32*
  store i32 %2724, i32* %2726, align 1
  %2727 = extractelement <2 x i32> %2719, i32 0
  %2728 = bitcast i8* %2717 to i32*
  store i32 %2727, i32* %2728, align 1
  %2729 = extractelement <2 x i32> %2719, i32 1
  %2730 = getelementptr inbounds i8, i8* %2711, i64 12
  %2731 = bitcast i8* %2730 to i32*
  store i32 %2729, i32* %2731, align 1
  store %struct.Memory* %loadMem_41b3aa, %struct.Memory** %MEMORY
  %loadMem_41b3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 15
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2738, i64 0, i64 3
  %XMM3.i367 = bitcast %union.VectorReg* %2739 to %union.vec128_t*
  %2740 = load i64, i64* %RBP.i366
  %2741 = sub i64 %2740, 32
  %2742 = bitcast %union.vec128_t* %XMM3.i367 to i8*
  %2743 = load i64, i64* %PC.i365
  %2744 = add i64 %2743, 5
  store i64 %2744, i64* %PC.i365
  %2745 = bitcast i8* %2742 to <2 x float>*
  %2746 = load <2 x float>, <2 x float>* %2745, align 1
  %2747 = extractelement <2 x float> %2746, i32 0
  %2748 = inttoptr i64 %2741 to float*
  store float %2747, float* %2748
  store %struct.Memory* %loadMem_41b3ae, %struct.Memory** %MEMORY
  %loadMem_41b3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 1
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 15
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %RBP.i364
  %2759 = sub i64 %2758, 16
  %2760 = load i64, i64* %PC.i362
  %2761 = add i64 %2760, 4
  store i64 %2761, i64* %PC.i362
  %2762 = inttoptr i64 %2759 to i64*
  %2763 = load i64, i64* %2762
  store i64 %2763, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_41b3b3, %struct.Memory** %MEMORY
  %loadMem_41b3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 1
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2770, i64 0, i64 3
  %YMM3.i361 = bitcast %union.VectorReg* %2771 to %"class.std::bitset"*
  %2772 = bitcast %"class.std::bitset"* %YMM3.i361 to i8*
  %2773 = load i64, i64* %RAX.i360
  %2774 = add i64 %2773, 28
  %2775 = load i64, i64* %PC.i359
  %2776 = add i64 %2775, 5
  store i64 %2776, i64* %PC.i359
  %2777 = bitcast i8* %2772 to <2 x i32>*
  %2778 = load <2 x i32>, <2 x i32>* %2777, align 1
  %2779 = getelementptr inbounds i8, i8* %2772, i64 8
  %2780 = bitcast i8* %2779 to <2 x i32>*
  %2781 = load <2 x i32>, <2 x i32>* %2780, align 1
  %2782 = inttoptr i64 %2774 to i32*
  %2783 = load i32, i32* %2782
  %2784 = sitofp i32 %2783 to float
  %2785 = bitcast i8* %2772 to float*
  store float %2784, float* %2785, align 1
  %2786 = extractelement <2 x i32> %2778, i32 1
  %2787 = getelementptr inbounds i8, i8* %2772, i64 4
  %2788 = bitcast i8* %2787 to i32*
  store i32 %2786, i32* %2788, align 1
  %2789 = extractelement <2 x i32> %2781, i32 0
  %2790 = bitcast i8* %2779 to i32*
  store i32 %2789, i32* %2790, align 1
  %2791 = extractelement <2 x i32> %2781, i32 1
  %2792 = getelementptr inbounds i8, i8* %2772, i64 12
  %2793 = bitcast i8* %2792 to i32*
  store i32 %2791, i32* %2793, align 1
  store %struct.Memory* %loadMem_41b3b7, %struct.Memory** %MEMORY
  %loadMem_41b3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2797, i64 0, i64 3
  %YMM3.i357 = bitcast %union.VectorReg* %2798 to %"class.std::bitset"*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2800 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2799, i64 0, i64 3
  %XMM3.i358 = bitcast %union.VectorReg* %2800 to %union.vec128_t*
  %2801 = bitcast %"class.std::bitset"* %YMM3.i357 to i8*
  %2802 = bitcast %union.vec128_t* %XMM3.i358 to i8*
  %2803 = load i64, i64* %PC.i356
  %2804 = add i64 %2803, 4
  store i64 %2804, i64* %PC.i356
  %2805 = bitcast i8* %2802 to <2 x float>*
  %2806 = load <2 x float>, <2 x float>* %2805, align 1
  %2807 = extractelement <2 x float> %2806, i32 0
  %2808 = fpext float %2807 to double
  %2809 = bitcast i8* %2801 to double*
  store double %2808, double* %2809, align 1
  store %struct.Memory* %loadMem_41b3bc, %struct.Memory** %MEMORY
  %loadMem_41b3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 1
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 15
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %RBP.i355
  %2820 = sub i64 %2819, 16
  %2821 = load i64, i64* %PC.i353
  %2822 = add i64 %2821, 4
  store i64 %2822, i64* %PC.i353
  %2823 = inttoptr i64 %2820 to i64*
  %2824 = load i64, i64* %2823
  store i64 %2824, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_41b3c0, %struct.Memory** %MEMORY
  %loadMem_41b3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2831, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2832 to %"class.std::bitset"*
  %2833 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2834 = load i64, i64* %RAX.i352
  %2835 = add i64 %2834, 48
  %2836 = load i64, i64* %PC.i351
  %2837 = add i64 %2836, 5
  store i64 %2837, i64* %PC.i351
  %2838 = inttoptr i64 %2835 to float*
  %2839 = load float, float* %2838
  %2840 = fpext float %2839 to double
  %2841 = bitcast i8* %2833 to double*
  store double %2840, double* %2841, align 1
  store %struct.Memory* %loadMem_41b3c4, %struct.Memory** %MEMORY
  %loadMem_41b3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2846 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2845, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2846 to %"class.std::bitset"*
  %2847 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2848 = load i64, i64* %PC.i350
  %2849 = add i64 %2848, ptrtoint (%G_0x394af__rip__type* @G_0x394af__rip_ to i64)
  %2850 = load i64, i64* %PC.i350
  %2851 = add i64 %2850, 8
  store i64 %2851, i64* %PC.i350
  %2852 = inttoptr i64 %2849 to double*
  %2853 = load double, double* %2852
  %2854 = bitcast i8* %2847 to double*
  store double %2853, double* %2854, align 1
  %2855 = getelementptr inbounds i8, i8* %2847, i64 8
  %2856 = bitcast i8* %2855 to double*
  store double 0.000000e+00, double* %2856, align 1
  store %struct.Memory* %loadMem_41b3c9, %struct.Memory** %MEMORY
  %loadMem_41b3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 15
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2864 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2863, i64 0, i64 0
  %XMM0.i349 = bitcast %union.VectorReg* %2864 to %union.vec128_t*
  %2865 = load i64, i64* %RBP.i348
  %2866 = sub i64 %2865, 72
  %2867 = bitcast %union.vec128_t* %XMM0.i349 to i8*
  %2868 = load i64, i64* %PC.i347
  %2869 = add i64 %2868, 5
  store i64 %2869, i64* %PC.i347
  %2870 = bitcast i8* %2867 to double*
  %2871 = load double, double* %2870, align 1
  %2872 = inttoptr i64 %2866 to double*
  store double %2871, double* %2872
  store %struct.Memory* %loadMem_41b3d1, %struct.Memory** %MEMORY
  %loadMem_41b3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2877 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2876, i64 0, i64 0
  %YMM0.i346 = bitcast %union.VectorReg* %2877 to %"class.std::bitset"*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2879 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2878, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2879 to %union.vec128_t*
  %2880 = bitcast %"class.std::bitset"* %YMM0.i346 to i8*
  %2881 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2882 = load i64, i64* %PC.i345
  %2883 = add i64 %2882, 3
  store i64 %2883, i64* %PC.i345
  %2884 = bitcast i8* %2881 to <2 x i32>*
  %2885 = load <2 x i32>, <2 x i32>* %2884, align 1
  %2886 = getelementptr inbounds i8, i8* %2881, i64 8
  %2887 = bitcast i8* %2886 to <2 x i32>*
  %2888 = load <2 x i32>, <2 x i32>* %2887, align 1
  %2889 = extractelement <2 x i32> %2885, i32 0
  %2890 = bitcast i8* %2880 to i32*
  store i32 %2889, i32* %2890, align 1
  %2891 = extractelement <2 x i32> %2885, i32 1
  %2892 = getelementptr inbounds i8, i8* %2880, i64 4
  %2893 = bitcast i8* %2892 to i32*
  store i32 %2891, i32* %2893, align 1
  %2894 = extractelement <2 x i32> %2888, i32 0
  %2895 = getelementptr inbounds i8, i8* %2880, i64 8
  %2896 = bitcast i8* %2895 to i32*
  store i32 %2894, i32* %2896, align 1
  %2897 = extractelement <2 x i32> %2888, i32 1
  %2898 = getelementptr inbounds i8, i8* %2880, i64 12
  %2899 = bitcast i8* %2898 to i32*
  store i32 %2897, i32* %2899, align 1
  store %struct.Memory* %loadMem_41b3d6, %struct.Memory** %MEMORY
  %loadMem_41b3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 15
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2906, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2907 to %union.vec128_t*
  %2908 = load i64, i64* %RBP.i344
  %2909 = sub i64 %2908, 80
  %2910 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2911 = load i64, i64* %PC.i343
  %2912 = add i64 %2911, 5
  store i64 %2912, i64* %PC.i343
  %2913 = bitcast i8* %2910 to double*
  %2914 = load double, double* %2913, align 1
  %2915 = inttoptr i64 %2909 to double*
  store double %2914, double* %2915
  store %struct.Memory* %loadMem_41b3d9, %struct.Memory** %MEMORY
  %loadMem_41b3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2922, i64 0, i64 1
  %XMM1.i342 = bitcast %union.VectorReg* %2923 to %union.vec128_t*
  %2924 = load i64, i64* %RBP.i341
  %2925 = sub i64 %2924, 88
  %2926 = bitcast %union.vec128_t* %XMM1.i342 to i8*
  %2927 = load i64, i64* %PC.i340
  %2928 = add i64 %2927, 5
  store i64 %2928, i64* %PC.i340
  %2929 = bitcast i8* %2926 to double*
  %2930 = load double, double* %2929, align 1
  %2931 = inttoptr i64 %2925 to double*
  store double %2930, double* %2931
  store %struct.Memory* %loadMem_41b3de, %struct.Memory** %MEMORY
  %loadMem_41b3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 33
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 15
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2938, i64 0, i64 2
  %XMM2.i339 = bitcast %union.VectorReg* %2939 to %union.vec128_t*
  %2940 = load i64, i64* %RBP.i338
  %2941 = sub i64 %2940, 96
  %2942 = bitcast %union.vec128_t* %XMM2.i339 to i8*
  %2943 = load i64, i64* %PC.i337
  %2944 = add i64 %2943, 5
  store i64 %2944, i64* %PC.i337
  %2945 = bitcast i8* %2942 to double*
  %2946 = load double, double* %2945, align 1
  %2947 = inttoptr i64 %2941 to double*
  store double %2946, double* %2947
  store %struct.Memory* %loadMem_41b3e3, %struct.Memory** %MEMORY
  %loadMem_41b3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 15
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2954, i64 0, i64 3
  %XMM3.i336 = bitcast %union.VectorReg* %2955 to %union.vec128_t*
  %2956 = load i64, i64* %RBP.i335
  %2957 = sub i64 %2956, 104
  %2958 = bitcast %union.vec128_t* %XMM3.i336 to i8*
  %2959 = load i64, i64* %PC.i334
  %2960 = add i64 %2959, 5
  store i64 %2960, i64* %PC.i334
  %2961 = bitcast i8* %2958 to double*
  %2962 = load double, double* %2961, align 1
  %2963 = inttoptr i64 %2957 to double*
  store double %2962, double* %2963
  store %struct.Memory* %loadMem_41b3e8, %struct.Memory** %MEMORY
  %loadMem1_41b3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %PC.i333
  %2968 = add i64 %2967, -105725
  %2969 = load i64, i64* %PC.i333
  %2970 = add i64 %2969, 5
  %2971 = load i64, i64* %PC.i333
  %2972 = add i64 %2971, 5
  store i64 %2972, i64* %PC.i333
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2974 = load i64, i64* %2973, align 8
  %2975 = add i64 %2974, -8
  %2976 = inttoptr i64 %2975 to i64*
  store i64 %2970, i64* %2976
  store i64 %2975, i64* %2973, align 8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2968, i64* %2977, align 8
  store %struct.Memory* %loadMem1_41b3ed, %struct.Memory** %MEMORY
  %loadMem2_41b3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b3ed = load i64, i64* %3
  %call2_41b3ed = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_41b3ed, %struct.Memory* %loadMem2_41b3ed)
  store %struct.Memory* %call2_41b3ed, %struct.Memory** %MEMORY
  %loadMem_41b3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 15
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2984, i64 0, i64 1
  %YMM1.i332 = bitcast %union.VectorReg* %2985 to %"class.std::bitset"*
  %2986 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %2987 = load i64, i64* %RBP.i331
  %2988 = sub i64 %2987, 80
  %2989 = load i64, i64* %PC.i330
  %2990 = add i64 %2989, 5
  store i64 %2990, i64* %PC.i330
  %2991 = inttoptr i64 %2988 to double*
  %2992 = load double, double* %2991
  %2993 = bitcast i8* %2986 to double*
  store double %2992, double* %2993, align 1
  %2994 = getelementptr inbounds i8, i8* %2986, i64 8
  %2995 = bitcast i8* %2994 to double*
  store double 0.000000e+00, double* %2995, align 1
  store %struct.Memory* %loadMem_41b3f2, %struct.Memory** %MEMORY
  %loadMem_41b3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2999, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %3000 to %"class.std::bitset"*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3002 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3001, i64 0, i64 0
  %XMM0.i329 = bitcast %union.VectorReg* %3002 to %union.vec128_t*
  %3003 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %3004 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %3005 = bitcast %union.vec128_t* %XMM0.i329 to i8*
  %3006 = load i64, i64* %PC.i327
  %3007 = add i64 %3006, 4
  store i64 %3007, i64* %PC.i327
  %3008 = bitcast i8* %3004 to double*
  %3009 = load double, double* %3008, align 1
  %3010 = getelementptr inbounds i8, i8* %3004, i64 8
  %3011 = bitcast i8* %3010 to i64*
  %3012 = load i64, i64* %3011, align 1
  %3013 = bitcast i8* %3005 to double*
  %3014 = load double, double* %3013, align 1
  %3015 = fmul double %3009, %3014
  %3016 = bitcast i8* %3003 to double*
  store double %3015, double* %3016, align 1
  %3017 = getelementptr inbounds i8, i8* %3003, i64 8
  %3018 = bitcast i8* %3017 to i64*
  store i64 %3012, i64* %3018, align 1
  store %struct.Memory* %loadMem_41b3f7, %struct.Memory** %MEMORY
  %loadMem_41b3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3025, i64 0, i64 0
  %YMM0.i326 = bitcast %union.VectorReg* %3026 to %"class.std::bitset"*
  %3027 = bitcast %"class.std::bitset"* %YMM0.i326 to i8*
  %3028 = load i64, i64* %RBP.i325
  %3029 = sub i64 %3028, 96
  %3030 = load i64, i64* %PC.i324
  %3031 = add i64 %3030, 5
  store i64 %3031, i64* %PC.i324
  %3032 = inttoptr i64 %3029 to double*
  %3033 = load double, double* %3032
  %3034 = bitcast i8* %3027 to double*
  store double %3033, double* %3034, align 1
  %3035 = getelementptr inbounds i8, i8* %3027, i64 8
  %3036 = bitcast i8* %3035 to double*
  store double 0.000000e+00, double* %3036, align 1
  store %struct.Memory* %loadMem_41b3fb, %struct.Memory** %MEMORY
  %loadMem_41b400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3041 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3040, i64 0, i64 0
  %YMM0.i322 = bitcast %union.VectorReg* %3041 to %"class.std::bitset"*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3042, i64 0, i64 1
  %XMM1.i323 = bitcast %union.VectorReg* %3043 to %union.vec128_t*
  %3044 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %3045 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %3046 = bitcast %union.vec128_t* %XMM1.i323 to i8*
  %3047 = load i64, i64* %PC.i321
  %3048 = add i64 %3047, 4
  store i64 %3048, i64* %PC.i321
  %3049 = bitcast i8* %3045 to double*
  %3050 = load double, double* %3049, align 1
  %3051 = getelementptr inbounds i8, i8* %3045, i64 8
  %3052 = bitcast i8* %3051 to i64*
  %3053 = load i64, i64* %3052, align 1
  %3054 = bitcast i8* %3046 to double*
  %3055 = load double, double* %3054, align 1
  %3056 = fdiv double %3050, %3055
  %3057 = bitcast i8* %3044 to double*
  store double %3056, double* %3057, align 1
  %3058 = getelementptr inbounds i8, i8* %3044, i64 8
  %3059 = bitcast i8* %3058 to i64*
  store i64 %3053, i64* %3059, align 1
  store %struct.Memory* %loadMem_41b400, %struct.Memory** %MEMORY
  %loadMem_41b404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3066, i64 0, i64 1
  %YMM1.i320 = bitcast %union.VectorReg* %3067 to %"class.std::bitset"*
  %3068 = bitcast %"class.std::bitset"* %YMM1.i320 to i8*
  %3069 = load i64, i64* %RBP.i319
  %3070 = sub i64 %3069, 32
  %3071 = load i64, i64* %PC.i318
  %3072 = add i64 %3071, 5
  store i64 %3072, i64* %PC.i318
  %3073 = inttoptr i64 %3070 to float*
  %3074 = load float, float* %3073
  %3075 = fpext float %3074 to double
  %3076 = bitcast i8* %3068 to double*
  store double %3075, double* %3076, align 1
  store %struct.Memory* %loadMem_41b404, %struct.Memory** %MEMORY
  %loadMem_41b409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 15
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3084 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3083, i64 0, i64 2
  %YMM2.i317 = bitcast %union.VectorReg* %3084 to %"class.std::bitset"*
  %3085 = bitcast %"class.std::bitset"* %YMM2.i317 to i8*
  %3086 = load i64, i64* %RBP.i316
  %3087 = sub i64 %3086, 88
  %3088 = load i64, i64* %PC.i315
  %3089 = add i64 %3088, 5
  store i64 %3089, i64* %PC.i315
  %3090 = inttoptr i64 %3087 to double*
  %3091 = load double, double* %3090
  %3092 = bitcast i8* %3085 to double*
  store double %3091, double* %3092, align 1
  %3093 = getelementptr inbounds i8, i8* %3085, i64 8
  %3094 = bitcast i8* %3093 to double*
  store double 0.000000e+00, double* %3094, align 1
  store %struct.Memory* %loadMem_41b409, %struct.Memory** %MEMORY
  %loadMem_41b40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3098, i64 0, i64 2
  %YMM2.i313 = bitcast %union.VectorReg* %3099 to %"class.std::bitset"*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3100, i64 0, i64 1
  %XMM1.i314 = bitcast %union.VectorReg* %3101 to %union.vec128_t*
  %3102 = bitcast %"class.std::bitset"* %YMM2.i313 to i8*
  %3103 = bitcast %"class.std::bitset"* %YMM2.i313 to i8*
  %3104 = bitcast %union.vec128_t* %XMM1.i314 to i8*
  %3105 = load i64, i64* %PC.i312
  %3106 = add i64 %3105, 4
  store i64 %3106, i64* %PC.i312
  %3107 = bitcast i8* %3103 to double*
  %3108 = load double, double* %3107, align 1
  %3109 = getelementptr inbounds i8, i8* %3103, i64 8
  %3110 = bitcast i8* %3109 to i64*
  %3111 = load i64, i64* %3110, align 1
  %3112 = bitcast i8* %3104 to double*
  %3113 = load double, double* %3112, align 1
  %3114 = fmul double %3108, %3113
  %3115 = bitcast i8* %3102 to double*
  store double %3114, double* %3115, align 1
  %3116 = getelementptr inbounds i8, i8* %3102, i64 8
  %3117 = bitcast i8* %3116 to i64*
  store i64 %3111, i64* %3117, align 1
  store %struct.Memory* %loadMem_41b40e, %struct.Memory** %MEMORY
  %loadMem_41b412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 15
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3124, i64 0, i64 1
  %YMM1.i311 = bitcast %union.VectorReg* %3125 to %"class.std::bitset"*
  %3126 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %3127 = load i64, i64* %RBP.i310
  %3128 = sub i64 %3127, 32
  %3129 = load i64, i64* %PC.i309
  %3130 = add i64 %3129, 5
  store i64 %3130, i64* %PC.i309
  %3131 = inttoptr i64 %3128 to float*
  %3132 = load float, float* %3131
  %3133 = fpext float %3132 to double
  %3134 = bitcast i8* %3126 to double*
  store double %3133, double* %3134, align 1
  store %struct.Memory* %loadMem_41b412, %struct.Memory** %MEMORY
  %loadMem_41b417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3139 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3138, i64 0, i64 2
  %YMM2.i307 = bitcast %union.VectorReg* %3139 to %"class.std::bitset"*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3140, i64 0, i64 1
  %XMM1.i308 = bitcast %union.VectorReg* %3141 to %union.vec128_t*
  %3142 = bitcast %"class.std::bitset"* %YMM2.i307 to i8*
  %3143 = bitcast %"class.std::bitset"* %YMM2.i307 to i8*
  %3144 = bitcast %union.vec128_t* %XMM1.i308 to i8*
  %3145 = load i64, i64* %PC.i306
  %3146 = add i64 %3145, 4
  store i64 %3146, i64* %PC.i306
  %3147 = bitcast i8* %3143 to double*
  %3148 = load double, double* %3147, align 1
  %3149 = getelementptr inbounds i8, i8* %3143, i64 8
  %3150 = bitcast i8* %3149 to i64*
  %3151 = load i64, i64* %3150, align 1
  %3152 = bitcast i8* %3144 to double*
  %3153 = load double, double* %3152, align 1
  %3154 = fmul double %3148, %3153
  %3155 = bitcast i8* %3142 to double*
  store double %3154, double* %3155, align 1
  %3156 = getelementptr inbounds i8, i8* %3142, i64 8
  %3157 = bitcast i8* %3156 to i64*
  store i64 %3151, i64* %3157, align 1
  store %struct.Memory* %loadMem_41b417, %struct.Memory** %MEMORY
  %loadMem_41b41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 1
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 15
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %RBP.i305
  %3168 = sub i64 %3167, 16
  %3169 = load i64, i64* %PC.i303
  %3170 = add i64 %3169, 4
  store i64 %3170, i64* %PC.i303
  %3171 = inttoptr i64 %3168 to i64*
  %3172 = load i64, i64* %3171
  store i64 %3172, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_41b41b, %struct.Memory** %MEMORY
  %loadMem_41b41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 1
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3179, i64 0, i64 1
  %YMM1.i302 = bitcast %union.VectorReg* %3180 to %"class.std::bitset"*
  %3181 = bitcast %"class.std::bitset"* %YMM1.i302 to i8*
  %3182 = load i64, i64* %RAX.i301
  %3183 = add i64 %3182, 48
  %3184 = load i64, i64* %PC.i300
  %3185 = add i64 %3184, 5
  store i64 %3185, i64* %PC.i300
  %3186 = inttoptr i64 %3183 to float*
  %3187 = load float, float* %3186
  %3188 = fpext float %3187 to double
  %3189 = bitcast i8* %3181 to double*
  store double %3188, double* %3189, align 1
  store %struct.Memory* %loadMem_41b41f, %struct.Memory** %MEMORY
  %loadMem_41b424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 15
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3196, i64 0, i64 3
  %YMM3.i299 = bitcast %union.VectorReg* %3197 to %"class.std::bitset"*
  %3198 = bitcast %"class.std::bitset"* %YMM3.i299 to i8*
  %3199 = load i64, i64* %RBP.i298
  %3200 = sub i64 %3199, 72
  %3201 = load i64, i64* %PC.i297
  %3202 = add i64 %3201, 5
  store i64 %3202, i64* %PC.i297
  %3203 = inttoptr i64 %3200 to double*
  %3204 = load double, double* %3203
  %3205 = bitcast i8* %3198 to double*
  store double %3204, double* %3205, align 1
  %3206 = getelementptr inbounds i8, i8* %3198, i64 8
  %3207 = bitcast i8* %3206 to double*
  store double 0.000000e+00, double* %3207, align 1
  store %struct.Memory* %loadMem_41b424, %struct.Memory** %MEMORY
  %loadMem_41b429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3211, i64 0, i64 3
  %YMM3.i295 = bitcast %union.VectorReg* %3212 to %"class.std::bitset"*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3213, i64 0, i64 1
  %XMM1.i296 = bitcast %union.VectorReg* %3214 to %union.vec128_t*
  %3215 = bitcast %"class.std::bitset"* %YMM3.i295 to i8*
  %3216 = bitcast %"class.std::bitset"* %YMM3.i295 to i8*
  %3217 = bitcast %union.vec128_t* %XMM1.i296 to i8*
  %3218 = load i64, i64* %PC.i294
  %3219 = add i64 %3218, 4
  store i64 %3219, i64* %PC.i294
  %3220 = bitcast i8* %3216 to double*
  %3221 = load double, double* %3220, align 1
  %3222 = getelementptr inbounds i8, i8* %3216, i64 8
  %3223 = bitcast i8* %3222 to i64*
  %3224 = load i64, i64* %3223, align 1
  %3225 = bitcast i8* %3217 to double*
  %3226 = load double, double* %3225, align 1
  %3227 = fmul double %3221, %3226
  %3228 = bitcast i8* %3215 to double*
  store double %3227, double* %3228, align 1
  %3229 = getelementptr inbounds i8, i8* %3215, i64 8
  %3230 = bitcast i8* %3229 to i64*
  store i64 %3224, i64* %3230, align 1
  store %struct.Memory* %loadMem_41b429, %struct.Memory** %MEMORY
  %loadMem_41b42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 1
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 15
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RBP.i293
  %3241 = sub i64 %3240, 16
  %3242 = load i64, i64* %PC.i291
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i291
  %3244 = inttoptr i64 %3241 to i64*
  %3245 = load i64, i64* %3244
  store i64 %3245, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_41b42d, %struct.Memory** %MEMORY
  %loadMem_41b431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 1
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3252, i64 0, i64 1
  %YMM1.i290 = bitcast %union.VectorReg* %3253 to %"class.std::bitset"*
  %3254 = bitcast %"class.std::bitset"* %YMM1.i290 to i8*
  %3255 = load i64, i64* %RAX.i289
  %3256 = add i64 %3255, 48
  %3257 = load i64, i64* %PC.i288
  %3258 = add i64 %3257, 5
  store i64 %3258, i64* %PC.i288
  %3259 = inttoptr i64 %3256 to float*
  %3260 = load float, float* %3259
  %3261 = fpext float %3260 to double
  %3262 = bitcast i8* %3254 to double*
  store double %3261, double* %3262, align 1
  store %struct.Memory* %loadMem_41b431, %struct.Memory** %MEMORY
  %loadMem_41b436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3266, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %3267 to %"class.std::bitset"*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3268, i64 0, i64 1
  %XMM1.i287 = bitcast %union.VectorReg* %3269 to %union.vec128_t*
  %3270 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %3271 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %3272 = bitcast %union.vec128_t* %XMM1.i287 to i8*
  %3273 = load i64, i64* %PC.i286
  %3274 = add i64 %3273, 4
  store i64 %3274, i64* %PC.i286
  %3275 = bitcast i8* %3271 to double*
  %3276 = load double, double* %3275, align 1
  %3277 = getelementptr inbounds i8, i8* %3271, i64 8
  %3278 = bitcast i8* %3277 to i64*
  %3279 = load i64, i64* %3278, align 1
  %3280 = bitcast i8* %3272 to double*
  %3281 = load double, double* %3280, align 1
  %3282 = fmul double %3276, %3281
  %3283 = bitcast i8* %3270 to double*
  store double %3282, double* %3283, align 1
  %3284 = getelementptr inbounds i8, i8* %3270, i64 8
  %3285 = bitcast i8* %3284 to i64*
  store i64 %3279, i64* %3285, align 1
  store %struct.Memory* %loadMem_41b436, %struct.Memory** %MEMORY
  %loadMem_41b43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3289, i64 0, i64 2
  %YMM2.i285 = bitcast %union.VectorReg* %3290 to %"class.std::bitset"*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3291, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %3292 to %union.vec128_t*
  %3293 = bitcast %"class.std::bitset"* %YMM2.i285 to i8*
  %3294 = bitcast %"class.std::bitset"* %YMM2.i285 to i8*
  %3295 = bitcast %union.vec128_t* %XMM3.i to i8*
  %3296 = load i64, i64* %PC.i284
  %3297 = add i64 %3296, 4
  store i64 %3297, i64* %PC.i284
  %3298 = bitcast i8* %3294 to double*
  %3299 = load double, double* %3298, align 1
  %3300 = getelementptr inbounds i8, i8* %3294, i64 8
  %3301 = bitcast i8* %3300 to i64*
  %3302 = load i64, i64* %3301, align 1
  %3303 = bitcast i8* %3295 to double*
  %3304 = load double, double* %3303, align 1
  %3305 = fdiv double %3299, %3304
  %3306 = bitcast i8* %3293 to double*
  store double %3305, double* %3306, align 1
  %3307 = getelementptr inbounds i8, i8* %3293, i64 8
  %3308 = bitcast i8* %3307 to i64*
  store i64 %3302, i64* %3308, align 1
  store %struct.Memory* %loadMem_41b43a, %struct.Memory** %MEMORY
  %loadMem_41b43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 15
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3315, i64 0, i64 0
  %XMM0.i283 = bitcast %union.VectorReg* %3316 to %union.vec128_t*
  %3317 = load i64, i64* %RBP.i282
  %3318 = sub i64 %3317, 112
  %3319 = bitcast %union.vec128_t* %XMM0.i283 to i8*
  %3320 = load i64, i64* %PC.i281
  %3321 = add i64 %3320, 5
  store i64 %3321, i64* %PC.i281
  %3322 = bitcast i8* %3319 to double*
  %3323 = load double, double* %3322, align 1
  %3324 = inttoptr i64 %3318 to double*
  store double %3323, double* %3324
  store %struct.Memory* %loadMem_41b43e, %struct.Memory** %MEMORY
  %loadMem_41b443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3329 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3328, i64 0, i64 0
  %YMM0.i279 = bitcast %union.VectorReg* %3329 to %"class.std::bitset"*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3330, i64 0, i64 2
  %XMM2.i280 = bitcast %union.VectorReg* %3331 to %union.vec128_t*
  %3332 = bitcast %"class.std::bitset"* %YMM0.i279 to i8*
  %3333 = bitcast %union.vec128_t* %XMM2.i280 to i8*
  %3334 = load i64, i64* %PC.i278
  %3335 = add i64 %3334, 3
  store i64 %3335, i64* %PC.i278
  %3336 = bitcast i8* %3333 to <2 x i32>*
  %3337 = load <2 x i32>, <2 x i32>* %3336, align 1
  %3338 = getelementptr inbounds i8, i8* %3333, i64 8
  %3339 = bitcast i8* %3338 to <2 x i32>*
  %3340 = load <2 x i32>, <2 x i32>* %3339, align 1
  %3341 = extractelement <2 x i32> %3337, i32 0
  %3342 = bitcast i8* %3332 to i32*
  store i32 %3341, i32* %3342, align 1
  %3343 = extractelement <2 x i32> %3337, i32 1
  %3344 = getelementptr inbounds i8, i8* %3332, i64 4
  %3345 = bitcast i8* %3344 to i32*
  store i32 %3343, i32* %3345, align 1
  %3346 = extractelement <2 x i32> %3340, i32 0
  %3347 = getelementptr inbounds i8, i8* %3332, i64 8
  %3348 = bitcast i8* %3347 to i32*
  store i32 %3346, i32* %3348, align 1
  %3349 = extractelement <2 x i32> %3340, i32 1
  %3350 = getelementptr inbounds i8, i8* %3332, i64 12
  %3351 = bitcast i8* %3350 to i32*
  store i32 %3349, i32* %3351, align 1
  store %struct.Memory* %loadMem_41b443, %struct.Memory** %MEMORY
  %loadMem1_41b446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %PC.i277
  %3356 = add i64 %3355, -106534
  %3357 = load i64, i64* %PC.i277
  %3358 = add i64 %3357, 5
  %3359 = load i64, i64* %PC.i277
  %3360 = add i64 %3359, 5
  store i64 %3360, i64* %PC.i277
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3362 = load i64, i64* %3361, align 8
  %3363 = add i64 %3362, -8
  %3364 = inttoptr i64 %3363 to i64*
  store i64 %3358, i64* %3364
  store i64 %3363, i64* %3361, align 8
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3356, i64* %3365, align 8
  store %struct.Memory* %loadMem1_41b446, %struct.Memory** %MEMORY
  %loadMem2_41b446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b446 = load i64, i64* %3
  %3366 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41b446)
  store %struct.Memory* %3366, %struct.Memory** %MEMORY
  %loadMem_41b44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 15
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3373, i64 0, i64 1
  %YMM1.i274 = bitcast %union.VectorReg* %3374 to %"class.std::bitset"*
  %3375 = bitcast %"class.std::bitset"* %YMM1.i274 to i8*
  %3376 = load i64, i64* %RBP.i273
  %3377 = sub i64 %3376, 112
  %3378 = load i64, i64* %PC.i272
  %3379 = add i64 %3378, 5
  store i64 %3379, i64* %PC.i272
  %3380 = inttoptr i64 %3377 to double*
  %3381 = load double, double* %3380
  %3382 = bitcast i8* %3375 to double*
  store double %3381, double* %3382, align 1
  %3383 = getelementptr inbounds i8, i8* %3375, i64 8
  %3384 = bitcast i8* %3383 to double*
  store double 0.000000e+00, double* %3384, align 1
  store %struct.Memory* %loadMem_41b44b, %struct.Memory** %MEMORY
  %loadMem_41b450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3388, i64 0, i64 1
  %YMM1.i270 = bitcast %union.VectorReg* %3389 to %"class.std::bitset"*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3390, i64 0, i64 0
  %XMM0.i271 = bitcast %union.VectorReg* %3391 to %union.vec128_t*
  %3392 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %3393 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %3394 = bitcast %union.vec128_t* %XMM0.i271 to i8*
  %3395 = load i64, i64* %PC.i269
  %3396 = add i64 %3395, 4
  store i64 %3396, i64* %PC.i269
  %3397 = bitcast i8* %3393 to double*
  %3398 = load double, double* %3397, align 1
  %3399 = getelementptr inbounds i8, i8* %3393, i64 8
  %3400 = bitcast i8* %3399 to i64*
  %3401 = load i64, i64* %3400, align 1
  %3402 = bitcast i8* %3394 to double*
  %3403 = load double, double* %3402, align 1
  %3404 = fmul double %3398, %3403
  %3405 = bitcast i8* %3392 to double*
  store double %3404, double* %3405, align 1
  %3406 = getelementptr inbounds i8, i8* %3392, i64 8
  %3407 = bitcast i8* %3406 to i64*
  store i64 %3401, i64* %3407, align 1
  store %struct.Memory* %loadMem_41b450, %struct.Memory** %MEMORY
  %loadMem_41b454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3414, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %3415 to %"class.std::bitset"*
  %3416 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %3417 = load i64, i64* %RBP.i267
  %3418 = sub i64 %3417, 104
  %3419 = load i64, i64* %PC.i266
  %3420 = add i64 %3419, 5
  store i64 %3420, i64* %PC.i266
  %3421 = inttoptr i64 %3418 to double*
  %3422 = load double, double* %3421
  %3423 = bitcast i8* %3416 to double*
  store double %3422, double* %3423, align 1
  %3424 = getelementptr inbounds i8, i8* %3416, i64 8
  %3425 = bitcast i8* %3424 to double*
  store double 0.000000e+00, double* %3425, align 1
  store %struct.Memory* %loadMem_41b454, %struct.Memory** %MEMORY
  %loadMem_41b459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3429, i64 0, i64 0
  %YMM0.i264 = bitcast %union.VectorReg* %3430 to %"class.std::bitset"*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3431, i64 0, i64 1
  %XMM1.i265 = bitcast %union.VectorReg* %3432 to %union.vec128_t*
  %3433 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %3434 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %3435 = bitcast %union.vec128_t* %XMM1.i265 to i8*
  %3436 = load i64, i64* %PC.i263
  %3437 = add i64 %3436, 4
  store i64 %3437, i64* %PC.i263
  %3438 = bitcast i8* %3434 to double*
  %3439 = load double, double* %3438, align 1
  %3440 = getelementptr inbounds i8, i8* %3434, i64 8
  %3441 = bitcast i8* %3440 to i64*
  %3442 = load i64, i64* %3441, align 1
  %3443 = bitcast i8* %3435 to double*
  %3444 = load double, double* %3443, align 1
  %3445 = fmul double %3439, %3444
  %3446 = bitcast i8* %3433 to double*
  store double %3445, double* %3446, align 1
  %3447 = getelementptr inbounds i8, i8* %3433, i64 8
  %3448 = bitcast i8* %3447 to i64*
  store i64 %3442, i64* %3448, align 1
  store %struct.Memory* %loadMem_41b459, %struct.Memory** %MEMORY
  %loadMem_41b45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3452, i64 0, i64 0
  %YMM0.i261 = bitcast %union.VectorReg* %3453 to %"class.std::bitset"*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3454, i64 0, i64 0
  %XMM0.i262 = bitcast %union.VectorReg* %3455 to %union.vec128_t*
  %3456 = bitcast %"class.std::bitset"* %YMM0.i261 to i8*
  %3457 = bitcast %union.vec128_t* %XMM0.i262 to i8*
  %3458 = load i64, i64* %PC.i260
  %3459 = add i64 %3458, 4
  store i64 %3459, i64* %PC.i260
  %3460 = bitcast i8* %3456 to <2 x i32>*
  %3461 = load <2 x i32>, <2 x i32>* %3460, align 1
  %3462 = getelementptr inbounds i8, i8* %3456, i64 8
  %3463 = bitcast i8* %3462 to <2 x i32>*
  %3464 = load <2 x i32>, <2 x i32>* %3463, align 1
  %3465 = bitcast i8* %3457 to double*
  %3466 = load double, double* %3465, align 1
  %3467 = fptrunc double %3466 to float
  %3468 = bitcast i8* %3456 to float*
  store float %3467, float* %3468, align 1
  %3469 = extractelement <2 x i32> %3461, i32 1
  %3470 = getelementptr inbounds i8, i8* %3456, i64 4
  %3471 = bitcast i8* %3470 to i32*
  store i32 %3469, i32* %3471, align 1
  %3472 = extractelement <2 x i32> %3464, i32 0
  %3473 = bitcast i8* %3462 to i32*
  store i32 %3472, i32* %3473, align 1
  %3474 = extractelement <2 x i32> %3464, i32 1
  %3475 = getelementptr inbounds i8, i8* %3456, i64 12
  %3476 = bitcast i8* %3475 to i32*
  store i32 %3474, i32* %3476, align 1
  store %struct.Memory* %loadMem_41b45d, %struct.Memory** %MEMORY
  %loadMem_41b461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 1
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %3482 to i64*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 15
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3485 to i64*
  %3486 = load i64, i64* %RBP.i259
  %3487 = sub i64 %3486, 16
  %3488 = load i64, i64* %PC.i257
  %3489 = add i64 %3488, 4
  store i64 %3489, i64* %PC.i257
  %3490 = inttoptr i64 %3487 to i64*
  %3491 = load i64, i64* %3490
  store i64 %3491, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_41b461, %struct.Memory** %MEMORY
  %loadMem_41b465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RAX.i256
  %3499 = add i64 %3498, 32
  %3500 = load i64, i64* %PC.i255
  %3501 = add i64 %3500, 4
  store i64 %3501, i64* %PC.i255
  %3502 = inttoptr i64 %3499 to i64*
  %3503 = load i64, i64* %3502
  store i64 %3503, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_41b465, %struct.Memory** %MEMORY
  %loadMem_41b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 5
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 15
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %3512 to i64*
  %3513 = load i64, i64* %RBP.i254
  %3514 = sub i64 %3513, 36
  %3515 = load i64, i64* %PC.i252
  %3516 = add i64 %3515, 3
  store i64 %3516, i64* %PC.i252
  %3517 = inttoptr i64 %3514 to i32*
  %3518 = load i32, i32* %3517
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_41b469, %struct.Memory** %MEMORY
  %loadMem_41b46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 7
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 15
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %RBP.i251
  %3530 = sub i64 %3529, 16
  %3531 = load i64, i64* %PC.i249
  %3532 = add i64 %3531, 4
  store i64 %3532, i64* %PC.i249
  %3533 = inttoptr i64 %3530 to i64*
  %3534 = load i64, i64* %3533
  store i64 %3534, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_41b46c, %struct.Memory** %MEMORY
  %loadMem_41b470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 5
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 7
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RCX.i247
  %3545 = load i64, i64* %RDX.i248
  %3546 = add i64 %3545, 8
  %3547 = load i64, i64* %PC.i246
  %3548 = add i64 %3547, 3
  store i64 %3548, i64* %PC.i246
  %3549 = trunc i64 %3544 to i32
  %3550 = inttoptr i64 %3546 to i32*
  %3551 = load i32, i32* %3550
  %3552 = sub i32 %3549, %3551
  %3553 = zext i32 %3552 to i64
  store i64 %3553, i64* %RCX.i247, align 8
  %3554 = icmp ult i32 %3549, %3551
  %3555 = zext i1 %3554 to i8
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3555, i8* %3556, align 1
  %3557 = and i32 %3552, 255
  %3558 = call i32 @llvm.ctpop.i32(i32 %3557)
  %3559 = trunc i32 %3558 to i8
  %3560 = and i8 %3559, 1
  %3561 = xor i8 %3560, 1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3561, i8* %3562, align 1
  %3563 = xor i32 %3551, %3549
  %3564 = xor i32 %3563, %3552
  %3565 = lshr i32 %3564, 4
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3567, i8* %3568, align 1
  %3569 = icmp eq i32 %3552, 0
  %3570 = zext i1 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3570, i8* %3571, align 1
  %3572 = lshr i32 %3552, 31
  %3573 = trunc i32 %3572 to i8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3573, i8* %3574, align 1
  %3575 = lshr i32 %3549, 31
  %3576 = lshr i32 %3551, 31
  %3577 = xor i32 %3576, %3575
  %3578 = xor i32 %3572, %3575
  %3579 = add i32 %3578, %3577
  %3580 = icmp eq i32 %3579, 2
  %3581 = zext i1 %3580 to i8
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3581, i8* %3582, align 1
  store %struct.Memory* %loadMem_41b470, %struct.Memory** %MEMORY
  %loadMem_41b473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 5
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %ECX.i244 = bitcast %union.anon* %3588 to i32*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 7
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %3591 to i64*
  %3592 = load i32, i32* %ECX.i244
  %3593 = zext i32 %3592 to i64
  %3594 = load i64, i64* %PC.i243
  %3595 = add i64 %3594, 3
  store i64 %3595, i64* %PC.i243
  %3596 = shl i64 %3593, 32
  %3597 = ashr exact i64 %3596, 32
  store i64 %3597, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_41b473, %struct.Memory** %MEMORY
  %loadMem_41b476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 1
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 7
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3607, i64 0, i64 0
  %XMM0.i242 = bitcast %union.VectorReg* %3608 to %union.vec128_t*
  %3609 = load i64, i64* %RAX.i240
  %3610 = load i64, i64* %RDX.i241
  %3611 = mul i64 %3610, 4
  %3612 = add i64 %3611, %3609
  %3613 = bitcast %union.vec128_t* %XMM0.i242 to i8*
  %3614 = load i64, i64* %PC.i239
  %3615 = add i64 %3614, 5
  store i64 %3615, i64* %PC.i239
  %3616 = bitcast i8* %3613 to <2 x float>*
  %3617 = load <2 x float>, <2 x float>* %3616, align 1
  %3618 = extractelement <2 x float> %3617, i32 0
  %3619 = inttoptr i64 %3612 to float*
  store float %3618, float* %3619
  store %struct.Memory* %loadMem_41b476, %struct.Memory** %MEMORY
  %loadMem_41b47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 1
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 15
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %RBP.i238
  %3630 = sub i64 %3629, 36
  %3631 = load i64, i64* %PC.i236
  %3632 = add i64 %3631, 3
  store i64 %3632, i64* %PC.i236
  %3633 = inttoptr i64 %3630 to i32*
  %3634 = load i32, i32* %3633
  %3635 = zext i32 %3634 to i64
  store i64 %3635, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_41b47b, %struct.Memory** %MEMORY
  %loadMem_41b47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 33
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 1
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %RAX.i235
  %3643 = load i64, i64* %PC.i234
  %3644 = add i64 %3643, 3
  store i64 %3644, i64* %PC.i234
  %3645 = trunc i64 %3642 to i32
  %3646 = add i32 1, %3645
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RAX.i235, align 8
  %3648 = icmp ult i32 %3646, %3645
  %3649 = icmp ult i32 %3646, 1
  %3650 = or i1 %3648, %3649
  %3651 = zext i1 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3651, i8* %3652, align 1
  %3653 = and i32 %3646, 255
  %3654 = call i32 @llvm.ctpop.i32(i32 %3653)
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = xor i8 %3656, 1
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3657, i8* %3658, align 1
  %3659 = xor i64 1, %3642
  %3660 = trunc i64 %3659 to i32
  %3661 = xor i32 %3660, %3646
  %3662 = lshr i32 %3661, 4
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3664, i8* %3665, align 1
  %3666 = icmp eq i32 %3646, 0
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3667, i8* %3668, align 1
  %3669 = lshr i32 %3646, 31
  %3670 = trunc i32 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3670, i8* %3671, align 1
  %3672 = lshr i32 %3645, 31
  %3673 = xor i32 %3669, %3672
  %3674 = add i32 %3673, %3669
  %3675 = icmp eq i32 %3674, 2
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3676, i8* %3677, align 1
  store %struct.Memory* %loadMem_41b47e, %struct.Memory** %MEMORY
  %loadMem_41b481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 1
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %3683 to i32*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 15
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %3686 to i64*
  %3687 = load i64, i64* %RBP.i233
  %3688 = sub i64 %3687, 36
  %3689 = load i32, i32* %EAX.i232
  %3690 = zext i32 %3689 to i64
  %3691 = load i64, i64* %PC.i231
  %3692 = add i64 %3691, 3
  store i64 %3692, i64* %PC.i231
  %3693 = inttoptr i64 %3688 to i32*
  store i32 %3689, i32* %3693
  store %struct.Memory* %loadMem_41b481, %struct.Memory** %MEMORY
  %loadMem_41b484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3696 to i64*
  %3697 = load i64, i64* %PC.i230
  %3698 = add i64 %3697, -292
  %3699 = load i64, i64* %PC.i230
  %3700 = add i64 %3699, 5
  store i64 %3700, i64* %PC.i230
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3698, i64* %3701, align 8
  store %struct.Memory* %loadMem_41b484, %struct.Memory** %MEMORY
  br label %block_.L_41b360

block_.L_41b489:                                  ; preds = %block_.L_41b360
  %loadMem_41b489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3705, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %3706 to %"class.std::bitset"*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3708 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3707, i64 0, i64 0
  %XMM0.i229 = bitcast %union.VectorReg* %3708 to %union.vec128_t*
  %3709 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %3710 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %3711 = bitcast %union.vec128_t* %XMM0.i229 to i8*
  %3712 = load i64, i64* %PC.i227
  %3713 = add i64 %3712, 3
  store i64 %3713, i64* %PC.i227
  %3714 = bitcast i8* %3710 to i64*
  %3715 = load i64, i64* %3714, align 1
  %3716 = getelementptr inbounds i8, i8* %3710, i64 8
  %3717 = bitcast i8* %3716 to i64*
  %3718 = load i64, i64* %3717, align 1
  %3719 = bitcast i8* %3711 to i64*
  %3720 = load i64, i64* %3719, align 1
  %3721 = getelementptr inbounds i8, i8* %3711, i64 8
  %3722 = bitcast i8* %3721 to i64*
  %3723 = load i64, i64* %3722, align 1
  %3724 = xor i64 %3720, %3715
  %3725 = xor i64 %3723, %3718
  %3726 = trunc i64 %3724 to i32
  %3727 = lshr i64 %3724, 32
  %3728 = trunc i64 %3727 to i32
  %3729 = bitcast i8* %3709 to i32*
  store i32 %3726, i32* %3729, align 1
  %3730 = getelementptr inbounds i8, i8* %3709, i64 4
  %3731 = bitcast i8* %3730 to i32*
  store i32 %3728, i32* %3731, align 1
  %3732 = trunc i64 %3725 to i32
  %3733 = getelementptr inbounds i8, i8* %3709, i64 8
  %3734 = bitcast i8* %3733 to i32*
  store i32 %3732, i32* %3734, align 1
  %3735 = lshr i64 %3725, 32
  %3736 = trunc i64 %3735 to i32
  %3737 = getelementptr inbounds i8, i8* %3709, i64 12
  %3738 = bitcast i8* %3737 to i32*
  store i32 %3736, i32* %3738, align 1
  store %struct.Memory* %loadMem_41b489, %struct.Memory** %MEMORY
  %loadMem_41b48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 1
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 15
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3747 to i64*
  %3748 = load i64, i64* %RBP.i226
  %3749 = sub i64 %3748, 16
  %3750 = load i64, i64* %PC.i224
  %3751 = add i64 %3750, 4
  store i64 %3751, i64* %PC.i224
  %3752 = inttoptr i64 %3749 to i64*
  %3753 = load i64, i64* %3752
  store i64 %3753, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_41b48c, %struct.Memory** %MEMORY
  %loadMem_41b490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 1
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3760, i64 0, i64 0
  %XMM0.i223 = bitcast %union.VectorReg* %3761 to %union.vec128_t*
  %3762 = load i64, i64* %RAX.i222
  %3763 = add i64 %3762, 56
  %3764 = bitcast %union.vec128_t* %XMM0.i223 to i8*
  %3765 = load i64, i64* %PC.i221
  %3766 = add i64 %3765, 5
  store i64 %3766, i64* %PC.i221
  %3767 = bitcast i8* %3764 to <2 x float>*
  %3768 = load <2 x float>, <2 x float>* %3767, align 1
  %3769 = extractelement <2 x float> %3768, i32 0
  %3770 = inttoptr i64 %3763 to float*
  store float %3769, float* %3770
  store %struct.Memory* %loadMem_41b490, %struct.Memory** %MEMORY
  %loadMem_41b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 15
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RBP.i220
  %3778 = sub i64 %3777, 40
  %3779 = load i64, i64* %PC.i219
  %3780 = add i64 %3779, 7
  store i64 %3780, i64* %PC.i219
  %3781 = inttoptr i64 %3778 to i32*
  store i32 0, i32* %3781
  store %struct.Memory* %loadMem_41b495, %struct.Memory** %MEMORY
  %loadMem_41b49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 1
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 15
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RBP.i218
  %3792 = sub i64 %3791, 16
  %3793 = load i64, i64* %PC.i216
  %3794 = add i64 %3793, 4
  store i64 %3794, i64* %PC.i216
  %3795 = inttoptr i64 %3792 to i64*
  %3796 = load i64, i64* %3795
  store i64 %3796, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_41b49c, %struct.Memory** %MEMORY
  %loadMem_41b4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 1
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 5
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %RAX.i214
  %3807 = add i64 %3806, 20
  %3808 = load i64, i64* %PC.i213
  %3809 = add i64 %3808, 3
  store i64 %3809, i64* %PC.i213
  %3810 = inttoptr i64 %3807 to i32*
  %3811 = load i32, i32* %3810
  %3812 = zext i32 %3811 to i64
  store i64 %3812, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_41b4a0, %struct.Memory** %MEMORY
  %loadMem_41b4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 5
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %ECX.i211 = bitcast %union.anon* %3818 to i32*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 15
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %RBP.i212
  %3823 = sub i64 %3822, 36
  %3824 = load i32, i32* %ECX.i211
  %3825 = zext i32 %3824 to i64
  %3826 = load i64, i64* %PC.i210
  %3827 = add i64 %3826, 3
  store i64 %3827, i64* %PC.i210
  %3828 = inttoptr i64 %3823 to i32*
  store i32 %3824, i32* %3828
  store %struct.Memory* %loadMem_41b4a3, %struct.Memory** %MEMORY
  br label %block_.L_41b4a6

block_.L_41b4a6:                                  ; preds = %block_.L_41b578, %block_.L_41b489
  %loadMem_41b4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 1
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 15
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RBP.i209
  %3839 = sub i64 %3838, 36
  %3840 = load i64, i64* %PC.i207
  %3841 = add i64 %3840, 3
  store i64 %3841, i64* %PC.i207
  %3842 = inttoptr i64 %3839 to i32*
  %3843 = load i32, i32* %3842
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RAX.i208, align 8
  store %struct.Memory* %loadMem_41b4a6, %struct.Memory** %MEMORY
  %loadMem_41b4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 5
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 15
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %RBP.i206
  %3855 = sub i64 %3854, 16
  %3856 = load i64, i64* %PC.i204
  %3857 = add i64 %3856, 4
  store i64 %3857, i64* %PC.i204
  %3858 = inttoptr i64 %3855 to i64*
  %3859 = load i64, i64* %3858
  store i64 %3859, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_41b4a9, %struct.Memory** %MEMORY
  %loadMem_41b4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 1
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %3865 to i32*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 5
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %3868 to i64*
  %3869 = load i32, i32* %EAX.i202
  %3870 = zext i32 %3869 to i64
  %3871 = load i64, i64* %RCX.i203
  %3872 = add i64 %3871, 16
  %3873 = load i64, i64* %PC.i201
  %3874 = add i64 %3873, 3
  store i64 %3874, i64* %PC.i201
  %3875 = inttoptr i64 %3872 to i32*
  %3876 = load i32, i32* %3875
  %3877 = sub i32 %3869, %3876
  %3878 = icmp ult i32 %3869, %3876
  %3879 = zext i1 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3879, i8* %3880, align 1
  %3881 = and i32 %3877, 255
  %3882 = call i32 @llvm.ctpop.i32(i32 %3881)
  %3883 = trunc i32 %3882 to i8
  %3884 = and i8 %3883, 1
  %3885 = xor i8 %3884, 1
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3885, i8* %3886, align 1
  %3887 = xor i32 %3876, %3869
  %3888 = xor i32 %3887, %3877
  %3889 = lshr i32 %3888, 4
  %3890 = trunc i32 %3889 to i8
  %3891 = and i8 %3890, 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3891, i8* %3892, align 1
  %3893 = icmp eq i32 %3877, 0
  %3894 = zext i1 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3894, i8* %3895, align 1
  %3896 = lshr i32 %3877, 31
  %3897 = trunc i32 %3896 to i8
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3897, i8* %3898, align 1
  %3899 = lshr i32 %3869, 31
  %3900 = lshr i32 %3876, 31
  %3901 = xor i32 %3900, %3899
  %3902 = xor i32 %3896, %3899
  %3903 = add i32 %3902, %3901
  %3904 = icmp eq i32 %3903, 2
  %3905 = zext i1 %3904 to i8
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3905, i8* %3906, align 1
  store %struct.Memory* %loadMem_41b4ad, %struct.Memory** %MEMORY
  %loadMem_41b4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %PC.i200
  %3911 = add i64 %3910, 214
  %3912 = load i64, i64* %PC.i200
  %3913 = add i64 %3912, 6
  %3914 = load i64, i64* %PC.i200
  %3915 = add i64 %3914, 6
  store i64 %3915, i64* %PC.i200
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3917 = load i8, i8* %3916, align 1
  %3918 = icmp eq i8 %3917, 0
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3920 = load i8, i8* %3919, align 1
  %3921 = icmp ne i8 %3920, 0
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3923 = load i8, i8* %3922, align 1
  %3924 = icmp ne i8 %3923, 0
  %3925 = xor i1 %3921, %3924
  %3926 = xor i1 %3925, true
  %3927 = and i1 %3918, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %BRANCH_TAKEN, align 1
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3930 = select i1 %3927, i64 %3911, i64 %3913
  store i64 %3930, i64* %3929, align 8
  store %struct.Memory* %loadMem_41b4b0, %struct.Memory** %MEMORY
  %loadBr_41b4b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b4b0 = icmp eq i8 %loadBr_41b4b0, 1
  br i1 %cmpBr_41b4b0, label %block_.L_41b586, label %block_41b4b6

block_41b4b6:                                     ; preds = %block_.L_41b4a6
  %loadMem_41b4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3934, i64 0, i64 0
  %YMM0.i199 = bitcast %union.VectorReg* %3935 to %"class.std::bitset"*
  %3936 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %3937 = load i64, i64* %PC.i198
  %3938 = add i64 %3937, ptrtoint (%G_0x3934a__rip__type* @G_0x3934a__rip_ to i64)
  %3939 = load i64, i64* %PC.i198
  %3940 = add i64 %3939, 8
  store i64 %3940, i64* %PC.i198
  %3941 = inttoptr i64 %3938 to double*
  %3942 = load double, double* %3941
  %3943 = bitcast i8* %3936 to double*
  store double %3942, double* %3943, align 1
  %3944 = getelementptr inbounds i8, i8* %3936, i64 8
  %3945 = bitcast i8* %3944 to double*
  store double 0.000000e+00, double* %3945, align 1
  store %struct.Memory* %loadMem_41b4b6, %struct.Memory** %MEMORY
  %loadMem_41b4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 1
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %RBP.i197
  %3956 = sub i64 %3955, 16
  %3957 = load i64, i64* %PC.i195
  %3958 = add i64 %3957, 4
  store i64 %3958, i64* %PC.i195
  %3959 = inttoptr i64 %3956 to i64*
  %3960 = load i64, i64* %3959
  store i64 %3960, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_41b4be, %struct.Memory** %MEMORY
  %loadMem_41b4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 1
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %RAX.i194
  %3968 = add i64 %3967, 32
  %3969 = load i64, i64* %PC.i193
  %3970 = add i64 %3969, 4
  store i64 %3970, i64* %PC.i193
  %3971 = inttoptr i64 %3968 to i64*
  %3972 = load i64, i64* %3971
  store i64 %3972, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_41b4c2, %struct.Memory** %MEMORY
  %loadMem_41b4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 33
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3975 to i64*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 5
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 15
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3981 to i64*
  %3982 = load i64, i64* %RBP.i192
  %3983 = sub i64 %3982, 36
  %3984 = load i64, i64* %PC.i190
  %3985 = add i64 %3984, 3
  store i64 %3985, i64* %PC.i190
  %3986 = inttoptr i64 %3983 to i32*
  %3987 = load i32, i32* %3986
  %3988 = zext i32 %3987 to i64
  store i64 %3988, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_41b4c6, %struct.Memory** %MEMORY
  %loadMem_41b4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 7
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 15
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RBP.i189
  %3999 = sub i64 %3998, 16
  %4000 = load i64, i64* %PC.i187
  %4001 = add i64 %4000, 4
  store i64 %4001, i64* %PC.i187
  %4002 = inttoptr i64 %3999 to i64*
  %4003 = load i64, i64* %4002
  store i64 %4003, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_41b4c9, %struct.Memory** %MEMORY
  %loadMem_41b4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 5
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 7
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %RCX.i185
  %4014 = load i64, i64* %RDX.i186
  %4015 = add i64 %4014, 8
  %4016 = load i64, i64* %PC.i184
  %4017 = add i64 %4016, 3
  store i64 %4017, i64* %PC.i184
  %4018 = trunc i64 %4013 to i32
  %4019 = inttoptr i64 %4015 to i32*
  %4020 = load i32, i32* %4019
  %4021 = sub i32 %4018, %4020
  %4022 = zext i32 %4021 to i64
  store i64 %4022, i64* %RCX.i185, align 8
  %4023 = icmp ult i32 %4018, %4020
  %4024 = zext i1 %4023 to i8
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4024, i8* %4025, align 1
  %4026 = and i32 %4021, 255
  %4027 = call i32 @llvm.ctpop.i32(i32 %4026)
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  %4030 = xor i8 %4029, 1
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4030, i8* %4031, align 1
  %4032 = xor i32 %4020, %4018
  %4033 = xor i32 %4032, %4021
  %4034 = lshr i32 %4033, 4
  %4035 = trunc i32 %4034 to i8
  %4036 = and i8 %4035, 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4036, i8* %4037, align 1
  %4038 = icmp eq i32 %4021, 0
  %4039 = zext i1 %4038 to i8
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4039, i8* %4040, align 1
  %4041 = lshr i32 %4021, 31
  %4042 = trunc i32 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4042, i8* %4043, align 1
  %4044 = lshr i32 %4018, 31
  %4045 = lshr i32 %4020, 31
  %4046 = xor i32 %4045, %4044
  %4047 = xor i32 %4041, %4044
  %4048 = add i32 %4047, %4046
  %4049 = icmp eq i32 %4048, 2
  %4050 = zext i1 %4049 to i8
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4050, i8* %4051, align 1
  store %struct.Memory* %loadMem_41b4cd, %struct.Memory** %MEMORY
  %loadMem_41b4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 33
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 5
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %ECX.i182 = bitcast %union.anon* %4057 to i32*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 7
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %4060 to i64*
  %4061 = load i32, i32* %ECX.i182
  %4062 = zext i32 %4061 to i64
  %4063 = load i64, i64* %PC.i181
  %4064 = add i64 %4063, 3
  store i64 %4064, i64* %PC.i181
  %4065 = shl i64 %4062, 32
  %4066 = ashr exact i64 %4065, 32
  store i64 %4066, i64* %RDX.i183, align 8
  store %struct.Memory* %loadMem_41b4d0, %struct.Memory** %MEMORY
  %loadMem_41b4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 33
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 1
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 7
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4076, i64 0, i64 1
  %YMM1.i180 = bitcast %union.VectorReg* %4077 to %"class.std::bitset"*
  %4078 = bitcast %"class.std::bitset"* %YMM1.i180 to i8*
  %4079 = load i64, i64* %RAX.i178
  %4080 = load i64, i64* %RDX.i179
  %4081 = mul i64 %4080, 4
  %4082 = add i64 %4081, %4079
  %4083 = load i64, i64* %PC.i177
  %4084 = add i64 %4083, 5
  store i64 %4084, i64* %PC.i177
  %4085 = inttoptr i64 %4082 to float*
  %4086 = load float, float* %4085
  %4087 = fpext float %4086 to double
  %4088 = bitcast i8* %4078 to double*
  store double %4087, double* %4088, align 1
  store %struct.Memory* %loadMem_41b4d3, %struct.Memory** %MEMORY
  %loadMem_41b4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4093 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4092, i64 0, i64 0
  %XMM0.i172 = bitcast %union.VectorReg* %4093 to %union.vec128_t*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4094, i64 0, i64 1
  %XMM1.i173 = bitcast %union.VectorReg* %4095 to %union.vec128_t*
  %4096 = bitcast %union.vec128_t* %XMM1.i173 to i8*
  %4097 = bitcast %union.vec128_t* %XMM0.i172 to i8*
  %4098 = load i64, i64* %PC.i171
  %4099 = add i64 %4098, 4
  store i64 %4099, i64* %PC.i171
  %4100 = bitcast i8* %4096 to double*
  %4101 = load double, double* %4100, align 1
  %4102 = bitcast i8* %4097 to double*
  %4103 = load double, double* %4102, align 1
  %4104 = fcmp uno double %4101, %4103
  br i1 %4104, label %4105, label %4117

; <label>:4105:                                   ; preds = %block_41b4b6
  %4106 = fadd double %4101, %4103
  %4107 = bitcast double %4106 to i64
  %4108 = and i64 %4107, 9221120237041090560
  %4109 = icmp eq i64 %4108, 9218868437227405312
  %4110 = and i64 %4107, 2251799813685247
  %4111 = icmp ne i64 %4110, 0
  %4112 = and i1 %4109, %4111
  br i1 %4112, label %4113, label %4123

; <label>:4113:                                   ; preds = %4105
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4115 = load i64, i64* %4114, align 8
  %4116 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4115, %struct.Memory* %loadMem_41b4d8)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4117:                                   ; preds = %block_41b4b6
  %4118 = fcmp ogt double %4101, %4103
  br i1 %4118, label %4123, label %4119

; <label>:4119:                                   ; preds = %4117
  %4120 = fcmp olt double %4101, %4103
  br i1 %4120, label %4123, label %4121

; <label>:4121:                                   ; preds = %4119
  %4122 = fcmp oeq double %4101, %4103
  br i1 %4122, label %4123, label %4130

; <label>:4123:                                   ; preds = %4121, %4119, %4117, %4105
  %4124 = phi i8 [ 0, %4117 ], [ 0, %4119 ], [ 1, %4121 ], [ 1, %4105 ]
  %4125 = phi i8 [ 0, %4117 ], [ 0, %4119 ], [ 0, %4121 ], [ 1, %4105 ]
  %4126 = phi i8 [ 0, %4117 ], [ 1, %4119 ], [ 0, %4121 ], [ 1, %4105 ]
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4124, i8* %4127, align 1
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4125, i8* %4128, align 1
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4126, i8* %4129, align 1
  br label %4130

; <label>:4130:                                   ; preds = %4123, %4121
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4131, align 1
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4132, align 1
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4133, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4113, %4130
  %4134 = phi %struct.Memory* [ %4116, %4113 ], [ %loadMem_41b4d8, %4130 ]
  store %struct.Memory* %4134, %struct.Memory** %MEMORY
  %loadMem_41b4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 33
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %PC.i170
  %4139 = add i64 %4138, 151
  %4140 = load i64, i64* %PC.i170
  %4141 = add i64 %4140, 6
  %4142 = load i64, i64* %PC.i170
  %4143 = add i64 %4142, 6
  store i64 %4143, i64* %PC.i170
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4145 = load i8, i8* %4144, align 1
  store i8 %4145, i8* %BRANCH_TAKEN, align 1
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4147 = icmp ne i8 %4145, 0
  %4148 = select i1 %4147, i64 %4139, i64 %4141
  store i64 %4148, i64* %4146, align 8
  store %struct.Memory* %loadMem_41b4dc, %struct.Memory** %MEMORY
  %loadBr_41b4dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b4dc = icmp eq i8 %loadBr_41b4dc, 1
  br i1 %cmpBr_41b4dc, label %block_.L_41b573, label %block_41b4e2

block_41b4e2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41b4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 1
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 15
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %RBP.i169
  %4159 = sub i64 %4158, 16
  %4160 = load i64, i64* %PC.i167
  %4161 = add i64 %4160, 4
  store i64 %4161, i64* %PC.i167
  %4162 = inttoptr i64 %4159 to i64*
  %4163 = load i64, i64* %4162
  store i64 %4163, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_41b4e2, %struct.Memory** %MEMORY
  %loadMem_41b4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 1
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %4169 to i64*
  %4170 = load i64, i64* %RAX.i166
  %4171 = load i64, i64* %PC.i165
  %4172 = add i64 %4171, 3
  store i64 %4172, i64* %PC.i165
  %4173 = inttoptr i64 %4170 to i64*
  %4174 = load i64, i64* %4173
  store i64 %4174, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_41b4e6, %struct.Memory** %MEMORY
  %loadMem_41b4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 5
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 15
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %RBP.i164
  %4185 = sub i64 %4184, 36
  %4186 = load i64, i64* %PC.i162
  %4187 = add i64 %4186, 3
  store i64 %4187, i64* %PC.i162
  %4188 = inttoptr i64 %4185 to i32*
  %4189 = load i32, i32* %4188
  %4190 = zext i32 %4189 to i64
  store i64 %4190, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_41b4e9, %struct.Memory** %MEMORY
  %loadMem_41b4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 7
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 15
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RBP.i161
  %4201 = sub i64 %4200, 16
  %4202 = load i64, i64* %PC.i159
  %4203 = add i64 %4202, 4
  store i64 %4203, i64* %PC.i159
  %4204 = inttoptr i64 %4201 to i64*
  %4205 = load i64, i64* %4204
  store i64 %4205, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_41b4ec, %struct.Memory** %MEMORY
  %loadMem_41b4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 5
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 7
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %RCX.i157
  %4216 = load i64, i64* %RDX.i158
  %4217 = add i64 %4216, 8
  %4218 = load i64, i64* %PC.i156
  %4219 = add i64 %4218, 3
  store i64 %4219, i64* %PC.i156
  %4220 = trunc i64 %4215 to i32
  %4221 = inttoptr i64 %4217 to i32*
  %4222 = load i32, i32* %4221
  %4223 = sub i32 %4220, %4222
  %4224 = zext i32 %4223 to i64
  store i64 %4224, i64* %RCX.i157, align 8
  %4225 = icmp ult i32 %4220, %4222
  %4226 = zext i1 %4225 to i8
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4226, i8* %4227, align 1
  %4228 = and i32 %4223, 255
  %4229 = call i32 @llvm.ctpop.i32(i32 %4228)
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  %4232 = xor i8 %4231, 1
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4232, i8* %4233, align 1
  %4234 = xor i32 %4222, %4220
  %4235 = xor i32 %4234, %4223
  %4236 = lshr i32 %4235, 4
  %4237 = trunc i32 %4236 to i8
  %4238 = and i8 %4237, 1
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4238, i8* %4239, align 1
  %4240 = icmp eq i32 %4223, 0
  %4241 = zext i1 %4240 to i8
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4241, i8* %4242, align 1
  %4243 = lshr i32 %4223, 31
  %4244 = trunc i32 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4244, i8* %4245, align 1
  %4246 = lshr i32 %4220, 31
  %4247 = lshr i32 %4222, 31
  %4248 = xor i32 %4247, %4246
  %4249 = xor i32 %4243, %4246
  %4250 = add i32 %4249, %4248
  %4251 = icmp eq i32 %4250, 2
  %4252 = zext i1 %4251 to i8
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4252, i8* %4253, align 1
  store %struct.Memory* %loadMem_41b4f0, %struct.Memory** %MEMORY
  %loadMem_41b4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 5
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %ECX.i154 = bitcast %union.anon* %4259 to i32*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 7
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %4262 to i64*
  %4263 = load i32, i32* %ECX.i154
  %4264 = zext i32 %4263 to i64
  %4265 = load i64, i64* %PC.i153
  %4266 = add i64 %4265, 3
  store i64 %4266, i64* %PC.i153
  %4267 = shl i64 %4264, 32
  %4268 = ashr exact i64 %4267, 32
  store i64 %4268, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_41b4f3, %struct.Memory** %MEMORY
  %loadMem_41b4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 1
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 7
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RDX.i152 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %RAX.i151
  %4279 = load i64, i64* %RDX.i152
  %4280 = mul i64 %4279, 4
  %4281 = add i64 %4280, %4278
  %4282 = load i64, i64* %PC.i150
  %4283 = add i64 %4282, 4
  store i64 %4283, i64* %PC.i150
  %4284 = inttoptr i64 %4281 to i32*
  %4285 = load i32, i32* %4284
  %4286 = sub i32 %4285, 5
  %4287 = icmp ult i32 %4285, 5
  %4288 = zext i1 %4287 to i8
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4288, i8* %4289, align 1
  %4290 = and i32 %4286, 255
  %4291 = call i32 @llvm.ctpop.i32(i32 %4290)
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  %4294 = xor i8 %4293, 1
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4294, i8* %4295, align 1
  %4296 = xor i32 %4285, 5
  %4297 = xor i32 %4296, %4286
  %4298 = lshr i32 %4297, 4
  %4299 = trunc i32 %4298 to i8
  %4300 = and i8 %4299, 1
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4300, i8* %4301, align 1
  %4302 = icmp eq i32 %4286, 0
  %4303 = zext i1 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4303, i8* %4304, align 1
  %4305 = lshr i32 %4286, 31
  %4306 = trunc i32 %4305 to i8
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4306, i8* %4307, align 1
  %4308 = lshr i32 %4285, 31
  %4309 = xor i32 %4305, %4308
  %4310 = add i32 %4309, %4308
  %4311 = icmp eq i32 %4310, 2
  %4312 = zext i1 %4311 to i8
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4312, i8* %4313, align 1
  store %struct.Memory* %loadMem_41b4f6, %struct.Memory** %MEMORY
  %loadMem_41b4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4316 to i64*
  %4317 = load i64, i64* %PC.i149
  %4318 = add i64 %4317, 121
  %4319 = load i64, i64* %PC.i149
  %4320 = add i64 %4319, 6
  %4321 = load i64, i64* %PC.i149
  %4322 = add i64 %4321, 6
  store i64 %4322, i64* %PC.i149
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4324 = load i8, i8* %4323, align 1
  %4325 = icmp ne i8 %4324, 0
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4327 = load i8, i8* %4326, align 1
  %4328 = icmp ne i8 %4327, 0
  %4329 = xor i1 %4325, %4328
  %4330 = zext i1 %4329 to i8
  store i8 %4330, i8* %BRANCH_TAKEN, align 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4332 = select i1 %4329, i64 %4318, i64 %4320
  store i64 %4332, i64* %4331, align 8
  store %struct.Memory* %loadMem_41b4fa, %struct.Memory** %MEMORY
  %loadBr_41b4fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b4fa = icmp eq i8 %loadBr_41b4fa, 1
  br i1 %cmpBr_41b4fa, label %block_.L_41b573, label %block_41b500

block_41b500:                                     ; preds = %block_41b4e2
  %loadMem_41b500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 1
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 15
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %RBP.i148
  %4343 = sub i64 %4342, 16
  %4344 = load i64, i64* %PC.i146
  %4345 = add i64 %4344, 4
  store i64 %4345, i64* %PC.i146
  %4346 = inttoptr i64 %4343 to i64*
  %4347 = load i64, i64* %4346
  store i64 %4347, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_41b500, %struct.Memory** %MEMORY
  %loadMem_41b504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %RAX.i145
  %4355 = load i64, i64* %PC.i144
  %4356 = add i64 %4355, 3
  store i64 %4356, i64* %PC.i144
  %4357 = inttoptr i64 %4354 to i64*
  %4358 = load i64, i64* %4357
  store i64 %4358, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_41b504, %struct.Memory** %MEMORY
  %loadMem_41b507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 5
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i143
  %4369 = sub i64 %4368, 36
  %4370 = load i64, i64* %PC.i141
  %4371 = add i64 %4370, 3
  store i64 %4371, i64* %PC.i141
  %4372 = inttoptr i64 %4369 to i32*
  %4373 = load i32, i32* %4372
  %4374 = zext i32 %4373 to i64
  store i64 %4374, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_41b507, %struct.Memory** %MEMORY
  %loadMem_41b50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 7
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 15
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RBP.i140
  %4385 = sub i64 %4384, 16
  %4386 = load i64, i64* %PC.i138
  %4387 = add i64 %4386, 4
  store i64 %4387, i64* %PC.i138
  %4388 = inttoptr i64 %4385 to i64*
  %4389 = load i64, i64* %4388
  store i64 %4389, i64* %RDX.i139, align 8
  store %struct.Memory* %loadMem_41b50a, %struct.Memory** %MEMORY
  %loadMem_41b50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 5
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 7
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %4398 to i64*
  %4399 = load i64, i64* %RCX.i136
  %4400 = load i64, i64* %RDX.i137
  %4401 = add i64 %4400, 8
  %4402 = load i64, i64* %PC.i135
  %4403 = add i64 %4402, 3
  store i64 %4403, i64* %PC.i135
  %4404 = trunc i64 %4399 to i32
  %4405 = inttoptr i64 %4401 to i32*
  %4406 = load i32, i32* %4405
  %4407 = sub i32 %4404, %4406
  %4408 = zext i32 %4407 to i64
  store i64 %4408, i64* %RCX.i136, align 8
  %4409 = icmp ult i32 %4404, %4406
  %4410 = zext i1 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4410, i8* %4411, align 1
  %4412 = and i32 %4407, 255
  %4413 = call i32 @llvm.ctpop.i32(i32 %4412)
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  %4416 = xor i8 %4415, 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4416, i8* %4417, align 1
  %4418 = xor i32 %4406, %4404
  %4419 = xor i32 %4418, %4407
  %4420 = lshr i32 %4419, 4
  %4421 = trunc i32 %4420 to i8
  %4422 = and i8 %4421, 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4422, i8* %4423, align 1
  %4424 = icmp eq i32 %4407, 0
  %4425 = zext i1 %4424 to i8
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4425, i8* %4426, align 1
  %4427 = lshr i32 %4407, 31
  %4428 = trunc i32 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4428, i8* %4429, align 1
  %4430 = lshr i32 %4404, 31
  %4431 = lshr i32 %4406, 31
  %4432 = xor i32 %4431, %4430
  %4433 = xor i32 %4427, %4430
  %4434 = add i32 %4433, %4432
  %4435 = icmp eq i32 %4434, 2
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4436, i8* %4437, align 1
  store %struct.Memory* %loadMem_41b50e, %struct.Memory** %MEMORY
  %loadMem_41b511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 5
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %ECX.i133 = bitcast %union.anon* %4443 to i32*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 7
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %4446 to i64*
  %4447 = load i32, i32* %ECX.i133
  %4448 = zext i32 %4447 to i64
  %4449 = load i64, i64* %PC.i132
  %4450 = add i64 %4449, 3
  store i64 %4450, i64* %PC.i132
  %4451 = shl i64 %4448, 32
  %4452 = ashr exact i64 %4451, 32
  store i64 %4452, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_41b511, %struct.Memory** %MEMORY
  %loadMem_41b514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 33
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 1
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 7
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4462, i64 0, i64 0
  %YMM0.i131 = bitcast %union.VectorReg* %4463 to %"class.std::bitset"*
  %4464 = bitcast %"class.std::bitset"* %YMM0.i131 to i8*
  %4465 = load i64, i64* %RAX.i129
  %4466 = load i64, i64* %RDX.i130
  %4467 = mul i64 %4466, 4
  %4468 = add i64 %4467, %4465
  %4469 = load i64, i64* %PC.i128
  %4470 = add i64 %4469, 5
  store i64 %4470, i64* %PC.i128
  %4471 = bitcast i8* %4464 to <2 x i32>*
  %4472 = load <2 x i32>, <2 x i32>* %4471, align 1
  %4473 = getelementptr inbounds i8, i8* %4464, i64 8
  %4474 = bitcast i8* %4473 to <2 x i32>*
  %4475 = load <2 x i32>, <2 x i32>* %4474, align 1
  %4476 = inttoptr i64 %4468 to i32*
  %4477 = load i32, i32* %4476
  %4478 = sitofp i32 %4477 to float
  %4479 = bitcast i8* %4464 to float*
  store float %4478, float* %4479, align 1
  %4480 = extractelement <2 x i32> %4472, i32 1
  %4481 = getelementptr inbounds i8, i8* %4464, i64 4
  %4482 = bitcast i8* %4481 to i32*
  store i32 %4480, i32* %4482, align 1
  %4483 = extractelement <2 x i32> %4475, i32 0
  %4484 = bitcast i8* %4473 to i32*
  store i32 %4483, i32* %4484, align 1
  %4485 = extractelement <2 x i32> %4475, i32 1
  %4486 = getelementptr inbounds i8, i8* %4464, i64 12
  %4487 = bitcast i8* %4486 to i32*
  store i32 %4485, i32* %4487, align 1
  store %struct.Memory* %loadMem_41b514, %struct.Memory** %MEMORY
  %loadMem_41b519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 33
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 1
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 15
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %4496 to i64*
  %4497 = load i64, i64* %RBP.i127
  %4498 = sub i64 %4497, 16
  %4499 = load i64, i64* %PC.i125
  %4500 = add i64 %4499, 4
  store i64 %4500, i64* %PC.i125
  %4501 = inttoptr i64 %4498 to i64*
  %4502 = load i64, i64* %4501
  store i64 %4502, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_41b519, %struct.Memory** %MEMORY
  %loadMem_41b51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 1
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %4508 to i64*
  %4509 = load i64, i64* %RAX.i124
  %4510 = add i64 %4509, 32
  %4511 = load i64, i64* %PC.i123
  %4512 = add i64 %4511, 4
  store i64 %4512, i64* %PC.i123
  %4513 = inttoptr i64 %4510 to i64*
  %4514 = load i64, i64* %4513
  store i64 %4514, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_41b51d, %struct.Memory** %MEMORY
  %loadMem_41b521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 33
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4517 to i64*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 5
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 15
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %4523 to i64*
  %4524 = load i64, i64* %RBP.i122
  %4525 = sub i64 %4524, 36
  %4526 = load i64, i64* %PC.i120
  %4527 = add i64 %4526, 3
  store i64 %4527, i64* %PC.i120
  %4528 = inttoptr i64 %4525 to i32*
  %4529 = load i32, i32* %4528
  %4530 = zext i32 %4529 to i64
  store i64 %4530, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_41b521, %struct.Memory** %MEMORY
  %loadMem_41b524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 7
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 15
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4539 to i64*
  %4540 = load i64, i64* %RBP.i119
  %4541 = sub i64 %4540, 16
  %4542 = load i64, i64* %PC.i117
  %4543 = add i64 %4542, 4
  store i64 %4543, i64* %PC.i117
  %4544 = inttoptr i64 %4541 to i64*
  %4545 = load i64, i64* %4544
  store i64 %4545, i64* %RDX.i118, align 8
  store %struct.Memory* %loadMem_41b524, %struct.Memory** %MEMORY
  %loadMem_41b528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 5
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 7
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RCX.i115
  %4556 = load i64, i64* %RDX.i116
  %4557 = add i64 %4556, 8
  %4558 = load i64, i64* %PC.i114
  %4559 = add i64 %4558, 3
  store i64 %4559, i64* %PC.i114
  %4560 = trunc i64 %4555 to i32
  %4561 = inttoptr i64 %4557 to i32*
  %4562 = load i32, i32* %4561
  %4563 = sub i32 %4560, %4562
  %4564 = zext i32 %4563 to i64
  store i64 %4564, i64* %RCX.i115, align 8
  %4565 = icmp ult i32 %4560, %4562
  %4566 = zext i1 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4566, i8* %4567, align 1
  %4568 = and i32 %4563, 255
  %4569 = call i32 @llvm.ctpop.i32(i32 %4568)
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = xor i8 %4571, 1
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4572, i8* %4573, align 1
  %4574 = xor i32 %4562, %4560
  %4575 = xor i32 %4574, %4563
  %4576 = lshr i32 %4575, 4
  %4577 = trunc i32 %4576 to i8
  %4578 = and i8 %4577, 1
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4578, i8* %4579, align 1
  %4580 = icmp eq i32 %4563, 0
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4581, i8* %4582, align 1
  %4583 = lshr i32 %4563, 31
  %4584 = trunc i32 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4584, i8* %4585, align 1
  %4586 = lshr i32 %4560, 31
  %4587 = lshr i32 %4562, 31
  %4588 = xor i32 %4587, %4586
  %4589 = xor i32 %4583, %4586
  %4590 = add i32 %4589, %4588
  %4591 = icmp eq i32 %4590, 2
  %4592 = zext i1 %4591 to i8
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4592, i8* %4593, align 1
  store %struct.Memory* %loadMem_41b528, %struct.Memory** %MEMORY
  %loadMem_41b52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 33
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4596 to i64*
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 5
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %ECX.i112 = bitcast %union.anon* %4599 to i32*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 7
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %4602 to i64*
  %4603 = load i32, i32* %ECX.i112
  %4604 = zext i32 %4603 to i64
  %4605 = load i64, i64* %PC.i111
  %4606 = add i64 %4605, 3
  store i64 %4606, i64* %PC.i111
  %4607 = shl i64 %4604, 32
  %4608 = ashr exact i64 %4607, 32
  store i64 %4608, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_41b52b, %struct.Memory** %MEMORY
  %loadMem_41b52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 33
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 1
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4614 to i64*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 7
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4619 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4618, i64 0, i64 0
  %YMM0.i110 = bitcast %union.VectorReg* %4619 to %"class.std::bitset"*
  %4620 = bitcast %"class.std::bitset"* %YMM0.i110 to i8*
  %4621 = bitcast %"class.std::bitset"* %YMM0.i110 to i8*
  %4622 = load i64, i64* %RAX.i108
  %4623 = load i64, i64* %RDX.i109
  %4624 = mul i64 %4623, 4
  %4625 = add i64 %4624, %4622
  %4626 = load i64, i64* %PC.i107
  %4627 = add i64 %4626, 5
  store i64 %4627, i64* %PC.i107
  %4628 = bitcast i8* %4621 to <2 x float>*
  %4629 = load <2 x float>, <2 x float>* %4628, align 1
  %4630 = getelementptr inbounds i8, i8* %4621, i64 8
  %4631 = bitcast i8* %4630 to <2 x i32>*
  %4632 = load <2 x i32>, <2 x i32>* %4631, align 1
  %4633 = inttoptr i64 %4625 to float*
  %4634 = load float, float* %4633
  %4635 = extractelement <2 x float> %4629, i32 0
  %4636 = fsub float %4635, %4634
  %4637 = bitcast i8* %4620 to float*
  store float %4636, float* %4637, align 1
  %4638 = bitcast <2 x float> %4629 to <2 x i32>
  %4639 = extractelement <2 x i32> %4638, i32 1
  %4640 = getelementptr inbounds i8, i8* %4620, i64 4
  %4641 = bitcast i8* %4640 to i32*
  store i32 %4639, i32* %4641, align 1
  %4642 = extractelement <2 x i32> %4632, i32 0
  %4643 = getelementptr inbounds i8, i8* %4620, i64 8
  %4644 = bitcast i8* %4643 to i32*
  store i32 %4642, i32* %4644, align 1
  %4645 = extractelement <2 x i32> %4632, i32 1
  %4646 = getelementptr inbounds i8, i8* %4620, i64 12
  %4647 = bitcast i8* %4646 to i32*
  store i32 %4645, i32* %4647, align 1
  store %struct.Memory* %loadMem_41b52e, %struct.Memory** %MEMORY
  %loadMem_41b533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 33
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 15
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4654, i64 0, i64 0
  %XMM0.i106 = bitcast %union.VectorReg* %4655 to %union.vec128_t*
  %4656 = load i64, i64* %RBP.i105
  %4657 = sub i64 %4656, 32
  %4658 = bitcast %union.vec128_t* %XMM0.i106 to i8*
  %4659 = load i64, i64* %PC.i104
  %4660 = add i64 %4659, 5
  store i64 %4660, i64* %PC.i104
  %4661 = bitcast i8* %4658 to <2 x float>*
  %4662 = load <2 x float>, <2 x float>* %4661, align 1
  %4663 = extractelement <2 x float> %4662, i32 0
  %4664 = inttoptr i64 %4657 to float*
  store float %4663, float* %4664
  store %struct.Memory* %loadMem_41b533, %struct.Memory** %MEMORY
  %loadMem_41b538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 33
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 15
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4670 to i64*
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4671, i64 0, i64 0
  %YMM0.i103 = bitcast %union.VectorReg* %4672 to %"class.std::bitset"*
  %4673 = bitcast %"class.std::bitset"* %YMM0.i103 to i8*
  %4674 = load i64, i64* %RBP.i102
  %4675 = sub i64 %4674, 32
  %4676 = load i64, i64* %PC.i101
  %4677 = add i64 %4676, 5
  store i64 %4677, i64* %PC.i101
  %4678 = inttoptr i64 %4675 to float*
  %4679 = load float, float* %4678
  %4680 = bitcast i8* %4673 to float*
  store float %4679, float* %4680, align 1
  %4681 = getelementptr inbounds i8, i8* %4673, i64 4
  %4682 = bitcast i8* %4681 to float*
  store float 0.000000e+00, float* %4682, align 1
  %4683 = getelementptr inbounds i8, i8* %4673, i64 8
  %4684 = bitcast i8* %4683 to float*
  store float 0.000000e+00, float* %4684, align 1
  %4685 = getelementptr inbounds i8, i8* %4673, i64 12
  %4686 = bitcast i8* %4685 to float*
  store float 0.000000e+00, float* %4686, align 1
  store %struct.Memory* %loadMem_41b538, %struct.Memory** %MEMORY
  %loadMem_41b53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 15
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4693, i64 0, i64 0
  %YMM0.i100 = bitcast %union.VectorReg* %4694 to %"class.std::bitset"*
  %4695 = bitcast %"class.std::bitset"* %YMM0.i100 to i8*
  %4696 = bitcast %"class.std::bitset"* %YMM0.i100 to i8*
  %4697 = load i64, i64* %RBP.i99
  %4698 = sub i64 %4697, 32
  %4699 = load i64, i64* %PC.i98
  %4700 = add i64 %4699, 5
  store i64 %4700, i64* %PC.i98
  %4701 = bitcast i8* %4696 to <2 x float>*
  %4702 = load <2 x float>, <2 x float>* %4701, align 1
  %4703 = getelementptr inbounds i8, i8* %4696, i64 8
  %4704 = bitcast i8* %4703 to <2 x i32>*
  %4705 = load <2 x i32>, <2 x i32>* %4704, align 1
  %4706 = inttoptr i64 %4698 to float*
  %4707 = load float, float* %4706
  %4708 = extractelement <2 x float> %4702, i32 0
  %4709 = fmul float %4708, %4707
  %4710 = bitcast i8* %4695 to float*
  store float %4709, float* %4710, align 1
  %4711 = bitcast <2 x float> %4702 to <2 x i32>
  %4712 = extractelement <2 x i32> %4711, i32 1
  %4713 = getelementptr inbounds i8, i8* %4695, i64 4
  %4714 = bitcast i8* %4713 to i32*
  store i32 %4712, i32* %4714, align 1
  %4715 = extractelement <2 x i32> %4705, i32 0
  %4716 = getelementptr inbounds i8, i8* %4695, i64 8
  %4717 = bitcast i8* %4716 to i32*
  store i32 %4715, i32* %4717, align 1
  %4718 = extractelement <2 x i32> %4705, i32 1
  %4719 = getelementptr inbounds i8, i8* %4695, i64 12
  %4720 = bitcast i8* %4719 to i32*
  store i32 %4718, i32* %4720, align 1
  store %struct.Memory* %loadMem_41b53d, %struct.Memory** %MEMORY
  %loadMem_41b542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 33
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 1
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 15
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %4729 to i64*
  %4730 = load i64, i64* %RBP.i97
  %4731 = sub i64 %4730, 16
  %4732 = load i64, i64* %PC.i95
  %4733 = add i64 %4732, 4
  store i64 %4733, i64* %PC.i95
  %4734 = inttoptr i64 %4731 to i64*
  %4735 = load i64, i64* %4734
  store i64 %4735, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_41b542, %struct.Memory** %MEMORY
  %loadMem_41b546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 33
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4738 to i64*
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 1
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %4741 to i64*
  %4742 = load i64, i64* %RAX.i94
  %4743 = add i64 %4742, 32
  %4744 = load i64, i64* %PC.i93
  %4745 = add i64 %4744, 4
  store i64 %4745, i64* %PC.i93
  %4746 = inttoptr i64 %4743 to i64*
  %4747 = load i64, i64* %4746
  store i64 %4747, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_41b546, %struct.Memory** %MEMORY
  %loadMem_41b54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 33
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4750 to i64*
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 5
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 15
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %RBP.i92
  %4758 = sub i64 %4757, 36
  %4759 = load i64, i64* %PC.i90
  %4760 = add i64 %4759, 3
  store i64 %4760, i64* %PC.i90
  %4761 = inttoptr i64 %4758 to i32*
  %4762 = load i32, i32* %4761
  %4763 = zext i32 %4762 to i64
  store i64 %4763, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_41b54a, %struct.Memory** %MEMORY
  %loadMem_41b54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 7
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 15
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4772 to i64*
  %4773 = load i64, i64* %RBP.i89
  %4774 = sub i64 %4773, 16
  %4775 = load i64, i64* %PC.i87
  %4776 = add i64 %4775, 4
  store i64 %4776, i64* %PC.i87
  %4777 = inttoptr i64 %4774 to i64*
  %4778 = load i64, i64* %4777
  store i64 %4778, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_41b54d, %struct.Memory** %MEMORY
  %loadMem_41b551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 33
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 5
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 7
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %4787 to i64*
  %4788 = load i64, i64* %RCX.i85
  %4789 = load i64, i64* %RDX.i86
  %4790 = add i64 %4789, 8
  %4791 = load i64, i64* %PC.i84
  %4792 = add i64 %4791, 3
  store i64 %4792, i64* %PC.i84
  %4793 = trunc i64 %4788 to i32
  %4794 = inttoptr i64 %4790 to i32*
  %4795 = load i32, i32* %4794
  %4796 = sub i32 %4793, %4795
  %4797 = zext i32 %4796 to i64
  store i64 %4797, i64* %RCX.i85, align 8
  %4798 = icmp ult i32 %4793, %4795
  %4799 = zext i1 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4799, i8* %4800, align 1
  %4801 = and i32 %4796, 255
  %4802 = call i32 @llvm.ctpop.i32(i32 %4801)
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4805, i8* %4806, align 1
  %4807 = xor i32 %4795, %4793
  %4808 = xor i32 %4807, %4796
  %4809 = lshr i32 %4808, 4
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4811, i8* %4812, align 1
  %4813 = icmp eq i32 %4796, 0
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4814, i8* %4815, align 1
  %4816 = lshr i32 %4796, 31
  %4817 = trunc i32 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4817, i8* %4818, align 1
  %4819 = lshr i32 %4793, 31
  %4820 = lshr i32 %4795, 31
  %4821 = xor i32 %4820, %4819
  %4822 = xor i32 %4816, %4819
  %4823 = add i32 %4822, %4821
  %4824 = icmp eq i32 %4823, 2
  %4825 = zext i1 %4824 to i8
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4825, i8* %4826, align 1
  store %struct.Memory* %loadMem_41b551, %struct.Memory** %MEMORY
  %loadMem_41b554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 33
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4829 to i64*
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 5
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %ECX.i82 = bitcast %union.anon* %4832 to i32*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 7
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %4835 to i64*
  %4836 = load i32, i32* %ECX.i82
  %4837 = zext i32 %4836 to i64
  %4838 = load i64, i64* %PC.i81
  %4839 = add i64 %4838, 3
  store i64 %4839, i64* %PC.i81
  %4840 = shl i64 %4837, 32
  %4841 = ashr exact i64 %4840, 32
  store i64 %4841, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_41b554, %struct.Memory** %MEMORY
  %loadMem_41b557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 1
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 7
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4851, i64 0, i64 0
  %YMM0.i80 = bitcast %union.VectorReg* %4852 to %"class.std::bitset"*
  %4853 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %4854 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %4855 = load i64, i64* %RAX.i79
  %4856 = load i64, i64* %RDX.i
  %4857 = mul i64 %4856, 4
  %4858 = add i64 %4857, %4855
  %4859 = load i64, i64* %PC.i78
  %4860 = add i64 %4859, 5
  store i64 %4860, i64* %PC.i78
  %4861 = bitcast i8* %4854 to <2 x float>*
  %4862 = load <2 x float>, <2 x float>* %4861, align 1
  %4863 = getelementptr inbounds i8, i8* %4854, i64 8
  %4864 = bitcast i8* %4863 to <2 x i32>*
  %4865 = load <2 x i32>, <2 x i32>* %4864, align 1
  %4866 = inttoptr i64 %4858 to float*
  %4867 = load float, float* %4866
  %4868 = extractelement <2 x float> %4862, i32 0
  %4869 = fdiv float %4868, %4867
  %4870 = bitcast i8* %4853 to float*
  store float %4869, float* %4870, align 1
  %4871 = bitcast <2 x float> %4862 to <2 x i32>
  %4872 = extractelement <2 x i32> %4871, i32 1
  %4873 = getelementptr inbounds i8, i8* %4853, i64 4
  %4874 = bitcast i8* %4873 to i32*
  store i32 %4872, i32* %4874, align 1
  %4875 = extractelement <2 x i32> %4865, i32 0
  %4876 = getelementptr inbounds i8, i8* %4853, i64 8
  %4877 = bitcast i8* %4876 to i32*
  store i32 %4875, i32* %4877, align 1
  %4878 = extractelement <2 x i32> %4865, i32 1
  %4879 = getelementptr inbounds i8, i8* %4853, i64 12
  %4880 = bitcast i8* %4879 to i32*
  store i32 %4878, i32* %4880, align 1
  store %struct.Memory* %loadMem_41b557, %struct.Memory** %MEMORY
  %loadMem_41b55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 33
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 1
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 15
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %4889 to i64*
  %4890 = load i64, i64* %RBP.i77
  %4891 = sub i64 %4890, 16
  %4892 = load i64, i64* %PC.i75
  %4893 = add i64 %4892, 4
  store i64 %4893, i64* %PC.i75
  %4894 = inttoptr i64 %4891 to i64*
  %4895 = load i64, i64* %4894
  store i64 %4895, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_41b55c, %struct.Memory** %MEMORY
  %loadMem_41b560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 33
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 1
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4901 to i64*
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4902, i64 0, i64 0
  %YMM0.i74 = bitcast %union.VectorReg* %4903 to %"class.std::bitset"*
  %4904 = bitcast %"class.std::bitset"* %YMM0.i74 to i8*
  %4905 = bitcast %"class.std::bitset"* %YMM0.i74 to i8*
  %4906 = load i64, i64* %RAX.i73
  %4907 = add i64 %4906, 56
  %4908 = load i64, i64* %PC.i72
  %4909 = add i64 %4908, 5
  store i64 %4909, i64* %PC.i72
  %4910 = bitcast i8* %4905 to <2 x float>*
  %4911 = load <2 x float>, <2 x float>* %4910, align 1
  %4912 = getelementptr inbounds i8, i8* %4905, i64 8
  %4913 = bitcast i8* %4912 to <2 x i32>*
  %4914 = load <2 x i32>, <2 x i32>* %4913, align 1
  %4915 = inttoptr i64 %4907 to float*
  %4916 = load float, float* %4915
  %4917 = extractelement <2 x float> %4911, i32 0
  %4918 = fadd float %4917, %4916
  %4919 = bitcast i8* %4904 to float*
  store float %4918, float* %4919, align 1
  %4920 = bitcast <2 x float> %4911 to <2 x i32>
  %4921 = extractelement <2 x i32> %4920, i32 1
  %4922 = getelementptr inbounds i8, i8* %4904, i64 4
  %4923 = bitcast i8* %4922 to i32*
  store i32 %4921, i32* %4923, align 1
  %4924 = extractelement <2 x i32> %4914, i32 0
  %4925 = getelementptr inbounds i8, i8* %4904, i64 8
  %4926 = bitcast i8* %4925 to i32*
  store i32 %4924, i32* %4926, align 1
  %4927 = extractelement <2 x i32> %4914, i32 1
  %4928 = getelementptr inbounds i8, i8* %4904, i64 12
  %4929 = bitcast i8* %4928 to i32*
  store i32 %4927, i32* %4929, align 1
  store %struct.Memory* %loadMem_41b560, %struct.Memory** %MEMORY
  %loadMem_41b565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 33
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 1
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4936, i64 0, i64 0
  %XMM0.i71 = bitcast %union.VectorReg* %4937 to %union.vec128_t*
  %4938 = load i64, i64* %RAX.i70
  %4939 = add i64 %4938, 56
  %4940 = bitcast %union.vec128_t* %XMM0.i71 to i8*
  %4941 = load i64, i64* %PC.i69
  %4942 = add i64 %4941, 5
  store i64 %4942, i64* %PC.i69
  %4943 = bitcast i8* %4940 to <2 x float>*
  %4944 = load <2 x float>, <2 x float>* %4943, align 1
  %4945 = extractelement <2 x float> %4944, i32 0
  %4946 = inttoptr i64 %4939 to float*
  store float %4945, float* %4946
  store %struct.Memory* %loadMem_41b565, %struct.Memory** %MEMORY
  %loadMem_41b56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 33
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 5
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4952 to i64*
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 15
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4955 to i64*
  %4956 = load i64, i64* %RBP.i68
  %4957 = sub i64 %4956, 40
  %4958 = load i64, i64* %PC.i66
  %4959 = add i64 %4958, 3
  store i64 %4959, i64* %PC.i66
  %4960 = inttoptr i64 %4957 to i32*
  %4961 = load i32, i32* %4960
  %4962 = zext i32 %4961 to i64
  store i64 %4962, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_41b56a, %struct.Memory** %MEMORY
  %loadMem_41b56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 5
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %RCX.i65
  %4970 = load i64, i64* %PC.i64
  %4971 = add i64 %4970, 3
  store i64 %4971, i64* %PC.i64
  %4972 = trunc i64 %4969 to i32
  %4973 = add i32 1, %4972
  %4974 = zext i32 %4973 to i64
  store i64 %4974, i64* %RCX.i65, align 8
  %4975 = icmp ult i32 %4973, %4972
  %4976 = icmp ult i32 %4973, 1
  %4977 = or i1 %4975, %4976
  %4978 = zext i1 %4977 to i8
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4978, i8* %4979, align 1
  %4980 = and i32 %4973, 255
  %4981 = call i32 @llvm.ctpop.i32(i32 %4980)
  %4982 = trunc i32 %4981 to i8
  %4983 = and i8 %4982, 1
  %4984 = xor i8 %4983, 1
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4984, i8* %4985, align 1
  %4986 = xor i64 1, %4969
  %4987 = trunc i64 %4986 to i32
  %4988 = xor i32 %4987, %4973
  %4989 = lshr i32 %4988, 4
  %4990 = trunc i32 %4989 to i8
  %4991 = and i8 %4990, 1
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4991, i8* %4992, align 1
  %4993 = icmp eq i32 %4973, 0
  %4994 = zext i1 %4993 to i8
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4994, i8* %4995, align 1
  %4996 = lshr i32 %4973, 31
  %4997 = trunc i32 %4996 to i8
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4997, i8* %4998, align 1
  %4999 = lshr i32 %4972, 31
  %5000 = xor i32 %4996, %4999
  %5001 = add i32 %5000, %4996
  %5002 = icmp eq i32 %5001, 2
  %5003 = zext i1 %5002 to i8
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5003, i8* %5004, align 1
  store %struct.Memory* %loadMem_41b56d, %struct.Memory** %MEMORY
  %loadMem_41b570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 33
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 5
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5010 to i32*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 15
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %5013 to i64*
  %5014 = load i64, i64* %RBP.i63
  %5015 = sub i64 %5014, 40
  %5016 = load i32, i32* %ECX.i
  %5017 = zext i32 %5016 to i64
  %5018 = load i64, i64* %PC.i62
  %5019 = add i64 %5018, 3
  store i64 %5019, i64* %PC.i62
  %5020 = inttoptr i64 %5015 to i32*
  store i32 %5016, i32* %5020
  store %struct.Memory* %loadMem_41b570, %struct.Memory** %MEMORY
  br label %block_.L_41b573

block_.L_41b573:                                  ; preds = %block_41b500, %block_41b4e2, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41b573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 33
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5023 to i64*
  %5024 = load i64, i64* %PC.i61
  %5025 = add i64 %5024, 5
  %5026 = load i64, i64* %PC.i61
  %5027 = add i64 %5026, 5
  store i64 %5027, i64* %PC.i61
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5025, i64* %5028, align 8
  store %struct.Memory* %loadMem_41b573, %struct.Memory** %MEMORY
  br label %block_.L_41b578

block_.L_41b578:                                  ; preds = %block_.L_41b573
  %loadMem_41b578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 1
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 15
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %RBP.i60
  %5039 = sub i64 %5038, 36
  %5040 = load i64, i64* %PC.i58
  %5041 = add i64 %5040, 3
  store i64 %5041, i64* %PC.i58
  %5042 = inttoptr i64 %5039 to i32*
  %5043 = load i32, i32* %5042
  %5044 = zext i32 %5043 to i64
  store i64 %5044, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_41b578, %struct.Memory** %MEMORY
  %loadMem_41b57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 1
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %5050 to i64*
  %5051 = load i64, i64* %RAX.i57
  %5052 = load i64, i64* %PC.i56
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC.i56
  %5054 = trunc i64 %5051 to i32
  %5055 = add i32 1, %5054
  %5056 = zext i32 %5055 to i64
  store i64 %5056, i64* %RAX.i57, align 8
  %5057 = icmp ult i32 %5055, %5054
  %5058 = icmp ult i32 %5055, 1
  %5059 = or i1 %5057, %5058
  %5060 = zext i1 %5059 to i8
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5060, i8* %5061, align 1
  %5062 = and i32 %5055, 255
  %5063 = call i32 @llvm.ctpop.i32(i32 %5062)
  %5064 = trunc i32 %5063 to i8
  %5065 = and i8 %5064, 1
  %5066 = xor i8 %5065, 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5066, i8* %5067, align 1
  %5068 = xor i64 1, %5051
  %5069 = trunc i64 %5068 to i32
  %5070 = xor i32 %5069, %5055
  %5071 = lshr i32 %5070, 4
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5073, i8* %5074, align 1
  %5075 = icmp eq i32 %5055, 0
  %5076 = zext i1 %5075 to i8
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5076, i8* %5077, align 1
  %5078 = lshr i32 %5055, 31
  %5079 = trunc i32 %5078 to i8
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5079, i8* %5080, align 1
  %5081 = lshr i32 %5054, 31
  %5082 = xor i32 %5078, %5081
  %5083 = add i32 %5082, %5078
  %5084 = icmp eq i32 %5083, 2
  %5085 = zext i1 %5084 to i8
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5085, i8* %5086, align 1
  store %struct.Memory* %loadMem_41b57b, %struct.Memory** %MEMORY
  %loadMem_41b57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 1
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %5092 to i32*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 15
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RBP.i55
  %5097 = sub i64 %5096, 36
  %5098 = load i32, i32* %EAX.i54
  %5099 = zext i32 %5098 to i64
  %5100 = load i64, i64* %PC.i53
  %5101 = add i64 %5100, 3
  store i64 %5101, i64* %PC.i53
  %5102 = inttoptr i64 %5097 to i32*
  store i32 %5098, i32* %5102
  store %struct.Memory* %loadMem_41b57e, %struct.Memory** %MEMORY
  %loadMem_41b581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %PC.i52
  %5107 = add i64 %5106, -219
  %5108 = load i64, i64* %PC.i52
  %5109 = add i64 %5108, 5
  store i64 %5109, i64* %PC.i52
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5107, i64* %5110, align 8
  store %struct.Memory* %loadMem_41b581, %struct.Memory** %MEMORY
  br label %block_.L_41b4a6

block_.L_41b586:                                  ; preds = %block_.L_41b4a6
  %loadMem_41b586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 15
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5116 to i64*
  %5117 = load i64, i64* %RBP.i51
  %5118 = sub i64 %5117, 40
  %5119 = load i64, i64* %PC.i50
  %5120 = add i64 %5119, 4
  store i64 %5120, i64* %PC.i50
  %5121 = inttoptr i64 %5118 to i32*
  %5122 = load i32, i32* %5121
  %5123 = sub i32 %5122, 3
  %5124 = icmp ult i32 %5122, 3
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
  %5133 = xor i32 %5122, 3
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
  store %struct.Memory* %loadMem_41b586, %struct.Memory** %MEMORY
  %loadMem_41b58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %PC.i49
  %5155 = add i64 %5154, 70
  %5156 = load i64, i64* %PC.i49
  %5157 = add i64 %5156, 6
  %5158 = load i64, i64* %PC.i49
  %5159 = add i64 %5158, 6
  store i64 %5159, i64* %PC.i49
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
  store %struct.Memory* %loadMem_41b58a, %struct.Memory** %MEMORY
  %loadBr_41b58a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b58a = icmp eq i8 %loadBr_41b58a, 1
  br i1 %cmpBr_41b58a, label %block_.L_41b5d0, label %block_41b590

block_41b590:                                     ; preds = %block_.L_41b586
  %loadMem_41b590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5176 to i64*
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5177, i64 0, i64 0
  %YMM0.i48 = bitcast %union.VectorReg* %5178 to %"class.std::bitset"*
  %5179 = bitcast %"class.std::bitset"* %YMM0.i48 to i8*
  %5180 = load i64, i64* %PC.i47
  %5181 = add i64 %5180, ptrtoint (%G_0x39250__rip__type* @G_0x39250__rip_ to i64)
  %5182 = load i64, i64* %PC.i47
  %5183 = add i64 %5182, 8
  store i64 %5183, i64* %PC.i47
  %5184 = inttoptr i64 %5181 to double*
  %5185 = load double, double* %5184
  %5186 = bitcast i8* %5179 to double*
  store double %5185, double* %5186, align 1
  %5187 = getelementptr inbounds i8, i8* %5179, i64 8
  %5188 = bitcast i8* %5187 to double*
  store double 0.000000e+00, double* %5188, align 1
  store %struct.Memory* %loadMem_41b590, %struct.Memory** %MEMORY
  %loadMem_41b598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 1
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 15
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RBP.i46
  %5199 = sub i64 %5198, 40
  %5200 = load i64, i64* %PC.i44
  %5201 = add i64 %5200, 3
  store i64 %5201, i64* %PC.i44
  %5202 = inttoptr i64 %5199 to i32*
  %5203 = load i32, i32* %5202
  %5204 = zext i32 %5203 to i64
  store i64 %5204, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_41b598, %struct.Memory** %MEMORY
  %loadMem_41b59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 33
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5207 to i64*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 1
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5210 to i64*
  %5211 = load i64, i64* %RAX.i43
  %5212 = load i64, i64* %PC.i42
  %5213 = add i64 %5212, 3
  store i64 %5213, i64* %PC.i42
  %5214 = trunc i64 %5211 to i32
  %5215 = sub i32 %5214, 3
  %5216 = zext i32 %5215 to i64
  store i64 %5216, i64* %RAX.i43, align 8
  %5217 = icmp ult i32 %5214, 3
  %5218 = zext i1 %5217 to i8
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5218, i8* %5219, align 1
  %5220 = and i32 %5215, 255
  %5221 = call i32 @llvm.ctpop.i32(i32 %5220)
  %5222 = trunc i32 %5221 to i8
  %5223 = and i8 %5222, 1
  %5224 = xor i8 %5223, 1
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5224, i8* %5225, align 1
  %5226 = xor i64 3, %5211
  %5227 = trunc i64 %5226 to i32
  %5228 = xor i32 %5227, %5215
  %5229 = lshr i32 %5228, 4
  %5230 = trunc i32 %5229 to i8
  %5231 = and i8 %5230, 1
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5231, i8* %5232, align 1
  %5233 = icmp eq i32 %5215, 0
  %5234 = zext i1 %5233 to i8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5234, i8* %5235, align 1
  %5236 = lshr i32 %5215, 31
  %5237 = trunc i32 %5236 to i8
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5237, i8* %5238, align 1
  %5239 = lshr i32 %5214, 31
  %5240 = xor i32 %5236, %5239
  %5241 = add i32 %5240, %5239
  %5242 = icmp eq i32 %5241, 2
  %5243 = zext i1 %5242 to i8
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5243, i8* %5244, align 1
  store %struct.Memory* %loadMem_41b59b, %struct.Memory** %MEMORY
  %loadMem_41b59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 33
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5247 to i64*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 1
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5250 to i32*
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5251, i64 0, i64 1
  %YMM1.i41 = bitcast %union.VectorReg* %5252 to %"class.std::bitset"*
  %5253 = bitcast %"class.std::bitset"* %YMM1.i41 to i8*
  %5254 = load i32, i32* %EAX.i
  %5255 = zext i32 %5254 to i64
  %5256 = load i64, i64* %PC.i40
  %5257 = add i64 %5256, 4
  store i64 %5257, i64* %PC.i40
  %5258 = sitofp i32 %5254 to double
  %5259 = bitcast i8* %5253 to double*
  store double %5258, double* %5259, align 1
  store %struct.Memory* %loadMem_41b59e, %struct.Memory** %MEMORY
  %loadMem_41b5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 33
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5262 to i64*
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5263, i64 0, i64 1
  %YMM1.i38 = bitcast %union.VectorReg* %5264 to %"class.std::bitset"*
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5265, i64 0, i64 0
  %XMM0.i39 = bitcast %union.VectorReg* %5266 to %union.vec128_t*
  %5267 = bitcast %"class.std::bitset"* %YMM1.i38 to i8*
  %5268 = bitcast %"class.std::bitset"* %YMM1.i38 to i8*
  %5269 = bitcast %union.vec128_t* %XMM0.i39 to i8*
  %5270 = load i64, i64* %PC.i37
  %5271 = add i64 %5270, 4
  store i64 %5271, i64* %PC.i37
  %5272 = bitcast i8* %5268 to double*
  %5273 = load double, double* %5272, align 1
  %5274 = getelementptr inbounds i8, i8* %5268, i64 8
  %5275 = bitcast i8* %5274 to i64*
  %5276 = load i64, i64* %5275, align 1
  %5277 = bitcast i8* %5269 to double*
  %5278 = load double, double* %5277, align 1
  %5279 = fdiv double %5273, %5278
  %5280 = bitcast i8* %5267 to double*
  store double %5279, double* %5280, align 1
  %5281 = getelementptr inbounds i8, i8* %5267, i64 8
  %5282 = bitcast i8* %5281 to i64*
  store i64 %5276, i64* %5282, align 1
  store %struct.Memory* %loadMem_41b5a2, %struct.Memory** %MEMORY
  %loadMem_41b5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 5
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 15
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RBP.i36
  %5293 = sub i64 %5292, 16
  %5294 = load i64, i64* %PC.i34
  %5295 = add i64 %5294, 4
  store i64 %5295, i64* %PC.i34
  %5296 = inttoptr i64 %5293 to i64*
  %5297 = load i64, i64* %5296
  store i64 %5297, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_41b5a6, %struct.Memory** %MEMORY
  %loadMem_41b5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 33
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5300 to i64*
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 5
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5304, i64 0, i64 2
  %YMM2.i33 = bitcast %union.VectorReg* %5305 to %"class.std::bitset"*
  %5306 = bitcast %"class.std::bitset"* %YMM2.i33 to i8*
  %5307 = load i64, i64* %RCX.i32
  %5308 = add i64 %5307, 56
  %5309 = load i64, i64* %PC.i31
  %5310 = add i64 %5309, 5
  store i64 %5310, i64* %PC.i31
  %5311 = inttoptr i64 %5308 to float*
  %5312 = load float, float* %5311
  %5313 = fpext float %5312 to double
  %5314 = bitcast i8* %5306 to double*
  store double %5313, double* %5314, align 1
  store %struct.Memory* %loadMem_41b5aa, %struct.Memory** %MEMORY
  %loadMem_41b5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5318, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %5319 to %"class.std::bitset"*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5320, i64 0, i64 0
  %XMM0.i30 = bitcast %union.VectorReg* %5321 to %union.vec128_t*
  %5322 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %5323 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %5324 = bitcast %union.vec128_t* %XMM0.i30 to i8*
  %5325 = load i64, i64* %PC.i29
  %5326 = add i64 %5325, 4
  store i64 %5326, i64* %PC.i29
  %5327 = bitcast i8* %5323 to double*
  %5328 = load double, double* %5327, align 1
  %5329 = getelementptr inbounds i8, i8* %5323, i64 8
  %5330 = bitcast i8* %5329 to i64*
  %5331 = load i64, i64* %5330, align 1
  %5332 = bitcast i8* %5324 to double*
  %5333 = load double, double* %5332, align 1
  %5334 = fdiv double %5328, %5333
  %5335 = bitcast i8* %5322 to double*
  store double %5334, double* %5335, align 1
  %5336 = getelementptr inbounds i8, i8* %5322, i64 8
  %5337 = bitcast i8* %5336 to i64*
  store i64 %5331, i64* %5337, align 1
  store %struct.Memory* %loadMem_41b5af, %struct.Memory** %MEMORY
  %loadMem_41b5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5341, i64 0, i64 0
  %YMM0.i28 = bitcast %union.VectorReg* %5342 to %"class.std::bitset"*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5343, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5344 to %union.vec128_t*
  %5345 = bitcast %"class.std::bitset"* %YMM0.i28 to i8*
  %5346 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5347 = load i64, i64* %PC.i27
  %5348 = add i64 %5347, 3
  store i64 %5348, i64* %PC.i27
  %5349 = bitcast i8* %5346 to <2 x i32>*
  %5350 = load <2 x i32>, <2 x i32>* %5349, align 1
  %5351 = getelementptr inbounds i8, i8* %5346, i64 8
  %5352 = bitcast i8* %5351 to <2 x i32>*
  %5353 = load <2 x i32>, <2 x i32>* %5352, align 1
  %5354 = extractelement <2 x i32> %5350, i32 0
  %5355 = bitcast i8* %5345 to i32*
  store i32 %5354, i32* %5355, align 1
  %5356 = extractelement <2 x i32> %5350, i32 1
  %5357 = getelementptr inbounds i8, i8* %5345, i64 4
  %5358 = bitcast i8* %5357 to i32*
  store i32 %5356, i32* %5358, align 1
  %5359 = extractelement <2 x i32> %5353, i32 0
  %5360 = getelementptr inbounds i8, i8* %5345, i64 8
  %5361 = bitcast i8* %5360 to i32*
  store i32 %5359, i32* %5361, align 1
  %5362 = extractelement <2 x i32> %5353, i32 1
  %5363 = getelementptr inbounds i8, i8* %5345, i64 12
  %5364 = bitcast i8* %5363 to i32*
  store i32 %5362, i32* %5364, align 1
  store %struct.Memory* %loadMem_41b5b3, %struct.Memory** %MEMORY
  %loadMem_41b5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5368, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5369 to %"class.std::bitset"*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5371 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5370, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %5371 to %union.vec128_t*
  %5372 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5373 = bitcast %union.vec128_t* %XMM2.i to i8*
  %5374 = load i64, i64* %PC.i26
  %5375 = add i64 %5374, 3
  store i64 %5375, i64* %PC.i26
  %5376 = bitcast i8* %5373 to <2 x i32>*
  %5377 = load <2 x i32>, <2 x i32>* %5376, align 1
  %5378 = getelementptr inbounds i8, i8* %5373, i64 8
  %5379 = bitcast i8* %5378 to <2 x i32>*
  %5380 = load <2 x i32>, <2 x i32>* %5379, align 1
  %5381 = extractelement <2 x i32> %5377, i32 0
  %5382 = bitcast i8* %5372 to i32*
  store i32 %5381, i32* %5382, align 1
  %5383 = extractelement <2 x i32> %5377, i32 1
  %5384 = getelementptr inbounds i8, i8* %5372, i64 4
  %5385 = bitcast i8* %5384 to i32*
  store i32 %5383, i32* %5385, align 1
  %5386 = extractelement <2 x i32> %5380, i32 0
  %5387 = getelementptr inbounds i8, i8* %5372, i64 8
  %5388 = bitcast i8* %5387 to i32*
  store i32 %5386, i32* %5388, align 1
  %5389 = extractelement <2 x i32> %5380, i32 1
  %5390 = getelementptr inbounds i8, i8* %5372, i64 12
  %5391 = bitcast i8* %5390 to i32*
  store i32 %5389, i32* %5391, align 1
  store %struct.Memory* %loadMem_41b5b6, %struct.Memory** %MEMORY
  %loadMem1_41b5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5394 to i64*
  %5395 = load i64, i64* %PC.i25
  %5396 = add i64 %5395, 170695
  %5397 = load i64, i64* %PC.i25
  %5398 = add i64 %5397, 5
  %5399 = load i64, i64* %PC.i25
  %5400 = add i64 %5399, 5
  store i64 %5400, i64* %PC.i25
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5402 = load i64, i64* %5401, align 8
  %5403 = add i64 %5402, -8
  %5404 = inttoptr i64 %5403 to i64*
  store i64 %5398, i64* %5404
  store i64 %5403, i64* %5401, align 8
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5396, i64* %5405, align 8
  store %struct.Memory* %loadMem1_41b5b9, %struct.Memory** %MEMORY
  %loadMem2_41b5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b5b9 = load i64, i64* %3
  %call2_41b5b9 = call %struct.Memory* @sub_445080.IncompleteGamma(%struct.State* %0, i64 %loadPC_41b5b9, %struct.Memory* %loadMem2_41b5b9)
  store %struct.Memory* %call2_41b5b9, %struct.Memory** %MEMORY
  %loadMem_41b5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 33
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5408 to i64*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5409, i64 0, i64 0
  %YMM0.i23 = bitcast %union.VectorReg* %5410 to %"class.std::bitset"*
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5411, i64 0, i64 0
  %XMM0.i24 = bitcast %union.VectorReg* %5412 to %union.vec128_t*
  %5413 = bitcast %"class.std::bitset"* %YMM0.i23 to i8*
  %5414 = bitcast %union.vec128_t* %XMM0.i24 to i8*
  %5415 = load i64, i64* %PC.i22
  %5416 = add i64 %5415, 4
  store i64 %5416, i64* %PC.i22
  %5417 = bitcast i8* %5413 to <2 x i32>*
  %5418 = load <2 x i32>, <2 x i32>* %5417, align 1
  %5419 = getelementptr inbounds i8, i8* %5413, i64 8
  %5420 = bitcast i8* %5419 to <2 x i32>*
  %5421 = load <2 x i32>, <2 x i32>* %5420, align 1
  %5422 = bitcast i8* %5414 to double*
  %5423 = load double, double* %5422, align 1
  %5424 = fptrunc double %5423 to float
  %5425 = bitcast i8* %5413 to float*
  store float %5424, float* %5425, align 1
  %5426 = extractelement <2 x i32> %5418, i32 1
  %5427 = getelementptr inbounds i8, i8* %5413, i64 4
  %5428 = bitcast i8* %5427 to i32*
  store i32 %5426, i32* %5428, align 1
  %5429 = extractelement <2 x i32> %5421, i32 0
  %5430 = bitcast i8* %5419 to i32*
  store i32 %5429, i32* %5430, align 1
  %5431 = extractelement <2 x i32> %5421, i32 1
  %5432 = getelementptr inbounds i8, i8* %5413, i64 12
  %5433 = bitcast i8* %5432 to i32*
  store i32 %5431, i32* %5433, align 1
  store %struct.Memory* %loadMem_41b5be, %struct.Memory** %MEMORY
  %loadMem_41b5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 33
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5436 to i64*
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 5
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 15
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5442 to i64*
  %5443 = load i64, i64* %RBP.i21
  %5444 = sub i64 %5443, 16
  %5445 = load i64, i64* %PC.i19
  %5446 = add i64 %5445, 4
  store i64 %5446, i64* %PC.i19
  %5447 = inttoptr i64 %5444 to i64*
  %5448 = load i64, i64* %5447
  store i64 %5448, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_41b5c2, %struct.Memory** %MEMORY
  %loadMem_41b5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 33
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5451 to i64*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 5
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5455, i64 0, i64 0
  %XMM0.i18 = bitcast %union.VectorReg* %5456 to %union.vec128_t*
  %5457 = load i64, i64* %RCX.i
  %5458 = add i64 %5457, 60
  %5459 = bitcast %union.vec128_t* %XMM0.i18 to i8*
  %5460 = load i64, i64* %PC.i17
  %5461 = add i64 %5460, 5
  store i64 %5461, i64* %PC.i17
  %5462 = bitcast i8* %5459 to <2 x float>*
  %5463 = load <2 x float>, <2 x float>* %5462, align 1
  %5464 = extractelement <2 x float> %5463, i32 0
  %5465 = inttoptr i64 %5458 to float*
  store float %5464, float* %5465
  store %struct.Memory* %loadMem_41b5c6, %struct.Memory** %MEMORY
  %loadMem_41b5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %PC.i16
  %5470 = add i64 %5469, 17
  %5471 = load i64, i64* %PC.i16
  %5472 = add i64 %5471, 5
  store i64 %5472, i64* %PC.i16
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5470, i64* %5473, align 8
  store %struct.Memory* %loadMem_41b5cb, %struct.Memory** %MEMORY
  br label %block_.L_41b5dc

block_.L_41b5d0:                                  ; preds = %block_.L_41b586
  %loadMem_41b5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 33
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5476 to i64*
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5477, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5478 to %"class.std::bitset"*
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5479, i64 0, i64 0
  %XMM0.i15 = bitcast %union.VectorReg* %5480 to %union.vec128_t*
  %5481 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5482 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5483 = bitcast %union.vec128_t* %XMM0.i15 to i8*
  %5484 = load i64, i64* %PC.i14
  %5485 = add i64 %5484, 3
  store i64 %5485, i64* %PC.i14
  %5486 = bitcast i8* %5482 to i64*
  %5487 = load i64, i64* %5486, align 1
  %5488 = getelementptr inbounds i8, i8* %5482, i64 8
  %5489 = bitcast i8* %5488 to i64*
  %5490 = load i64, i64* %5489, align 1
  %5491 = bitcast i8* %5483 to i64*
  %5492 = load i64, i64* %5491, align 1
  %5493 = getelementptr inbounds i8, i8* %5483, i64 8
  %5494 = bitcast i8* %5493 to i64*
  %5495 = load i64, i64* %5494, align 1
  %5496 = xor i64 %5492, %5487
  %5497 = xor i64 %5495, %5490
  %5498 = trunc i64 %5496 to i32
  %5499 = lshr i64 %5496, 32
  %5500 = trunc i64 %5499 to i32
  %5501 = bitcast i8* %5481 to i32*
  store i32 %5498, i32* %5501, align 1
  %5502 = getelementptr inbounds i8, i8* %5481, i64 4
  %5503 = bitcast i8* %5502 to i32*
  store i32 %5500, i32* %5503, align 1
  %5504 = trunc i64 %5497 to i32
  %5505 = getelementptr inbounds i8, i8* %5481, i64 8
  %5506 = bitcast i8* %5505 to i32*
  store i32 %5504, i32* %5506, align 1
  %5507 = lshr i64 %5497, 32
  %5508 = trunc i64 %5507 to i32
  %5509 = getelementptr inbounds i8, i8* %5481, i64 12
  %5510 = bitcast i8* %5509 to i32*
  store i32 %5508, i32* %5510, align 1
  store %struct.Memory* %loadMem_41b5d0, %struct.Memory** %MEMORY
  %loadMem_41b5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 33
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5513 to i64*
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 1
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 15
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %5519 to i64*
  %5520 = load i64, i64* %RBP.i13
  %5521 = sub i64 %5520, 16
  %5522 = load i64, i64* %PC.i11
  %5523 = add i64 %5522, 4
  store i64 %5523, i64* %PC.i11
  %5524 = inttoptr i64 %5521 to i64*
  %5525 = load i64, i64* %5524
  store i64 %5525, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_41b5d3, %struct.Memory** %MEMORY
  %loadMem_41b5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 33
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5528 to i64*
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 1
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5531 to i64*
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5532, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5533 to %union.vec128_t*
  %5534 = load i64, i64* %RAX.i10
  %5535 = add i64 %5534, 60
  %5536 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5537 = load i64, i64* %PC.i9
  %5538 = add i64 %5537, 5
  store i64 %5538, i64* %PC.i9
  %5539 = bitcast i8* %5536 to <2 x float>*
  %5540 = load <2 x float>, <2 x float>* %5539, align 1
  %5541 = extractelement <2 x float> %5540, i32 0
  %5542 = inttoptr i64 %5535 to float*
  store float %5541, float* %5542
  store %struct.Memory* %loadMem_41b5d7, %struct.Memory** %MEMORY
  br label %block_.L_41b5dc

block_.L_41b5dc:                                  ; preds = %block_.L_41b5d0, %block_41b590
  %loadMem_41b5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 33
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 15
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5548 to i64*
  %5549 = load i64, i64* %RBP.i8
  %5550 = sub i64 %5549, 4
  %5551 = load i64, i64* %PC.i7
  %5552 = add i64 %5551, 7
  store i64 %5552, i64* %PC.i7
  %5553 = inttoptr i64 %5550 to i32*
  store i32 1, i32* %5553
  store %struct.Memory* %loadMem_41b5dc, %struct.Memory** %MEMORY
  br label %block_.L_41b5e3

block_.L_41b5e3:                                  ; preds = %block_.L_41b5dc, %block_41b1ab
  %loadMem_41b5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 33
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5556 to i64*
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 1
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 15
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5562 to i64*
  %5563 = load i64, i64* %RBP.i6
  %5564 = sub i64 %5563, 4
  %5565 = load i64, i64* %PC.i5
  %5566 = add i64 %5565, 3
  store i64 %5566, i64* %PC.i5
  %5567 = inttoptr i64 %5564 to i32*
  %5568 = load i32, i32* %5567
  %5569 = zext i32 %5568 to i64
  store i64 %5569, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41b5e3, %struct.Memory** %MEMORY
  %loadMem_41b5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5572 to i64*
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 13
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5575 to i64*
  %5576 = load i64, i64* %RSP.i
  %5577 = load i64, i64* %PC.i4
  %5578 = add i64 %5577, 4
  store i64 %5578, i64* %PC.i4
  %5579 = add i64 112, %5576
  store i64 %5579, i64* %RSP.i, align 8
  %5580 = icmp ult i64 %5579, %5576
  %5581 = icmp ult i64 %5579, 112
  %5582 = or i1 %5580, %5581
  %5583 = zext i1 %5582 to i8
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5583, i8* %5584, align 1
  %5585 = trunc i64 %5579 to i32
  %5586 = and i32 %5585, 255
  %5587 = call i32 @llvm.ctpop.i32(i32 %5586)
  %5588 = trunc i32 %5587 to i8
  %5589 = and i8 %5588, 1
  %5590 = xor i8 %5589, 1
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5590, i8* %5591, align 1
  %5592 = xor i64 112, %5576
  %5593 = xor i64 %5592, %5579
  %5594 = lshr i64 %5593, 4
  %5595 = trunc i64 %5594 to i8
  %5596 = and i8 %5595, 1
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5596, i8* %5597, align 1
  %5598 = icmp eq i64 %5579, 0
  %5599 = zext i1 %5598 to i8
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5599, i8* %5600, align 1
  %5601 = lshr i64 %5579, 63
  %5602 = trunc i64 %5601 to i8
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5602, i8* %5603, align 1
  %5604 = lshr i64 %5576, 63
  %5605 = xor i64 %5601, %5604
  %5606 = add i64 %5605, %5601
  %5607 = icmp eq i64 %5606, 2
  %5608 = zext i1 %5607 to i8
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5608, i8* %5609, align 1
  store %struct.Memory* %loadMem_41b5e6, %struct.Memory** %MEMORY
  %loadMem_41b5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 33
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 15
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %PC.i2
  %5617 = add i64 %5616, 1
  store i64 %5617, i64* %PC.i2
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5619 = load i64, i64* %5618, align 8
  %5620 = add i64 %5619, 8
  %5621 = inttoptr i64 %5619 to i64*
  %5622 = load i64, i64* %5621
  store i64 %5622, i64* %RBP.i3, align 8
  store i64 %5620, i64* %5618, align 8
  store %struct.Memory* %loadMem_41b5ea, %struct.Memory** %MEMORY
  %loadMem_41b5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 33
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5625 to i64*
  %5626 = load i64, i64* %PC.i1
  %5627 = add i64 %5626, 1
  store i64 %5627, i64* %PC.i1
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5630 = load i64, i64* %5629, align 8
  %5631 = inttoptr i64 %5630 to i64*
  %5632 = load i64, i64* %5631
  store i64 %5632, i64* %5628, align 8
  %5633 = add i64 %5630, 8
  store i64 %5633, i64* %5629, align 8
  store %struct.Memory* %loadMem_41b5eb, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41b5eb
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 20
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

define %struct.Memory* @routine_cmpl__0x3e8__0x1c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1000
  %16 = icmp ult i32 %14, 1000
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
  %25 = xor i32 %14, 1000
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

define %struct.Memory* @routine_jge_.L_41b1c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jmpq_.L_41b5e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 28
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

define %struct.Memory* @routine_jg_.L_41b26a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x395ff__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x395ff__rip__type* @G_0x395ff__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_cvtsi2ssl___rax__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %14 to <2 x i32>*
  %22 = load <2 x i32>, <2 x i32>* %21, align 1
  %23 = getelementptr inbounds i8, i8* %14, i64 8
  %24 = bitcast i8* %23 to <2 x i32>*
  %25 = load <2 x i32>, <2 x i32>* %24, align 1
  %26 = inttoptr i64 %18 to i32*
  %27 = load i32, i32* %26
  %28 = sitofp i32 %27 to float
  %29 = bitcast i8* %14 to float*
  store float %28, float* %29, align 1
  %30 = extractelement <2 x i32> %22, i32 1
  %31 = getelementptr inbounds i8, i8* %14, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %25, i32 0
  %34 = bitcast i8* %23 to i32*
  store i32 %33, i32* %34, align 1
  %35 = extractelement <2 x i32> %25, i32 1
  %36 = getelementptr inbounds i8, i8* %14, i64 12
  %37 = bitcast i8* %36 to i32*
  store i32 %35, i32* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fmul float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
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

define %struct.Memory* @routine_jmpq_.L_41b1d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x316___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 790, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
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

define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
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

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x2c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 44
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fmul float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 28
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

define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
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

define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_movss__xmm0__0x30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 48
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

define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_41b356(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_41b328(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_41b489(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39470__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39470__rip__type* @G_0x39470__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x394b0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x394b0__rip__type* @G_0x394b0__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x39458__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x39458__rip__type* @G_0x39458__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x39460__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x39460__rip__type* @G_0x39460__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_cvtss2sd__xmm4___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_addsd__xmm3___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 44
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

define %struct.Memory* @routine_subsd__xmm3___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_cvtsd2ss__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_movss__xmm3__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 28
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

define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 48
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

define %struct.Memory* @routine_movsd_0x394af__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x394af__rip__type* @G_0x394af__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movaps__xmm5___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_movsd__xmm4__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM4 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
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

define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_callq_.exp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_jmpq_.L_41b360(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 56
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_41b586(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3934a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3934a__rip__type* @G_0x3934a__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd___rax__rdx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = fpext float %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jb_.L_41b573(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %19, 5
  %21 = icmp ult i32 %19, 5
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
  %30 = xor i32 %19, 5
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_41b573(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subss___rax__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fsub float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_divss___rax__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fdiv float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0x38__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41b578(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41b4a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_41b5d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39250__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39250__rip__type* @G_0x39250__rip_ to i64)
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

define %struct.Memory* @routine_subl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_cvtss2sd_0x38__rcx____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 56
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

define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_callq_.IncompleteGamma(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x3c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 60
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

define %struct.Memory* @routine_jmpq_.L_41b5dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss__xmm0__0x3c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 60
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
