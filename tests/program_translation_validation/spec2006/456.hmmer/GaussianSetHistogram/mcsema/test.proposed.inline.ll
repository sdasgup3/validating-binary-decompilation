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
%G_0x38f00__rip__type = type <{ [8 x i8] }>
%G_0x38ffa__rip__type = type <{ [8 x i8] }>
%G_0x39108__rip__type = type <{ [8 x i8] }>
%G_0x39110__rip__type = type <{ [8 x i8] }>
%G_0x39120__rip__type = type <{ [8 x i8] }>
%G_0x3915f__rip__type = type <{ [8 x i8] }>
%G_0x39160__rip__type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x38f00__rip_ = global %G_0x38f00__rip__type zeroinitializer
@G_0x38ffa__rip_ = global %G_0x38ffa__rip__type zeroinitializer
@G_0x39108__rip_ = global %G_0x39108__rip__type zeroinitializer
@G_0x39110__rip_ = global %G_0x39110__rip__type zeroinitializer
@G_0x39120__rip_ = global %G_0x39120__rip__type zeroinitializer
@G_0x3915f__rip_ = global %G_0x3915f__rip__type zeroinitializer
@G_0x39160__rip_ = global %G_0x39160__rip__type zeroinitializer
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
define %struct.Memory* @GaussianSetHistogram(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41b5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41b5f0, %struct.Memory** %MEMORY
  %loadMem_41b5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i170 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i170
  %27 = load i64, i64* %PC.i169
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i169
  store i64 %26, i64* %RBP.i171, align 8
  store %struct.Memory* %loadMem_41b5f1, %struct.Memory** %MEMORY
  %loadMem_41b5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i271 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i271
  %36 = load i64, i64* %PC.i270
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i270
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i271, align 8
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
  store %struct.Memory* %loadMem_41b5f4, %struct.Memory** %MEMORY
  %loadMem_41b5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i512 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i513
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i512
  %79 = load i64, i64* %PC.i511
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i511
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_41b5f8, %struct.Memory** %MEMORY
  %loadMem_41b5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %89 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %88, i64 0, i64 0
  %XMM0.i510 = bitcast %union.VectorReg* %89 to %union.vec128_t*
  %90 = load i64, i64* %RBP.i509
  %91 = sub i64 %90, 12
  %92 = bitcast %union.vec128_t* %XMM0.i510 to i8*
  %93 = load i64, i64* %PC.i508
  %94 = add i64 %93, 5
  store i64 %94, i64* %PC.i508
  %95 = bitcast i8* %92 to <2 x float>*
  %96 = load <2 x float>, <2 x float>* %95, align 1
  %97 = extractelement <2 x float> %96, i32 0
  %98 = inttoptr i64 %91 to float*
  store float %97, float* %98
  store %struct.Memory* %loadMem_41b5fc, %struct.Memory** %MEMORY
  %loadMem_41b601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %105, i64 0, i64 1
  %XMM1.i507 = bitcast %union.VectorReg* %106 to %union.vec128_t*
  %107 = load i64, i64* %RBP.i506
  %108 = sub i64 %107, 16
  %109 = bitcast %union.vec128_t* %XMM1.i507 to i8*
  %110 = load i64, i64* %PC.i505
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC.i505
  %112 = bitcast i8* %109 to <2 x float>*
  %113 = load <2 x float>, <2 x float>* %112, align 1
  %114 = extractelement <2 x float> %113, i32 0
  %115 = inttoptr i64 %108 to float*
  store float %114, float* %115
  store %struct.Memory* %loadMem_41b601, %struct.Memory** %MEMORY
  %loadMem_41b606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RDI.i503 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RBP.i504
  %126 = sub i64 %125, 8
  %127 = load i64, i64* %PC.i502
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC.i502
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %RDI.i503, align 8
  store %struct.Memory* %loadMem_41b606, %struct.Memory** %MEMORY
  %loadMem1_41b60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %133 to i64*
  %134 = load i64, i64* %PC.i501
  %135 = add i64 %134, -11946
  %136 = load i64, i64* %PC.i501
  %137 = add i64 %136, 5
  %138 = load i64, i64* %PC.i501
  %139 = add i64 %138, 5
  store i64 %139, i64* %PC.i501
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, -8
  %143 = inttoptr i64 %142 to i64*
  store i64 %137, i64* %143
  store i64 %142, i64* %140, align 8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %135, i64* %144, align 8
  store %struct.Memory* %loadMem1_41b60a, %struct.Memory** %MEMORY
  %loadMem2_41b60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b60a = load i64, i64* %3
  %call2_41b60a = call %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* %0, i64 %loadPC_41b60a, %struct.Memory* %loadMem2_41b60a)
  store %struct.Memory* %call2_41b60a, %struct.Memory** %MEMORY
  %loadMem_41b60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 11
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i500
  %152 = add i64 %151, 10
  store i64 %152, i64* %PC.i500
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41b60f, %struct.Memory** %MEMORY
  %loadMem_41b619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %PC.i499
  %160 = add i64 %159, 5
  store i64 %160, i64* %PC.i499
  store i64 845, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41b619, %struct.Memory** %MEMORY
  %loadMem_41b61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 15
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RBP.i498
  %171 = sub i64 %170, 8
  %172 = load i64, i64* %PC.i496
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC.i496
  %174 = inttoptr i64 %171 to i64*
  %175 = load i64, i64* %174
  store i64 %175, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_41b61e, %struct.Memory** %MEMORY
  %loadMem_41b622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RAX.i495
  %183 = add i64 %182, 40
  %184 = load i64, i64* %PC.i494
  %185 = add i64 %184, 7
  store i64 %185, i64* %PC.i494
  %186 = inttoptr i64 %183 to i32*
  store i32 2, i32* %186
  store %struct.Memory* %loadMem_41b622, %struct.Memory** %MEMORY
  %loadMem_41b629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %193, i64 0, i64 0
  %YMM0.i493 = bitcast %union.VectorReg* %194 to %"class.std::bitset"*
  %195 = bitcast %"class.std::bitset"* %YMM0.i493 to i8*
  %196 = load i64, i64* %RBP.i492
  %197 = sub i64 %196, 12
  %198 = load i64, i64* %PC.i491
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC.i491
  %200 = inttoptr i64 %197 to float*
  %201 = load float, float* %200
  %202 = bitcast i8* %195 to float*
  store float %201, float* %202, align 1
  %203 = getelementptr inbounds i8, i8* %195, i64 4
  %204 = bitcast i8* %203 to float*
  store float 0.000000e+00, float* %204, align 1
  %205 = getelementptr inbounds i8, i8* %195, i64 8
  %206 = bitcast i8* %205 to float*
  store float 0.000000e+00, float* %206, align 1
  %207 = getelementptr inbounds i8, i8* %195, i64 12
  %208 = bitcast i8* %207 to float*
  store float 0.000000e+00, float* %208, align 1
  store %struct.Memory* %loadMem_41b629, %struct.Memory** %MEMORY
  %loadMem_41b62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %RBP.i490
  %219 = sub i64 %218, 8
  %220 = load i64, i64* %PC.i488
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC.i488
  %222 = inttoptr i64 %219 to i64*
  %223 = load i64, i64* %222
  store i64 %223, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_41b62e, %struct.Memory** %MEMORY
  %loadMem_41b632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %230, i64 0, i64 0
  %XMM0.i487 = bitcast %union.VectorReg* %231 to %union.vec128_t*
  %232 = load i64, i64* %RAX.i486
  %233 = add i64 %232, 44
  %234 = bitcast %union.vec128_t* %XMM0.i487 to i8*
  %235 = load i64, i64* %PC.i485
  %236 = add i64 %235, 5
  store i64 %236, i64* %PC.i485
  %237 = bitcast i8* %234 to <2 x float>*
  %238 = load <2 x float>, <2 x float>* %237, align 1
  %239 = extractelement <2 x float> %238, i32 0
  %240 = inttoptr i64 %233 to float*
  store float %239, float* %240
  store %struct.Memory* %loadMem_41b632, %struct.Memory** %MEMORY
  %loadMem_41b637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %247, i64 0, i64 0
  %YMM0.i484 = bitcast %union.VectorReg* %248 to %"class.std::bitset"*
  %249 = bitcast %"class.std::bitset"* %YMM0.i484 to i8*
  %250 = load i64, i64* %RBP.i483
  %251 = sub i64 %250, 16
  %252 = load i64, i64* %PC.i482
  %253 = add i64 %252, 5
  store i64 %253, i64* %PC.i482
  %254 = inttoptr i64 %251 to float*
  %255 = load float, float* %254
  %256 = bitcast i8* %249 to float*
  store float %255, float* %256, align 1
  %257 = getelementptr inbounds i8, i8* %249, i64 4
  %258 = bitcast i8* %257 to float*
  store float 0.000000e+00, float* %258, align 1
  %259 = getelementptr inbounds i8, i8* %249, i64 8
  %260 = bitcast i8* %259 to float*
  store float 0.000000e+00, float* %260, align 1
  %261 = getelementptr inbounds i8, i8* %249, i64 12
  %262 = bitcast i8* %261 to float*
  store float 0.000000e+00, float* %262, align 1
  store %struct.Memory* %loadMem_41b637, %struct.Memory** %MEMORY
  %loadMem_41b63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i481
  %273 = sub i64 %272, 8
  %274 = load i64, i64* %PC.i479
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i479
  %276 = inttoptr i64 %273 to i64*
  %277 = load i64, i64* %276
  store i64 %277, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_41b63c, %struct.Memory** %MEMORY
  %loadMem_41b640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 0
  %XMM0.i478 = bitcast %union.VectorReg* %285 to %union.vec128_t*
  %286 = load i64, i64* %RAX.i477
  %287 = add i64 %286, 48
  %288 = bitcast %union.vec128_t* %XMM0.i478 to i8*
  %289 = load i64, i64* %PC.i476
  %290 = add i64 %289, 5
  store i64 %290, i64* %PC.i476
  %291 = bitcast i8* %288 to <2 x float>*
  %292 = load <2 x float>, <2 x float>* %291, align 1
  %293 = extractelement <2 x float> %292, i32 0
  %294 = inttoptr i64 %287 to float*
  store float %293, float* %294
  store %struct.Memory* %loadMem_41b640, %struct.Memory** %MEMORY
  %loadMem_41b645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i475
  %305 = sub i64 %304, 8
  %306 = load i64, i64* %PC.i473
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC.i473
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_41b645, %struct.Memory** %MEMORY
  %loadMem_41b649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RAX.i471
  %320 = add i64 %319, 12
  %321 = load i64, i64* %PC.i470
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC.i470
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RCX.i472, align 8
  store %struct.Memory* %loadMem_41b649, %struct.Memory** %MEMORY
  %loadMem_41b64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 15
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %RBP.i469
  %336 = sub i64 %335, 8
  %337 = load i64, i64* %PC.i467
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC.i467
  %339 = inttoptr i64 %336 to i64*
  %340 = load i64, i64* %339
  store i64 %340, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_41b64c, %struct.Memory** %MEMORY
  %loadMem_41b650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 5
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RCX.i466
  %351 = load i64, i64* %RAX.i465
  %352 = add i64 %351, 8
  %353 = load i64, i64* %PC.i464
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i464
  %355 = trunc i64 %350 to i32
  %356 = inttoptr i64 %352 to i32*
  %357 = load i32, i32* %356
  %358 = sub i32 %355, %357
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RCX.i466, align 8
  %360 = icmp ult i32 %355, %357
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %361, i8* %362, align 1
  %363 = and i32 %358, 255
  %364 = call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %367, i8* %368, align 1
  %369 = xor i32 %357, %355
  %370 = xor i32 %369, %358
  %371 = lshr i32 %370, 4
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %373, i8* %374, align 1
  %375 = icmp eq i32 %358, 0
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %376, i8* %377, align 1
  %378 = lshr i32 %358, 31
  %379 = trunc i32 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %379, i8* %380, align 1
  %381 = lshr i32 %355, 31
  %382 = lshr i32 %357, 31
  %383 = xor i32 %382, %381
  %384 = xor i32 %378, %381
  %385 = add i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %387, i8* %388, align 1
  store %struct.Memory* %loadMem_41b650, %struct.Memory** %MEMORY
  %loadMem_41b653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 5
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RCX.i463
  %396 = load i64, i64* %PC.i462
  %397 = add i64 %396, 3
  store i64 %397, i64* %PC.i462
  %398 = trunc i64 %395 to i32
  %399 = add i32 1, %398
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RCX.i463, align 8
  %401 = icmp ult i32 %399, %398
  %402 = icmp ult i32 %399, 1
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %404, i8* %405, align 1
  %406 = and i32 %399, 255
  %407 = call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %410, i8* %411, align 1
  %412 = xor i64 1, %395
  %413 = trunc i64 %412 to i32
  %414 = xor i32 %413, %399
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %417, i8* %418, align 1
  %419 = icmp eq i32 %399, 0
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %420, i8* %421, align 1
  %422 = lshr i32 %399, 31
  %423 = trunc i32 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %423, i8* %424, align 1
  %425 = lshr i32 %398, 31
  %426 = xor i32 %422, %425
  %427 = add i32 %426, %422
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %429, i8* %430, align 1
  store %struct.Memory* %loadMem_41b653, %struct.Memory** %MEMORY
  %loadMem_41b656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %ECX.i460 = bitcast %union.anon* %436 to i32*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 15
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RBP.i461
  %441 = sub i64 %440, 24
  %442 = load i32, i32* %ECX.i460
  %443 = zext i32 %442 to i64
  %444 = load i64, i64* %PC.i459
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC.i459
  %446 = inttoptr i64 %441 to i32*
  store i32 %442, i32* %446
  store %struct.Memory* %loadMem_41b656, %struct.Memory** %MEMORY
  %loadMem_41b659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 15
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RBP.i458
  %457 = sub i64 %456, 24
  %458 = load i64, i64* %PC.i456
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC.i456
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460
  %462 = sext i32 %461 to i64
  store i64 %462, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_41b659, %struct.Memory** %MEMORY
  %loadMem_41b65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %RAX.i455
  %470 = load i64, i64* %PC.i454
  %471 = add i64 %470, 4
  store i64 %471, i64* %PC.i454
  %472 = shl i64 %469, 1
  %473 = icmp slt i64 %472, 0
  %474 = shl i64 %472, 1
  store i64 %474, i64* %RAX.i455, align 8
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %476 = zext i1 %473 to i8
  store i8 %476, i8* %475, align 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %478 = trunc i64 %474 to i32
  %479 = and i32 %478, 254
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %477, align 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %486 = icmp eq i64 %474, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %485, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %489 = lshr i64 %474, 63
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %488, align 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %491, align 1
  store %struct.Memory* %loadMem_41b65d, %struct.Memory** %MEMORY
  %loadMem_41b661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 7
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RDX.i453 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RAX.i452
  %502 = load i64, i64* %PC.i451
  %503 = add i64 %502, 3
  store i64 %503, i64* %PC.i451
  store i64 %501, i64* %RDX.i453, align 8
  store %struct.Memory* %loadMem_41b661, %struct.Memory** %MEMORY
  %loadMem1_41b664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %PC.i450
  %508 = add i64 %507, 174588
  %509 = load i64, i64* %PC.i450
  %510 = add i64 %509, 5
  %511 = load i64, i64* %PC.i450
  %512 = add i64 %511, 5
  store i64 %512, i64* %PC.i450
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = add i64 %514, -8
  %516 = inttoptr i64 %515 to i64*
  store i64 %510, i64* %516
  store i64 %515, i64* %513, align 8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %508, i64* %517, align 8
  store %struct.Memory* %loadMem1_41b664, %struct.Memory** %MEMORY
  %loadMem2_41b664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b664 = load i64, i64* %3
  %call2_41b664 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_41b664, %struct.Memory* %loadMem2_41b664)
  store %struct.Memory* %call2_41b664, %struct.Memory** %MEMORY
  %loadMem_41b669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 7
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 15
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RBP.i449
  %528 = sub i64 %527, 8
  %529 = load i64, i64* %PC.i447
  %530 = add i64 %529, 4
  store i64 %530, i64* %PC.i447
  %531 = inttoptr i64 %528 to i64*
  %532 = load i64, i64* %531
  store i64 %532, i64* %RDX.i448, align 8
  store %struct.Memory* %loadMem_41b669, %struct.Memory** %MEMORY
  %loadMem_41b66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 7
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RDX.i446
  %543 = add i64 %542, 32
  %544 = load i64, i64* %RAX.i445
  %545 = load i64, i64* %PC.i444
  %546 = add i64 %545, 4
  store i64 %546, i64* %PC.i444
  %547 = inttoptr i64 %543 to i64*
  store i64 %544, i64* %547
  store %struct.Memory* %loadMem_41b66d, %struct.Memory** %MEMORY
  %loadMem_41b671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 15
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RBP.i443
  %555 = sub i64 %554, 28
  %556 = load i64, i64* %PC.i442
  %557 = add i64 %556, 7
  store i64 %557, i64* %PC.i442
  %558 = inttoptr i64 %555 to i32*
  store i32 0, i32* %558
  store %struct.Memory* %loadMem_41b671, %struct.Memory** %MEMORY
  br label %block_.L_41b678

block_.L_41b678:                                  ; preds = %block_41b684, %entry
  %loadMem_41b678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 15
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %567 to i64*
  %568 = load i64, i64* %RBP.i441
  %569 = sub i64 %568, 28
  %570 = load i64, i64* %PC.i439
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC.i439
  %572 = inttoptr i64 %569 to i32*
  %573 = load i32, i32* %572
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_41b678, %struct.Memory** %MEMORY
  %loadMem_41b67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %580 to i32*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 15
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %583 to i64*
  %584 = load i32, i32* %EAX.i437
  %585 = zext i32 %584 to i64
  %586 = load i64, i64* %RBP.i438
  %587 = sub i64 %586, 24
  %588 = load i64, i64* %PC.i436
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC.i436
  %590 = inttoptr i64 %587 to i32*
  %591 = load i32, i32* %590
  %592 = sub i32 %584, %591
  %593 = icmp ult i32 %584, %591
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %594, i8* %595, align 1
  %596 = and i32 %592, 255
  %597 = call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %600, i8* %601, align 1
  %602 = xor i32 %591, %584
  %603 = xor i32 %602, %592
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %606, i8* %607, align 1
  %608 = icmp eq i32 %592, 0
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %609, i8* %610, align 1
  %611 = lshr i32 %592, 31
  %612 = trunc i32 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %612, i8* %613, align 1
  %614 = lshr i32 %584, 31
  %615 = lshr i32 %591, 31
  %616 = xor i32 %615, %614
  %617 = xor i32 %611, %614
  %618 = add i32 %617, %616
  %619 = icmp eq i32 %618, 2
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %620, i8* %621, align 1
  store %struct.Memory* %loadMem_41b67b, %struct.Memory** %MEMORY
  %loadMem_41b67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %PC.i435
  %626 = add i64 %625, 40
  %627 = load i64, i64* %PC.i435
  %628 = add i64 %627, 6
  %629 = load i64, i64* %PC.i435
  %630 = add i64 %629, 6
  store i64 %630, i64* %PC.i435
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %632 = load i8, i8* %631, align 1
  %633 = icmp ne i8 %632, 0
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %635 = load i8, i8* %634, align 1
  %636 = icmp ne i8 %635, 0
  %637 = xor i1 %633, %636
  %638 = xor i1 %637, true
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %BRANCH_TAKEN, align 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %641 = select i1 %637, i64 %628, i64 %626
  store i64 %641, i64* %640, align 8
  store %struct.Memory* %loadMem_41b67e, %struct.Memory** %MEMORY
  %loadBr_41b67e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b67e = icmp eq i8 %loadBr_41b67e, 1
  br i1 %cmpBr_41b67e, label %block_.L_41b6a6, label %block_41b684

block_41b684:                                     ; preds = %block_.L_41b678
  %loadMem_41b684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %645, i64 0, i64 0
  %YMM0.i433 = bitcast %union.VectorReg* %646 to %"class.std::bitset"*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %647, i64 0, i64 0
  %XMM0.i434 = bitcast %union.VectorReg* %648 to %union.vec128_t*
  %649 = bitcast %"class.std::bitset"* %YMM0.i433 to i8*
  %650 = bitcast %"class.std::bitset"* %YMM0.i433 to i8*
  %651 = bitcast %union.vec128_t* %XMM0.i434 to i8*
  %652 = load i64, i64* %PC.i432
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC.i432
  %654 = bitcast i8* %650 to i64*
  %655 = load i64, i64* %654, align 1
  %656 = getelementptr inbounds i8, i8* %650, i64 8
  %657 = bitcast i8* %656 to i64*
  %658 = load i64, i64* %657, align 1
  %659 = bitcast i8* %651 to i64*
  %660 = load i64, i64* %659, align 1
  %661 = getelementptr inbounds i8, i8* %651, i64 8
  %662 = bitcast i8* %661 to i64*
  %663 = load i64, i64* %662, align 1
  %664 = xor i64 %660, %655
  %665 = xor i64 %663, %658
  %666 = trunc i64 %664 to i32
  %667 = lshr i64 %664, 32
  %668 = trunc i64 %667 to i32
  %669 = bitcast i8* %649 to i32*
  store i32 %666, i32* %669, align 1
  %670 = getelementptr inbounds i8, i8* %649, i64 4
  %671 = bitcast i8* %670 to i32*
  store i32 %668, i32* %671, align 1
  %672 = trunc i64 %665 to i32
  %673 = getelementptr inbounds i8, i8* %649, i64 8
  %674 = bitcast i8* %673 to i32*
  store i32 %672, i32* %674, align 1
  %675 = lshr i64 %665, 32
  %676 = trunc i64 %675 to i32
  %677 = getelementptr inbounds i8, i8* %649, i64 12
  %678 = bitcast i8* %677 to i32*
  store i32 %676, i32* %678, align 1
  store %struct.Memory* %loadMem_41b684, %struct.Memory** %MEMORY
  %loadMem_41b687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 15
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RBP.i431
  %689 = sub i64 %688, 8
  %690 = load i64, i64* %PC.i429
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC.i429
  %692 = inttoptr i64 %689 to i64*
  %693 = load i64, i64* %692
  store i64 %693, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_41b687, %struct.Memory** %MEMORY
  %loadMem_41b68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %RAX.i428
  %701 = add i64 %700, 32
  %702 = load i64, i64* %PC.i427
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC.i427
  %704 = inttoptr i64 %701 to i64*
  %705 = load i64, i64* %704
  store i64 %705, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_41b68b, %struct.Memory** %MEMORY
  %loadMem_41b68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 5
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 15
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %714 to i64*
  %715 = load i64, i64* %RBP.i426
  %716 = sub i64 %715, 28
  %717 = load i64, i64* %PC.i424
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC.i424
  %719 = inttoptr i64 %716 to i32*
  %720 = load i32, i32* %719
  %721 = sext i32 %720 to i64
  store i64 %721, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_41b68f, %struct.Memory** %MEMORY
  %loadMem_41b693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 1
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 0
  %XMM0.i423 = bitcast %union.VectorReg* %732 to %union.vec128_t*
  %733 = load i64, i64* %RAX.i421
  %734 = load i64, i64* %RCX.i422
  %735 = mul i64 %734, 4
  %736 = add i64 %735, %733
  %737 = bitcast %union.vec128_t* %XMM0.i423 to i8*
  %738 = load i64, i64* %PC.i420
  %739 = add i64 %738, 5
  store i64 %739, i64* %PC.i420
  %740 = bitcast i8* %737 to <2 x float>*
  %741 = load <2 x float>, <2 x float>* %740, align 1
  %742 = extractelement <2 x float> %741, i32 0
  %743 = inttoptr i64 %736 to float*
  store float %742, float* %743
  store %struct.Memory* %loadMem_41b693, %struct.Memory** %MEMORY
  %loadMem_41b698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 1
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RBP.i419
  %754 = sub i64 %753, 28
  %755 = load i64, i64* %PC.i417
  %756 = add i64 %755, 3
  store i64 %756, i64* %PC.i417
  %757 = inttoptr i64 %754 to i32*
  %758 = load i32, i32* %757
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_41b698, %struct.Memory** %MEMORY
  %loadMem_41b69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %RAX.i416
  %767 = load i64, i64* %PC.i415
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC.i415
  %769 = trunc i64 %766 to i32
  %770 = add i32 1, %769
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RAX.i416, align 8
  %772 = icmp ult i32 %770, %769
  %773 = icmp ult i32 %770, 1
  %774 = or i1 %772, %773
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %775, i8* %776, align 1
  %777 = and i32 %770, 255
  %778 = call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %781, i8* %782, align 1
  %783 = xor i64 1, %766
  %784 = trunc i64 %783 to i32
  %785 = xor i32 %784, %770
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %788, i8* %789, align 1
  %790 = icmp eq i32 %770, 0
  %791 = zext i1 %790 to i8
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %791, i8* %792, align 1
  %793 = lshr i32 %770, 31
  %794 = trunc i32 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %794, i8* %795, align 1
  %796 = lshr i32 %769, 31
  %797 = xor i32 %793, %796
  %798 = add i32 %797, %793
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %800, i8* %801, align 1
  store %struct.Memory* %loadMem_41b69b, %struct.Memory** %MEMORY
  %loadMem_41b69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %EAX.i413 = bitcast %union.anon* %807 to i32*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 15
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RBP.i414
  %812 = sub i64 %811, 28
  %813 = load i32, i32* %EAX.i413
  %814 = zext i32 %813 to i64
  %815 = load i64, i64* %PC.i412
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC.i412
  %817 = inttoptr i64 %812 to i32*
  store i32 %813, i32* %817
  store %struct.Memory* %loadMem_41b69e, %struct.Memory** %MEMORY
  %loadMem_41b6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i411
  %822 = add i64 %821, -41
  %823 = load i64, i64* %PC.i411
  %824 = add i64 %823, 5
  store i64 %824, i64* %PC.i411
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %822, i64* %825, align 8
  store %struct.Memory* %loadMem_41b6a1, %struct.Memory** %MEMORY
  br label %block_.L_41b678

block_.L_41b6a6:                                  ; preds = %block_.L_41b678
  %loadMem_41b6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i410
  %836 = sub i64 %835, 8
  %837 = load i64, i64* %PC.i408
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i408
  %839 = inttoptr i64 %836 to i64*
  %840 = load i64, i64* %839
  store i64 %840, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_41b6a6, %struct.Memory** %MEMORY
  %loadMem_41b6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 5
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RAX.i406
  %851 = add i64 %850, 8
  %852 = load i64, i64* %PC.i405
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i405
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_41b6aa, %struct.Memory** %MEMORY
  %loadMem_41b6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 5
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %ECX.i403 = bitcast %union.anon* %862 to i32*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RBP.i404
  %867 = sub i64 %866, 20
  %868 = load i32, i32* %ECX.i403
  %869 = zext i32 %868 to i64
  %870 = load i64, i64* %PC.i402
  %871 = add i64 %870, 3
  store i64 %871, i64* %PC.i402
  %872 = inttoptr i64 %867 to i32*
  store i32 %868, i32* %872
  store %struct.Memory* %loadMem_41b6ad, %struct.Memory** %MEMORY
  br label %block_.L_41b6b0

block_.L_41b6b0:                                  ; preds = %block_41b6c0, %block_.L_41b6a6
  %loadMem_41b6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 1
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 15
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RBP.i401
  %883 = sub i64 %882, 20
  %884 = load i64, i64* %PC.i399
  %885 = add i64 %884, 3
  store i64 %885, i64* %PC.i399
  %886 = inttoptr i64 %883 to i32*
  %887 = load i32, i32* %886
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_41b6b0, %struct.Memory** %MEMORY
  %loadMem_41b6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 5
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 15
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RBP.i398
  %899 = sub i64 %898, 8
  %900 = load i64, i64* %PC.i396
  %901 = add i64 %900, 4
  store i64 %901, i64* %PC.i396
  %902 = inttoptr i64 %899 to i64*
  %903 = load i64, i64* %902
  store i64 %903, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_41b6b3, %struct.Memory** %MEMORY
  %loadMem_41b6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %909 to i32*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 5
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %912 to i64*
  %913 = load i32, i32* %EAX.i394
  %914 = zext i32 %913 to i64
  %915 = load i64, i64* %RCX.i395
  %916 = add i64 %915, 12
  %917 = load i64, i64* %PC.i393
  %918 = add i64 %917, 3
  store i64 %918, i64* %PC.i393
  %919 = inttoptr i64 %916 to i32*
  %920 = load i32, i32* %919
  %921 = sub i32 %913, %920
  %922 = icmp ult i32 %913, %920
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %923, i8* %924, align 1
  %925 = and i32 %921, 255
  %926 = call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %929, i8* %930, align 1
  %931 = xor i32 %920, %913
  %932 = xor i32 %931, %921
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %935, i8* %936, align 1
  %937 = icmp eq i32 %921, 0
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %938, i8* %939, align 1
  %940 = lshr i32 %921, 31
  %941 = trunc i32 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %941, i8* %942, align 1
  %943 = lshr i32 %913, 31
  %944 = lshr i32 %920, 31
  %945 = xor i32 %944, %943
  %946 = xor i32 %940, %943
  %947 = add i32 %946, %945
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %949, i8* %950, align 1
  store %struct.Memory* %loadMem_41b6b7, %struct.Memory** %MEMORY
  %loadMem_41b6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %PC.i392
  %955 = add i64 %954, 287
  %956 = load i64, i64* %PC.i392
  %957 = add i64 %956, 6
  %958 = load i64, i64* %PC.i392
  %959 = add i64 %958, 6
  store i64 %959, i64* %PC.i392
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %961 = load i8, i8* %960, align 1
  %962 = icmp eq i8 %961, 0
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %964 = load i8, i8* %963, align 1
  %965 = icmp ne i8 %964, 0
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %967 = load i8, i8* %966, align 1
  %968 = icmp ne i8 %967, 0
  %969 = xor i1 %965, %968
  %970 = xor i1 %969, true
  %971 = and i1 %962, %970
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %BRANCH_TAKEN, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %974 = select i1 %971, i64 %955, i64 %957
  store i64 %974, i64* %973, align 8
  store %struct.Memory* %loadMem_41b6ba, %struct.Memory** %MEMORY
  %loadBr_41b6ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b6ba = icmp eq i8 %loadBr_41b6ba, 1
  br i1 %cmpBr_41b6ba, label %block_.L_41b7d9, label %block_41b6c0

block_41b6c0:                                     ; preds = %block_.L_41b6b0
  %loadMem_41b6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %979 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %978, i64 0, i64 0
  %YMM0.i391 = bitcast %union.VectorReg* %979 to %"class.std::bitset"*
  %980 = bitcast %"class.std::bitset"* %YMM0.i391 to i8*
  %981 = load i64, i64* %PC.i390
  %982 = add i64 %981, ptrtoint (%G_0x39120__rip__type* @G_0x39120__rip_ to i64)
  %983 = load i64, i64* %PC.i390
  %984 = add i64 %983, 8
  store i64 %984, i64* %PC.i390
  %985 = inttoptr i64 %982 to double*
  %986 = load double, double* %985
  %987 = bitcast i8* %980 to double*
  store double %986, double* %987, align 1
  %988 = getelementptr inbounds i8, i8* %980, i64 8
  %989 = bitcast i8* %988 to double*
  store double 0.000000e+00, double* %989, align 1
  store %struct.Memory* %loadMem_41b6c0, %struct.Memory** %MEMORY
  %loadMem_41b6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %994 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %993, i64 0, i64 1
  %YMM1.i389 = bitcast %union.VectorReg* %994 to %"class.std::bitset"*
  %995 = bitcast %"class.std::bitset"* %YMM1.i389 to i8*
  %996 = load i64, i64* %PC.i388
  %997 = add i64 %996, ptrtoint (%G_0x39160__rip__type* @G_0x39160__rip_ to i64)
  %998 = load i64, i64* %PC.i388
  %999 = add i64 %998, 8
  store i64 %999, i64* %PC.i388
  %1000 = inttoptr i64 %997 to double*
  %1001 = load double, double* %1000
  %1002 = bitcast i8* %995 to double*
  store double %1001, double* %1002, align 1
  %1003 = getelementptr inbounds i8, i8* %995, i64 8
  %1004 = bitcast i8* %1003 to double*
  store double 0.000000e+00, double* %1004, align 1
  store %struct.Memory* %loadMem_41b6c8, %struct.Memory** %MEMORY
  %loadMem_41b6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1008, i64 0, i64 2
  %YMM2.i387 = bitcast %union.VectorReg* %1009 to %"class.std::bitset"*
  %1010 = bitcast %"class.std::bitset"* %YMM2.i387 to i8*
  %1011 = load i64, i64* %PC.i386
  %1012 = add i64 %1011, ptrtoint (%G_0x39108__rip__type* @G_0x39108__rip_ to i64)
  %1013 = load i64, i64* %PC.i386
  %1014 = add i64 %1013, 8
  store i64 %1014, i64* %PC.i386
  %1015 = inttoptr i64 %1012 to double*
  %1016 = load double, double* %1015
  %1017 = bitcast i8* %1010 to double*
  store double %1016, double* %1017, align 1
  %1018 = getelementptr inbounds i8, i8* %1010, i64 8
  %1019 = bitcast i8* %1018 to double*
  store double 0.000000e+00, double* %1019, align 1
  store %struct.Memory* %loadMem_41b6d0, %struct.Memory** %MEMORY
  %loadMem_41b6d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 3
  %YMM3.i385 = bitcast %union.VectorReg* %1024 to %"class.std::bitset"*
  %1025 = bitcast %"class.std::bitset"* %YMM3.i385 to i8*
  %1026 = load i64, i64* %PC.i384
  %1027 = add i64 %1026, ptrtoint (%G_0x39110__rip__type* @G_0x39110__rip_ to i64)
  %1028 = load i64, i64* %PC.i384
  %1029 = add i64 %1028, 8
  store i64 %1029, i64* %PC.i384
  %1030 = inttoptr i64 %1027 to double*
  %1031 = load double, double* %1030
  %1032 = bitcast i8* %1025 to double*
  store double %1031, double* %1032, align 1
  %1033 = getelementptr inbounds i8, i8* %1025, i64 8
  %1034 = bitcast i8* %1033 to double*
  store double 0.000000e+00, double* %1034, align 1
  store %struct.Memory* %loadMem_41b6d8, %struct.Memory** %MEMORY
  %loadMem_41b6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1041, i64 0, i64 4
  %YMM4.i383 = bitcast %union.VectorReg* %1042 to %"class.std::bitset"*
  %1043 = bitcast %"class.std::bitset"* %YMM4.i383 to i8*
  %1044 = load i64, i64* %RBP.i382
  %1045 = sub i64 %1044, 20
  %1046 = load i64, i64* %PC.i381
  %1047 = add i64 %1046, 5
  store i64 %1047, i64* %PC.i381
  %1048 = bitcast i8* %1043 to <2 x i32>*
  %1049 = load <2 x i32>, <2 x i32>* %1048, align 1
  %1050 = getelementptr inbounds i8, i8* %1043, i64 8
  %1051 = bitcast i8* %1050 to <2 x i32>*
  %1052 = load <2 x i32>, <2 x i32>* %1051, align 1
  %1053 = inttoptr i64 %1045 to i32*
  %1054 = load i32, i32* %1053
  %1055 = sitofp i32 %1054 to float
  %1056 = bitcast i8* %1043 to float*
  store float %1055, float* %1056, align 1
  %1057 = extractelement <2 x i32> %1049, i32 1
  %1058 = getelementptr inbounds i8, i8* %1043, i64 4
  %1059 = bitcast i8* %1058 to i32*
  store i32 %1057, i32* %1059, align 1
  %1060 = extractelement <2 x i32> %1052, i32 0
  %1061 = bitcast i8* %1050 to i32*
  store i32 %1060, i32* %1061, align 1
  %1062 = extractelement <2 x i32> %1052, i32 1
  %1063 = getelementptr inbounds i8, i8* %1043, i64 12
  %1064 = bitcast i8* %1063 to i32*
  store i32 %1062, i32* %1064, align 1
  store %struct.Memory* %loadMem_41b6e0, %struct.Memory** %MEMORY
  %loadMem_41b6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1068, i64 0, i64 4
  %YMM4.i379 = bitcast %union.VectorReg* %1069 to %"class.std::bitset"*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1071 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1070, i64 0, i64 4
  %XMM4.i380 = bitcast %union.VectorReg* %1071 to %union.vec128_t*
  %1072 = bitcast %"class.std::bitset"* %YMM4.i379 to i8*
  %1073 = bitcast %union.vec128_t* %XMM4.i380 to i8*
  %1074 = load i64, i64* %PC.i378
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %PC.i378
  %1076 = bitcast i8* %1073 to <2 x float>*
  %1077 = load <2 x float>, <2 x float>* %1076, align 1
  %1078 = extractelement <2 x float> %1077, i32 0
  %1079 = fpext float %1078 to double
  %1080 = bitcast i8* %1072 to double*
  store double %1079, double* %1080, align 1
  store %struct.Memory* %loadMem_41b6e5, %struct.Memory** %MEMORY
  %loadMem_41b6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1084, i64 0, i64 4
  %YMM4.i376 = bitcast %union.VectorReg* %1085 to %"class.std::bitset"*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1086, i64 0, i64 3
  %XMM3.i377 = bitcast %union.VectorReg* %1087 to %union.vec128_t*
  %1088 = bitcast %"class.std::bitset"* %YMM4.i376 to i8*
  %1089 = bitcast %"class.std::bitset"* %YMM4.i376 to i8*
  %1090 = bitcast %union.vec128_t* %XMM3.i377 to i8*
  %1091 = load i64, i64* %PC.i375
  %1092 = add i64 %1091, 4
  store i64 %1092, i64* %PC.i375
  %1093 = bitcast i8* %1089 to double*
  %1094 = load double, double* %1093, align 1
  %1095 = getelementptr inbounds i8, i8* %1089, i64 8
  %1096 = bitcast i8* %1095 to i64*
  %1097 = load i64, i64* %1096, align 1
  %1098 = bitcast i8* %1090 to double*
  %1099 = load double, double* %1098, align 1
  %1100 = fadd double %1094, %1099
  %1101 = bitcast i8* %1088 to double*
  store double %1100, double* %1101, align 1
  %1102 = getelementptr inbounds i8, i8* %1088, i64 8
  %1103 = bitcast i8* %1102 to i64*
  store i64 %1097, i64* %1103, align 1
  store %struct.Memory* %loadMem_41b6e9, %struct.Memory** %MEMORY
  %loadMem_41b6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 1
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 15
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1112 to i64*
  %1113 = load i64, i64* %RBP.i374
  %1114 = sub i64 %1113, 8
  %1115 = load i64, i64* %PC.i372
  %1116 = add i64 %1115, 4
  store i64 %1116, i64* %PC.i372
  %1117 = inttoptr i64 %1114 to i64*
  %1118 = load i64, i64* %1117
  store i64 %1118, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_41b6ed, %struct.Memory** %MEMORY
  %loadMem_41b6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1126 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1125, i64 0, i64 3
  %YMM3.i371 = bitcast %union.VectorReg* %1126 to %"class.std::bitset"*
  %1127 = bitcast %"class.std::bitset"* %YMM3.i371 to i8*
  %1128 = load i64, i64* %RAX.i370
  %1129 = add i64 %1128, 44
  %1130 = load i64, i64* %PC.i369
  %1131 = add i64 %1130, 5
  store i64 %1131, i64* %PC.i369
  %1132 = inttoptr i64 %1129 to float*
  %1133 = load float, float* %1132
  %1134 = fpext float %1133 to double
  %1135 = bitcast i8* %1127 to double*
  store double %1134, double* %1135, align 1
  store %struct.Memory* %loadMem_41b6f1, %struct.Memory** %MEMORY
  %loadMem_41b6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1139, i64 0, i64 4
  %YMM4.i367 = bitcast %union.VectorReg* %1140 to %"class.std::bitset"*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1141, i64 0, i64 3
  %XMM3.i368 = bitcast %union.VectorReg* %1142 to %union.vec128_t*
  %1143 = bitcast %"class.std::bitset"* %YMM4.i367 to i8*
  %1144 = bitcast %"class.std::bitset"* %YMM4.i367 to i8*
  %1145 = bitcast %union.vec128_t* %XMM3.i368 to i8*
  %1146 = load i64, i64* %PC.i366
  %1147 = add i64 %1146, 4
  store i64 %1147, i64* %PC.i366
  %1148 = bitcast i8* %1144 to double*
  %1149 = load double, double* %1148, align 1
  %1150 = getelementptr inbounds i8, i8* %1144, i64 8
  %1151 = bitcast i8* %1150 to i64*
  %1152 = load i64, i64* %1151, align 1
  %1153 = bitcast i8* %1145 to double*
  %1154 = load double, double* %1153, align 1
  %1155 = fsub double %1149, %1154
  %1156 = bitcast i8* %1143 to double*
  store double %1155, double* %1156, align 1
  %1157 = getelementptr inbounds i8, i8* %1143, i64 8
  %1158 = bitcast i8* %1157 to i64*
  store i64 %1152, i64* %1158, align 1
  store %struct.Memory* %loadMem_41b6f6, %struct.Memory** %MEMORY
  %loadMem_41b6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1162, i64 0, i64 3
  %YMM3.i364 = bitcast %union.VectorReg* %1163 to %"class.std::bitset"*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1164, i64 0, i64 4
  %XMM4.i365 = bitcast %union.VectorReg* %1165 to %union.vec128_t*
  %1166 = bitcast %"class.std::bitset"* %YMM3.i364 to i8*
  %1167 = bitcast %union.vec128_t* %XMM4.i365 to i8*
  %1168 = load i64, i64* %PC.i363
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %PC.i363
  %1170 = bitcast i8* %1166 to <2 x i32>*
  %1171 = load <2 x i32>, <2 x i32>* %1170, align 1
  %1172 = getelementptr inbounds i8, i8* %1166, i64 8
  %1173 = bitcast i8* %1172 to <2 x i32>*
  %1174 = load <2 x i32>, <2 x i32>* %1173, align 1
  %1175 = bitcast i8* %1167 to double*
  %1176 = load double, double* %1175, align 1
  %1177 = fptrunc double %1176 to float
  %1178 = bitcast i8* %1166 to float*
  store float %1177, float* %1178, align 1
  %1179 = extractelement <2 x i32> %1171, i32 1
  %1180 = getelementptr inbounds i8, i8* %1166, i64 4
  %1181 = bitcast i8* %1180 to i32*
  store i32 %1179, i32* %1181, align 1
  %1182 = extractelement <2 x i32> %1174, i32 0
  %1183 = bitcast i8* %1172 to i32*
  store i32 %1182, i32* %1183, align 1
  %1184 = extractelement <2 x i32> %1174, i32 1
  %1185 = getelementptr inbounds i8, i8* %1166, i64 12
  %1186 = bitcast i8* %1185 to i32*
  store i32 %1184, i32* %1186, align 1
  store %struct.Memory* %loadMem_41b6fa, %struct.Memory** %MEMORY
  %loadMem_41b6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 15
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1193, i64 0, i64 3
  %XMM3.i362 = bitcast %union.VectorReg* %1194 to %union.vec128_t*
  %1195 = load i64, i64* %RBP.i361
  %1196 = sub i64 %1195, 36
  %1197 = bitcast %union.vec128_t* %XMM3.i362 to i8*
  %1198 = load i64, i64* %PC.i360
  %1199 = add i64 %1198, 5
  store i64 %1199, i64* %PC.i360
  %1200 = bitcast i8* %1197 to <2 x float>*
  %1201 = load <2 x float>, <2 x float>* %1200, align 1
  %1202 = extractelement <2 x float> %1201, i32 0
  %1203 = inttoptr i64 %1196 to float*
  store float %1202, float* %1203
  store %struct.Memory* %loadMem_41b6fe, %struct.Memory** %MEMORY
  %loadMem_41b703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 15
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %RBP.i359
  %1214 = sub i64 %1213, 8
  %1215 = load i64, i64* %PC.i357
  %1216 = add i64 %1215, 4
  store i64 %1216, i64* %PC.i357
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217
  store i64 %1218, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_41b703, %struct.Memory** %MEMORY
  %loadMem_41b707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 1
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1225, i64 0, i64 3
  %YMM3.i356 = bitcast %union.VectorReg* %1226 to %"class.std::bitset"*
  %1227 = bitcast %"class.std::bitset"* %YMM3.i356 to i8*
  %1228 = load i64, i64* %RAX.i355
  %1229 = add i64 %1228, 28
  %1230 = load i64, i64* %PC.i354
  %1231 = add i64 %1230, 5
  store i64 %1231, i64* %PC.i354
  %1232 = bitcast i8* %1227 to <2 x i32>*
  %1233 = load <2 x i32>, <2 x i32>* %1232, align 1
  %1234 = getelementptr inbounds i8, i8* %1227, i64 8
  %1235 = bitcast i8* %1234 to <2 x i32>*
  %1236 = load <2 x i32>, <2 x i32>* %1235, align 1
  %1237 = inttoptr i64 %1229 to i32*
  %1238 = load i32, i32* %1237
  %1239 = sitofp i32 %1238 to float
  %1240 = bitcast i8* %1227 to float*
  store float %1239, float* %1240, align 1
  %1241 = extractelement <2 x i32> %1233, i32 1
  %1242 = getelementptr inbounds i8, i8* %1227, i64 4
  %1243 = bitcast i8* %1242 to i32*
  store i32 %1241, i32* %1243, align 1
  %1244 = extractelement <2 x i32> %1236, i32 0
  %1245 = bitcast i8* %1234 to i32*
  store i32 %1244, i32* %1245, align 1
  %1246 = extractelement <2 x i32> %1236, i32 1
  %1247 = getelementptr inbounds i8, i8* %1227, i64 12
  %1248 = bitcast i8* %1247 to i32*
  store i32 %1246, i32* %1248, align 1
  store %struct.Memory* %loadMem_41b707, %struct.Memory** %MEMORY
  %loadMem_41b70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1252, i64 0, i64 3
  %YMM3.i352 = bitcast %union.VectorReg* %1253 to %"class.std::bitset"*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1254, i64 0, i64 3
  %XMM3.i353 = bitcast %union.VectorReg* %1255 to %union.vec128_t*
  %1256 = bitcast %"class.std::bitset"* %YMM3.i352 to i8*
  %1257 = bitcast %union.vec128_t* %XMM3.i353 to i8*
  %1258 = load i64, i64* %PC.i351
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC.i351
  %1260 = bitcast i8* %1257 to <2 x float>*
  %1261 = load <2 x float>, <2 x float>* %1260, align 1
  %1262 = extractelement <2 x float> %1261, i32 0
  %1263 = fpext float %1262 to double
  %1264 = bitcast i8* %1256 to double*
  store double %1263, double* %1264, align 1
  store %struct.Memory* %loadMem_41b70c, %struct.Memory** %MEMORY
  %loadMem_41b710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i350
  %1275 = sub i64 %1274, 8
  %1276 = load i64, i64* %PC.i348
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i348
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278
  store i64 %1279, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_41b710, %struct.Memory** %MEMORY
  %loadMem_41b714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1286, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %1287 to %"class.std::bitset"*
  %1288 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %1289 = load i64, i64* %RAX.i347
  %1290 = add i64 %1289, 48
  %1291 = load i64, i64* %PC.i346
  %1292 = add i64 %1291, 5
  store i64 %1292, i64* %PC.i346
  %1293 = inttoptr i64 %1290 to float*
  %1294 = load float, float* %1293
  %1295 = fpext float %1294 to double
  %1296 = bitcast i8* %1288 to double*
  store double %1295, double* %1296, align 1
  store %struct.Memory* %loadMem_41b714, %struct.Memory** %MEMORY
  %loadMem_41b719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 33
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1300, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %1301 to %"class.std::bitset"*
  %1302 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %1303 = load i64, i64* %PC.i345
  %1304 = add i64 %1303, ptrtoint (%G_0x3915f__rip__type* @G_0x3915f__rip_ to i64)
  %1305 = load i64, i64* %PC.i345
  %1306 = add i64 %1305, 8
  store i64 %1306, i64* %PC.i345
  %1307 = inttoptr i64 %1304 to double*
  %1308 = load double, double* %1307
  %1309 = bitcast i8* %1302 to double*
  store double %1308, double* %1309, align 1
  %1310 = getelementptr inbounds i8, i8* %1302, i64 8
  %1311 = bitcast i8* %1310 to double*
  store double 0.000000e+00, double* %1311, align 1
  store %struct.Memory* %loadMem_41b719, %struct.Memory** %MEMORY
  %loadMem_41b721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1318, i64 0, i64 0
  %XMM0.i344 = bitcast %union.VectorReg* %1319 to %union.vec128_t*
  %1320 = load i64, i64* %RBP.i343
  %1321 = sub i64 %1320, 48
  %1322 = bitcast %union.vec128_t* %XMM0.i344 to i8*
  %1323 = load i64, i64* %PC.i342
  %1324 = add i64 %1323, 5
  store i64 %1324, i64* %PC.i342
  %1325 = bitcast i8* %1322 to double*
  %1326 = load double, double* %1325, align 1
  %1327 = inttoptr i64 %1321 to double*
  store double %1326, double* %1327
  store %struct.Memory* %loadMem_41b721, %struct.Memory** %MEMORY
  %loadMem_41b726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1331, i64 0, i64 0
  %YMM0.i341 = bitcast %union.VectorReg* %1332 to %"class.std::bitset"*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1333, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %1334 to %union.vec128_t*
  %1335 = bitcast %"class.std::bitset"* %YMM0.i341 to i8*
  %1336 = bitcast %union.vec128_t* %XMM5.i to i8*
  %1337 = load i64, i64* %PC.i340
  %1338 = add i64 %1337, 3
  store i64 %1338, i64* %PC.i340
  %1339 = bitcast i8* %1336 to <2 x i32>*
  %1340 = load <2 x i32>, <2 x i32>* %1339, align 1
  %1341 = getelementptr inbounds i8, i8* %1336, i64 8
  %1342 = bitcast i8* %1341 to <2 x i32>*
  %1343 = load <2 x i32>, <2 x i32>* %1342, align 1
  %1344 = extractelement <2 x i32> %1340, i32 0
  %1345 = bitcast i8* %1335 to i32*
  store i32 %1344, i32* %1345, align 1
  %1346 = extractelement <2 x i32> %1340, i32 1
  %1347 = getelementptr inbounds i8, i8* %1335, i64 4
  %1348 = bitcast i8* %1347 to i32*
  store i32 %1346, i32* %1348, align 1
  %1349 = extractelement <2 x i32> %1343, i32 0
  %1350 = getelementptr inbounds i8, i8* %1335, i64 8
  %1351 = bitcast i8* %1350 to i32*
  store i32 %1349, i32* %1351, align 1
  %1352 = extractelement <2 x i32> %1343, i32 1
  %1353 = getelementptr inbounds i8, i8* %1335, i64 12
  %1354 = bitcast i8* %1353 to i32*
  store i32 %1352, i32* %1354, align 1
  store %struct.Memory* %loadMem_41b726, %struct.Memory** %MEMORY
  %loadMem_41b729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1361, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %1362 to %union.vec128_t*
  %1363 = load i64, i64* %RBP.i339
  %1364 = sub i64 %1363, 56
  %1365 = bitcast %union.vec128_t* %XMM4.i to i8*
  %1366 = load i64, i64* %PC.i338
  %1367 = add i64 %1366, 5
  store i64 %1367, i64* %PC.i338
  %1368 = bitcast i8* %1365 to double*
  %1369 = load double, double* %1368, align 1
  %1370 = inttoptr i64 %1364 to double*
  store double %1369, double* %1370
  store %struct.Memory* %loadMem_41b729, %struct.Memory** %MEMORY
  %loadMem_41b72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1377, i64 0, i64 1
  %XMM1.i337 = bitcast %union.VectorReg* %1378 to %union.vec128_t*
  %1379 = load i64, i64* %RBP.i336
  %1380 = sub i64 %1379, 64
  %1381 = bitcast %union.vec128_t* %XMM1.i337 to i8*
  %1382 = load i64, i64* %PC.i335
  %1383 = add i64 %1382, 5
  store i64 %1383, i64* %PC.i335
  %1384 = bitcast i8* %1381 to double*
  %1385 = load double, double* %1384, align 1
  %1386 = inttoptr i64 %1380 to double*
  store double %1385, double* %1386
  store %struct.Memory* %loadMem_41b72e, %struct.Memory** %MEMORY
  %loadMem_41b733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 15
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1394 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1393, i64 0, i64 2
  %XMM2.i334 = bitcast %union.VectorReg* %1394 to %union.vec128_t*
  %1395 = load i64, i64* %RBP.i333
  %1396 = sub i64 %1395, 72
  %1397 = bitcast %union.vec128_t* %XMM2.i334 to i8*
  %1398 = load i64, i64* %PC.i332
  %1399 = add i64 %1398, 5
  store i64 %1399, i64* %PC.i332
  %1400 = bitcast i8* %1397 to double*
  %1401 = load double, double* %1400, align 1
  %1402 = inttoptr i64 %1396 to double*
  store double %1401, double* %1402
  store %struct.Memory* %loadMem_41b733, %struct.Memory** %MEMORY
  %loadMem_41b738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 15
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1409, i64 0, i64 3
  %XMM3.i331 = bitcast %union.VectorReg* %1410 to %union.vec128_t*
  %1411 = load i64, i64* %RBP.i330
  %1412 = sub i64 %1411, 80
  %1413 = bitcast %union.vec128_t* %XMM3.i331 to i8*
  %1414 = load i64, i64* %PC.i329
  %1415 = add i64 %1414, 5
  store i64 %1415, i64* %PC.i329
  %1416 = bitcast i8* %1413 to double*
  %1417 = load double, double* %1416, align 1
  %1418 = inttoptr i64 %1412 to double*
  store double %1417, double* %1418
  store %struct.Memory* %loadMem_41b738, %struct.Memory** %MEMORY
  %loadMem1_41b73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i328
  %1423 = add i64 %1422, -106573
  %1424 = load i64, i64* %PC.i328
  %1425 = add i64 %1424, 5
  %1426 = load i64, i64* %PC.i328
  %1427 = add i64 %1426, 5
  store i64 %1427, i64* %PC.i328
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1429 = load i64, i64* %1428, align 8
  %1430 = add i64 %1429, -8
  %1431 = inttoptr i64 %1430 to i64*
  store i64 %1425, i64* %1431
  store i64 %1430, i64* %1428, align 8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1432, align 8
  store %struct.Memory* %loadMem1_41b73d, %struct.Memory** %MEMORY
  %loadMem2_41b73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b73d = load i64, i64* %3
  %call2_41b73d = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_41b73d, %struct.Memory* %loadMem2_41b73d)
  store %struct.Memory* %call2_41b73d, %struct.Memory** %MEMORY
  %loadMem_41b742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 15
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1439, i64 0, i64 1
  %YMM1.i327 = bitcast %union.VectorReg* %1440 to %"class.std::bitset"*
  %1441 = bitcast %"class.std::bitset"* %YMM1.i327 to i8*
  %1442 = load i64, i64* %RBP.i326
  %1443 = sub i64 %1442, 56
  %1444 = load i64, i64* %PC.i325
  %1445 = add i64 %1444, 5
  store i64 %1445, i64* %PC.i325
  %1446 = inttoptr i64 %1443 to double*
  %1447 = load double, double* %1446
  %1448 = bitcast i8* %1441 to double*
  store double %1447, double* %1448, align 1
  %1449 = getelementptr inbounds i8, i8* %1441, i64 8
  %1450 = bitcast i8* %1449 to double*
  store double 0.000000e+00, double* %1450, align 1
  store %struct.Memory* %loadMem_41b742, %struct.Memory** %MEMORY
  %loadMem_41b747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1454, i64 0, i64 1
  %YMM1.i323 = bitcast %union.VectorReg* %1455 to %"class.std::bitset"*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1456, i64 0, i64 0
  %XMM0.i324 = bitcast %union.VectorReg* %1457 to %union.vec128_t*
  %1458 = bitcast %"class.std::bitset"* %YMM1.i323 to i8*
  %1459 = bitcast %"class.std::bitset"* %YMM1.i323 to i8*
  %1460 = bitcast %union.vec128_t* %XMM0.i324 to i8*
  %1461 = load i64, i64* %PC.i322
  %1462 = add i64 %1461, 4
  store i64 %1462, i64* %PC.i322
  %1463 = bitcast i8* %1459 to double*
  %1464 = load double, double* %1463, align 1
  %1465 = getelementptr inbounds i8, i8* %1459, i64 8
  %1466 = bitcast i8* %1465 to i64*
  %1467 = load i64, i64* %1466, align 1
  %1468 = bitcast i8* %1460 to double*
  %1469 = load double, double* %1468, align 1
  %1470 = fmul double %1464, %1469
  %1471 = bitcast i8* %1458 to double*
  store double %1470, double* %1471, align 1
  %1472 = getelementptr inbounds i8, i8* %1458, i64 8
  %1473 = bitcast i8* %1472 to i64*
  store i64 %1467, i64* %1473, align 1
  store %struct.Memory* %loadMem_41b747, %struct.Memory** %MEMORY
  %loadMem_41b74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1480, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %1481 to %"class.std::bitset"*
  %1482 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %1483 = load i64, i64* %RBP.i320
  %1484 = sub i64 %1483, 72
  %1485 = load i64, i64* %PC.i319
  %1486 = add i64 %1485, 5
  store i64 %1486, i64* %PC.i319
  %1487 = inttoptr i64 %1484 to double*
  %1488 = load double, double* %1487
  %1489 = bitcast i8* %1482 to double*
  store double %1488, double* %1489, align 1
  %1490 = getelementptr inbounds i8, i8* %1482, i64 8
  %1491 = bitcast i8* %1490 to double*
  store double 0.000000e+00, double* %1491, align 1
  store %struct.Memory* %loadMem_41b74b, %struct.Memory** %MEMORY
  %loadMem_41b750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1495, i64 0, i64 0
  %YMM0.i317 = bitcast %union.VectorReg* %1496 to %"class.std::bitset"*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1497, i64 0, i64 1
  %XMM1.i318 = bitcast %union.VectorReg* %1498 to %union.vec128_t*
  %1499 = bitcast %"class.std::bitset"* %YMM0.i317 to i8*
  %1500 = bitcast %"class.std::bitset"* %YMM0.i317 to i8*
  %1501 = bitcast %union.vec128_t* %XMM1.i318 to i8*
  %1502 = load i64, i64* %PC.i316
  %1503 = add i64 %1502, 4
  store i64 %1503, i64* %PC.i316
  %1504 = bitcast i8* %1500 to double*
  %1505 = load double, double* %1504, align 1
  %1506 = getelementptr inbounds i8, i8* %1500, i64 8
  %1507 = bitcast i8* %1506 to i64*
  %1508 = load i64, i64* %1507, align 1
  %1509 = bitcast i8* %1501 to double*
  %1510 = load double, double* %1509, align 1
  %1511 = fdiv double %1505, %1510
  %1512 = bitcast i8* %1499 to double*
  store double %1511, double* %1512, align 1
  %1513 = getelementptr inbounds i8, i8* %1499, i64 8
  %1514 = bitcast i8* %1513 to i64*
  store i64 %1508, i64* %1514, align 1
  store %struct.Memory* %loadMem_41b750, %struct.Memory** %MEMORY
  %loadMem_41b754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 15
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1522 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1521, i64 0, i64 1
  %YMM1.i315 = bitcast %union.VectorReg* %1522 to %"class.std::bitset"*
  %1523 = bitcast %"class.std::bitset"* %YMM1.i315 to i8*
  %1524 = load i64, i64* %RBP.i314
  %1525 = sub i64 %1524, 36
  %1526 = load i64, i64* %PC.i313
  %1527 = add i64 %1526, 5
  store i64 %1527, i64* %PC.i313
  %1528 = inttoptr i64 %1525 to float*
  %1529 = load float, float* %1528
  %1530 = fpext float %1529 to double
  %1531 = bitcast i8* %1523 to double*
  store double %1530, double* %1531, align 1
  store %struct.Memory* %loadMem_41b754, %struct.Memory** %MEMORY
  %loadMem_41b759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1538, i64 0, i64 2
  %YMM2.i312 = bitcast %union.VectorReg* %1539 to %"class.std::bitset"*
  %1540 = bitcast %"class.std::bitset"* %YMM2.i312 to i8*
  %1541 = load i64, i64* %RBP.i311
  %1542 = sub i64 %1541, 64
  %1543 = load i64, i64* %PC.i310
  %1544 = add i64 %1543, 5
  store i64 %1544, i64* %PC.i310
  %1545 = inttoptr i64 %1542 to double*
  %1546 = load double, double* %1545
  %1547 = bitcast i8* %1540 to double*
  store double %1546, double* %1547, align 1
  %1548 = getelementptr inbounds i8, i8* %1540, i64 8
  %1549 = bitcast i8* %1548 to double*
  store double 0.000000e+00, double* %1549, align 1
  store %struct.Memory* %loadMem_41b759, %struct.Memory** %MEMORY
  %loadMem_41b75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1553, i64 0, i64 2
  %YMM2.i308 = bitcast %union.VectorReg* %1554 to %"class.std::bitset"*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1555, i64 0, i64 1
  %XMM1.i309 = bitcast %union.VectorReg* %1556 to %union.vec128_t*
  %1557 = bitcast %"class.std::bitset"* %YMM2.i308 to i8*
  %1558 = bitcast %"class.std::bitset"* %YMM2.i308 to i8*
  %1559 = bitcast %union.vec128_t* %XMM1.i309 to i8*
  %1560 = load i64, i64* %PC.i307
  %1561 = add i64 %1560, 4
  store i64 %1561, i64* %PC.i307
  %1562 = bitcast i8* %1558 to double*
  %1563 = load double, double* %1562, align 1
  %1564 = getelementptr inbounds i8, i8* %1558, i64 8
  %1565 = bitcast i8* %1564 to i64*
  %1566 = load i64, i64* %1565, align 1
  %1567 = bitcast i8* %1559 to double*
  %1568 = load double, double* %1567, align 1
  %1569 = fmul double %1563, %1568
  %1570 = bitcast i8* %1557 to double*
  store double %1569, double* %1570, align 1
  %1571 = getelementptr inbounds i8, i8* %1557, i64 8
  %1572 = bitcast i8* %1571 to i64*
  store i64 %1566, i64* %1572, align 1
  store %struct.Memory* %loadMem_41b75e, %struct.Memory** %MEMORY
  %loadMem_41b762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 15
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1579, i64 0, i64 1
  %YMM1.i306 = bitcast %union.VectorReg* %1580 to %"class.std::bitset"*
  %1581 = bitcast %"class.std::bitset"* %YMM1.i306 to i8*
  %1582 = load i64, i64* %RBP.i305
  %1583 = sub i64 %1582, 36
  %1584 = load i64, i64* %PC.i304
  %1585 = add i64 %1584, 5
  store i64 %1585, i64* %PC.i304
  %1586 = inttoptr i64 %1583 to float*
  %1587 = load float, float* %1586
  %1588 = fpext float %1587 to double
  %1589 = bitcast i8* %1581 to double*
  store double %1588, double* %1589, align 1
  store %struct.Memory* %loadMem_41b762, %struct.Memory** %MEMORY
  %loadMem_41b767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1593, i64 0, i64 2
  %YMM2.i302 = bitcast %union.VectorReg* %1594 to %"class.std::bitset"*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1595, i64 0, i64 1
  %XMM1.i303 = bitcast %union.VectorReg* %1596 to %union.vec128_t*
  %1597 = bitcast %"class.std::bitset"* %YMM2.i302 to i8*
  %1598 = bitcast %"class.std::bitset"* %YMM2.i302 to i8*
  %1599 = bitcast %union.vec128_t* %XMM1.i303 to i8*
  %1600 = load i64, i64* %PC.i301
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %PC.i301
  %1602 = bitcast i8* %1598 to double*
  %1603 = load double, double* %1602, align 1
  %1604 = getelementptr inbounds i8, i8* %1598, i64 8
  %1605 = bitcast i8* %1604 to i64*
  %1606 = load i64, i64* %1605, align 1
  %1607 = bitcast i8* %1599 to double*
  %1608 = load double, double* %1607, align 1
  %1609 = fmul double %1603, %1608
  %1610 = bitcast i8* %1597 to double*
  store double %1609, double* %1610, align 1
  %1611 = getelementptr inbounds i8, i8* %1597, i64 8
  %1612 = bitcast i8* %1611 to i64*
  store i64 %1606, i64* %1612, align 1
  store %struct.Memory* %loadMem_41b767, %struct.Memory** %MEMORY
  %loadMem_41b76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 33
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 1
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 15
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1621 to i64*
  %1622 = load i64, i64* %RBP.i300
  %1623 = sub i64 %1622, 8
  %1624 = load i64, i64* %PC.i298
  %1625 = add i64 %1624, 4
  store i64 %1625, i64* %PC.i298
  %1626 = inttoptr i64 %1623 to i64*
  %1627 = load i64, i64* %1626
  store i64 %1627, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_41b76b, %struct.Memory** %MEMORY
  %loadMem_41b76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 1
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1634, i64 0, i64 1
  %YMM1.i297 = bitcast %union.VectorReg* %1635 to %"class.std::bitset"*
  %1636 = bitcast %"class.std::bitset"* %YMM1.i297 to i8*
  %1637 = load i64, i64* %RAX.i296
  %1638 = add i64 %1637, 48
  %1639 = load i64, i64* %PC.i295
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %PC.i295
  %1641 = inttoptr i64 %1638 to float*
  %1642 = load float, float* %1641
  %1643 = fpext float %1642 to double
  %1644 = bitcast i8* %1636 to double*
  store double %1643, double* %1644, align 1
  store %struct.Memory* %loadMem_41b76f, %struct.Memory** %MEMORY
  %loadMem_41b774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1651, i64 0, i64 3
  %YMM3.i294 = bitcast %union.VectorReg* %1652 to %"class.std::bitset"*
  %1653 = bitcast %"class.std::bitset"* %YMM3.i294 to i8*
  %1654 = load i64, i64* %RBP.i293
  %1655 = sub i64 %1654, 48
  %1656 = load i64, i64* %PC.i292
  %1657 = add i64 %1656, 5
  store i64 %1657, i64* %PC.i292
  %1658 = inttoptr i64 %1655 to double*
  %1659 = load double, double* %1658
  %1660 = bitcast i8* %1653 to double*
  store double %1659, double* %1660, align 1
  %1661 = getelementptr inbounds i8, i8* %1653, i64 8
  %1662 = bitcast i8* %1661 to double*
  store double 0.000000e+00, double* %1662, align 1
  store %struct.Memory* %loadMem_41b774, %struct.Memory** %MEMORY
  %loadMem_41b779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1666, i64 0, i64 3
  %YMM3.i290 = bitcast %union.VectorReg* %1667 to %"class.std::bitset"*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1669 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1668, i64 0, i64 1
  %XMM1.i291 = bitcast %union.VectorReg* %1669 to %union.vec128_t*
  %1670 = bitcast %"class.std::bitset"* %YMM3.i290 to i8*
  %1671 = bitcast %"class.std::bitset"* %YMM3.i290 to i8*
  %1672 = bitcast %union.vec128_t* %XMM1.i291 to i8*
  %1673 = load i64, i64* %PC.i289
  %1674 = add i64 %1673, 4
  store i64 %1674, i64* %PC.i289
  %1675 = bitcast i8* %1671 to double*
  %1676 = load double, double* %1675, align 1
  %1677 = getelementptr inbounds i8, i8* %1671, i64 8
  %1678 = bitcast i8* %1677 to i64*
  %1679 = load i64, i64* %1678, align 1
  %1680 = bitcast i8* %1672 to double*
  %1681 = load double, double* %1680, align 1
  %1682 = fmul double %1676, %1681
  %1683 = bitcast i8* %1670 to double*
  store double %1682, double* %1683, align 1
  %1684 = getelementptr inbounds i8, i8* %1670, i64 8
  %1685 = bitcast i8* %1684 to i64*
  store i64 %1679, i64* %1685, align 1
  store %struct.Memory* %loadMem_41b779, %struct.Memory** %MEMORY
  %loadMem_41b77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 1
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 15
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %RBP.i288
  %1696 = sub i64 %1695, 8
  %1697 = load i64, i64* %PC.i286
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %PC.i286
  %1699 = inttoptr i64 %1696 to i64*
  %1700 = load i64, i64* %1699
  store i64 %1700, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_41b77d, %struct.Memory** %MEMORY
  %loadMem_41b781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 1
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1708 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1707, i64 0, i64 1
  %YMM1.i285 = bitcast %union.VectorReg* %1708 to %"class.std::bitset"*
  %1709 = bitcast %"class.std::bitset"* %YMM1.i285 to i8*
  %1710 = load i64, i64* %RAX.i284
  %1711 = add i64 %1710, 48
  %1712 = load i64, i64* %PC.i283
  %1713 = add i64 %1712, 5
  store i64 %1713, i64* %PC.i283
  %1714 = inttoptr i64 %1711 to float*
  %1715 = load float, float* %1714
  %1716 = fpext float %1715 to double
  %1717 = bitcast i8* %1709 to double*
  store double %1716, double* %1717, align 1
  store %struct.Memory* %loadMem_41b781, %struct.Memory** %MEMORY
  %loadMem_41b786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1721, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %1722 to %"class.std::bitset"*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1723, i64 0, i64 1
  %XMM1.i282 = bitcast %union.VectorReg* %1724 to %union.vec128_t*
  %1725 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1726 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1727 = bitcast %union.vec128_t* %XMM1.i282 to i8*
  %1728 = load i64, i64* %PC.i281
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %PC.i281
  %1730 = bitcast i8* %1726 to double*
  %1731 = load double, double* %1730, align 1
  %1732 = getelementptr inbounds i8, i8* %1726, i64 8
  %1733 = bitcast i8* %1732 to i64*
  %1734 = load i64, i64* %1733, align 1
  %1735 = bitcast i8* %1727 to double*
  %1736 = load double, double* %1735, align 1
  %1737 = fmul double %1731, %1736
  %1738 = bitcast i8* %1725 to double*
  store double %1737, double* %1738, align 1
  %1739 = getelementptr inbounds i8, i8* %1725, i64 8
  %1740 = bitcast i8* %1739 to i64*
  store i64 %1734, i64* %1740, align 1
  store %struct.Memory* %loadMem_41b786, %struct.Memory** %MEMORY
  %loadMem_41b78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1744, i64 0, i64 2
  %YMM2.i280 = bitcast %union.VectorReg* %1745 to %"class.std::bitset"*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1747 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1746, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %1747 to %union.vec128_t*
  %1748 = bitcast %"class.std::bitset"* %YMM2.i280 to i8*
  %1749 = bitcast %"class.std::bitset"* %YMM2.i280 to i8*
  %1750 = bitcast %union.vec128_t* %XMM3.i to i8*
  %1751 = load i64, i64* %PC.i279
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC.i279
  %1753 = bitcast i8* %1749 to double*
  %1754 = load double, double* %1753, align 1
  %1755 = getelementptr inbounds i8, i8* %1749, i64 8
  %1756 = bitcast i8* %1755 to i64*
  %1757 = load i64, i64* %1756, align 1
  %1758 = bitcast i8* %1750 to double*
  %1759 = load double, double* %1758, align 1
  %1760 = fdiv double %1754, %1759
  %1761 = bitcast i8* %1748 to double*
  store double %1760, double* %1761, align 1
  %1762 = getelementptr inbounds i8, i8* %1748, i64 8
  %1763 = bitcast i8* %1762 to i64*
  store i64 %1757, i64* %1763, align 1
  store %struct.Memory* %loadMem_41b78a, %struct.Memory** %MEMORY
  %loadMem_41b78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1770, i64 0, i64 0
  %XMM0.i278 = bitcast %union.VectorReg* %1771 to %union.vec128_t*
  %1772 = load i64, i64* %RBP.i277
  %1773 = sub i64 %1772, 88
  %1774 = bitcast %union.vec128_t* %XMM0.i278 to i8*
  %1775 = load i64, i64* %PC.i276
  %1776 = add i64 %1775, 5
  store i64 %1776, i64* %PC.i276
  %1777 = bitcast i8* %1774 to double*
  %1778 = load double, double* %1777, align 1
  %1779 = inttoptr i64 %1773 to double*
  store double %1778, double* %1779
  store %struct.Memory* %loadMem_41b78e, %struct.Memory** %MEMORY
  %loadMem_41b793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 33
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1784 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1783, i64 0, i64 0
  %YMM0.i274 = bitcast %union.VectorReg* %1784 to %"class.std::bitset"*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1785, i64 0, i64 2
  %XMM2.i275 = bitcast %union.VectorReg* %1786 to %union.vec128_t*
  %1787 = bitcast %"class.std::bitset"* %YMM0.i274 to i8*
  %1788 = bitcast %union.vec128_t* %XMM2.i275 to i8*
  %1789 = load i64, i64* %PC.i273
  %1790 = add i64 %1789, 3
  store i64 %1790, i64* %PC.i273
  %1791 = bitcast i8* %1788 to <2 x i32>*
  %1792 = load <2 x i32>, <2 x i32>* %1791, align 1
  %1793 = getelementptr inbounds i8, i8* %1788, i64 8
  %1794 = bitcast i8* %1793 to <2 x i32>*
  %1795 = load <2 x i32>, <2 x i32>* %1794, align 1
  %1796 = extractelement <2 x i32> %1792, i32 0
  %1797 = bitcast i8* %1787 to i32*
  store i32 %1796, i32* %1797, align 1
  %1798 = extractelement <2 x i32> %1792, i32 1
  %1799 = getelementptr inbounds i8, i8* %1787, i64 4
  %1800 = bitcast i8* %1799 to i32*
  store i32 %1798, i32* %1800, align 1
  %1801 = extractelement <2 x i32> %1795, i32 0
  %1802 = getelementptr inbounds i8, i8* %1787, i64 8
  %1803 = bitcast i8* %1802 to i32*
  store i32 %1801, i32* %1803, align 1
  %1804 = extractelement <2 x i32> %1795, i32 1
  %1805 = getelementptr inbounds i8, i8* %1787, i64 12
  %1806 = bitcast i8* %1805 to i32*
  store i32 %1804, i32* %1806, align 1
  store %struct.Memory* %loadMem_41b793, %struct.Memory** %MEMORY
  %loadMem1_41b796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1809 to i64*
  %1810 = load i64, i64* %PC.i272
  %1811 = add i64 %1810, -107382
  %1812 = load i64, i64* %PC.i272
  %1813 = add i64 %1812, 5
  %1814 = load i64, i64* %PC.i272
  %1815 = add i64 %1814, 5
  store i64 %1815, i64* %PC.i272
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1817 = load i64, i64* %1816, align 8
  %1818 = add i64 %1817, -8
  %1819 = inttoptr i64 %1818 to i64*
  store i64 %1813, i64* %1819
  store i64 %1818, i64* %1816, align 8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1811, i64* %1820, align 8
  store %struct.Memory* %loadMem1_41b796, %struct.Memory** %MEMORY
  %loadMem2_41b796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b796 = load i64, i64* %3
  %1821 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41b796)
  store %struct.Memory* %1821, %struct.Memory** %MEMORY
  %loadMem_41b79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 15
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1828, i64 0, i64 1
  %YMM1.i269 = bitcast %union.VectorReg* %1829 to %"class.std::bitset"*
  %1830 = bitcast %"class.std::bitset"* %YMM1.i269 to i8*
  %1831 = load i64, i64* %RBP.i268
  %1832 = sub i64 %1831, 88
  %1833 = load i64, i64* %PC.i267
  %1834 = add i64 %1833, 5
  store i64 %1834, i64* %PC.i267
  %1835 = inttoptr i64 %1832 to double*
  %1836 = load double, double* %1835
  %1837 = bitcast i8* %1830 to double*
  store double %1836, double* %1837, align 1
  %1838 = getelementptr inbounds i8, i8* %1830, i64 8
  %1839 = bitcast i8* %1838 to double*
  store double 0.000000e+00, double* %1839, align 1
  store %struct.Memory* %loadMem_41b79b, %struct.Memory** %MEMORY
  %loadMem_41b7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1843, i64 0, i64 1
  %YMM1.i265 = bitcast %union.VectorReg* %1844 to %"class.std::bitset"*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1846 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1845, i64 0, i64 0
  %XMM0.i266 = bitcast %union.VectorReg* %1846 to %union.vec128_t*
  %1847 = bitcast %"class.std::bitset"* %YMM1.i265 to i8*
  %1848 = bitcast %"class.std::bitset"* %YMM1.i265 to i8*
  %1849 = bitcast %union.vec128_t* %XMM0.i266 to i8*
  %1850 = load i64, i64* %PC.i264
  %1851 = add i64 %1850, 4
  store i64 %1851, i64* %PC.i264
  %1852 = bitcast i8* %1848 to double*
  %1853 = load double, double* %1852, align 1
  %1854 = getelementptr inbounds i8, i8* %1848, i64 8
  %1855 = bitcast i8* %1854 to i64*
  %1856 = load i64, i64* %1855, align 1
  %1857 = bitcast i8* %1849 to double*
  %1858 = load double, double* %1857, align 1
  %1859 = fmul double %1853, %1858
  %1860 = bitcast i8* %1847 to double*
  store double %1859, double* %1860, align 1
  %1861 = getelementptr inbounds i8, i8* %1847, i64 8
  %1862 = bitcast i8* %1861 to i64*
  store i64 %1856, i64* %1862, align 1
  store %struct.Memory* %loadMem_41b7a0, %struct.Memory** %MEMORY
  %loadMem_41b7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 15
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1870 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1869, i64 0, i64 0
  %YMM0.i263 = bitcast %union.VectorReg* %1870 to %"class.std::bitset"*
  %1871 = bitcast %"class.std::bitset"* %YMM0.i263 to i8*
  %1872 = load i64, i64* %RBP.i262
  %1873 = sub i64 %1872, 80
  %1874 = load i64, i64* %PC.i261
  %1875 = add i64 %1874, 5
  store i64 %1875, i64* %PC.i261
  %1876 = inttoptr i64 %1873 to double*
  %1877 = load double, double* %1876
  %1878 = bitcast i8* %1871 to double*
  store double %1877, double* %1878, align 1
  %1879 = getelementptr inbounds i8, i8* %1871, i64 8
  %1880 = bitcast i8* %1879 to double*
  store double 0.000000e+00, double* %1880, align 1
  store %struct.Memory* %loadMem_41b7a4, %struct.Memory** %MEMORY
  %loadMem_41b7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1884, i64 0, i64 0
  %YMM0.i259 = bitcast %union.VectorReg* %1885 to %"class.std::bitset"*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1886, i64 0, i64 1
  %XMM1.i260 = bitcast %union.VectorReg* %1887 to %union.vec128_t*
  %1888 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %1889 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %1890 = bitcast %union.vec128_t* %XMM1.i260 to i8*
  %1891 = load i64, i64* %PC.i258
  %1892 = add i64 %1891, 4
  store i64 %1892, i64* %PC.i258
  %1893 = bitcast i8* %1889 to double*
  %1894 = load double, double* %1893, align 1
  %1895 = getelementptr inbounds i8, i8* %1889, i64 8
  %1896 = bitcast i8* %1895 to i64*
  %1897 = load i64, i64* %1896, align 1
  %1898 = bitcast i8* %1890 to double*
  %1899 = load double, double* %1898, align 1
  %1900 = fmul double %1894, %1899
  %1901 = bitcast i8* %1888 to double*
  store double %1900, double* %1901, align 1
  %1902 = getelementptr inbounds i8, i8* %1888, i64 8
  %1903 = bitcast i8* %1902 to i64*
  store i64 %1897, i64* %1903, align 1
  store %struct.Memory* %loadMem_41b7a9, %struct.Memory** %MEMORY
  %loadMem_41b7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1907, i64 0, i64 0
  %YMM0.i256 = bitcast %union.VectorReg* %1908 to %"class.std::bitset"*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1910 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1909, i64 0, i64 0
  %XMM0.i257 = bitcast %union.VectorReg* %1910 to %union.vec128_t*
  %1911 = bitcast %"class.std::bitset"* %YMM0.i256 to i8*
  %1912 = bitcast %union.vec128_t* %XMM0.i257 to i8*
  %1913 = load i64, i64* %PC.i255
  %1914 = add i64 %1913, 4
  store i64 %1914, i64* %PC.i255
  %1915 = bitcast i8* %1911 to <2 x i32>*
  %1916 = load <2 x i32>, <2 x i32>* %1915, align 1
  %1917 = getelementptr inbounds i8, i8* %1911, i64 8
  %1918 = bitcast i8* %1917 to <2 x i32>*
  %1919 = load <2 x i32>, <2 x i32>* %1918, align 1
  %1920 = bitcast i8* %1912 to double*
  %1921 = load double, double* %1920, align 1
  %1922 = fptrunc double %1921 to float
  %1923 = bitcast i8* %1911 to float*
  store float %1922, float* %1923, align 1
  %1924 = extractelement <2 x i32> %1916, i32 1
  %1925 = getelementptr inbounds i8, i8* %1911, i64 4
  %1926 = bitcast i8* %1925 to i32*
  store i32 %1924, i32* %1926, align 1
  %1927 = extractelement <2 x i32> %1919, i32 0
  %1928 = bitcast i8* %1917 to i32*
  store i32 %1927, i32* %1928, align 1
  %1929 = extractelement <2 x i32> %1919, i32 1
  %1930 = getelementptr inbounds i8, i8* %1911, i64 12
  %1931 = bitcast i8* %1930 to i32*
  store i32 %1929, i32* %1931, align 1
  store %struct.Memory* %loadMem_41b7ad, %struct.Memory** %MEMORY
  %loadMem_41b7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 1
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RBP.i254
  %1942 = sub i64 %1941, 8
  %1943 = load i64, i64* %PC.i252
  %1944 = add i64 %1943, 4
  store i64 %1944, i64* %PC.i252
  %1945 = inttoptr i64 %1942 to i64*
  %1946 = load i64, i64* %1945
  store i64 %1946, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_41b7b1, %struct.Memory** %MEMORY
  %loadMem_41b7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 1
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RAX.i251
  %1954 = add i64 %1953, 32
  %1955 = load i64, i64* %PC.i250
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i250
  %1957 = inttoptr i64 %1954 to i64*
  %1958 = load i64, i64* %1957
  store i64 %1958, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_41b7b5, %struct.Memory** %MEMORY
  %loadMem_41b7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 5
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RBP.i249
  %1969 = sub i64 %1968, 20
  %1970 = load i64, i64* %PC.i247
  %1971 = add i64 %1970, 3
  store i64 %1971, i64* %PC.i247
  %1972 = inttoptr i64 %1969 to i32*
  %1973 = load i32, i32* %1972
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_41b7b9, %struct.Memory** %MEMORY
  %loadMem_41b7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 7
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 15
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RBP.i246
  %1985 = sub i64 %1984, 8
  %1986 = load i64, i64* %PC.i244
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %PC.i244
  %1988 = inttoptr i64 %1985 to i64*
  %1989 = load i64, i64* %1988
  store i64 %1989, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_41b7bc, %struct.Memory** %MEMORY
  %loadMem_41b7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 5
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 7
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %RCX.i242
  %2000 = load i64, i64* %RDX.i243
  %2001 = add i64 %2000, 8
  %2002 = load i64, i64* %PC.i241
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i241
  %2004 = trunc i64 %1999 to i32
  %2005 = inttoptr i64 %2001 to i32*
  %2006 = load i32, i32* %2005
  %2007 = sub i32 %2004, %2006
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RCX.i242, align 8
  %2009 = icmp ult i32 %2004, %2006
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2010, i8* %2011, align 1
  %2012 = and i32 %2007, 255
  %2013 = call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2016, i8* %2017, align 1
  %2018 = xor i32 %2006, %2004
  %2019 = xor i32 %2018, %2007
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2022, i8* %2023, align 1
  %2024 = icmp eq i32 %2007, 0
  %2025 = zext i1 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2025, i8* %2026, align 1
  %2027 = lshr i32 %2007, 31
  %2028 = trunc i32 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2028, i8* %2029, align 1
  %2030 = lshr i32 %2004, 31
  %2031 = lshr i32 %2006, 31
  %2032 = xor i32 %2031, %2030
  %2033 = xor i32 %2027, %2030
  %2034 = add i32 %2033, %2032
  %2035 = icmp eq i32 %2034, 2
  %2036 = zext i1 %2035 to i8
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2036, i8* %2037, align 1
  store %struct.Memory* %loadMem_41b7c0, %struct.Memory** %MEMORY
  %loadMem_41b7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 5
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %ECX.i239 = bitcast %union.anon* %2043 to i32*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 7
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %2046 to i64*
  %2047 = load i32, i32* %ECX.i239
  %2048 = zext i32 %2047 to i64
  %2049 = load i64, i64* %PC.i238
  %2050 = add i64 %2049, 3
  store i64 %2050, i64* %PC.i238
  %2051 = shl i64 %2048, 32
  %2052 = ashr exact i64 %2051, 32
  store i64 %2052, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_41b7c3, %struct.Memory** %MEMORY
  %loadMem_41b7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 7
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RDX.i236 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2062, i64 0, i64 0
  %XMM0.i237 = bitcast %union.VectorReg* %2063 to %union.vec128_t*
  %2064 = load i64, i64* %RAX.i235
  %2065 = load i64, i64* %RDX.i236
  %2066 = mul i64 %2065, 4
  %2067 = add i64 %2066, %2064
  %2068 = bitcast %union.vec128_t* %XMM0.i237 to i8*
  %2069 = load i64, i64* %PC.i234
  %2070 = add i64 %2069, 5
  store i64 %2070, i64* %PC.i234
  %2071 = bitcast i8* %2068 to <2 x float>*
  %2072 = load <2 x float>, <2 x float>* %2071, align 1
  %2073 = extractelement <2 x float> %2072, i32 0
  %2074 = inttoptr i64 %2067 to float*
  store float %2073, float* %2074
  store %struct.Memory* %loadMem_41b7c6, %struct.Memory** %MEMORY
  %loadMem_41b7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 1
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 15
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RBP.i233
  %2085 = sub i64 %2084, 20
  %2086 = load i64, i64* %PC.i231
  %2087 = add i64 %2086, 3
  store i64 %2087, i64* %PC.i231
  %2088 = inttoptr i64 %2085 to i32*
  %2089 = load i32, i32* %2088
  %2090 = zext i32 %2089 to i64
  store i64 %2090, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_41b7cb, %struct.Memory** %MEMORY
  %loadMem_41b7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 1
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %RAX.i230
  %2098 = load i64, i64* %PC.i229
  %2099 = add i64 %2098, 3
  store i64 %2099, i64* %PC.i229
  %2100 = trunc i64 %2097 to i32
  %2101 = add i32 1, %2100
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RAX.i230, align 8
  %2103 = icmp ult i32 %2101, %2100
  %2104 = icmp ult i32 %2101, 1
  %2105 = or i1 %2103, %2104
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2106, i8* %2107, align 1
  %2108 = and i32 %2101, 255
  %2109 = call i32 @llvm.ctpop.i32(i32 %2108)
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2112, i8* %2113, align 1
  %2114 = xor i64 1, %2097
  %2115 = trunc i64 %2114 to i32
  %2116 = xor i32 %2115, %2101
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2119, i8* %2120, align 1
  %2121 = icmp eq i32 %2101, 0
  %2122 = zext i1 %2121 to i8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2122, i8* %2123, align 1
  %2124 = lshr i32 %2101, 31
  %2125 = trunc i32 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2125, i8* %2126, align 1
  %2127 = lshr i32 %2100, 31
  %2128 = xor i32 %2124, %2127
  %2129 = add i32 %2128, %2124
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2131, i8* %2132, align 1
  store %struct.Memory* %loadMem_41b7ce, %struct.Memory** %MEMORY
  %loadMem_41b7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 1
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %EAX.i227 = bitcast %union.anon* %2138 to i32*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 15
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %RBP.i228
  %2143 = sub i64 %2142, 20
  %2144 = load i32, i32* %EAX.i227
  %2145 = zext i32 %2144 to i64
  %2146 = load i64, i64* %PC.i226
  %2147 = add i64 %2146, 3
  store i64 %2147, i64* %PC.i226
  %2148 = inttoptr i64 %2143 to i32*
  store i32 %2144, i32* %2148
  store %struct.Memory* %loadMem_41b7d1, %struct.Memory** %MEMORY
  %loadMem_41b7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %PC.i225
  %2153 = add i64 %2152, -292
  %2154 = load i64, i64* %PC.i225
  %2155 = add i64 %2154, 5
  store i64 %2155, i64* %PC.i225
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2153, i64* %2156, align 8
  store %struct.Memory* %loadMem_41b7d4, %struct.Memory** %MEMORY
  br label %block_.L_41b6b0

block_.L_41b7d9:                                  ; preds = %block_.L_41b6b0
  %loadMem_41b7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2160, i64 0, i64 0
  %YMM0.i223 = bitcast %union.VectorReg* %2161 to %"class.std::bitset"*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2162, i64 0, i64 0
  %XMM0.i224 = bitcast %union.VectorReg* %2163 to %union.vec128_t*
  %2164 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %2165 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %2166 = bitcast %union.vec128_t* %XMM0.i224 to i8*
  %2167 = load i64, i64* %PC.i222
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i222
  %2169 = bitcast i8* %2165 to i64*
  %2170 = load i64, i64* %2169, align 1
  %2171 = getelementptr inbounds i8, i8* %2165, i64 8
  %2172 = bitcast i8* %2171 to i64*
  %2173 = load i64, i64* %2172, align 1
  %2174 = bitcast i8* %2166 to i64*
  %2175 = load i64, i64* %2174, align 1
  %2176 = getelementptr inbounds i8, i8* %2166, i64 8
  %2177 = bitcast i8* %2176 to i64*
  %2178 = load i64, i64* %2177, align 1
  %2179 = xor i64 %2175, %2170
  %2180 = xor i64 %2178, %2173
  %2181 = trunc i64 %2179 to i32
  %2182 = lshr i64 %2179, 32
  %2183 = trunc i64 %2182 to i32
  %2184 = bitcast i8* %2164 to i32*
  store i32 %2181, i32* %2184, align 1
  %2185 = getelementptr inbounds i8, i8* %2164, i64 4
  %2186 = bitcast i8* %2185 to i32*
  store i32 %2183, i32* %2186, align 1
  %2187 = trunc i64 %2180 to i32
  %2188 = getelementptr inbounds i8, i8* %2164, i64 8
  %2189 = bitcast i8* %2188 to i32*
  store i32 %2187, i32* %2189, align 1
  %2190 = lshr i64 %2180, 32
  %2191 = trunc i64 %2190 to i32
  %2192 = getelementptr inbounds i8, i8* %2164, i64 12
  %2193 = bitcast i8* %2192 to i32*
  store i32 %2191, i32* %2193, align 1
  store %struct.Memory* %loadMem_41b7d9, %struct.Memory** %MEMORY
  %loadMem_41b7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 1
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 15
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %RBP.i221
  %2204 = sub i64 %2203, 8
  %2205 = load i64, i64* %PC.i219
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %PC.i219
  %2207 = inttoptr i64 %2204 to i64*
  %2208 = load i64, i64* %2207
  store i64 %2208, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_41b7dc, %struct.Memory** %MEMORY
  %loadMem_41b7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 1
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2215, i64 0, i64 0
  %XMM0.i218 = bitcast %union.VectorReg* %2216 to %union.vec128_t*
  %2217 = load i64, i64* %RAX.i217
  %2218 = add i64 %2217, 56
  %2219 = bitcast %union.vec128_t* %XMM0.i218 to i8*
  %2220 = load i64, i64* %PC.i216
  %2221 = add i64 %2220, 5
  store i64 %2221, i64* %PC.i216
  %2222 = bitcast i8* %2219 to <2 x float>*
  %2223 = load <2 x float>, <2 x float>* %2222, align 1
  %2224 = extractelement <2 x float> %2223, i32 0
  %2225 = inttoptr i64 %2218 to float*
  store float %2224, float* %2225
  store %struct.Memory* %loadMem_41b7e0, %struct.Memory** %MEMORY
  %loadMem_41b7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 15
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %2231 to i64*
  %2232 = load i64, i64* %RBP.i215
  %2233 = sub i64 %2232, 32
  %2234 = load i64, i64* %PC.i214
  %2235 = add i64 %2234, 7
  store i64 %2235, i64* %PC.i214
  %2236 = inttoptr i64 %2233 to i32*
  store i32 0, i32* %2236
  store %struct.Memory* %loadMem_41b7e5, %struct.Memory** %MEMORY
  %loadMem_41b7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 1
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 15
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RBP.i213
  %2247 = sub i64 %2246, 8
  %2248 = load i64, i64* %PC.i211
  %2249 = add i64 %2248, 4
  store i64 %2249, i64* %PC.i211
  %2250 = inttoptr i64 %2247 to i64*
  %2251 = load i64, i64* %2250
  store i64 %2251, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_41b7ec, %struct.Memory** %MEMORY
  %loadMem_41b7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 5
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RAX.i209
  %2262 = add i64 %2261, 20
  %2263 = load i64, i64* %PC.i208
  %2264 = add i64 %2263, 3
  store i64 %2264, i64* %PC.i208
  %2265 = inttoptr i64 %2262 to i32*
  %2266 = load i32, i32* %2265
  %2267 = zext i32 %2266 to i64
  store i64 %2267, i64* %RCX.i210, align 8
  store %struct.Memory* %loadMem_41b7f0, %struct.Memory** %MEMORY
  %loadMem_41b7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 5
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %ECX.i206 = bitcast %union.anon* %2273 to i32*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 15
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %RBP.i207
  %2278 = sub i64 %2277, 20
  %2279 = load i32, i32* %ECX.i206
  %2280 = zext i32 %2279 to i64
  %2281 = load i64, i64* %PC.i205
  %2282 = add i64 %2281, 3
  store i64 %2282, i64* %PC.i205
  %2283 = inttoptr i64 %2278 to i32*
  store i32 %2279, i32* %2283
  store %struct.Memory* %loadMem_41b7f3, %struct.Memory** %MEMORY
  br label %block_.L_41b7f6

block_.L_41b7f6:                                  ; preds = %block_.L_41b8c8, %block_.L_41b7d9
  %loadMem_41b7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 1
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 15
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RBP.i204
  %2294 = sub i64 %2293, 20
  %2295 = load i64, i64* %PC.i202
  %2296 = add i64 %2295, 3
  store i64 %2296, i64* %PC.i202
  %2297 = inttoptr i64 %2294 to i32*
  %2298 = load i32, i32* %2297
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_41b7f6, %struct.Memory** %MEMORY
  %loadMem_41b7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 5
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 15
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %2308 to i64*
  %2309 = load i64, i64* %RBP.i201
  %2310 = sub i64 %2309, 8
  %2311 = load i64, i64* %PC.i199
  %2312 = add i64 %2311, 4
  store i64 %2312, i64* %PC.i199
  %2313 = inttoptr i64 %2310 to i64*
  %2314 = load i64, i64* %2313
  store i64 %2314, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_41b7f9, %struct.Memory** %MEMORY
  %loadMem_41b7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 1
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %EAX.i197 = bitcast %union.anon* %2320 to i32*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 5
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %2323 to i64*
  %2324 = load i32, i32* %EAX.i197
  %2325 = zext i32 %2324 to i64
  %2326 = load i64, i64* %RCX.i198
  %2327 = add i64 %2326, 16
  %2328 = load i64, i64* %PC.i196
  %2329 = add i64 %2328, 3
  store i64 %2329, i64* %PC.i196
  %2330 = inttoptr i64 %2327 to i32*
  %2331 = load i32, i32* %2330
  %2332 = sub i32 %2324, %2331
  %2333 = icmp ult i32 %2324, %2331
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2334, i8* %2335, align 1
  %2336 = and i32 %2332, 255
  %2337 = call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2340, i8* %2341, align 1
  %2342 = xor i32 %2331, %2324
  %2343 = xor i32 %2342, %2332
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2346, i8* %2347, align 1
  %2348 = icmp eq i32 %2332, 0
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2349, i8* %2350, align 1
  %2351 = lshr i32 %2332, 31
  %2352 = trunc i32 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2324, 31
  %2355 = lshr i32 %2331, 31
  %2356 = xor i32 %2355, %2354
  %2357 = xor i32 %2351, %2354
  %2358 = add i32 %2357, %2356
  %2359 = icmp eq i32 %2358, 2
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2360, i8* %2361, align 1
  store %struct.Memory* %loadMem_41b7fd, %struct.Memory** %MEMORY
  %loadMem_41b800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %PC.i195
  %2366 = add i64 %2365, 214
  %2367 = load i64, i64* %PC.i195
  %2368 = add i64 %2367, 6
  %2369 = load i64, i64* %PC.i195
  %2370 = add i64 %2369, 6
  store i64 %2370, i64* %PC.i195
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2372 = load i8, i8* %2371, align 1
  %2373 = icmp eq i8 %2372, 0
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2375 = load i8, i8* %2374, align 1
  %2376 = icmp ne i8 %2375, 0
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2378 = load i8, i8* %2377, align 1
  %2379 = icmp ne i8 %2378, 0
  %2380 = xor i1 %2376, %2379
  %2381 = xor i1 %2380, true
  %2382 = and i1 %2373, %2381
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %BRANCH_TAKEN, align 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2385 = select i1 %2382, i64 %2366, i64 %2368
  store i64 %2385, i64* %2384, align 8
  store %struct.Memory* %loadMem_41b800, %struct.Memory** %MEMORY
  %loadBr_41b800 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b800 = icmp eq i8 %loadBr_41b800, 1
  br i1 %cmpBr_41b800, label %block_.L_41b8d6, label %block_41b806

block_41b806:                                     ; preds = %block_.L_41b7f6
  %loadMem_41b806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2389, i64 0, i64 0
  %YMM0.i194 = bitcast %union.VectorReg* %2390 to %"class.std::bitset"*
  %2391 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2392 = load i64, i64* %PC.i193
  %2393 = add i64 %2392, ptrtoint (%G_0x38ffa__rip__type* @G_0x38ffa__rip_ to i64)
  %2394 = load i64, i64* %PC.i193
  %2395 = add i64 %2394, 8
  store i64 %2395, i64* %PC.i193
  %2396 = inttoptr i64 %2393 to double*
  %2397 = load double, double* %2396
  %2398 = bitcast i8* %2391 to double*
  store double %2397, double* %2398, align 1
  %2399 = getelementptr inbounds i8, i8* %2391, i64 8
  %2400 = bitcast i8* %2399 to double*
  store double 0.000000e+00, double* %2400, align 1
  store %struct.Memory* %loadMem_41b806, %struct.Memory** %MEMORY
  %loadMem_41b80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RBP.i192
  %2411 = sub i64 %2410, 8
  %2412 = load i64, i64* %PC.i190
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %PC.i190
  %2414 = inttoptr i64 %2411 to i64*
  %2415 = load i64, i64* %2414
  store i64 %2415, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_41b80e, %struct.Memory** %MEMORY
  %loadMem_41b812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 1
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RAX.i189
  %2423 = add i64 %2422, 32
  %2424 = load i64, i64* %PC.i188
  %2425 = add i64 %2424, 4
  store i64 %2425, i64* %PC.i188
  %2426 = inttoptr i64 %2423 to i64*
  %2427 = load i64, i64* %2426
  store i64 %2427, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_41b812, %struct.Memory** %MEMORY
  %loadMem_41b816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 5
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 15
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %RBP.i187
  %2438 = sub i64 %2437, 20
  %2439 = load i64, i64* %PC.i185
  %2440 = add i64 %2439, 3
  store i64 %2440, i64* %PC.i185
  %2441 = inttoptr i64 %2438 to i32*
  %2442 = load i32, i32* %2441
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_41b816, %struct.Memory** %MEMORY
  %loadMem_41b819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 7
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RBP.i184
  %2454 = sub i64 %2453, 8
  %2455 = load i64, i64* %PC.i182
  %2456 = add i64 %2455, 4
  store i64 %2456, i64* %PC.i182
  %2457 = inttoptr i64 %2454 to i64*
  %2458 = load i64, i64* %2457
  store i64 %2458, i64* %RDX.i183, align 8
  store %struct.Memory* %loadMem_41b819, %struct.Memory** %MEMORY
  %loadMem_41b81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 5
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 7
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RCX.i180
  %2469 = load i64, i64* %RDX.i181
  %2470 = add i64 %2469, 8
  %2471 = load i64, i64* %PC.i179
  %2472 = add i64 %2471, 3
  store i64 %2472, i64* %PC.i179
  %2473 = trunc i64 %2468 to i32
  %2474 = inttoptr i64 %2470 to i32*
  %2475 = load i32, i32* %2474
  %2476 = sub i32 %2473, %2475
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RCX.i180, align 8
  %2478 = icmp ult i32 %2473, %2475
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2479, i8* %2480, align 1
  %2481 = and i32 %2476, 255
  %2482 = call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2485, i8* %2486, align 1
  %2487 = xor i32 %2475, %2473
  %2488 = xor i32 %2487, %2476
  %2489 = lshr i32 %2488, 4
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2491, i8* %2492, align 1
  %2493 = icmp eq i32 %2476, 0
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2494, i8* %2495, align 1
  %2496 = lshr i32 %2476, 31
  %2497 = trunc i32 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2497, i8* %2498, align 1
  %2499 = lshr i32 %2473, 31
  %2500 = lshr i32 %2475, 31
  %2501 = xor i32 %2500, %2499
  %2502 = xor i32 %2496, %2499
  %2503 = add i32 %2502, %2501
  %2504 = icmp eq i32 %2503, 2
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2505, i8* %2506, align 1
  store %struct.Memory* %loadMem_41b81d, %struct.Memory** %MEMORY
  %loadMem_41b820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 5
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %ECX.i177 = bitcast %union.anon* %2512 to i32*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 7
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %2515 to i64*
  %2516 = load i32, i32* %ECX.i177
  %2517 = zext i32 %2516 to i64
  %2518 = load i64, i64* %PC.i176
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i176
  %2520 = shl i64 %2517, 32
  %2521 = ashr exact i64 %2520, 32
  store i64 %2521, i64* %RDX.i178, align 8
  store %struct.Memory* %loadMem_41b820, %struct.Memory** %MEMORY
  %loadMem_41b823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 1
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 7
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2531, i64 0, i64 1
  %YMM1.i175 = bitcast %union.VectorReg* %2532 to %"class.std::bitset"*
  %2533 = bitcast %"class.std::bitset"* %YMM1.i175 to i8*
  %2534 = load i64, i64* %RAX.i173
  %2535 = load i64, i64* %RDX.i174
  %2536 = mul i64 %2535, 4
  %2537 = add i64 %2536, %2534
  %2538 = load i64, i64* %PC.i172
  %2539 = add i64 %2538, 5
  store i64 %2539, i64* %PC.i172
  %2540 = inttoptr i64 %2537 to float*
  %2541 = load float, float* %2540
  %2542 = fpext float %2541 to double
  %2543 = bitcast i8* %2533 to double*
  store double %2542, double* %2543, align 1
  store %struct.Memory* %loadMem_41b823, %struct.Memory** %MEMORY
  %loadMem_41b828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2547, i64 0, i64 0
  %XMM0.i167 = bitcast %union.VectorReg* %2548 to %union.vec128_t*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2549, i64 0, i64 1
  %XMM1.i168 = bitcast %union.VectorReg* %2550 to %union.vec128_t*
  %2551 = bitcast %union.vec128_t* %XMM1.i168 to i8*
  %2552 = bitcast %union.vec128_t* %XMM0.i167 to i8*
  %2553 = load i64, i64* %PC.i166
  %2554 = add i64 %2553, 4
  store i64 %2554, i64* %PC.i166
  %2555 = bitcast i8* %2551 to double*
  %2556 = load double, double* %2555, align 1
  %2557 = bitcast i8* %2552 to double*
  %2558 = load double, double* %2557, align 1
  %2559 = fcmp uno double %2556, %2558
  br i1 %2559, label %2560, label %2572

; <label>:2560:                                   ; preds = %block_41b806
  %2561 = fadd double %2556, %2558
  %2562 = bitcast double %2561 to i64
  %2563 = and i64 %2562, 9221120237041090560
  %2564 = icmp eq i64 %2563, 9218868437227405312
  %2565 = and i64 %2562, 2251799813685247
  %2566 = icmp ne i64 %2565, 0
  %2567 = and i1 %2564, %2566
  br i1 %2567, label %2568, label %2578

; <label>:2568:                                   ; preds = %2560
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2570 = load i64, i64* %2569, align 8
  %2571 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2570, %struct.Memory* %loadMem_41b828)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2572:                                   ; preds = %block_41b806
  %2573 = fcmp ogt double %2556, %2558
  br i1 %2573, label %2578, label %2574

; <label>:2574:                                   ; preds = %2572
  %2575 = fcmp olt double %2556, %2558
  br i1 %2575, label %2578, label %2576

; <label>:2576:                                   ; preds = %2574
  %2577 = fcmp oeq double %2556, %2558
  br i1 %2577, label %2578, label %2585

; <label>:2578:                                   ; preds = %2576, %2574, %2572, %2560
  %2579 = phi i8 [ 0, %2572 ], [ 0, %2574 ], [ 1, %2576 ], [ 1, %2560 ]
  %2580 = phi i8 [ 0, %2572 ], [ 0, %2574 ], [ 0, %2576 ], [ 1, %2560 ]
  %2581 = phi i8 [ 0, %2572 ], [ 1, %2574 ], [ 0, %2576 ], [ 1, %2560 ]
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2579, i8* %2582, align 1
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2580, i8* %2583, align 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2581, i8* %2584, align 1
  br label %2585

; <label>:2585:                                   ; preds = %2578, %2576
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2586, align 1
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2587, align 1
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2588, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2568, %2585
  %2589 = phi %struct.Memory* [ %2571, %2568 ], [ %loadMem_41b828, %2585 ]
  store %struct.Memory* %2589, %struct.Memory** %MEMORY
  %loadMem_41b82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2592 to i64*
  %2593 = load i64, i64* %PC.i165
  %2594 = add i64 %2593, 151
  %2595 = load i64, i64* %PC.i165
  %2596 = add i64 %2595, 6
  %2597 = load i64, i64* %PC.i165
  %2598 = add i64 %2597, 6
  store i64 %2598, i64* %PC.i165
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2600 = load i8, i8* %2599, align 1
  store i8 %2600, i8* %BRANCH_TAKEN, align 1
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2602 = icmp ne i8 %2600, 0
  %2603 = select i1 %2602, i64 %2594, i64 %2596
  store i64 %2603, i64* %2601, align 8
  store %struct.Memory* %loadMem_41b82c, %struct.Memory** %MEMORY
  %loadBr_41b82c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b82c = icmp eq i8 %loadBr_41b82c, 1
  br i1 %cmpBr_41b82c, label %block_.L_41b8c3, label %block_41b832

block_41b832:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41b832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RBP.i164
  %2614 = sub i64 %2613, 8
  %2615 = load i64, i64* %PC.i162
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %PC.i162
  %2617 = inttoptr i64 %2614 to i64*
  %2618 = load i64, i64* %2617
  store i64 %2618, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_41b832, %struct.Memory** %MEMORY
  %loadMem_41b836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 1
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RAX.i161
  %2626 = load i64, i64* %PC.i160
  %2627 = add i64 %2626, 3
  store i64 %2627, i64* %PC.i160
  %2628 = inttoptr i64 %2625 to i64*
  %2629 = load i64, i64* %2628
  store i64 %2629, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_41b836, %struct.Memory** %MEMORY
  %loadMem_41b839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 33
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 5
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 15
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2638 to i64*
  %2639 = load i64, i64* %RBP.i159
  %2640 = sub i64 %2639, 20
  %2641 = load i64, i64* %PC.i157
  %2642 = add i64 %2641, 3
  store i64 %2642, i64* %PC.i157
  %2643 = inttoptr i64 %2640 to i32*
  %2644 = load i32, i32* %2643
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_41b839, %struct.Memory** %MEMORY
  %loadMem_41b83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 7
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 15
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %RBP.i156
  %2656 = sub i64 %2655, 8
  %2657 = load i64, i64* %PC.i154
  %2658 = add i64 %2657, 4
  store i64 %2658, i64* %PC.i154
  %2659 = inttoptr i64 %2656 to i64*
  %2660 = load i64, i64* %2659
  store i64 %2660, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_41b83c, %struct.Memory** %MEMORY
  %loadMem_41b840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 5
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 7
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RCX.i152
  %2671 = load i64, i64* %RDX.i153
  %2672 = add i64 %2671, 8
  %2673 = load i64, i64* %PC.i151
  %2674 = add i64 %2673, 3
  store i64 %2674, i64* %PC.i151
  %2675 = trunc i64 %2670 to i32
  %2676 = inttoptr i64 %2672 to i32*
  %2677 = load i32, i32* %2676
  %2678 = sub i32 %2675, %2677
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RCX.i152, align 8
  %2680 = icmp ult i32 %2675, %2677
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2681, i8* %2682, align 1
  %2683 = and i32 %2678, 255
  %2684 = call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2687, i8* %2688, align 1
  %2689 = xor i32 %2677, %2675
  %2690 = xor i32 %2689, %2678
  %2691 = lshr i32 %2690, 4
  %2692 = trunc i32 %2691 to i8
  %2693 = and i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2693, i8* %2694, align 1
  %2695 = icmp eq i32 %2678, 0
  %2696 = zext i1 %2695 to i8
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2696, i8* %2697, align 1
  %2698 = lshr i32 %2678, 31
  %2699 = trunc i32 %2698 to i8
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2699, i8* %2700, align 1
  %2701 = lshr i32 %2675, 31
  %2702 = lshr i32 %2677, 31
  %2703 = xor i32 %2702, %2701
  %2704 = xor i32 %2698, %2701
  %2705 = add i32 %2704, %2703
  %2706 = icmp eq i32 %2705, 2
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2707, i8* %2708, align 1
  store %struct.Memory* %loadMem_41b840, %struct.Memory** %MEMORY
  %loadMem_41b843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 33
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 5
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %ECX.i149 = bitcast %union.anon* %2714 to i32*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 7
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %2717 to i64*
  %2718 = load i32, i32* %ECX.i149
  %2719 = zext i32 %2718 to i64
  %2720 = load i64, i64* %PC.i148
  %2721 = add i64 %2720, 3
  store i64 %2721, i64* %PC.i148
  %2722 = shl i64 %2719, 32
  %2723 = ashr exact i64 %2722, 32
  store i64 %2723, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_41b843, %struct.Memory** %MEMORY
  %loadMem_41b846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 1
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 7
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RAX.i146
  %2734 = load i64, i64* %RDX.i147
  %2735 = mul i64 %2734, 4
  %2736 = add i64 %2735, %2733
  %2737 = load i64, i64* %PC.i145
  %2738 = add i64 %2737, 4
  store i64 %2738, i64* %PC.i145
  %2739 = inttoptr i64 %2736 to i32*
  %2740 = load i32, i32* %2739
  %2741 = sub i32 %2740, 5
  %2742 = icmp ult i32 %2740, 5
  %2743 = zext i1 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2743, i8* %2744, align 1
  %2745 = and i32 %2741, 255
  %2746 = call i32 @llvm.ctpop.i32(i32 %2745)
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2749, i8* %2750, align 1
  %2751 = xor i32 %2740, 5
  %2752 = xor i32 %2751, %2741
  %2753 = lshr i32 %2752, 4
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2755, i8* %2756, align 1
  %2757 = icmp eq i32 %2741, 0
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2758, i8* %2759, align 1
  %2760 = lshr i32 %2741, 31
  %2761 = trunc i32 %2760 to i8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2761, i8* %2762, align 1
  %2763 = lshr i32 %2740, 31
  %2764 = xor i32 %2760, %2763
  %2765 = add i32 %2764, %2763
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2767, i8* %2768, align 1
  store %struct.Memory* %loadMem_41b846, %struct.Memory** %MEMORY
  %loadMem_41b84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %PC.i144
  %2773 = add i64 %2772, 121
  %2774 = load i64, i64* %PC.i144
  %2775 = add i64 %2774, 6
  %2776 = load i64, i64* %PC.i144
  %2777 = add i64 %2776, 6
  store i64 %2777, i64* %PC.i144
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2779 = load i8, i8* %2778, align 1
  %2780 = icmp ne i8 %2779, 0
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2782 = load i8, i8* %2781, align 1
  %2783 = icmp ne i8 %2782, 0
  %2784 = xor i1 %2780, %2783
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %BRANCH_TAKEN, align 1
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2787 = select i1 %2784, i64 %2773, i64 %2775
  store i64 %2787, i64* %2786, align 8
  store %struct.Memory* %loadMem_41b84a, %struct.Memory** %MEMORY
  %loadBr_41b84a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b84a = icmp eq i8 %loadBr_41b84a, 1
  br i1 %cmpBr_41b84a, label %block_.L_41b8c3, label %block_41b850

block_41b850:                                     ; preds = %block_41b832
  %loadMem_41b850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 33
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 1
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 15
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2796 to i64*
  %2797 = load i64, i64* %RBP.i143
  %2798 = sub i64 %2797, 8
  %2799 = load i64, i64* %PC.i141
  %2800 = add i64 %2799, 4
  store i64 %2800, i64* %PC.i141
  %2801 = inttoptr i64 %2798 to i64*
  %2802 = load i64, i64* %2801
  store i64 %2802, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_41b850, %struct.Memory** %MEMORY
  %loadMem_41b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 1
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RAX.i140
  %2810 = load i64, i64* %PC.i139
  %2811 = add i64 %2810, 3
  store i64 %2811, i64* %PC.i139
  %2812 = inttoptr i64 %2809 to i64*
  %2813 = load i64, i64* %2812
  store i64 %2813, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_41b854, %struct.Memory** %MEMORY
  %loadMem_41b857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 33
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 5
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 15
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %2822 to i64*
  %2823 = load i64, i64* %RBP.i138
  %2824 = sub i64 %2823, 20
  %2825 = load i64, i64* %PC.i136
  %2826 = add i64 %2825, 3
  store i64 %2826, i64* %PC.i136
  %2827 = inttoptr i64 %2824 to i32*
  %2828 = load i32, i32* %2827
  %2829 = zext i32 %2828 to i64
  store i64 %2829, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_41b857, %struct.Memory** %MEMORY
  %loadMem_41b85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 7
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 15
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2838 to i64*
  %2839 = load i64, i64* %RBP.i135
  %2840 = sub i64 %2839, 8
  %2841 = load i64, i64* %PC.i133
  %2842 = add i64 %2841, 4
  store i64 %2842, i64* %PC.i133
  %2843 = inttoptr i64 %2840 to i64*
  %2844 = load i64, i64* %2843
  store i64 %2844, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_41b85a, %struct.Memory** %MEMORY
  %loadMem_41b85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 5
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 7
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %RCX.i131
  %2855 = load i64, i64* %RDX.i132
  %2856 = add i64 %2855, 8
  %2857 = load i64, i64* %PC.i130
  %2858 = add i64 %2857, 3
  store i64 %2858, i64* %PC.i130
  %2859 = trunc i64 %2854 to i32
  %2860 = inttoptr i64 %2856 to i32*
  %2861 = load i32, i32* %2860
  %2862 = sub i32 %2859, %2861
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RCX.i131, align 8
  %2864 = icmp ult i32 %2859, %2861
  %2865 = zext i1 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2865, i8* %2866, align 1
  %2867 = and i32 %2862, 255
  %2868 = call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2871, i8* %2872, align 1
  %2873 = xor i32 %2861, %2859
  %2874 = xor i32 %2873, %2862
  %2875 = lshr i32 %2874, 4
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2877, i8* %2878, align 1
  %2879 = icmp eq i32 %2862, 0
  %2880 = zext i1 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2880, i8* %2881, align 1
  %2882 = lshr i32 %2862, 31
  %2883 = trunc i32 %2882 to i8
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2883, i8* %2884, align 1
  %2885 = lshr i32 %2859, 31
  %2886 = lshr i32 %2861, 31
  %2887 = xor i32 %2886, %2885
  %2888 = xor i32 %2882, %2885
  %2889 = add i32 %2888, %2887
  %2890 = icmp eq i32 %2889, 2
  %2891 = zext i1 %2890 to i8
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2891, i8* %2892, align 1
  store %struct.Memory* %loadMem_41b85e, %struct.Memory** %MEMORY
  %loadMem_41b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 5
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %ECX.i128 = bitcast %union.anon* %2898 to i32*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 7
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RDX.i129 = bitcast %union.anon* %2901 to i64*
  %2902 = load i32, i32* %ECX.i128
  %2903 = zext i32 %2902 to i64
  %2904 = load i64, i64* %PC.i127
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC.i127
  %2906 = shl i64 %2903, 32
  %2907 = ashr exact i64 %2906, 32
  store i64 %2907, i64* %RDX.i129, align 8
  store %struct.Memory* %loadMem_41b861, %struct.Memory** %MEMORY
  %loadMem_41b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 7
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2917, i64 0, i64 0
  %YMM0.i126 = bitcast %union.VectorReg* %2918 to %"class.std::bitset"*
  %2919 = bitcast %"class.std::bitset"* %YMM0.i126 to i8*
  %2920 = load i64, i64* %RAX.i124
  %2921 = load i64, i64* %RDX.i125
  %2922 = mul i64 %2921, 4
  %2923 = add i64 %2922, %2920
  %2924 = load i64, i64* %PC.i123
  %2925 = add i64 %2924, 5
  store i64 %2925, i64* %PC.i123
  %2926 = bitcast i8* %2919 to <2 x i32>*
  %2927 = load <2 x i32>, <2 x i32>* %2926, align 1
  %2928 = getelementptr inbounds i8, i8* %2919, i64 8
  %2929 = bitcast i8* %2928 to <2 x i32>*
  %2930 = load <2 x i32>, <2 x i32>* %2929, align 1
  %2931 = inttoptr i64 %2923 to i32*
  %2932 = load i32, i32* %2931
  %2933 = sitofp i32 %2932 to float
  %2934 = bitcast i8* %2919 to float*
  store float %2933, float* %2934, align 1
  %2935 = extractelement <2 x i32> %2927, i32 1
  %2936 = getelementptr inbounds i8, i8* %2919, i64 4
  %2937 = bitcast i8* %2936 to i32*
  store i32 %2935, i32* %2937, align 1
  %2938 = extractelement <2 x i32> %2930, i32 0
  %2939 = bitcast i8* %2928 to i32*
  store i32 %2938, i32* %2939, align 1
  %2940 = extractelement <2 x i32> %2930, i32 1
  %2941 = getelementptr inbounds i8, i8* %2919, i64 12
  %2942 = bitcast i8* %2941 to i32*
  store i32 %2940, i32* %2942, align 1
  store %struct.Memory* %loadMem_41b864, %struct.Memory** %MEMORY
  %loadMem_41b869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 1
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %RBP.i122
  %2953 = sub i64 %2952, 8
  %2954 = load i64, i64* %PC.i120
  %2955 = add i64 %2954, 4
  store i64 %2955, i64* %PC.i120
  %2956 = inttoptr i64 %2953 to i64*
  %2957 = load i64, i64* %2956
  store i64 %2957, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_41b869, %struct.Memory** %MEMORY
  %loadMem_41b86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RAX.i119
  %2965 = add i64 %2964, 32
  %2966 = load i64, i64* %PC.i118
  %2967 = add i64 %2966, 4
  store i64 %2967, i64* %PC.i118
  %2968 = inttoptr i64 %2965 to i64*
  %2969 = load i64, i64* %2968
  store i64 %2969, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_41b86d, %struct.Memory** %MEMORY
  %loadMem_41b871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 5
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RBP.i117
  %2980 = sub i64 %2979, 20
  %2981 = load i64, i64* %PC.i115
  %2982 = add i64 %2981, 3
  store i64 %2982, i64* %PC.i115
  %2983 = inttoptr i64 %2980 to i32*
  %2984 = load i32, i32* %2983
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_41b871, %struct.Memory** %MEMORY
  %loadMem_41b874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 7
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 15
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RBP.i114
  %2996 = sub i64 %2995, 8
  %2997 = load i64, i64* %PC.i112
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC.i112
  %2999 = inttoptr i64 %2996 to i64*
  %3000 = load i64, i64* %2999
  store i64 %3000, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_41b874, %struct.Memory** %MEMORY
  %loadMem_41b878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 5
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 7
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RCX.i110
  %3011 = load i64, i64* %RDX.i111
  %3012 = add i64 %3011, 8
  %3013 = load i64, i64* %PC.i109
  %3014 = add i64 %3013, 3
  store i64 %3014, i64* %PC.i109
  %3015 = trunc i64 %3010 to i32
  %3016 = inttoptr i64 %3012 to i32*
  %3017 = load i32, i32* %3016
  %3018 = sub i32 %3015, %3017
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i110, align 8
  %3020 = icmp ult i32 %3015, %3017
  %3021 = zext i1 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3021, i8* %3022, align 1
  %3023 = and i32 %3018, 255
  %3024 = call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3027, i8* %3028, align 1
  %3029 = xor i32 %3017, %3015
  %3030 = xor i32 %3029, %3018
  %3031 = lshr i32 %3030, 4
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3033, i8* %3034, align 1
  %3035 = icmp eq i32 %3018, 0
  %3036 = zext i1 %3035 to i8
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3036, i8* %3037, align 1
  %3038 = lshr i32 %3018, 31
  %3039 = trunc i32 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3039, i8* %3040, align 1
  %3041 = lshr i32 %3015, 31
  %3042 = lshr i32 %3017, 31
  %3043 = xor i32 %3042, %3041
  %3044 = xor i32 %3038, %3041
  %3045 = add i32 %3044, %3043
  %3046 = icmp eq i32 %3045, 2
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3047, i8* %3048, align 1
  store %struct.Memory* %loadMem_41b878, %struct.Memory** %MEMORY
  %loadMem_41b87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 5
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %ECX.i107 = bitcast %union.anon* %3054 to i32*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 7
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %3057 to i64*
  %3058 = load i32, i32* %ECX.i107
  %3059 = zext i32 %3058 to i64
  %3060 = load i64, i64* %PC.i106
  %3061 = add i64 %3060, 3
  store i64 %3061, i64* %PC.i106
  %3062 = shl i64 %3059, 32
  %3063 = ashr exact i64 %3062, 32
  store i64 %3063, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_41b87b, %struct.Memory** %MEMORY
  %loadMem_41b87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 1
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 7
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3073, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %3074 to %"class.std::bitset"*
  %3075 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %3076 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %3077 = load i64, i64* %RAX.i103
  %3078 = load i64, i64* %RDX.i104
  %3079 = mul i64 %3078, 4
  %3080 = add i64 %3079, %3077
  %3081 = load i64, i64* %PC.i102
  %3082 = add i64 %3081, 5
  store i64 %3082, i64* %PC.i102
  %3083 = bitcast i8* %3076 to <2 x float>*
  %3084 = load <2 x float>, <2 x float>* %3083, align 1
  %3085 = getelementptr inbounds i8, i8* %3076, i64 8
  %3086 = bitcast i8* %3085 to <2 x i32>*
  %3087 = load <2 x i32>, <2 x i32>* %3086, align 1
  %3088 = inttoptr i64 %3080 to float*
  %3089 = load float, float* %3088
  %3090 = extractelement <2 x float> %3084, i32 0
  %3091 = fsub float %3090, %3089
  %3092 = bitcast i8* %3075 to float*
  store float %3091, float* %3092, align 1
  %3093 = bitcast <2 x float> %3084 to <2 x i32>
  %3094 = extractelement <2 x i32> %3093, i32 1
  %3095 = getelementptr inbounds i8, i8* %3075, i64 4
  %3096 = bitcast i8* %3095 to i32*
  store i32 %3094, i32* %3096, align 1
  %3097 = extractelement <2 x i32> %3087, i32 0
  %3098 = getelementptr inbounds i8, i8* %3075, i64 8
  %3099 = bitcast i8* %3098 to i32*
  store i32 %3097, i32* %3099, align 1
  %3100 = extractelement <2 x i32> %3087, i32 1
  %3101 = getelementptr inbounds i8, i8* %3075, i64 12
  %3102 = bitcast i8* %3101 to i32*
  store i32 %3100, i32* %3102, align 1
  store %struct.Memory* %loadMem_41b87e, %struct.Memory** %MEMORY
  %loadMem_41b883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3109, i64 0, i64 0
  %XMM0.i101 = bitcast %union.VectorReg* %3110 to %union.vec128_t*
  %3111 = load i64, i64* %RBP.i100
  %3112 = sub i64 %3111, 36
  %3113 = bitcast %union.vec128_t* %XMM0.i101 to i8*
  %3114 = load i64, i64* %PC.i99
  %3115 = add i64 %3114, 5
  store i64 %3115, i64* %PC.i99
  %3116 = bitcast i8* %3113 to <2 x float>*
  %3117 = load <2 x float>, <2 x float>* %3116, align 1
  %3118 = extractelement <2 x float> %3117, i32 0
  %3119 = inttoptr i64 %3112 to float*
  store float %3118, float* %3119
  store %struct.Memory* %loadMem_41b883, %struct.Memory** %MEMORY
  %loadMem_41b888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3126, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %3127 to %"class.std::bitset"*
  %3128 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %3129 = load i64, i64* %RBP.i97
  %3130 = sub i64 %3129, 36
  %3131 = load i64, i64* %PC.i96
  %3132 = add i64 %3131, 5
  store i64 %3132, i64* %PC.i96
  %3133 = inttoptr i64 %3130 to float*
  %3134 = load float, float* %3133
  %3135 = bitcast i8* %3128 to float*
  store float %3134, float* %3135, align 1
  %3136 = getelementptr inbounds i8, i8* %3128, i64 4
  %3137 = bitcast i8* %3136 to float*
  store float 0.000000e+00, float* %3137, align 1
  %3138 = getelementptr inbounds i8, i8* %3128, i64 8
  %3139 = bitcast i8* %3138 to float*
  store float 0.000000e+00, float* %3139, align 1
  %3140 = getelementptr inbounds i8, i8* %3128, i64 12
  %3141 = bitcast i8* %3140 to float*
  store float 0.000000e+00, float* %3141, align 1
  store %struct.Memory* %loadMem_41b888, %struct.Memory** %MEMORY
  %loadMem_41b88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 33
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 15
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3148, i64 0, i64 0
  %YMM0.i95 = bitcast %union.VectorReg* %3149 to %"class.std::bitset"*
  %3150 = bitcast %"class.std::bitset"* %YMM0.i95 to i8*
  %3151 = bitcast %"class.std::bitset"* %YMM0.i95 to i8*
  %3152 = load i64, i64* %RBP.i94
  %3153 = sub i64 %3152, 36
  %3154 = load i64, i64* %PC.i93
  %3155 = add i64 %3154, 5
  store i64 %3155, i64* %PC.i93
  %3156 = bitcast i8* %3151 to <2 x float>*
  %3157 = load <2 x float>, <2 x float>* %3156, align 1
  %3158 = getelementptr inbounds i8, i8* %3151, i64 8
  %3159 = bitcast i8* %3158 to <2 x i32>*
  %3160 = load <2 x i32>, <2 x i32>* %3159, align 1
  %3161 = inttoptr i64 %3153 to float*
  %3162 = load float, float* %3161
  %3163 = extractelement <2 x float> %3157, i32 0
  %3164 = fmul float %3163, %3162
  %3165 = bitcast i8* %3150 to float*
  store float %3164, float* %3165, align 1
  %3166 = bitcast <2 x float> %3157 to <2 x i32>
  %3167 = extractelement <2 x i32> %3166, i32 1
  %3168 = getelementptr inbounds i8, i8* %3150, i64 4
  %3169 = bitcast i8* %3168 to i32*
  store i32 %3167, i32* %3169, align 1
  %3170 = extractelement <2 x i32> %3160, i32 0
  %3171 = getelementptr inbounds i8, i8* %3150, i64 8
  %3172 = bitcast i8* %3171 to i32*
  store i32 %3170, i32* %3172, align 1
  %3173 = extractelement <2 x i32> %3160, i32 1
  %3174 = getelementptr inbounds i8, i8* %3150, i64 12
  %3175 = bitcast i8* %3174 to i32*
  store i32 %3173, i32* %3175, align 1
  store %struct.Memory* %loadMem_41b88d, %struct.Memory** %MEMORY
  %loadMem_41b892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 1
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 15
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %3184 to i64*
  %3185 = load i64, i64* %RBP.i92
  %3186 = sub i64 %3185, 8
  %3187 = load i64, i64* %PC.i90
  %3188 = add i64 %3187, 4
  store i64 %3188, i64* %PC.i90
  %3189 = inttoptr i64 %3186 to i64*
  %3190 = load i64, i64* %3189
  store i64 %3190, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_41b892, %struct.Memory** %MEMORY
  %loadMem_41b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 1
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RAX.i89
  %3198 = add i64 %3197, 32
  %3199 = load i64, i64* %PC.i88
  %3200 = add i64 %3199, 4
  store i64 %3200, i64* %PC.i88
  %3201 = inttoptr i64 %3198 to i64*
  %3202 = load i64, i64* %3201
  store i64 %3202, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_41b896, %struct.Memory** %MEMORY
  %loadMem_41b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 33
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 5
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 15
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %3211 to i64*
  %3212 = load i64, i64* %RBP.i87
  %3213 = sub i64 %3212, 20
  %3214 = load i64, i64* %PC.i85
  %3215 = add i64 %3214, 3
  store i64 %3215, i64* %PC.i85
  %3216 = inttoptr i64 %3213 to i32*
  %3217 = load i32, i32* %3216
  %3218 = zext i32 %3217 to i64
  store i64 %3218, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_41b89a, %struct.Memory** %MEMORY
  %loadMem_41b89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 7
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i84
  %3229 = sub i64 %3228, 8
  %3230 = load i64, i64* %PC.i82
  %3231 = add i64 %3230, 4
  store i64 %3231, i64* %PC.i82
  %3232 = inttoptr i64 %3229 to i64*
  %3233 = load i64, i64* %3232
  store i64 %3233, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_41b89d, %struct.Memory** %MEMORY
  %loadMem_41b8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 5
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 7
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %RCX.i80
  %3244 = load i64, i64* %RDX.i81
  %3245 = add i64 %3244, 8
  %3246 = load i64, i64* %PC.i79
  %3247 = add i64 %3246, 3
  store i64 %3247, i64* %PC.i79
  %3248 = trunc i64 %3243 to i32
  %3249 = inttoptr i64 %3245 to i32*
  %3250 = load i32, i32* %3249
  %3251 = sub i32 %3248, %3250
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %RCX.i80, align 8
  %3253 = icmp ult i32 %3248, %3250
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3254, i8* %3255, align 1
  %3256 = and i32 %3251, 255
  %3257 = call i32 @llvm.ctpop.i32(i32 %3256)
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = xor i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3260, i8* %3261, align 1
  %3262 = xor i32 %3250, %3248
  %3263 = xor i32 %3262, %3251
  %3264 = lshr i32 %3263, 4
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3266, i8* %3267, align 1
  %3268 = icmp eq i32 %3251, 0
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3269, i8* %3270, align 1
  %3271 = lshr i32 %3251, 31
  %3272 = trunc i32 %3271 to i8
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3272, i8* %3273, align 1
  %3274 = lshr i32 %3248, 31
  %3275 = lshr i32 %3250, 31
  %3276 = xor i32 %3275, %3274
  %3277 = xor i32 %3271, %3274
  %3278 = add i32 %3277, %3276
  %3279 = icmp eq i32 %3278, 2
  %3280 = zext i1 %3279 to i8
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3280, i8* %3281, align 1
  store %struct.Memory* %loadMem_41b8a1, %struct.Memory** %MEMORY
  %loadMem_41b8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 33
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 5
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %ECX.i77 = bitcast %union.anon* %3287 to i32*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 7
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %3290 to i64*
  %3291 = load i32, i32* %ECX.i77
  %3292 = zext i32 %3291 to i64
  %3293 = load i64, i64* %PC.i76
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %PC.i76
  %3295 = shl i64 %3292, 32
  %3296 = ashr exact i64 %3295, 32
  store i64 %3296, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_41b8a4, %struct.Memory** %MEMORY
  %loadMem_41b8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 1
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 7
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3306, i64 0, i64 0
  %YMM0.i75 = bitcast %union.VectorReg* %3307 to %"class.std::bitset"*
  %3308 = bitcast %"class.std::bitset"* %YMM0.i75 to i8*
  %3309 = bitcast %"class.std::bitset"* %YMM0.i75 to i8*
  %3310 = load i64, i64* %RAX.i74
  %3311 = load i64, i64* %RDX.i
  %3312 = mul i64 %3311, 4
  %3313 = add i64 %3312, %3310
  %3314 = load i64, i64* %PC.i73
  %3315 = add i64 %3314, 5
  store i64 %3315, i64* %PC.i73
  %3316 = bitcast i8* %3309 to <2 x float>*
  %3317 = load <2 x float>, <2 x float>* %3316, align 1
  %3318 = getelementptr inbounds i8, i8* %3309, i64 8
  %3319 = bitcast i8* %3318 to <2 x i32>*
  %3320 = load <2 x i32>, <2 x i32>* %3319, align 1
  %3321 = inttoptr i64 %3313 to float*
  %3322 = load float, float* %3321
  %3323 = extractelement <2 x float> %3317, i32 0
  %3324 = fdiv float %3323, %3322
  %3325 = bitcast i8* %3308 to float*
  store float %3324, float* %3325, align 1
  %3326 = bitcast <2 x float> %3317 to <2 x i32>
  %3327 = extractelement <2 x i32> %3326, i32 1
  %3328 = getelementptr inbounds i8, i8* %3308, i64 4
  %3329 = bitcast i8* %3328 to i32*
  store i32 %3327, i32* %3329, align 1
  %3330 = extractelement <2 x i32> %3320, i32 0
  %3331 = getelementptr inbounds i8, i8* %3308, i64 8
  %3332 = bitcast i8* %3331 to i32*
  store i32 %3330, i32* %3332, align 1
  %3333 = extractelement <2 x i32> %3320, i32 1
  %3334 = getelementptr inbounds i8, i8* %3308, i64 12
  %3335 = bitcast i8* %3334 to i32*
  store i32 %3333, i32* %3335, align 1
  store %struct.Memory* %loadMem_41b8a7, %struct.Memory** %MEMORY
  %loadMem_41b8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 15
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %RBP.i72
  %3346 = sub i64 %3345, 8
  %3347 = load i64, i64* %PC.i70
  %3348 = add i64 %3347, 4
  store i64 %3348, i64* %PC.i70
  %3349 = inttoptr i64 %3346 to i64*
  %3350 = load i64, i64* %3349
  store i64 %3350, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_41b8ac, %struct.Memory** %MEMORY
  %loadMem_41b8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 1
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3357, i64 0, i64 0
  %YMM0.i69 = bitcast %union.VectorReg* %3358 to %"class.std::bitset"*
  %3359 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %3360 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %3361 = load i64, i64* %RAX.i68
  %3362 = add i64 %3361, 56
  %3363 = load i64, i64* %PC.i67
  %3364 = add i64 %3363, 5
  store i64 %3364, i64* %PC.i67
  %3365 = bitcast i8* %3360 to <2 x float>*
  %3366 = load <2 x float>, <2 x float>* %3365, align 1
  %3367 = getelementptr inbounds i8, i8* %3360, i64 8
  %3368 = bitcast i8* %3367 to <2 x i32>*
  %3369 = load <2 x i32>, <2 x i32>* %3368, align 1
  %3370 = inttoptr i64 %3362 to float*
  %3371 = load float, float* %3370
  %3372 = extractelement <2 x float> %3366, i32 0
  %3373 = fadd float %3372, %3371
  %3374 = bitcast i8* %3359 to float*
  store float %3373, float* %3374, align 1
  %3375 = bitcast <2 x float> %3366 to <2 x i32>
  %3376 = extractelement <2 x i32> %3375, i32 1
  %3377 = getelementptr inbounds i8, i8* %3359, i64 4
  %3378 = bitcast i8* %3377 to i32*
  store i32 %3376, i32* %3378, align 1
  %3379 = extractelement <2 x i32> %3369, i32 0
  %3380 = getelementptr inbounds i8, i8* %3359, i64 8
  %3381 = bitcast i8* %3380 to i32*
  store i32 %3379, i32* %3381, align 1
  %3382 = extractelement <2 x i32> %3369, i32 1
  %3383 = getelementptr inbounds i8, i8* %3359, i64 12
  %3384 = bitcast i8* %3383 to i32*
  store i32 %3382, i32* %3384, align 1
  store %struct.Memory* %loadMem_41b8b0, %struct.Memory** %MEMORY
  %loadMem_41b8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 1
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3391, i64 0, i64 0
  %XMM0.i66 = bitcast %union.VectorReg* %3392 to %union.vec128_t*
  %3393 = load i64, i64* %RAX.i65
  %3394 = add i64 %3393, 56
  %3395 = bitcast %union.vec128_t* %XMM0.i66 to i8*
  %3396 = load i64, i64* %PC.i64
  %3397 = add i64 %3396, 5
  store i64 %3397, i64* %PC.i64
  %3398 = bitcast i8* %3395 to <2 x float>*
  %3399 = load <2 x float>, <2 x float>* %3398, align 1
  %3400 = extractelement <2 x float> %3399, i32 0
  %3401 = inttoptr i64 %3394 to float*
  store float %3400, float* %3401
  store %struct.Memory* %loadMem_41b8b5, %struct.Memory** %MEMORY
  %loadMem_41b8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 5
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 15
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RBP.i63
  %3412 = sub i64 %3411, 32
  %3413 = load i64, i64* %PC.i61
  %3414 = add i64 %3413, 3
  store i64 %3414, i64* %PC.i61
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = zext i32 %3416 to i64
  store i64 %3417, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_41b8ba, %struct.Memory** %MEMORY
  %loadMem_41b8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 5
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RCX.i60
  %3425 = load i64, i64* %PC.i59
  %3426 = add i64 %3425, 3
  store i64 %3426, i64* %PC.i59
  %3427 = trunc i64 %3424 to i32
  %3428 = add i32 1, %3427
  %3429 = zext i32 %3428 to i64
  store i64 %3429, i64* %RCX.i60, align 8
  %3430 = icmp ult i32 %3428, %3427
  %3431 = icmp ult i32 %3428, 1
  %3432 = or i1 %3430, %3431
  %3433 = zext i1 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3433, i8* %3434, align 1
  %3435 = and i32 %3428, 255
  %3436 = call i32 @llvm.ctpop.i32(i32 %3435)
  %3437 = trunc i32 %3436 to i8
  %3438 = and i8 %3437, 1
  %3439 = xor i8 %3438, 1
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3439, i8* %3440, align 1
  %3441 = xor i64 1, %3424
  %3442 = trunc i64 %3441 to i32
  %3443 = xor i32 %3442, %3428
  %3444 = lshr i32 %3443, 4
  %3445 = trunc i32 %3444 to i8
  %3446 = and i8 %3445, 1
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3446, i8* %3447, align 1
  %3448 = icmp eq i32 %3428, 0
  %3449 = zext i1 %3448 to i8
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3449, i8* %3450, align 1
  %3451 = lshr i32 %3428, 31
  %3452 = trunc i32 %3451 to i8
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3452, i8* %3453, align 1
  %3454 = lshr i32 %3427, 31
  %3455 = xor i32 %3451, %3454
  %3456 = add i32 %3455, %3451
  %3457 = icmp eq i32 %3456, 2
  %3458 = zext i1 %3457 to i8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3458, i8* %3459, align 1
  store %struct.Memory* %loadMem_41b8bd, %struct.Memory** %MEMORY
  %loadMem_41b8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 5
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3465 to i32*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 15
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3468 to i64*
  %3469 = load i64, i64* %RBP.i58
  %3470 = sub i64 %3469, 32
  %3471 = load i32, i32* %ECX.i
  %3472 = zext i32 %3471 to i64
  %3473 = load i64, i64* %PC.i57
  %3474 = add i64 %3473, 3
  store i64 %3474, i64* %PC.i57
  %3475 = inttoptr i64 %3470 to i32*
  store i32 %3471, i32* %3475
  store %struct.Memory* %loadMem_41b8c0, %struct.Memory** %MEMORY
  br label %block_.L_41b8c3

block_.L_41b8c3:                                  ; preds = %block_41b850, %block_41b832, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_41b8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %PC.i56
  %3480 = add i64 %3479, 5
  %3481 = load i64, i64* %PC.i56
  %3482 = add i64 %3481, 5
  store i64 %3482, i64* %PC.i56
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3480, i64* %3483, align 8
  store %struct.Memory* %loadMem_41b8c3, %struct.Memory** %MEMORY
  br label %block_.L_41b8c8

block_.L_41b8c8:                                  ; preds = %block_.L_41b8c3
  %loadMem_41b8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 1
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 15
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %3492 to i64*
  %3493 = load i64, i64* %RBP.i55
  %3494 = sub i64 %3493, 20
  %3495 = load i64, i64* %PC.i53
  %3496 = add i64 %3495, 3
  store i64 %3496, i64* %PC.i53
  %3497 = inttoptr i64 %3494 to i32*
  %3498 = load i32, i32* %3497
  %3499 = zext i32 %3498 to i64
  store i64 %3499, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_41b8c8, %struct.Memory** %MEMORY
  %loadMem_41b8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 33
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3502 to i64*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 1
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %3505 to i64*
  %3506 = load i64, i64* %RAX.i52
  %3507 = load i64, i64* %PC.i51
  %3508 = add i64 %3507, 3
  store i64 %3508, i64* %PC.i51
  %3509 = trunc i64 %3506 to i32
  %3510 = add i32 1, %3509
  %3511 = zext i32 %3510 to i64
  store i64 %3511, i64* %RAX.i52, align 8
  %3512 = icmp ult i32 %3510, %3509
  %3513 = icmp ult i32 %3510, 1
  %3514 = or i1 %3512, %3513
  %3515 = zext i1 %3514 to i8
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3515, i8* %3516, align 1
  %3517 = and i32 %3510, 255
  %3518 = call i32 @llvm.ctpop.i32(i32 %3517)
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = xor i8 %3520, 1
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3521, i8* %3522, align 1
  %3523 = xor i64 1, %3506
  %3524 = trunc i64 %3523 to i32
  %3525 = xor i32 %3524, %3510
  %3526 = lshr i32 %3525, 4
  %3527 = trunc i32 %3526 to i8
  %3528 = and i8 %3527, 1
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3528, i8* %3529, align 1
  %3530 = icmp eq i32 %3510, 0
  %3531 = zext i1 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3531, i8* %3532, align 1
  %3533 = lshr i32 %3510, 31
  %3534 = trunc i32 %3533 to i8
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3534, i8* %3535, align 1
  %3536 = lshr i32 %3509, 31
  %3537 = xor i32 %3533, %3536
  %3538 = add i32 %3537, %3533
  %3539 = icmp eq i32 %3538, 2
  %3540 = zext i1 %3539 to i8
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3540, i8* %3541, align 1
  store %struct.Memory* %loadMem_41b8cb, %struct.Memory** %MEMORY
  %loadMem_41b8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 33
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 1
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %3547 to i32*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 15
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %3550 to i64*
  %3551 = load i64, i64* %RBP.i50
  %3552 = sub i64 %3551, 20
  %3553 = load i32, i32* %EAX.i49
  %3554 = zext i32 %3553 to i64
  %3555 = load i64, i64* %PC.i48
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %PC.i48
  %3557 = inttoptr i64 %3552 to i32*
  store i32 %3553, i32* %3557
  store %struct.Memory* %loadMem_41b8ce, %struct.Memory** %MEMORY
  %loadMem_41b8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %PC.i47
  %3562 = add i64 %3561, -219
  %3563 = load i64, i64* %PC.i47
  %3564 = add i64 %3563, 5
  store i64 %3564, i64* %PC.i47
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3562, i64* %3565, align 8
  store %struct.Memory* %loadMem_41b8d1, %struct.Memory** %MEMORY
  br label %block_.L_41b7f6

block_.L_41b8d6:                                  ; preds = %block_.L_41b7f6
  %loadMem_41b8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 15
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RBP.i46
  %3573 = sub i64 %3572, 32
  %3574 = load i64, i64* %PC.i45
  %3575 = add i64 %3574, 4
  store i64 %3575, i64* %PC.i45
  %3576 = inttoptr i64 %3573 to i32*
  %3577 = load i32, i32* %3576
  %3578 = sub i32 %3577, 1
  %3579 = icmp ult i32 %3577, 1
  %3580 = zext i1 %3579 to i8
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3580, i8* %3581, align 1
  %3582 = and i32 %3578, 255
  %3583 = call i32 @llvm.ctpop.i32(i32 %3582)
  %3584 = trunc i32 %3583 to i8
  %3585 = and i8 %3584, 1
  %3586 = xor i8 %3585, 1
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3586, i8* %3587, align 1
  %3588 = xor i32 %3577, 1
  %3589 = xor i32 %3588, %3578
  %3590 = lshr i32 %3589, 4
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3592, i8* %3593, align 1
  %3594 = icmp eq i32 %3578, 0
  %3595 = zext i1 %3594 to i8
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3595, i8* %3596, align 1
  %3597 = lshr i32 %3578, 31
  %3598 = trunc i32 %3597 to i8
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3598, i8* %3599, align 1
  %3600 = lshr i32 %3577, 31
  %3601 = xor i32 %3597, %3600
  %3602 = add i32 %3601, %3600
  %3603 = icmp eq i32 %3602, 2
  %3604 = zext i1 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3604, i8* %3605, align 1
  store %struct.Memory* %loadMem_41b8d6, %struct.Memory** %MEMORY
  %loadMem_41b8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3608 to i64*
  %3609 = load i64, i64* %PC.i44
  %3610 = add i64 %3609, 70
  %3611 = load i64, i64* %PC.i44
  %3612 = add i64 %3611, 6
  %3613 = load i64, i64* %PC.i44
  %3614 = add i64 %3613, 6
  store i64 %3614, i64* %PC.i44
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3616 = load i8, i8* %3615, align 1
  %3617 = icmp ne i8 %3616, 0
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3619 = load i8, i8* %3618, align 1
  %3620 = icmp ne i8 %3619, 0
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3622 = load i8, i8* %3621, align 1
  %3623 = icmp ne i8 %3622, 0
  %3624 = xor i1 %3620, %3623
  %3625 = or i1 %3617, %3624
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %BRANCH_TAKEN, align 1
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3628 = select i1 %3625, i64 %3610, i64 %3612
  store i64 %3628, i64* %3627, align 8
  store %struct.Memory* %loadMem_41b8da, %struct.Memory** %MEMORY
  %loadBr_41b8da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b8da = icmp eq i8 %loadBr_41b8da, 1
  br i1 %cmpBr_41b8da, label %block_.L_41b920, label %block_41b8e0

block_41b8e0:                                     ; preds = %block_.L_41b8d6
  %loadMem_41b8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3633 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3632, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %3633 to %"class.std::bitset"*
  %3634 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %3635 = load i64, i64* %PC.i42
  %3636 = add i64 %3635, ptrtoint (%G_0x38f00__rip__type* @G_0x38f00__rip_ to i64)
  %3637 = load i64, i64* %PC.i42
  %3638 = add i64 %3637, 8
  store i64 %3638, i64* %PC.i42
  %3639 = inttoptr i64 %3636 to double*
  %3640 = load double, double* %3639
  %3641 = bitcast i8* %3634 to double*
  store double %3640, double* %3641, align 1
  %3642 = getelementptr inbounds i8, i8* %3634, i64 8
  %3643 = bitcast i8* %3642 to double*
  store double 0.000000e+00, double* %3643, align 1
  store %struct.Memory* %loadMem_41b8e0, %struct.Memory** %MEMORY
  %loadMem_41b8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 1
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RBP.i41
  %3654 = sub i64 %3653, 32
  %3655 = load i64, i64* %PC.i39
  %3656 = add i64 %3655, 3
  store i64 %3656, i64* %PC.i39
  %3657 = inttoptr i64 %3654 to i32*
  %3658 = load i32, i32* %3657
  %3659 = zext i32 %3658 to i64
  store i64 %3659, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_41b8e8, %struct.Memory** %MEMORY
  %loadMem_41b8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 33
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 1
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %RAX.i38
  %3667 = load i64, i64* %PC.i37
  %3668 = add i64 %3667, 3
  store i64 %3668, i64* %PC.i37
  %3669 = trunc i64 %3666 to i32
  %3670 = sub i32 %3669, 1
  %3671 = zext i32 %3670 to i64
  store i64 %3671, i64* %RAX.i38, align 8
  %3672 = icmp ult i32 %3669, 1
  %3673 = zext i1 %3672 to i8
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3673, i8* %3674, align 1
  %3675 = and i32 %3670, 255
  %3676 = call i32 @llvm.ctpop.i32(i32 %3675)
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = xor i8 %3678, 1
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3679, i8* %3680, align 1
  %3681 = xor i64 1, %3666
  %3682 = trunc i64 %3681 to i32
  %3683 = xor i32 %3682, %3670
  %3684 = lshr i32 %3683, 4
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3686, i8* %3687, align 1
  %3688 = icmp eq i32 %3670, 0
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3689, i8* %3690, align 1
  %3691 = lshr i32 %3670, 31
  %3692 = trunc i32 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3692, i8* %3693, align 1
  %3694 = lshr i32 %3669, 31
  %3695 = xor i32 %3691, %3694
  %3696 = add i32 %3695, %3694
  %3697 = icmp eq i32 %3696, 2
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3698, i8* %3699, align 1
  store %struct.Memory* %loadMem_41b8eb, %struct.Memory** %MEMORY
  %loadMem_41b8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 1
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3705 to i32*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3706, i64 0, i64 1
  %YMM1.i36 = bitcast %union.VectorReg* %3707 to %"class.std::bitset"*
  %3708 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %3709 = load i32, i32* %EAX.i
  %3710 = zext i32 %3709 to i64
  %3711 = load i64, i64* %PC.i35
  %3712 = add i64 %3711, 4
  store i64 %3712, i64* %PC.i35
  %3713 = sitofp i32 %3709 to double
  %3714 = bitcast i8* %3708 to double*
  store double %3713, double* %3714, align 1
  store %struct.Memory* %loadMem_41b8ee, %struct.Memory** %MEMORY
  %loadMem_41b8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3718, i64 0, i64 1
  %YMM1.i33 = bitcast %union.VectorReg* %3719 to %"class.std::bitset"*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3720, i64 0, i64 0
  %XMM0.i34 = bitcast %union.VectorReg* %3721 to %union.vec128_t*
  %3722 = bitcast %"class.std::bitset"* %YMM1.i33 to i8*
  %3723 = bitcast %"class.std::bitset"* %YMM1.i33 to i8*
  %3724 = bitcast %union.vec128_t* %XMM0.i34 to i8*
  %3725 = load i64, i64* %PC.i32
  %3726 = add i64 %3725, 4
  store i64 %3726, i64* %PC.i32
  %3727 = bitcast i8* %3723 to double*
  %3728 = load double, double* %3727, align 1
  %3729 = getelementptr inbounds i8, i8* %3723, i64 8
  %3730 = bitcast i8* %3729 to i64*
  %3731 = load i64, i64* %3730, align 1
  %3732 = bitcast i8* %3724 to double*
  %3733 = load double, double* %3732, align 1
  %3734 = fdiv double %3728, %3733
  %3735 = bitcast i8* %3722 to double*
  store double %3734, double* %3735, align 1
  %3736 = getelementptr inbounds i8, i8* %3722, i64 8
  %3737 = bitcast i8* %3736 to i64*
  store i64 %3731, i64* %3737, align 1
  store %struct.Memory* %loadMem_41b8f2, %struct.Memory** %MEMORY
  %loadMem_41b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 5
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %3743 to i64*
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 15
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %RBP.i31
  %3748 = sub i64 %3747, 8
  %3749 = load i64, i64* %PC.i29
  %3750 = add i64 %3749, 4
  store i64 %3750, i64* %PC.i29
  %3751 = inttoptr i64 %3748 to i64*
  %3752 = load i64, i64* %3751
  store i64 %3752, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_41b8f6, %struct.Memory** %MEMORY
  %loadMem_41b8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 33
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3755 to i64*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 5
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %3758 to i64*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3759, i64 0, i64 2
  %YMM2.i28 = bitcast %union.VectorReg* %3760 to %"class.std::bitset"*
  %3761 = bitcast %"class.std::bitset"* %YMM2.i28 to i8*
  %3762 = load i64, i64* %RCX.i27
  %3763 = add i64 %3762, 56
  %3764 = load i64, i64* %PC.i26
  %3765 = add i64 %3764, 5
  store i64 %3765, i64* %PC.i26
  %3766 = inttoptr i64 %3763 to float*
  %3767 = load float, float* %3766
  %3768 = fpext float %3767 to double
  %3769 = bitcast i8* %3761 to double*
  store double %3768, double* %3769, align 1
  store %struct.Memory* %loadMem_41b8fa, %struct.Memory** %MEMORY
  %loadMem_41b8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3773, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3774 to %"class.std::bitset"*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3775, i64 0, i64 0
  %XMM0.i25 = bitcast %union.VectorReg* %3776 to %union.vec128_t*
  %3777 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3778 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3779 = bitcast %union.vec128_t* %XMM0.i25 to i8*
  %3780 = load i64, i64* %PC.i24
  %3781 = add i64 %3780, 4
  store i64 %3781, i64* %PC.i24
  %3782 = bitcast i8* %3778 to double*
  %3783 = load double, double* %3782, align 1
  %3784 = getelementptr inbounds i8, i8* %3778, i64 8
  %3785 = bitcast i8* %3784 to i64*
  %3786 = load i64, i64* %3785, align 1
  %3787 = bitcast i8* %3779 to double*
  %3788 = load double, double* %3787, align 1
  %3789 = fdiv double %3783, %3788
  %3790 = bitcast i8* %3777 to double*
  store double %3789, double* %3790, align 1
  %3791 = getelementptr inbounds i8, i8* %3777, i64 8
  %3792 = bitcast i8* %3791 to i64*
  store i64 %3786, i64* %3792, align 1
  store %struct.Memory* %loadMem_41b8ff, %struct.Memory** %MEMORY
  %loadMem_41b903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3796, i64 0, i64 0
  %YMM0.i23 = bitcast %union.VectorReg* %3797 to %"class.std::bitset"*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3798, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3799 to %union.vec128_t*
  %3800 = bitcast %"class.std::bitset"* %YMM0.i23 to i8*
  %3801 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3802 = load i64, i64* %PC.i22
  %3803 = add i64 %3802, 3
  store i64 %3803, i64* %PC.i22
  %3804 = bitcast i8* %3801 to <2 x i32>*
  %3805 = load <2 x i32>, <2 x i32>* %3804, align 1
  %3806 = getelementptr inbounds i8, i8* %3801, i64 8
  %3807 = bitcast i8* %3806 to <2 x i32>*
  %3808 = load <2 x i32>, <2 x i32>* %3807, align 1
  %3809 = extractelement <2 x i32> %3805, i32 0
  %3810 = bitcast i8* %3800 to i32*
  store i32 %3809, i32* %3810, align 1
  %3811 = extractelement <2 x i32> %3805, i32 1
  %3812 = getelementptr inbounds i8, i8* %3800, i64 4
  %3813 = bitcast i8* %3812 to i32*
  store i32 %3811, i32* %3813, align 1
  %3814 = extractelement <2 x i32> %3808, i32 0
  %3815 = getelementptr inbounds i8, i8* %3800, i64 8
  %3816 = bitcast i8* %3815 to i32*
  store i32 %3814, i32* %3816, align 1
  %3817 = extractelement <2 x i32> %3808, i32 1
  %3818 = getelementptr inbounds i8, i8* %3800, i64 12
  %3819 = bitcast i8* %3818 to i32*
  store i32 %3817, i32* %3819, align 1
  store %struct.Memory* %loadMem_41b903, %struct.Memory** %MEMORY
  %loadMem_41b906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3823, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3824 to %"class.std::bitset"*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3825, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3826 to %union.vec128_t*
  %3827 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3828 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3829 = load i64, i64* %PC.i21
  %3830 = add i64 %3829, 3
  store i64 %3830, i64* %PC.i21
  %3831 = bitcast i8* %3828 to <2 x i32>*
  %3832 = load <2 x i32>, <2 x i32>* %3831, align 1
  %3833 = getelementptr inbounds i8, i8* %3828, i64 8
  %3834 = bitcast i8* %3833 to <2 x i32>*
  %3835 = load <2 x i32>, <2 x i32>* %3834, align 1
  %3836 = extractelement <2 x i32> %3832, i32 0
  %3837 = bitcast i8* %3827 to i32*
  store i32 %3836, i32* %3837, align 1
  %3838 = extractelement <2 x i32> %3832, i32 1
  %3839 = getelementptr inbounds i8, i8* %3827, i64 4
  %3840 = bitcast i8* %3839 to i32*
  store i32 %3838, i32* %3840, align 1
  %3841 = extractelement <2 x i32> %3835, i32 0
  %3842 = getelementptr inbounds i8, i8* %3827, i64 8
  %3843 = bitcast i8* %3842 to i32*
  store i32 %3841, i32* %3843, align 1
  %3844 = extractelement <2 x i32> %3835, i32 1
  %3845 = getelementptr inbounds i8, i8* %3827, i64 12
  %3846 = bitcast i8* %3845 to i32*
  store i32 %3844, i32* %3846, align 1
  store %struct.Memory* %loadMem_41b906, %struct.Memory** %MEMORY
  %loadMem1_41b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %PC.i20
  %3851 = add i64 %3850, 169847
  %3852 = load i64, i64* %PC.i20
  %3853 = add i64 %3852, 5
  %3854 = load i64, i64* %PC.i20
  %3855 = add i64 %3854, 5
  store i64 %3855, i64* %PC.i20
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3857 = load i64, i64* %3856, align 8
  %3858 = add i64 %3857, -8
  %3859 = inttoptr i64 %3858 to i64*
  store i64 %3853, i64* %3859
  store i64 %3858, i64* %3856, align 8
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3851, i64* %3860, align 8
  store %struct.Memory* %loadMem1_41b909, %struct.Memory** %MEMORY
  %loadMem2_41b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b909 = load i64, i64* %3
  %call2_41b909 = call %struct.Memory* @sub_445080.IncompleteGamma(%struct.State* %0, i64 %loadPC_41b909, %struct.Memory* %loadMem2_41b909)
  store %struct.Memory* %call2_41b909, %struct.Memory** %MEMORY
  %loadMem_41b90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3865 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3864, i64 0, i64 0
  %YMM0.i18 = bitcast %union.VectorReg* %3865 to %"class.std::bitset"*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3866, i64 0, i64 0
  %XMM0.i19 = bitcast %union.VectorReg* %3867 to %union.vec128_t*
  %3868 = bitcast %"class.std::bitset"* %YMM0.i18 to i8*
  %3869 = bitcast %union.vec128_t* %XMM0.i19 to i8*
  %3870 = load i64, i64* %PC.i17
  %3871 = add i64 %3870, 4
  store i64 %3871, i64* %PC.i17
  %3872 = bitcast i8* %3868 to <2 x i32>*
  %3873 = load <2 x i32>, <2 x i32>* %3872, align 1
  %3874 = getelementptr inbounds i8, i8* %3868, i64 8
  %3875 = bitcast i8* %3874 to <2 x i32>*
  %3876 = load <2 x i32>, <2 x i32>* %3875, align 1
  %3877 = bitcast i8* %3869 to double*
  %3878 = load double, double* %3877, align 1
  %3879 = fptrunc double %3878 to float
  %3880 = bitcast i8* %3868 to float*
  store float %3879, float* %3880, align 1
  %3881 = extractelement <2 x i32> %3873, i32 1
  %3882 = getelementptr inbounds i8, i8* %3868, i64 4
  %3883 = bitcast i8* %3882 to i32*
  store i32 %3881, i32* %3883, align 1
  %3884 = extractelement <2 x i32> %3876, i32 0
  %3885 = bitcast i8* %3874 to i32*
  store i32 %3884, i32* %3885, align 1
  %3886 = extractelement <2 x i32> %3876, i32 1
  %3887 = getelementptr inbounds i8, i8* %3868, i64 12
  %3888 = bitcast i8* %3887 to i32*
  store i32 %3886, i32* %3888, align 1
  store %struct.Memory* %loadMem_41b90e, %struct.Memory** %MEMORY
  %loadMem_41b912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 5
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 15
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RBP.i16
  %3899 = sub i64 %3898, 8
  %3900 = load i64, i64* %PC.i14
  %3901 = add i64 %3900, 4
  store i64 %3901, i64* %PC.i14
  %3902 = inttoptr i64 %3899 to i64*
  %3903 = load i64, i64* %3902
  store i64 %3903, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_41b912, %struct.Memory** %MEMORY
  %loadMem_41b916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 5
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3910, i64 0, i64 0
  %XMM0.i13 = bitcast %union.VectorReg* %3911 to %union.vec128_t*
  %3912 = load i64, i64* %RCX.i
  %3913 = add i64 %3912, 60
  %3914 = bitcast %union.vec128_t* %XMM0.i13 to i8*
  %3915 = load i64, i64* %PC.i12
  %3916 = add i64 %3915, 5
  store i64 %3916, i64* %PC.i12
  %3917 = bitcast i8* %3914 to <2 x float>*
  %3918 = load <2 x float>, <2 x float>* %3917, align 1
  %3919 = extractelement <2 x float> %3918, i32 0
  %3920 = inttoptr i64 %3913 to float*
  store float %3919, float* %3920
  store %struct.Memory* %loadMem_41b916, %struct.Memory** %MEMORY
  %loadMem_41b91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %PC.i11
  %3925 = add i64 %3924, 17
  %3926 = load i64, i64* %PC.i11
  %3927 = add i64 %3926, 5
  store i64 %3927, i64* %PC.i11
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3925, i64* %3928, align 8
  store %struct.Memory* %loadMem_41b91b, %struct.Memory** %MEMORY
  br label %block_.L_41b92c

block_.L_41b920:                                  ; preds = %block_.L_41b8d6
  %loadMem_41b920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3933 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3932, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3933 to %"class.std::bitset"*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3934, i64 0, i64 0
  %XMM0.i10 = bitcast %union.VectorReg* %3935 to %union.vec128_t*
  %3936 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3937 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3938 = bitcast %union.vec128_t* %XMM0.i10 to i8*
  %3939 = load i64, i64* %PC.i9
  %3940 = add i64 %3939, 3
  store i64 %3940, i64* %PC.i9
  %3941 = bitcast i8* %3937 to i64*
  %3942 = load i64, i64* %3941, align 1
  %3943 = getelementptr inbounds i8, i8* %3937, i64 8
  %3944 = bitcast i8* %3943 to i64*
  %3945 = load i64, i64* %3944, align 1
  %3946 = bitcast i8* %3938 to i64*
  %3947 = load i64, i64* %3946, align 1
  %3948 = getelementptr inbounds i8, i8* %3938, i64 8
  %3949 = bitcast i8* %3948 to i64*
  %3950 = load i64, i64* %3949, align 1
  %3951 = xor i64 %3947, %3942
  %3952 = xor i64 %3950, %3945
  %3953 = trunc i64 %3951 to i32
  %3954 = lshr i64 %3951, 32
  %3955 = trunc i64 %3954 to i32
  %3956 = bitcast i8* %3936 to i32*
  store i32 %3953, i32* %3956, align 1
  %3957 = getelementptr inbounds i8, i8* %3936, i64 4
  %3958 = bitcast i8* %3957 to i32*
  store i32 %3955, i32* %3958, align 1
  %3959 = trunc i64 %3952 to i32
  %3960 = getelementptr inbounds i8, i8* %3936, i64 8
  %3961 = bitcast i8* %3960 to i32*
  store i32 %3959, i32* %3961, align 1
  %3962 = lshr i64 %3952, 32
  %3963 = trunc i64 %3962 to i32
  %3964 = getelementptr inbounds i8, i8* %3936, i64 12
  %3965 = bitcast i8* %3964 to i32*
  store i32 %3963, i32* %3965, align 1
  store %struct.Memory* %loadMem_41b920, %struct.Memory** %MEMORY
  %loadMem_41b923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 1
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 15
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RBP.i8
  %3976 = sub i64 %3975, 8
  %3977 = load i64, i64* %PC.i6
  %3978 = add i64 %3977, 4
  store i64 %3978, i64* %PC.i6
  %3979 = inttoptr i64 %3976 to i64*
  %3980 = load i64, i64* %3979
  store i64 %3980, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_41b923, %struct.Memory** %MEMORY
  %loadMem_41b927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 1
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3986 to i64*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3988 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3987, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3988 to %union.vec128_t*
  %3989 = load i64, i64* %RAX.i
  %3990 = add i64 %3989, 60
  %3991 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3992 = load i64, i64* %PC.i5
  %3993 = add i64 %3992, 5
  store i64 %3993, i64* %PC.i5
  %3994 = bitcast i8* %3991 to <2 x float>*
  %3995 = load <2 x float>, <2 x float>* %3994, align 1
  %3996 = extractelement <2 x float> %3995, i32 0
  %3997 = inttoptr i64 %3990 to float*
  store float %3996, float* %3997
  store %struct.Memory* %loadMem_41b927, %struct.Memory** %MEMORY
  br label %block_.L_41b92c

block_.L_41b92c:                                  ; preds = %block_.L_41b920, %block_41b8e0
  %loadMem_41b92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 13
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4003 to i64*
  %4004 = load i64, i64* %RSP.i
  %4005 = load i64, i64* %PC.i4
  %4006 = add i64 %4005, 4
  store i64 %4006, i64* %PC.i4
  %4007 = add i64 96, %4004
  store i64 %4007, i64* %RSP.i, align 8
  %4008 = icmp ult i64 %4007, %4004
  %4009 = icmp ult i64 %4007, 96
  %4010 = or i1 %4008, %4009
  %4011 = zext i1 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4011, i8* %4012, align 1
  %4013 = trunc i64 %4007 to i32
  %4014 = and i32 %4013, 255
  %4015 = call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4018, i8* %4019, align 1
  %4020 = xor i64 96, %4004
  %4021 = xor i64 %4020, %4007
  %4022 = lshr i64 %4021, 4
  %4023 = trunc i64 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4024, i8* %4025, align 1
  %4026 = icmp eq i64 %4007, 0
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4027, i8* %4028, align 1
  %4029 = lshr i64 %4007, 63
  %4030 = trunc i64 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4030, i8* %4031, align 1
  %4032 = lshr i64 %4004, 63
  %4033 = xor i64 %4029, %4032
  %4034 = add i64 %4033, %4029
  %4035 = icmp eq i64 %4034, 2
  %4036 = zext i1 %4035 to i8
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4036, i8* %4037, align 1
  store %struct.Memory* %loadMem_41b92c, %struct.Memory** %MEMORY
  %loadMem_41b930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 15
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %PC.i2
  %4045 = add i64 %4044, 1
  store i64 %4045, i64* %PC.i2
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4047 = load i64, i64* %4046, align 8
  %4048 = add i64 %4047, 8
  %4049 = inttoptr i64 %4047 to i64*
  %4050 = load i64, i64* %4049
  store i64 %4050, i64* %RBP.i3, align 8
  store i64 %4048, i64* %4046, align 8
  store %struct.Memory* %loadMem_41b930, %struct.Memory** %MEMORY
  %loadMem_41b931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %PC.i1
  %4055 = add i64 %4054, 1
  store i64 %4055, i64* %PC.i1
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4058 = load i64, i64* %4057, align 8
  %4059 = inttoptr i64 %4058 to i64*
  %4060 = load i64, i64* %4059
  store i64 %4060, i64* %4056, align 8
  %4061 = add i64 %4058, 8
  store i64 %4061, i64* %4057, align 8
  store %struct.Memory* %loadMem_41b931, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41b931
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 12
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movl__0x34d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 845, i64* %RSI, align 8
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

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_jge_.L_41b6a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41b678(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jg_.L_41b7d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39120__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39120__rip__type* @G_0x39120__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x39160__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39160__rip__type* @G_0x39160__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x39108__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39108__rip__type* @G_0x39108__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x39110__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39110__rip__type* @G_0x39110__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x14__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_movss__xmm3__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
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

define %struct.Memory* @routine_movsd_0x3915f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3915f__rip__type* @G_0x3915f__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movsd__xmm4__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movsd__xmm3__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41b6b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_41b8d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x38ffa__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x38ffa__rip__type* @G_0x38ffa__rip_ to i64)
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

define %struct.Memory* @routine_jb_.L_41b8c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_41b8c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_41b8c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41b7f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_41b920(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x38f00__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x38f00__rip__type* @G_0x38f00__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_41b92c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
