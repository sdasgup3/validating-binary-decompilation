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
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cc020_type = type <{ [4 x i8] }>
%G_0x6cc024_type = type <{ [4 x i8] }>
%G_0x6d0278_type = type <{ [8 x i8] }>
%G_0x722c98_type = type <{ [4 x i8] }>
%G_0x92401__rip__type = type <{ [8 x i8] }>
%G_0x92458__rip__type = type <{ [8 x i8] }>
%G_0x926ca__rip__type = type <{ [8 x i8] }>
%G_0x928a3__rip__type = type <{ [8 x i8] }>
%G_0x928fa__rip__type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cc020 = global %G_0x6cc020_type zeroinitializer
@G_0x6cc024 = global %G_0x6cc024_type zeroinitializer
@G_0x6d0278 = global %G_0x6d0278_type zeroinitializer
@G_0x722c98 = global %G_0x722c98_type zeroinitializer
@G_0x92401__rip_ = global %G_0x92401__rip__type zeroinitializer
@G_0x92458__rip_ = global %G_0x92458__rip__type zeroinitializer
@G_0x926ca__rip_ = global %G_0x926ca__rip__type zeroinitializer
@G_0x928a3__rip_ = global %G_0x928a3__rip__type zeroinitializer
@G_0x928fa__rip_ = global %G_0x928fa__rip__type zeroinitializer

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

declare %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @encode_enhancement_layer(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41ed40 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41ed40, %struct.Memory** %MEMORY
  %loadMem_41ed41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i208 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i208
  %27 = load i64, i64* %PC.i207
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i207
  store i64 %26, i64* %RBP.i209, align 8
  store %struct.Memory* %loadMem_41ed41, %struct.Memory** %MEMORY
  %loadMem_41ed44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i282 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i282
  %36 = load i64, i64* %PC.i281
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i281
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i282, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_41ed44, %struct.Memory** %MEMORY
  %loadMem_41ed48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i701
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC.i701
  %75 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %75, i64* %RAX.i702, align 8
  store %struct.Memory* %loadMem_41ed48, %struct.Memory** %MEMORY
  %loadMem_41ed50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RAX.i779
  %83 = add i64 %82, 1236
  %84 = load i64, i64* %PC.i778
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i778
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %88, align 1
  %89 = and i32 %87, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %93, i8* %94, align 1
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %95, align 1
  %96 = icmp eq i32 %87, 0
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %97, i8* %98, align 1
  %99 = lshr i32 %87, 31
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %100, i8* %101, align 1
  %102 = lshr i32 %87, 31
  %103 = xor i32 %99, %102
  %104 = add i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %106, i8* %107, align 1
  store %struct.Memory* %loadMem_41ed50, %struct.Memory** %MEMORY
  %loadMem_41ed57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %PC.i903
  %112 = add i64 %111, 2453
  %113 = load i64, i64* %PC.i903
  %114 = add i64 %113, 6
  %115 = load i64, i64* %PC.i903
  %116 = add i64 %115, 6
  store i64 %116, i64* %PC.i903
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %118 = load i8, i8* %117, align 1
  store i8 %118, i8* %BRANCH_TAKEN, align 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %120 = icmp ne i8 %118, 0
  %121 = select i1 %120, i64 %112, i64 %114
  store i64 %121, i64* %119, align 8
  store %struct.Memory* %loadMem_41ed57, %struct.Memory** %MEMORY
  %loadBr_41ed57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed57 = icmp eq i8 %loadBr_41ed57, 1
  br i1 %cmpBr_41ed57, label %block_.L_41f6ec, label %block_41ed5d

block_41ed5d:                                     ; preds = %entry
  %loadMem_41ed5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %PC.i980
  %129 = add i64 %128, 8
  store i64 %129, i64* %PC.i980
  %130 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %130, i64* %RAX.i981, align 8
  store %struct.Memory* %loadMem_41ed5d, %struct.Memory** %MEMORY
  %loadMem_41ed65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RAX.i978 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RCX.i979 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RAX.i978
  %141 = load i64, i64* %PC.i977
  %142 = add i64 %141, 2
  store i64 %142, i64* %PC.i977
  %143 = inttoptr i64 %140 to i32*
  %144 = load i32, i32* %143
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RCX.i979, align 8
  store %struct.Memory* %loadMem_41ed65, %struct.Memory** %MEMORY
  %loadMem_41ed67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RCX.i976 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RCX.i976
  %153 = load i64, i64* %PC.i975
  %154 = add i64 %153, 7
  store i64 %154, i64* %PC.i975
  %155 = trunc i64 %152 to i32
  %156 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %157 = sub i32 %155, %156
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RCX.i976, align 8
  %159 = icmp ult i32 %155, %156
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %161, align 1
  %162 = and i32 %157, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %166, i8* %167, align 1
  %168 = xor i32 %156, %155
  %169 = xor i32 %168, %157
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %172, i8* %173, align 1
  %174 = icmp eq i32 %157, 0
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %175, i8* %176, align 1
  %177 = lshr i32 %157, 31
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %178, i8* %179, align 1
  %180 = lshr i32 %155, 31
  %181 = lshr i32 %156, 31
  %182 = xor i32 %181, %180
  %183 = xor i32 %177, %180
  %184 = add i32 %183, %182
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %186, i8* %187, align 1
  store %struct.Memory* %loadMem_41ed67, %struct.Memory** %MEMORY
  %loadMem_41ed6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %ECX.i974 = bitcast %union.anon* %193 to i32*
  %194 = load i32, i32* %ECX.i974
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %PC.i973
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC.i973
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %198, align 1
  %199 = and i32 %194, 255
  %200 = call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %203, i8* %204, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %205, align 1
  %206 = icmp eq i32 %194, 0
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %207, i8* %208, align 1
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %210, i8* %211, align 1
  %212 = lshr i32 %194, 31
  %213 = xor i32 %209, %212
  %214 = add i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %216, i8* %217, align 1
  store %struct.Memory* %loadMem_41ed6e, %struct.Memory** %MEMORY
  %loadMem_41ed71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i972
  %222 = add i64 %221, 2427
  %223 = load i64, i64* %PC.i972
  %224 = add i64 %223, 6
  %225 = load i64, i64* %PC.i972
  %226 = add i64 %225, 6
  store i64 %226, i64* %PC.i972
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %228 = load i8, i8* %227, align 1
  %229 = icmp ne i8 %228, 0
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %231 = load i8, i8* %230, align 1
  %232 = icmp ne i8 %231, 0
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %234 = load i8, i8* %233, align 1
  %235 = icmp ne i8 %234, 0
  %236 = xor i1 %232, %235
  %237 = or i1 %229, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %BRANCH_TAKEN, align 1
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %240 = select i1 %237, i64 %222, i64 %224
  store i64 %240, i64* %239, align 8
  store %struct.Memory* %loadMem_41ed71, %struct.Memory** %MEMORY
  %loadBr_41ed71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed71 = icmp eq i8 %loadBr_41ed71, 1
  br i1 %cmpBr_41ed71, label %block_.L_41f6ec, label %block_41ed77

block_41ed77:                                     ; preds = %block_41ed5d
  %loadMem_41ed77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RAX.i971 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %PC.i970
  %248 = add i64 %247, 8
  store i64 %248, i64* %PC.i970
  %249 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %249, i64* %RAX.i971, align 8
  store %struct.Memory* %loadMem_41ed77, %struct.Memory** %MEMORY
  %loadMem_41ed7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RAX.i969 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %RAX.i969
  %257 = add i64 %256, 24
  %258 = load i64, i64* %PC.i968
  %259 = add i64 %258, 7
  store i64 %259, i64* %PC.i968
  %260 = inttoptr i64 %257 to i32*
  store i32 1, i32* %260
  store %struct.Memory* %loadMem_41ed7f, %struct.Memory** %MEMORY
  %loadMem_41ed86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %PC.i966
  %268 = add i64 %267, 8
  store i64 %268, i64* %PC.i966
  %269 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %269, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_41ed86, %struct.Memory** %MEMORY
  %loadMem_41ed8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RAX.i965
  %277 = add i64 %276, 2912
  %278 = load i64, i64* %PC.i964
  %279 = add i64 %278, 7
  store i64 %279, i64* %PC.i964
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %282, align 1
  %283 = and i32 %281, 255
  %284 = call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %287, i8* %288, align 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %289, align 1
  %290 = icmp eq i32 %281, 0
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %291, i8* %292, align 1
  %293 = lshr i32 %281, 31
  %294 = trunc i32 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %294, i8* %295, align 1
  %296 = lshr i32 %281, 31
  %297 = xor i32 %293, %296
  %298 = add i32 %297, %296
  %299 = icmp eq i32 %298, 2
  %300 = zext i1 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %300, i8* %301, align 1
  store %struct.Memory* %loadMem_41ed8e, %struct.Memory** %MEMORY
  %loadMem_41ed95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %PC.i963
  %306 = add i64 %305, 29
  %307 = load i64, i64* %PC.i963
  %308 = add i64 %307, 6
  %309 = load i64, i64* %PC.i963
  %310 = add i64 %309, 6
  store i64 %310, i64* %PC.i963
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %312 = load i8, i8* %311, align 1
  %313 = icmp eq i8 %312, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %BRANCH_TAKEN, align 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %316 = select i1 %313, i64 %306, i64 %308
  store i64 %316, i64* %315, align 8
  store %struct.Memory* %loadMem_41ed95, %struct.Memory** %MEMORY
  %loadBr_41ed95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed95 = icmp eq i8 %loadBr_41ed95, 1
  br i1 %cmpBr_41ed95, label %block_.L_41edb2, label %block_41ed9b

block_41ed9b:                                     ; preds = %block_41ed77
  %loadMem_41ed9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i962 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i961
  %324 = add i64 %323, 8
  store i64 %324, i64* %PC.i961
  %325 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %325, i64* %RAX.i962, align 8
  store %struct.Memory* %loadMem_41ed9b, %struct.Memory** %MEMORY
  %loadMem_41eda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RAX.i960 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %RAX.i960
  %333 = add i64 %332, 72384
  %334 = load i64, i64* %PC.i959
  %335 = add i64 %334, 10
  store i64 %335, i64* %PC.i959
  %336 = inttoptr i64 %333 to i32*
  store i32 0, i32* %336
  store %struct.Memory* %loadMem_41eda3, %struct.Memory** %MEMORY
  %loadMem_41edad = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %PC.i958
  %341 = add i64 %340, 23
  %342 = load i64, i64* %PC.i958
  %343 = add i64 %342, 5
  store i64 %343, i64* %PC.i958
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %341, i64* %344, align 8
  store %struct.Memory* %loadMem_41edad, %struct.Memory** %MEMORY
  br label %block_.L_41edc4

block_.L_41edb2:                                  ; preds = %block_41ed77
  %loadMem_41edb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i957 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %PC.i956
  %352 = add i64 %351, 8
  store i64 %352, i64* %PC.i956
  %353 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %353, i64* %RAX.i957, align 8
  store %struct.Memory* %loadMem_41edb2, %struct.Memory** %MEMORY
  %loadMem_41edba = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RAX.i955
  %361 = add i64 %360, 72384
  %362 = load i64, i64* %PC.i954
  %363 = add i64 %362, 10
  store i64 %363, i64* %PC.i954
  %364 = inttoptr i64 %361 to i32*
  store i32 1, i32* %364
  store %struct.Memory* %loadMem_41edba, %struct.Memory** %MEMORY
  br label %block_.L_41edc4

block_.L_41edc4:                                  ; preds = %block_.L_41edb2, %block_41ed9b
  %loadMem_41edc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %PC.i952
  %372 = add i64 %371, 8
  store i64 %372, i64* %PC.i952
  %373 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %373, i64* %RAX.i953, align 8
  store %struct.Memory* %loadMem_41edc4, %struct.Memory** %MEMORY
  %loadMem_41edcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RAX.i951 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %RAX.i951
  %381 = add i64 %380, 1316
  %382 = load i64, i64* %PC.i950
  %383 = add i64 %382, 7
  store i64 %383, i64* %PC.i950
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %386, align 1
  %387 = and i32 %385, 255
  %388 = call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %391, i8* %392, align 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %393, align 1
  %394 = icmp eq i32 %385, 0
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %395, i8* %396, align 1
  %397 = lshr i32 %385, 31
  %398 = trunc i32 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %398, i8* %399, align 1
  %400 = lshr i32 %385, 31
  %401 = xor i32 %397, %400
  %402 = add i32 %401, %400
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %404, i8* %405, align 1
  store %struct.Memory* %loadMem_41edcc, %struct.Memory** %MEMORY
  %loadMem_41edd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %PC.i949
  %410 = add i64 %409, 101
  %411 = load i64, i64* %PC.i949
  %412 = add i64 %411, 6
  %413 = load i64, i64* %PC.i949
  %414 = add i64 %413, 6
  store i64 %414, i64* %PC.i949
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %416 = load i8, i8* %415, align 1
  %417 = icmp eq i8 %416, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %BRANCH_TAKEN, align 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %420 = select i1 %417, i64 %410, i64 %412
  store i64 %420, i64* %419, align 8
  store %struct.Memory* %loadMem_41edd3, %struct.Memory** %MEMORY
  %loadBr_41edd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41edd3 = icmp eq i8 %loadBr_41edd3, 1
  br i1 %cmpBr_41edd3, label %block_.L_41ee38, label %block_41edd9

block_41edd9:                                     ; preds = %block_.L_41edc4
  %loadMem_41edd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RAX.i948 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %PC.i947
  %428 = add i64 %427, 8
  store i64 %428, i64* %PC.i947
  %429 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %429, i64* %RAX.i948, align 8
  store %struct.Memory* %loadMem_41edd9, %struct.Memory** %MEMORY
  %loadMem_41ede1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RAX.i946 = bitcast %union.anon* %435 to i64*
  %436 = load i64, i64* %RAX.i946
  %437 = add i64 %436, 1320
  %438 = load i64, i64* %PC.i945
  %439 = add i64 %438, 7
  store i64 %439, i64* %PC.i945
  %440 = inttoptr i64 %437 to i32*
  %441 = load i32, i32* %440
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %442, align 1
  %443 = and i32 %441, 255
  %444 = call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %447, i8* %448, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %449, align 1
  %450 = icmp eq i32 %441, 0
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %451, i8* %452, align 1
  %453 = lshr i32 %441, 31
  %454 = trunc i32 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %454, i8* %455, align 1
  %456 = lshr i32 %441, 31
  %457 = xor i32 %453, %456
  %458 = add i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %460, i8* %461, align 1
  store %struct.Memory* %loadMem_41ede1, %struct.Memory** %MEMORY
  %loadMem_41ede8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %PC.i944
  %466 = add i64 %465, 80
  %467 = load i64, i64* %PC.i944
  %468 = add i64 %467, 6
  %469 = load i64, i64* %PC.i944
  %470 = add i64 %469, 6
  store i64 %470, i64* %PC.i944
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %472 = load i8, i8* %471, align 1
  %473 = icmp eq i8 %472, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %BRANCH_TAKEN, align 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %476 = select i1 %473, i64 %466, i64 %468
  store i64 %476, i64* %475, align 8
  store %struct.Memory* %loadMem_41ede8, %struct.Memory** %MEMORY
  %loadBr_41ede8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ede8 = icmp eq i8 %loadBr_41ede8, 1
  br i1 %cmpBr_41ede8, label %block_.L_41ee38, label %block_41edee

block_41edee:                                     ; preds = %block_41edd9
  %loadMem_41edee = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RAX.i943 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %PC.i942
  %484 = add i64 %483, 5
  store i64 %484, i64* %PC.i942
  store i64 1, i64* %RAX.i943, align 8
  store %struct.Memory* %loadMem_41edee, %struct.Memory** %MEMORY
  %loadMem_41edf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RCX.i941 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %PC.i940
  %492 = add i64 %491, 8
  store i64 %492, i64* %PC.i940
  %493 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %493, i64* %RCX.i941, align 8
  store %struct.Memory* %loadMem_41edf3, %struct.Memory** %MEMORY
  %loadMem_41edfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 5
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RCX.i938 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 7
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RDX.i939 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %RCX.i938
  %504 = add i64 %503, 72464
  %505 = load i64, i64* %PC.i937
  %506 = add i64 %505, 6
  store i64 %506, i64* %PC.i937
  %507 = inttoptr i64 %504 to i32*
  %508 = load i32, i32* %507
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RDX.i939, align 8
  store %struct.Memory* %loadMem_41edfb, %struct.Memory** %MEMORY
  %loadMem_41ee01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 7
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RDX.i936 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RDX.i936
  %517 = load i64, i64* %PC.i935
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i935
  %519 = trunc i64 %516 to i32
  %520 = add i32 1, %519
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RDX.i936, align 8
  %522 = icmp ult i32 %520, %519
  %523 = icmp ult i32 %520, 1
  %524 = or i1 %522, %523
  %525 = zext i1 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %525, i8* %526, align 1
  %527 = and i32 %520, 255
  %528 = call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %531, i8* %532, align 1
  %533 = xor i64 1, %516
  %534 = trunc i64 %533 to i32
  %535 = xor i32 %534, %520
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %538, i8* %539, align 1
  %540 = icmp eq i32 %520, 0
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %541, i8* %542, align 1
  %543 = lshr i32 %520, 31
  %544 = trunc i32 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %544, i8* %545, align 1
  %546 = lshr i32 %519, 31
  %547 = xor i32 %543, %546
  %548 = add i32 %547, %543
  %549 = icmp eq i32 %548, 2
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %550, i8* %551, align 1
  store %struct.Memory* %loadMem_41ee01, %struct.Memory** %MEMORY
  %loadMem_41ee04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 7
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %EDX.i933 = bitcast %union.anon* %557 to i32*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 5
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RCX.i934 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RCX.i934
  %562 = add i64 %561, 72464
  %563 = load i32, i32* %EDX.i933
  %564 = zext i32 %563 to i64
  %565 = load i64, i64* %PC.i932
  %566 = add i64 %565, 6
  store i64 %566, i64* %PC.i932
  %567 = inttoptr i64 %562 to i32*
  store i32 %563, i32* %567
  store %struct.Memory* %loadMem_41ee04, %struct.Memory** %MEMORY
  %loadMem_41ee0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 7
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RDX.i931 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %PC.i930
  %575 = add i64 %574, 7
  store i64 %575, i64* %PC.i930
  %576 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*)
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RDX.i931, align 8
  store %struct.Memory* %loadMem_41ee0a, %struct.Memory** %MEMORY
  %loadMem_41ee11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 7
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RDX.i929 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RDX.i929
  %585 = load i64, i64* %PC.i928
  %586 = add i64 %585, 3
  store i64 %586, i64* %PC.i928
  %587 = trunc i64 %584 to i32
  %588 = add i32 4, %587
  %589 = zext i32 %588 to i64
  store i64 %589, i64* %RDX.i929, align 8
  %590 = icmp ult i32 %588, %587
  %591 = icmp ult i32 %588, 4
  %592 = or i1 %590, %591
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %593, i8* %594, align 1
  %595 = and i32 %588, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %599, i8* %600, align 1
  %601 = xor i64 4, %584
  %602 = trunc i64 %601 to i32
  %603 = xor i32 %602, %588
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %606, i8* %607, align 1
  %608 = icmp eq i32 %588, 0
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %609, i8* %610, align 1
  %611 = lshr i32 %588, 31
  %612 = trunc i32 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %612, i8* %613, align 1
  %614 = lshr i32 %587, 31
  %615 = xor i32 %611, %614
  %616 = add i32 %615, %611
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %618, i8* %619, align 1
  store %struct.Memory* %loadMem_41ee11, %struct.Memory** %MEMORY
  %loadMem_41ee14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 7
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %EDX.i926 = bitcast %union.anon* %625 to i32*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RCX.i927 = bitcast %union.anon* %628 to i64*
  %629 = load i32, i32* %EDX.i926
  %630 = zext i32 %629 to i64
  %631 = load i64, i64* %PC.i925
  %632 = add i64 %631, 2
  store i64 %632, i64* %PC.i925
  %633 = and i64 %630, 4294967295
  store i64 %633, i64* %RCX.i927, align 8
  store %struct.Memory* %loadMem_41ee14, %struct.Memory** %MEMORY
  %loadMem_41ee16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 5
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %640 = bitcast %union.anon* %639 to %struct.anon.2*
  %CL.i922 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %640, i32 0, i32 0
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %RAX.i923 = bitcast %union.anon* %643 to i64*
  %644 = load i64, i64* %RAX.i923
  %645 = load i8, i8* %CL.i922
  %646 = zext i8 %645 to i64
  %647 = load i64, i64* %PC.i921
  %648 = add i64 %647, 2
  store i64 %648, i64* %PC.i921
  %649 = trunc i64 %646 to i5
  switch i5 %649, label %656 [
    i5 0, label %routine_shll__cl___eax.exit924
    i5 1, label %650
  ]

; <label>:650:                                    ; preds = %block_41edee
  %651 = trunc i64 %644 to i32
  %652 = shl i32 %651, 1
  %653 = icmp slt i32 %651, 0
  %654 = icmp slt i32 %652, 0
  %655 = xor i1 %653, %654
  br label %665

; <label>:656:                                    ; preds = %block_41edee
  %657 = and i64 %646, 31
  %658 = add i64 %657, 4294967295
  %659 = and i64 %644, 4294967295
  %660 = and i64 %658, 4294967295
  %661 = shl i64 %659, %660
  %662 = trunc i64 %661 to i32
  %663 = icmp slt i32 %662, 0
  %664 = shl i32 %662, 1
  br label %665

; <label>:665:                                    ; preds = %656, %650
  %666 = phi i1 [ %653, %650 ], [ %663, %656 ]
  %667 = phi i1 [ %655, %650 ], [ false, %656 ]
  %668 = phi i32 [ %652, %650 ], [ %664, %656 ]
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX.i923, align 8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %671 = zext i1 %666 to i8
  store i8 %671, i8* %670, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %673 = and i32 %668, 254
  %674 = call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %672, align 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %678, align 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %680 = icmp eq i32 %668, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %679, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %683 = lshr i32 %668, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %682, align 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %686 = zext i1 %667 to i8
  store i8 %686, i8* %685, align 1
  br label %routine_shll__cl___eax.exit924

routine_shll__cl___eax.exit924:                   ; preds = %block_41edee, %665
  store %struct.Memory* %loadMem_41ee16, %struct.Memory** %MEMORY
  %loadMem_41ee18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 9
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RSI.i920 = bitcast %union.anon* %692 to i64*
  %693 = load i64, i64* %PC.i919
  %694 = add i64 %693, 8
  store i64 %694, i64* %PC.i919
  %695 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %695, i64* %RSI.i920, align 8
  store %struct.Memory* %loadMem_41ee18, %struct.Memory** %MEMORY
  %loadMem_41ee20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 7
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RDX.i917 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 9
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RSI.i918 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RSI.i918
  %706 = add i64 %705, 72464
  %707 = load i64, i64* %PC.i916
  %708 = add i64 %707, 6
  store i64 %708, i64* %PC.i916
  %709 = inttoptr i64 %706 to i32*
  %710 = load i32, i32* %709
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX.i917, align 8
  store %struct.Memory* %loadMem_41ee20, %struct.Memory** %MEMORY
  %loadMem_41ee26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %EAX.i914 = bitcast %union.anon* %717 to i32*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RBP.i915
  %722 = sub i64 %721, 4
  %723 = load i32, i32* %EAX.i914
  %724 = zext i32 %723 to i64
  %725 = load i64, i64* %PC.i913
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC.i913
  %727 = inttoptr i64 %722 to i32*
  store i32 %723, i32* %727
  store %struct.Memory* %loadMem_41ee26, %struct.Memory** %MEMORY
  %loadMem_41ee29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 7
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %EDX.i911 = bitcast %union.anon* %733 to i32*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RAX.i912 = bitcast %union.anon* %736 to i64*
  %737 = load i32, i32* %EDX.i911
  %738 = zext i32 %737 to i64
  %739 = load i64, i64* %PC.i910
  %740 = add i64 %739, 2
  store i64 %740, i64* %PC.i910
  %741 = and i64 %738, 4294967295
  store i64 %741, i64* %RAX.i912, align 8
  store %struct.Memory* %loadMem_41ee29, %struct.Memory** %MEMORY
  %loadMem_41ee2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 7
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %EDX.i908 = bitcast %union.anon* %747 to i32*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 7
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RDX.i909 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RDX.i909
  %752 = load i32, i32* %EDX.i908
  %753 = zext i32 %752 to i64
  %754 = load i64, i64* %PC.i907
  %755 = add i64 %754, 2
  store i64 %755, i64* %PC.i907
  %756 = xor i64 %753, %751
  %757 = trunc i64 %756 to i32
  %758 = and i64 %756, 4294967295
  store i64 %758, i64* %RDX.i909, align 8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %759, align 1
  %760 = and i32 %757, 255
  %761 = call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %764, i8* %765, align 1
  %766 = icmp eq i32 %757, 0
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %757, 31
  %770 = trunc i32 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %770, i8* %771, align 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %772, align 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %773, align 1
  store %struct.Memory* %loadMem_41ee2b, %struct.Memory** %MEMORY
  %loadMem_41ee2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 11
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RDI.i905 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 15
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RBP.i906
  %784 = sub i64 %783, 4
  %785 = load i64, i64* %PC.i904
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC.i904
  %787 = inttoptr i64 %784 to i32*
  %788 = load i32, i32* %787
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RDI.i905, align 8
  store %struct.Memory* %loadMem_41ee2d, %struct.Memory** %MEMORY
  %loadMem_41ee30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 11
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %EDI.i901 = bitcast %union.anon* %795 to i32*
  %796 = load i32, i32* %EDI.i901
  %797 = zext i32 %796 to i64
  %798 = load i64, i64* %PC.i900
  %799 = add i64 %798, 2
  store i64 %799, i64* %PC.i900
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %801 = bitcast %union.anon* %800 to i32*
  %802 = load i32, i32* %801, align 8
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %805 = bitcast %union.anon* %804 to i32*
  %806 = load i32, i32* %805, align 8
  %807 = zext i32 %806 to i64
  %808 = and i64 %797, 4294967295
  %809 = shl i64 %807, 32
  %810 = or i64 %809, %803
  %811 = udiv i64 %810, %808
  %812 = and i64 %811, 4294967295
  %813 = icmp eq i64 %811, %812
  br i1 %813, label %818, label %814

; <label>:814:                                    ; preds = %routine_shll__cl___eax.exit924
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %816 = load i64, i64* %815, align 8
  %817 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %816, %struct.Memory* %loadMem_41ee30)
  br label %routine_divl__edi.exit902

; <label>:818:                                    ; preds = %routine_shll__cl___eax.exit924
  %819 = urem i64 %810, %808
  %820 = getelementptr inbounds %union.anon, %union.anon* %800, i64 0, i32 0
  store i64 %811, i64* %820, align 8
  %821 = getelementptr inbounds %union.anon, %union.anon* %804, i64 0, i32 0
  store i64 %819, i64* %821, align 8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %822, align 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %823, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %824, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %825, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %826, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %827, align 1
  br label %routine_divl__edi.exit902

routine_divl__edi.exit902:                        ; preds = %814, %818
  %828 = phi %struct.Memory* [ %817, %814 ], [ %loadMem_41ee30, %818 ]
  store %struct.Memory* %828, %struct.Memory** %MEMORY
  %loadMem_41ee32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 7
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %EDX.i898 = bitcast %union.anon* %834 to i32*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 9
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RSI.i899 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %RSI.i899
  %839 = add i64 %838, 72464
  %840 = load i32, i32* %EDX.i898
  %841 = zext i32 %840 to i64
  %842 = load i64, i64* %PC.i897
  %843 = add i64 %842, 6
  store i64 %843, i64* %PC.i897
  %844 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %844
  store %struct.Memory* %loadMem_41ee32, %struct.Memory** %MEMORY
  br label %block_.L_41ee38

block_.L_41ee38:                                  ; preds = %routine_divl__edi.exit902, %block_41edd9, %block_.L_41edc4
  %loadMem_41ee38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 1
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RAX.i896 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %PC.i895
  %852 = add i64 %851, 8
  store i64 %852, i64* %PC.i895
  %853 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %853, i64* %RAX.i896, align 8
  store %struct.Memory* %loadMem_41ee38, %struct.Memory** %MEMORY
  %loadMem_41ee40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 33
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 1
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %RAX.i894
  %861 = add i64 %860, 72496
  %862 = load i64, i64* %PC.i893
  %863 = add i64 %862, 10
  store i64 %863, i64* %PC.i893
  %864 = inttoptr i64 %861 to i32*
  store i32 0, i32* %864
  store %struct.Memory* %loadMem_41ee40, %struct.Memory** %MEMORY
  %loadMem_41ee4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 1
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RAX.i892 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %PC.i891
  %872 = add i64 %871, 8
  store i64 %872, i64* %PC.i891
  %873 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %873, i64* %RAX.i892, align 8
  store %struct.Memory* %loadMem_41ee4a, %struct.Memory** %MEMORY
  %loadMem_41ee52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RAX.i890
  %881 = add i64 %880, 1320
  %882 = load i64, i64* %PC.i889
  %883 = add i64 %882, 7
  store i64 %883, i64* %PC.i889
  %884 = inttoptr i64 %881 to i32*
  %885 = load i32, i32* %884
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %886, align 1
  %887 = and i32 %885, 255
  %888 = call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %891, i8* %892, align 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %893, align 1
  %894 = icmp eq i32 %885, 0
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %895, i8* %896, align 1
  %897 = lshr i32 %885, 31
  %898 = trunc i32 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %898, i8* %899, align 1
  %900 = lshr i32 %885, 31
  %901 = xor i32 %897, %900
  %902 = add i32 %901, %900
  %903 = icmp eq i32 %902, 2
  %904 = zext i1 %903 to i8
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %904, i8* %905, align 1
  store %struct.Memory* %loadMem_41ee52, %struct.Memory** %MEMORY
  %loadMem_41ee59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 33
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %PC.i888
  %910 = add i64 %909, 1264
  %911 = load i64, i64* %PC.i888
  %912 = add i64 %911, 6
  %913 = load i64, i64* %PC.i888
  %914 = add i64 %913, 6
  store i64 %914, i64* %PC.i888
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %916 = load i8, i8* %915, align 1
  store i8 %916, i8* %BRANCH_TAKEN, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %918 = icmp ne i8 %916, 0
  %919 = select i1 %918, i64 %910, i64 %912
  store i64 %919, i64* %917, align 8
  store %struct.Memory* %loadMem_41ee59, %struct.Memory** %MEMORY
  %loadBr_41ee59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ee59 = icmp eq i8 %loadBr_41ee59, 1
  br i1 %cmpBr_41ee59, label %block_.L_41f349, label %block_41ee5f

block_41ee5f:                                     ; preds = %block_.L_41ee38
  %loadMem_41ee5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i887 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %PC.i886
  %927 = add i64 %926, 8
  store i64 %927, i64* %PC.i886
  %928 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %928, i64* %RAX.i887, align 8
  store %struct.Memory* %loadMem_41ee5f, %struct.Memory** %MEMORY
  %loadMem_41ee67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RAX.i885
  %936 = add i64 %935, 71908
  %937 = load i64, i64* %PC.i884
  %938 = add i64 %937, 10
  store i64 %938, i64* %PC.i884
  %939 = inttoptr i64 %936 to i32*
  store i32 1, i32* %939
  store %struct.Memory* %loadMem_41ee67, %struct.Memory** %MEMORY
  br label %block_.L_41ee71

block_.L_41ee71:                                  ; preds = %block_.L_41f316, %block_41ee5f
  %loadMem_41ee71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i882
  %947 = add i64 %946, 8
  store i64 %947, i64* %PC.i882
  %948 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %948, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_41ee71, %struct.Memory** %MEMORY
  %loadMem_41ee79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 1
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RAX.i880 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 5
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RCX.i881 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RAX.i880
  %959 = add i64 %958, 71908
  %960 = load i64, i64* %PC.i879
  %961 = add i64 %960, 6
  store i64 %961, i64* %PC.i879
  %962 = inttoptr i64 %959 to i32*
  %963 = load i32, i32* %962
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RCX.i881, align 8
  store %struct.Memory* %loadMem_41ee79, %struct.Memory** %MEMORY
  %loadMem_41ee7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 1
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RAX.i878 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %PC.i877
  %972 = add i64 %971, 8
  store i64 %972, i64* %PC.i877
  %973 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %973, i64* %RAX.i878, align 8
  store %struct.Memory* %loadMem_41ee7f, %struct.Memory** %MEMORY
  %loadMem_41ee87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 5
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %ECX.i875 = bitcast %union.anon* %979 to i32*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 1
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %RAX.i876 = bitcast %union.anon* %982 to i64*
  %983 = load i32, i32* %ECX.i875
  %984 = zext i32 %983 to i64
  %985 = load i64, i64* %RAX.i876
  %986 = add i64 %985, 1236
  %987 = load i64, i64* %PC.i874
  %988 = add i64 %987, 6
  store i64 %988, i64* %PC.i874
  %989 = inttoptr i64 %986 to i32*
  %990 = load i32, i32* %989
  %991 = sub i32 %983, %990
  %992 = icmp ult i32 %983, %990
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %993, i8* %994, align 1
  %995 = and i32 %991, 255
  %996 = call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %999, i8* %1000, align 1
  %1001 = xor i32 %990, %983
  %1002 = xor i32 %1001, %991
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1005, i8* %1006, align 1
  %1007 = icmp eq i32 %991, 0
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1008, i8* %1009, align 1
  %1010 = lshr i32 %991, 31
  %1011 = trunc i32 %1010 to i8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1011, i8* %1012, align 1
  %1013 = lshr i32 %983, 31
  %1014 = lshr i32 %990, 31
  %1015 = xor i32 %1014, %1013
  %1016 = xor i32 %1010, %1013
  %1017 = add i32 %1016, %1015
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1019, i8* %1020, align 1
  store %struct.Memory* %loadMem_41ee87, %struct.Memory** %MEMORY
  %loadMem_41ee8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %1023 to i64*
  %1024 = load i64, i64* %PC.i873
  %1025 = add i64 %1024, 1189
  %1026 = load i64, i64* %PC.i873
  %1027 = add i64 %1026, 6
  %1028 = load i64, i64* %PC.i873
  %1029 = add i64 %1028, 6
  store i64 %1029, i64* %PC.i873
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1031 = load i8, i8* %1030, align 1
  %1032 = icmp eq i8 %1031, 0
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1034 = load i8, i8* %1033, align 1
  %1035 = icmp ne i8 %1034, 0
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1037 = load i8, i8* %1036, align 1
  %1038 = icmp ne i8 %1037, 0
  %1039 = xor i1 %1035, %1038
  %1040 = xor i1 %1039, true
  %1041 = and i1 %1032, %1040
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %BRANCH_TAKEN, align 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1044 = select i1 %1041, i64 %1025, i64 %1027
  store i64 %1044, i64* %1043, align 8
  store %struct.Memory* %loadMem_41ee8d, %struct.Memory** %MEMORY
  %loadBr_41ee8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ee8d = icmp eq i8 %loadBr_41ee8d, 1
  br i1 %cmpBr_41ee8d, label %block_.L_41f332, label %block_41ee93

block_41ee93:                                     ; preds = %block_.L_41ee71
  %loadMem_41ee93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %PC.i871
  %1052 = add i64 %1051, 8
  store i64 %1052, i64* %PC.i871
  %1053 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1053, i64* %RAX.i872, align 8
  store %struct.Memory* %loadMem_41ee93, %struct.Memory** %MEMORY
  %loadMem_41ee9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 1
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RAX.i870 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %RAX.i870
  %1061 = add i64 %1060, 72496
  %1062 = load i64, i64* %PC.i869
  %1063 = add i64 %1062, 10
  store i64 %1063, i64* %PC.i869
  %1064 = inttoptr i64 %1061 to i32*
  store i32 0, i32* %1064
  store %struct.Memory* %loadMem_41ee9b, %struct.Memory** %MEMORY
  %loadMem_41eea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 1
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RAX.i868 = bitcast %union.anon* %1070 to i64*
  %1071 = load i64, i64* %PC.i867
  %1072 = add i64 %1071, 8
  store i64 %1072, i64* %PC.i867
  %1073 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %1073, i64* %RAX.i868, align 8
  store %struct.Memory* %loadMem_41eea5, %struct.Memory** %MEMORY
  %loadMem_41eead = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 5
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %PC.i865
  %1081 = add i64 %1080, 8
  store i64 %1081, i64* %PC.i865
  %1082 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1082, i64* %RCX.i866, align 8
  store %struct.Memory* %loadMem_41eead, %struct.Memory** %MEMORY
  %loadMem_41eeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 5
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 7
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RDX.i864 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RCX.i863
  %1093 = add i64 %1092, 71908
  %1094 = load i64, i64* %PC.i862
  %1095 = add i64 %1094, 6
  store i64 %1095, i64* %PC.i862
  %1096 = inttoptr i64 %1093 to i32*
  %1097 = load i32, i32* %1096
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RDX.i864, align 8
  store %struct.Memory* %loadMem_41eeb5, %struct.Memory** %MEMORY
  %loadMem_41eebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 7
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RDX.i861 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RDX.i861
  %1106 = load i64, i64* %PC.i860
  %1107 = add i64 %1106, 3
  store i64 %1107, i64* %PC.i860
  %1108 = trunc i64 %1105 to i32
  %1109 = sub i32 %1108, 1
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RDX.i861, align 8
  %1111 = icmp ult i32 %1108, 1
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1112, i8* %1113, align 1
  %1114 = and i32 %1109, 255
  %1115 = call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1118, i8* %1119, align 1
  %1120 = xor i64 1, %1105
  %1121 = trunc i64 %1120 to i32
  %1122 = xor i32 %1121, %1109
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1125, i8* %1126, align 1
  %1127 = icmp eq i32 %1109, 0
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1128, i8* %1129, align 1
  %1130 = lshr i32 %1109, 31
  %1131 = trunc i32 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1131, i8* %1132, align 1
  %1133 = lshr i32 %1108, 31
  %1134 = xor i32 %1130, %1133
  %1135 = add i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1137, i8* %1138, align 1
  store %struct.Memory* %loadMem_41eebb, %struct.Memory** %MEMORY
  %loadMem_41eebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 7
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %EDX.i858 = bitcast %union.anon* %1144 to i32*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 5
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RCX.i859 = bitcast %union.anon* %1147 to i64*
  %1148 = load i32, i32* %EDX.i858
  %1149 = zext i32 %1148 to i64
  %1150 = load i64, i64* %PC.i857
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC.i857
  %1152 = shl i64 %1149, 32
  %1153 = ashr exact i64 %1152, 32
  store i64 %1153, i64* %RCX.i859, align 8
  store %struct.Memory* %loadMem_41eebe, %struct.Memory** %MEMORY
  %loadMem_41eec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 5
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RCX.i856 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RCX.i856
  %1161 = load i64, i64* %PC.i855
  %1162 = add i64 %1161, 4
  store i64 %1162, i64* %PC.i855
  %1163 = sext i64 %1160 to i128
  %1164 = and i128 %1163, -18446744073709551616
  %1165 = zext i64 %1160 to i128
  %1166 = or i128 %1164, %1165
  %1167 = mul i128 24, %1166
  %1168 = trunc i128 %1167 to i64
  store i64 %1168, i64* %RCX.i856, align 8
  %1169 = sext i64 %1168 to i128
  %1170 = icmp ne i128 %1169, %1167
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1171, i8* %1172, align 1
  %1173 = trunc i128 %1167 to i32
  %1174 = and i32 %1173, 255
  %1175 = call i32 @llvm.ctpop.i32(i32 %1174)
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = xor i8 %1177, 1
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1178, i8* %1179, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1180, align 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1181, align 1
  %1182 = lshr i64 %1168, 63
  %1183 = trunc i64 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1183, i8* %1184, align 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1171, i8* %1185, align 1
  store %struct.Memory* %loadMem_41eec1, %struct.Memory** %MEMORY
  %loadMem_41eec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 1
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 5
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %1194 to i64*
  %1195 = load i64, i64* %RAX.i853
  %1196 = load i64, i64* %RCX.i854
  %1197 = load i64, i64* %PC.i852
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC.i852
  %1199 = add i64 %1196, %1195
  store i64 %1199, i64* %RAX.i853, align 8
  %1200 = icmp ult i64 %1199, %1195
  %1201 = icmp ult i64 %1199, %1196
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1203, i8* %1204, align 1
  %1205 = trunc i64 %1199 to i32
  %1206 = and i32 %1205, 255
  %1207 = call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1210, i8* %1211, align 1
  %1212 = xor i64 %1196, %1195
  %1213 = xor i64 %1212, %1199
  %1214 = lshr i64 %1213, 4
  %1215 = trunc i64 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1216, i8* %1217, align 1
  %1218 = icmp eq i64 %1199, 0
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1219, i8* %1220, align 1
  %1221 = lshr i64 %1199, 63
  %1222 = trunc i64 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1222, i8* %1223, align 1
  %1224 = lshr i64 %1195, 63
  %1225 = lshr i64 %1196, 63
  %1226 = xor i64 %1221, %1224
  %1227 = xor i64 %1221, %1225
  %1228 = add i64 %1226, %1227
  %1229 = icmp eq i64 %1228, 2
  %1230 = zext i1 %1229 to i8
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1230, i8* %1231, align 1
  store %struct.Memory* %loadMem_41eec5, %struct.Memory** %MEMORY
  %loadMem_41eec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 1
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RAX.i850 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 7
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RDX.i851 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RAX.i850
  %1242 = load i64, i64* %PC.i849
  %1243 = add i64 %1242, 2
  store i64 %1243, i64* %PC.i849
  %1244 = inttoptr i64 %1241 to i32*
  %1245 = load i32, i32* %1244
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %RDX.i851, align 8
  store %struct.Memory* %loadMem_41eec8, %struct.Memory** %MEMORY
  %loadMem_41eeca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i848 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %PC.i847
  %1254 = add i64 %1253, 8
  store i64 %1254, i64* %PC.i847
  %1255 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1255, i64* %RAX.i848, align 8
  store %struct.Memory* %loadMem_41eeca, %struct.Memory** %MEMORY
  %loadMem_41eed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 7
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %EDX.i845 = bitcast %union.anon* %1261 to i32*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RAX.i846
  %1266 = add i64 %1265, 24
  %1267 = load i32, i32* %EDX.i845
  %1268 = zext i32 %1267 to i64
  %1269 = load i64, i64* %PC.i844
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %PC.i844
  %1271 = inttoptr i64 %1266 to i32*
  store i32 %1267, i32* %1271
  store %struct.Memory* %loadMem_41eed2, %struct.Memory** %MEMORY
  %loadMem_41eed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 1
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %PC.i842
  %1279 = add i64 %1278, 8
  store i64 %1279, i64* %PC.i842
  %1280 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %1280, i64* %RAX.i843, align 8
  store %struct.Memory* %loadMem_41eed5, %struct.Memory** %MEMORY
  %loadMem_41eedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 5
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %1286 to i64*
  %1287 = load i64, i64* %PC.i840
  %1288 = add i64 %1287, 8
  store i64 %1288, i64* %PC.i840
  %1289 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1289, i64* %RCX.i841, align 8
  store %struct.Memory* %loadMem_41eedd, %struct.Memory** %MEMORY
  %loadMem_41eee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 5
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RCX.i838 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 7
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RDX.i839 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %RCX.i838
  %1300 = add i64 %1299, 71908
  %1301 = load i64, i64* %PC.i837
  %1302 = add i64 %1301, 6
  store i64 %1302, i64* %PC.i837
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303
  %1305 = zext i32 %1304 to i64
  store i64 %1305, i64* %RDX.i839, align 8
  store %struct.Memory* %loadMem_41eee5, %struct.Memory** %MEMORY
  %loadMem_41eeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 7
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RDX.i836
  %1313 = load i64, i64* %PC.i835
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %PC.i835
  %1315 = trunc i64 %1312 to i32
  %1316 = sub i32 %1315, 1
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RDX.i836, align 8
  %1318 = icmp ult i32 %1315, 1
  %1319 = zext i1 %1318 to i8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1319, i8* %1320, align 1
  %1321 = and i32 %1316, 255
  %1322 = call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1325, i8* %1326, align 1
  %1327 = xor i64 1, %1312
  %1328 = trunc i64 %1327 to i32
  %1329 = xor i32 %1328, %1316
  %1330 = lshr i32 %1329, 4
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1332, i8* %1333, align 1
  %1334 = icmp eq i32 %1316, 0
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1335, i8* %1336, align 1
  %1337 = lshr i32 %1316, 31
  %1338 = trunc i32 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1315, 31
  %1341 = xor i32 %1337, %1340
  %1342 = add i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1344, i8* %1345, align 1
  store %struct.Memory* %loadMem_41eeeb, %struct.Memory** %MEMORY
  %loadMem_41eeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 7
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %EDX.i833 = bitcast %union.anon* %1351 to i32*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 5
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %1354 to i64*
  %1355 = load i32, i32* %EDX.i833
  %1356 = zext i32 %1355 to i64
  %1357 = load i64, i64* %PC.i832
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %PC.i832
  %1359 = shl i64 %1356, 32
  %1360 = ashr exact i64 %1359, 32
  store i64 %1360, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_41eeee, %struct.Memory** %MEMORY
  %loadMem_41eef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 5
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RCX.i831
  %1368 = load i64, i64* %PC.i830
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %PC.i830
  %1370 = sext i64 %1367 to i128
  %1371 = and i128 %1370, -18446744073709551616
  %1372 = zext i64 %1367 to i128
  %1373 = or i128 %1371, %1372
  %1374 = mul i128 24, %1373
  %1375 = trunc i128 %1374 to i64
  store i64 %1375, i64* %RCX.i831, align 8
  %1376 = sext i64 %1375 to i128
  %1377 = icmp ne i128 %1376, %1374
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1378, i8* %1379, align 1
  %1380 = trunc i128 %1374 to i32
  %1381 = and i32 %1380, 255
  %1382 = call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1385, i8* %1386, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1387, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1388, align 1
  %1389 = lshr i64 %1375, 63
  %1390 = trunc i64 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1390, i8* %1391, align 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1378, i8* %1392, align 1
  store %struct.Memory* %loadMem_41eef1, %struct.Memory** %MEMORY
  %loadMem_41eef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 1
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RAX.i828 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 5
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RCX.i829 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %RAX.i828
  %1403 = load i64, i64* %RCX.i829
  %1404 = load i64, i64* %PC.i827
  %1405 = add i64 %1404, 3
  store i64 %1405, i64* %PC.i827
  %1406 = add i64 %1403, %1402
  store i64 %1406, i64* %RAX.i828, align 8
  %1407 = icmp ult i64 %1406, %1402
  %1408 = icmp ult i64 %1406, %1403
  %1409 = or i1 %1407, %1408
  %1410 = zext i1 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1410, i8* %1411, align 1
  %1412 = trunc i64 %1406 to i32
  %1413 = and i32 %1412, 255
  %1414 = call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1417, i8* %1418, align 1
  %1419 = xor i64 %1403, %1402
  %1420 = xor i64 %1419, %1406
  %1421 = lshr i64 %1420, 4
  %1422 = trunc i64 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1423, i8* %1424, align 1
  %1425 = icmp eq i64 %1406, 0
  %1426 = zext i1 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1426, i8* %1427, align 1
  %1428 = lshr i64 %1406, 63
  %1429 = trunc i64 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1429, i8* %1430, align 1
  %1431 = lshr i64 %1402, 63
  %1432 = lshr i64 %1403, 63
  %1433 = xor i64 %1428, %1431
  %1434 = xor i64 %1428, %1432
  %1435 = add i64 %1433, %1434
  %1436 = icmp eq i64 %1435, 2
  %1437 = zext i1 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1437, i8* %1438, align 1
  store %struct.Memory* %loadMem_41eef5, %struct.Memory** %MEMORY
  %loadMem_41eef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 1
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RAX.i826 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RAX.i826
  %1446 = add i64 %1445, 8
  %1447 = load i64, i64* %PC.i825
  %1448 = add i64 %1447, 4
  store i64 %1448, i64* %PC.i825
  %1449 = inttoptr i64 %1446 to i32*
  %1450 = load i32, i32* %1449
  %1451 = sub i32 %1450, 2
  %1452 = icmp ult i32 %1450, 2
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1453, i8* %1454, align 1
  %1455 = and i32 %1451, 255
  %1456 = call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1459, i8* %1460, align 1
  %1461 = xor i32 %1450, 2
  %1462 = xor i32 %1461, %1451
  %1463 = lshr i32 %1462, 4
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1465, i8* %1466, align 1
  %1467 = icmp eq i32 %1451, 0
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1468, i8* %1469, align 1
  %1470 = lshr i32 %1451, 31
  %1471 = trunc i32 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1471, i8* %1472, align 1
  %1473 = lshr i32 %1450, 31
  %1474 = xor i32 %1470, %1473
  %1475 = add i32 %1474, %1473
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1477, i8* %1478, align 1
  store %struct.Memory* %loadMem_41eef8, %struct.Memory** %MEMORY
  %loadMem_41eefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %PC.i824
  %1483 = add i64 %1482, 98
  %1484 = load i64, i64* %PC.i824
  %1485 = add i64 %1484, 6
  %1486 = load i64, i64* %PC.i824
  %1487 = add i64 %1486, 6
  store i64 %1487, i64* %PC.i824
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1489 = load i8, i8* %1488, align 1
  %1490 = icmp eq i8 %1489, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %BRANCH_TAKEN, align 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1493 = select i1 %1490, i64 %1483, i64 %1485
  store i64 %1493, i64* %1492, align 8
  store %struct.Memory* %loadMem_41eefc, %struct.Memory** %MEMORY
  %loadBr_41eefc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eefc = icmp eq i8 %loadBr_41eefc, 1
  br i1 %cmpBr_41eefc, label %block_.L_41ef5e, label %block_41ef02

block_41ef02:                                     ; preds = %block_41ee93
  %loadMem_41ef02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 1
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RAX.i823 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %PC.i822
  %1501 = add i64 %1500, 5
  store i64 %1501, i64* %PC.i822
  store i64 1, i64* %RAX.i823, align 8
  store %struct.Memory* %loadMem_41ef02, %struct.Memory** %MEMORY
  %loadMem_41ef07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 5
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RCX.i821 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %PC.i820
  %1509 = add i64 %1508, 8
  store i64 %1509, i64* %PC.i820
  %1510 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1510, i64* %RCX.i821, align 8
  store %struct.Memory* %loadMem_41ef07, %struct.Memory** %MEMORY
  %loadMem_41ef0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 5
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RCX.i819 = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %RCX.i819
  %1518 = add i64 %1517, 72496
  %1519 = load i64, i64* %PC.i818
  %1520 = add i64 %1519, 10
  store i64 %1520, i64* %PC.i818
  %1521 = inttoptr i64 %1518 to i32*
  store i32 1, i32* %1521
  store %struct.Memory* %loadMem_41ef0f, %struct.Memory** %MEMORY
  %loadMem_41ef19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 33
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 5
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %PC.i816
  %1529 = add i64 %1528, 8
  store i64 %1529, i64* %PC.i816
  %1530 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1530, i64* %RCX.i817, align 8
  store %struct.Memory* %loadMem_41ef19, %struct.Memory** %MEMORY
  %loadMem_41ef21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 5
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 7
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RDX.i815 = bitcast %union.anon* %1539 to i64*
  %1540 = load i64, i64* %RCX.i814
  %1541 = add i64 %1540, 72464
  %1542 = load i64, i64* %PC.i813
  %1543 = add i64 %1542, 6
  store i64 %1543, i64* %PC.i813
  %1544 = inttoptr i64 %1541 to i32*
  %1545 = load i32, i32* %1544
  %1546 = zext i32 %1545 to i64
  store i64 %1546, i64* %RDX.i815, align 8
  store %struct.Memory* %loadMem_41ef21, %struct.Memory** %MEMORY
  %loadMem_41ef27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 7
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RDX.i812 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RDX.i812
  %1554 = load i64, i64* %PC.i811
  %1555 = add i64 %1554, 3
  store i64 %1555, i64* %PC.i811
  %1556 = trunc i64 %1553 to i32
  %1557 = add i32 1, %1556
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RDX.i812, align 8
  %1559 = icmp ult i32 %1557, %1556
  %1560 = icmp ult i32 %1557, 1
  %1561 = or i1 %1559, %1560
  %1562 = zext i1 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1562, i8* %1563, align 1
  %1564 = and i32 %1557, 255
  %1565 = call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1568, i8* %1569, align 1
  %1570 = xor i64 1, %1553
  %1571 = trunc i64 %1570 to i32
  %1572 = xor i32 %1571, %1557
  %1573 = lshr i32 %1572, 4
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1575, i8* %1576, align 1
  %1577 = icmp eq i32 %1557, 0
  %1578 = zext i1 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1578, i8* %1579, align 1
  %1580 = lshr i32 %1557, 31
  %1581 = trunc i32 %1580 to i8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1581, i8* %1582, align 1
  %1583 = lshr i32 %1556, 31
  %1584 = xor i32 %1580, %1583
  %1585 = add i32 %1584, %1580
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1587, i8* %1588, align 1
  store %struct.Memory* %loadMem_41ef27, %struct.Memory** %MEMORY
  %loadMem_41ef2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 7
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %EDX.i809 = bitcast %union.anon* %1594 to i32*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 5
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %RCX.i810
  %1599 = add i64 %1598, 72464
  %1600 = load i32, i32* %EDX.i809
  %1601 = zext i32 %1600 to i64
  %1602 = load i64, i64* %PC.i808
  %1603 = add i64 %1602, 6
  store i64 %1603, i64* %PC.i808
  %1604 = inttoptr i64 %1599 to i32*
  store i32 %1600, i32* %1604
  store %struct.Memory* %loadMem_41ef2a, %struct.Memory** %MEMORY
  %loadMem_41ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 7
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RDX.i807 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %PC.i806
  %1612 = add i64 %1611, 7
  store i64 %1612, i64* %PC.i806
  %1613 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*)
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RDX.i807, align 8
  store %struct.Memory* %loadMem_41ef30, %struct.Memory** %MEMORY
  %loadMem_41ef37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 33
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 7
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RDX.i805 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RDX.i805
  %1622 = load i64, i64* %PC.i804
  %1623 = add i64 %1622, 3
  store i64 %1623, i64* %PC.i804
  %1624 = trunc i64 %1621 to i32
  %1625 = add i32 4, %1624
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RDX.i805, align 8
  %1627 = icmp ult i32 %1625, %1624
  %1628 = icmp ult i32 %1625, 4
  %1629 = or i1 %1627, %1628
  %1630 = zext i1 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1630, i8* %1631, align 1
  %1632 = and i32 %1625, 255
  %1633 = call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1636, i8* %1637, align 1
  %1638 = xor i64 4, %1621
  %1639 = trunc i64 %1638 to i32
  %1640 = xor i32 %1639, %1625
  %1641 = lshr i32 %1640, 4
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1643, i8* %1644, align 1
  %1645 = icmp eq i32 %1625, 0
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1646, i8* %1647, align 1
  %1648 = lshr i32 %1625, 31
  %1649 = trunc i32 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1649, i8* %1650, align 1
  %1651 = lshr i32 %1624, 31
  %1652 = xor i32 %1648, %1651
  %1653 = add i32 %1652, %1648
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1655, i8* %1656, align 1
  store %struct.Memory* %loadMem_41ef37, %struct.Memory** %MEMORY
  %loadMem_41ef3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 7
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %EDX.i802 = bitcast %union.anon* %1662 to i32*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 5
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %1665 to i64*
  %1666 = load i32, i32* %EDX.i802
  %1667 = zext i32 %1666 to i64
  %1668 = load i64, i64* %PC.i801
  %1669 = add i64 %1668, 2
  store i64 %1669, i64* %PC.i801
  %1670 = and i64 %1667, 4294967295
  store i64 %1670, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_41ef3a, %struct.Memory** %MEMORY
  %loadMem_41ef3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 5
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %1677 = bitcast %union.anon* %1676 to %struct.anon.2*
  %CL.i798 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1677, i32 0, i32 0
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 1
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %RAX.i799
  %1682 = load i8, i8* %CL.i798
  %1683 = zext i8 %1682 to i64
  %1684 = load i64, i64* %PC.i797
  %1685 = add i64 %1684, 2
  store i64 %1685, i64* %PC.i797
  %1686 = trunc i64 %1683 to i5
  switch i5 %1686, label %1693 [
    i5 0, label %routine_shll__cl___eax.exit800
    i5 1, label %1687
  ]

; <label>:1687:                                   ; preds = %block_41ef02
  %1688 = trunc i64 %1681 to i32
  %1689 = shl i32 %1688, 1
  %1690 = icmp slt i32 %1688, 0
  %1691 = icmp slt i32 %1689, 0
  %1692 = xor i1 %1690, %1691
  br label %1702

; <label>:1693:                                   ; preds = %block_41ef02
  %1694 = and i64 %1683, 31
  %1695 = add i64 %1694, 4294967295
  %1696 = and i64 %1681, 4294967295
  %1697 = and i64 %1695, 4294967295
  %1698 = shl i64 %1696, %1697
  %1699 = trunc i64 %1698 to i32
  %1700 = icmp slt i32 %1699, 0
  %1701 = shl i32 %1699, 1
  br label %1702

; <label>:1702:                                   ; preds = %1693, %1687
  %1703 = phi i1 [ %1690, %1687 ], [ %1700, %1693 ]
  %1704 = phi i1 [ %1692, %1687 ], [ false, %1693 ]
  %1705 = phi i32 [ %1689, %1687 ], [ %1701, %1693 ]
  %1706 = zext i32 %1705 to i64
  store i64 %1706, i64* %RAX.i799, align 8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1708 = zext i1 %1703 to i8
  store i8 %1708, i8* %1707, align 1
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1710 = and i32 %1705, 254
  %1711 = call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %1709, align 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1715, align 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1717 = icmp eq i32 %1705, 0
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %1716, align 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1720 = lshr i32 %1705, 31
  %1721 = trunc i32 %1720 to i8
  store i8 %1721, i8* %1719, align 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1723 = zext i1 %1704 to i8
  store i8 %1723, i8* %1722, align 1
  br label %routine_shll__cl___eax.exit800

routine_shll__cl___eax.exit800:                   ; preds = %block_41ef02, %1702
  store %struct.Memory* %loadMem_41ef3c, %struct.Memory** %MEMORY
  %loadMem_41ef3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 9
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RSI.i796 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %PC.i795
  %1731 = add i64 %1730, 8
  store i64 %1731, i64* %PC.i795
  %1732 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1732, i64* %RSI.i796, align 8
  store %struct.Memory* %loadMem_41ef3e, %struct.Memory** %MEMORY
  %loadMem_41ef46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 7
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RDX.i793 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 9
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RSI.i794 = bitcast %union.anon* %1741 to i64*
  %1742 = load i64, i64* %RSI.i794
  %1743 = add i64 %1742, 72464
  %1744 = load i64, i64* %PC.i792
  %1745 = add i64 %1744, 6
  store i64 %1745, i64* %PC.i792
  %1746 = inttoptr i64 %1743 to i32*
  %1747 = load i32, i32* %1746
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RDX.i793, align 8
  store %struct.Memory* %loadMem_41ef46, %struct.Memory** %MEMORY
  %loadMem_41ef4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 1
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %EAX.i790 = bitcast %union.anon* %1754 to i32*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 15
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RBP.i791
  %1759 = sub i64 %1758, 8
  %1760 = load i32, i32* %EAX.i790
  %1761 = zext i32 %1760 to i64
  %1762 = load i64, i64* %PC.i789
  %1763 = add i64 %1762, 3
  store i64 %1763, i64* %PC.i789
  %1764 = inttoptr i64 %1759 to i32*
  store i32 %1760, i32* %1764
  store %struct.Memory* %loadMem_41ef4c, %struct.Memory** %MEMORY
  %loadMem_41ef4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 7
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %EDX.i787 = bitcast %union.anon* %1770 to i32*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 1
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %1773 to i64*
  %1774 = load i32, i32* %EDX.i787
  %1775 = zext i32 %1774 to i64
  %1776 = load i64, i64* %PC.i786
  %1777 = add i64 %1776, 2
  store i64 %1777, i64* %PC.i786
  %1778 = and i64 %1775, 4294967295
  store i64 %1778, i64* %RAX.i788, align 8
  store %struct.Memory* %loadMem_41ef4f, %struct.Memory** %MEMORY
  %loadMem_41ef51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 7
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %EDX.i784 = bitcast %union.anon* %1784 to i32*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 7
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RDX.i785 = bitcast %union.anon* %1787 to i64*
  %1788 = load i64, i64* %RDX.i785
  %1789 = load i32, i32* %EDX.i784
  %1790 = zext i32 %1789 to i64
  %1791 = load i64, i64* %PC.i783
  %1792 = add i64 %1791, 2
  store i64 %1792, i64* %PC.i783
  %1793 = xor i64 %1790, %1788
  %1794 = trunc i64 %1793 to i32
  %1795 = and i64 %1793, 4294967295
  store i64 %1795, i64* %RDX.i785, align 8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1796, align 1
  %1797 = and i32 %1794, 255
  %1798 = call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1801, i8* %1802, align 1
  %1803 = icmp eq i32 %1794, 0
  %1804 = zext i1 %1803 to i8
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1804, i8* %1805, align 1
  %1806 = lshr i32 %1794, 31
  %1807 = trunc i32 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1807, i8* %1808, align 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1809, align 1
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1810, align 1
  store %struct.Memory* %loadMem_41ef51, %struct.Memory** %MEMORY
  %loadMem_41ef53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 11
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RDI.i781 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 15
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %1819 to i64*
  %1820 = load i64, i64* %RBP.i782
  %1821 = sub i64 %1820, 8
  %1822 = load i64, i64* %PC.i780
  %1823 = add i64 %1822, 3
  store i64 %1823, i64* %PC.i780
  %1824 = inttoptr i64 %1821 to i32*
  %1825 = load i32, i32* %1824
  %1826 = zext i32 %1825 to i64
  store i64 %1826, i64* %RDI.i781, align 8
  store %struct.Memory* %loadMem_41ef53, %struct.Memory** %MEMORY
  %loadMem_41ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 11
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %EDI.i776 = bitcast %union.anon* %1832 to i32*
  %1833 = load i32, i32* %EDI.i776
  %1834 = zext i32 %1833 to i64
  %1835 = load i64, i64* %PC.i775
  %1836 = add i64 %1835, 2
  store i64 %1836, i64* %PC.i775
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1838 = bitcast %union.anon* %1837 to i32*
  %1839 = load i32, i32* %1838, align 8
  %1840 = zext i32 %1839 to i64
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1842 = bitcast %union.anon* %1841 to i32*
  %1843 = load i32, i32* %1842, align 8
  %1844 = zext i32 %1843 to i64
  %1845 = and i64 %1834, 4294967295
  %1846 = shl i64 %1844, 32
  %1847 = or i64 %1846, %1840
  %1848 = udiv i64 %1847, %1845
  %1849 = and i64 %1848, 4294967295
  %1850 = icmp eq i64 %1848, %1849
  br i1 %1850, label %1855, label %1851

; <label>:1851:                                   ; preds = %routine_shll__cl___eax.exit800
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1853 = load i64, i64* %1852, align 8
  %1854 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1853, %struct.Memory* %loadMem_41ef56)
  br label %routine_divl__edi.exit777

; <label>:1855:                                   ; preds = %routine_shll__cl___eax.exit800
  %1856 = urem i64 %1847, %1845
  %1857 = getelementptr inbounds %union.anon, %union.anon* %1837, i64 0, i32 0
  store i64 %1848, i64* %1857, align 8
  %1858 = getelementptr inbounds %union.anon, %union.anon* %1841, i64 0, i32 0
  store i64 %1856, i64* %1858, align 8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1859, align 1
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1860, align 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1861, align 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1862, align 1
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1863, align 1
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1864, align 1
  br label %routine_divl__edi.exit777

routine_divl__edi.exit777:                        ; preds = %1851, %1855
  %1865 = phi %struct.Memory* [ %1854, %1851 ], [ %loadMem_41ef56, %1855 ]
  store %struct.Memory* %1865, %struct.Memory** %MEMORY
  %loadMem_41ef58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 7
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %EDX.i773 = bitcast %union.anon* %1871 to i32*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 9
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RSI.i774 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %RSI.i774
  %1876 = add i64 %1875, 72464
  %1877 = load i32, i32* %EDX.i773
  %1878 = zext i32 %1877 to i64
  %1879 = load i64, i64* %PC.i772
  %1880 = add i64 %1879, 6
  store i64 %1880, i64* %PC.i772
  %1881 = inttoptr i64 %1876 to i32*
  store i32 %1877, i32* %1881
  store %struct.Memory* %loadMem_41ef58, %struct.Memory** %MEMORY
  br label %block_.L_41ef5e

block_.L_41ef5e:                                  ; preds = %routine_divl__edi.exit777, %block_41ee93
  %loadMem_41ef5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1885, i64 0, i64 0
  %YMM0.i771 = bitcast %union.VectorReg* %1886 to %"class.std::bitset"*
  %1887 = bitcast %"class.std::bitset"* %YMM0.i771 to i8*
  %1888 = load i64, i64* %PC.i770
  %1889 = add i64 %1888, ptrtoint (%G_0x928fa__rip__type* @G_0x928fa__rip_ to i64)
  %1890 = load i64, i64* %PC.i770
  %1891 = add i64 %1890, 8
  store i64 %1891, i64* %PC.i770
  %1892 = inttoptr i64 %1889 to double*
  %1893 = load double, double* %1892
  %1894 = bitcast i8* %1887 to double*
  store double %1893, double* %1894, align 1
  %1895 = getelementptr inbounds i8, i8* %1887, i64 8
  %1896 = bitcast i8* %1895 to double*
  store double 0.000000e+00, double* %1896, align 1
  store %struct.Memory* %loadMem_41ef5e, %struct.Memory** %MEMORY
  %loadMem_41ef66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 1
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %1902 to i64*
  %1903 = load i64, i64* %PC.i768
  %1904 = add i64 %1903, 8
  store i64 %1904, i64* %PC.i768
  %1905 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1905, i64* %RAX.i769, align 8
  store %struct.Memory* %loadMem_41ef66, %struct.Memory** %MEMORY
  %loadMem_41ef6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 1
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 5
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %RAX.i766
  %1916 = add i64 %1915, 20
  %1917 = load i64, i64* %PC.i765
  %1918 = add i64 %1917, 3
  store i64 %1918, i64* %PC.i765
  %1919 = inttoptr i64 %1916 to i32*
  %1920 = load i32, i32* %1919
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RCX.i767, align 8
  store %struct.Memory* %loadMem_41ef6e, %struct.Memory** %MEMORY
  %loadMem_41ef71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 5
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RCX.i764 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %RCX.i764
  %1929 = load i64, i64* %PC.i763
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i763
  %1931 = trunc i64 %1928 to i32
  %1932 = add i32 1, %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RCX.i764, align 8
  %1934 = icmp ult i32 %1932, %1931
  %1935 = icmp ult i32 %1932, 1
  %1936 = or i1 %1934, %1935
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1937, i8* %1938, align 1
  %1939 = and i32 %1932, 255
  %1940 = call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1943, i8* %1944, align 1
  %1945 = xor i64 1, %1928
  %1946 = trunc i64 %1945 to i32
  %1947 = xor i32 %1946, %1932
  %1948 = lshr i32 %1947, 4
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1950, i8* %1951, align 1
  %1952 = icmp eq i32 %1932, 0
  %1953 = zext i1 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1953, i8* %1954, align 1
  %1955 = lshr i32 %1932, 31
  %1956 = trunc i32 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1956, i8* %1957, align 1
  %1958 = lshr i32 %1931, 31
  %1959 = xor i32 %1955, %1958
  %1960 = add i32 %1959, %1955
  %1961 = icmp eq i32 %1960, 2
  %1962 = zext i1 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1962, i8* %1963, align 1
  store %struct.Memory* %loadMem_41ef71, %struct.Memory** %MEMORY
  %loadMem_41ef74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 5
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %ECX.i761 = bitcast %union.anon* %1969 to i32*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1970, i64 0, i64 1
  %YMM1.i762 = bitcast %union.VectorReg* %1971 to %"class.std::bitset"*
  %1972 = bitcast %"class.std::bitset"* %YMM1.i762 to i8*
  %1973 = load i32, i32* %ECX.i761
  %1974 = zext i32 %1973 to i64
  %1975 = load i64, i64* %PC.i760
  %1976 = add i64 %1975, 4
  store i64 %1976, i64* %PC.i760
  %1977 = sitofp i32 %1973 to double
  %1978 = bitcast i8* %1972 to double*
  store double %1977, double* %1978, align 1
  store %struct.Memory* %loadMem_41ef74, %struct.Memory** %MEMORY
  %loadMem_41ef78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %PC.i758
  %1986 = add i64 %1985, 8
  store i64 %1986, i64* %PC.i758
  %1987 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1987, i64* %RAX.i759, align 8
  store %struct.Memory* %loadMem_41ef78, %struct.Memory** %MEMORY
  %loadMem_41ef80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 1
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 2
  %YMM2.i757 = bitcast %union.VectorReg* %1995 to %"class.std::bitset"*
  %1996 = bitcast %"class.std::bitset"* %YMM2.i757 to i8*
  %1997 = load i64, i64* %RAX.i756
  %1998 = add i64 %1997, 1236
  %1999 = load i64, i64* %PC.i755
  %2000 = add i64 %1999, 8
  store i64 %2000, i64* %PC.i755
  %2001 = inttoptr i64 %1998 to i32*
  %2002 = load i32, i32* %2001
  %2003 = sitofp i32 %2002 to double
  %2004 = bitcast i8* %1996 to double*
  store double %2003, double* %2004, align 1
  store %struct.Memory* %loadMem_41ef80, %struct.Memory** %MEMORY
  %loadMem_41ef88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2008, i64 0, i64 2
  %YMM2.i753 = bitcast %union.VectorReg* %2009 to %"class.std::bitset"*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2010, i64 0, i64 0
  %XMM0.i754 = bitcast %union.VectorReg* %2011 to %union.vec128_t*
  %2012 = bitcast %"class.std::bitset"* %YMM2.i753 to i8*
  %2013 = bitcast %"class.std::bitset"* %YMM2.i753 to i8*
  %2014 = bitcast %union.vec128_t* %XMM0.i754 to i8*
  %2015 = load i64, i64* %PC.i752
  %2016 = add i64 %2015, 4
  store i64 %2016, i64* %PC.i752
  %2017 = bitcast i8* %2013 to double*
  %2018 = load double, double* %2017, align 1
  %2019 = getelementptr inbounds i8, i8* %2013, i64 8
  %2020 = bitcast i8* %2019 to i64*
  %2021 = load i64, i64* %2020, align 1
  %2022 = bitcast i8* %2014 to double*
  %2023 = load double, double* %2022, align 1
  %2024 = fadd double %2018, %2023
  %2025 = bitcast i8* %2012 to double*
  store double %2024, double* %2025, align 1
  %2026 = getelementptr inbounds i8, i8* %2012, i64 8
  %2027 = bitcast i8* %2026 to i64*
  store i64 %2021, i64* %2027, align 1
  store %struct.Memory* %loadMem_41ef88, %struct.Memory** %MEMORY
  %loadMem_41ef8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2032 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2031, i64 0, i64 1
  %YMM1.i750 = bitcast %union.VectorReg* %2032 to %"class.std::bitset"*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2033, i64 0, i64 2
  %XMM2.i751 = bitcast %union.VectorReg* %2034 to %union.vec128_t*
  %2035 = bitcast %"class.std::bitset"* %YMM1.i750 to i8*
  %2036 = bitcast %"class.std::bitset"* %YMM1.i750 to i8*
  %2037 = bitcast %union.vec128_t* %XMM2.i751 to i8*
  %2038 = load i64, i64* %PC.i749
  %2039 = add i64 %2038, 4
  store i64 %2039, i64* %PC.i749
  %2040 = bitcast i8* %2036 to double*
  %2041 = load double, double* %2040, align 1
  %2042 = getelementptr inbounds i8, i8* %2036, i64 8
  %2043 = bitcast i8* %2042 to i64*
  %2044 = load i64, i64* %2043, align 1
  %2045 = bitcast i8* %2037 to double*
  %2046 = load double, double* %2045, align 1
  %2047 = fdiv double %2041, %2046
  %2048 = bitcast i8* %2035 to double*
  store double %2047, double* %2048, align 1
  %2049 = getelementptr inbounds i8, i8* %2035, i64 8
  %2050 = bitcast i8* %2049 to i64*
  store i64 %2044, i64* %2050, align 1
  store %struct.Memory* %loadMem_41ef8c, %struct.Memory** %MEMORY
  %loadMem_41ef90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 1
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %PC.i747
  %2058 = add i64 %2057, 8
  store i64 %2058, i64* %PC.i747
  %2059 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2059, i64* %RAX.i748, align 8
  store %struct.Memory* %loadMem_41ef90, %struct.Memory** %MEMORY
  %loadMem_41ef98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 33
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 1
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RAX.i745 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2066, i64 0, i64 1
  %XMM1.i746 = bitcast %union.VectorReg* %2067 to %union.vec128_t*
  %2068 = load i64, i64* %RAX.i745
  %2069 = add i64 %2068, 71896
  %2070 = bitcast %union.vec128_t* %XMM1.i746 to i8*
  %2071 = load i64, i64* %PC.i744
  %2072 = add i64 %2071, 8
  store i64 %2072, i64* %PC.i744
  %2073 = bitcast i8* %2070 to double*
  %2074 = load double, double* %2073, align 1
  %2075 = inttoptr i64 %2069 to double*
  store double %2074, double* %2075
  store %struct.Memory* %loadMem_41ef98, %struct.Memory** %MEMORY
  %loadMem_41efa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 1
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %2081 to i64*
  %2082 = load i64, i64* %PC.i742
  %2083 = add i64 %2082, 8
  store i64 %2083, i64* %PC.i742
  %2084 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2084, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_41efa0, %struct.Memory** %MEMORY
  %loadMem_41efa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 1
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RAX.i741
  %2092 = add i64 %2091, 1320
  %2093 = load i64, i64* %PC.i740
  %2094 = add i64 %2093, 7
  store i64 %2094, i64* %PC.i740
  %2095 = inttoptr i64 %2092 to i32*
  %2096 = load i32, i32* %2095
  %2097 = sub i32 %2096, 3
  %2098 = icmp ult i32 %2096, 3
  %2099 = zext i1 %2098 to i8
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2099, i8* %2100, align 1
  %2101 = and i32 %2097, 255
  %2102 = call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2105, i8* %2106, align 1
  %2107 = xor i32 %2096, 3
  %2108 = xor i32 %2107, %2097
  %2109 = lshr i32 %2108, 4
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2111, i8* %2112, align 1
  %2113 = icmp eq i32 %2097, 0
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2114, i8* %2115, align 1
  %2116 = lshr i32 %2097, 31
  %2117 = trunc i32 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2117, i8* %2118, align 1
  %2119 = lshr i32 %2096, 31
  %2120 = xor i32 %2116, %2119
  %2121 = add i32 %2120, %2119
  %2122 = icmp eq i32 %2121, 2
  %2123 = zext i1 %2122 to i8
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2123, i8* %2124, align 1
  store %struct.Memory* %loadMem_41efa8, %struct.Memory** %MEMORY
  %loadMem_41efaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %PC.i739
  %2129 = add i64 %2128, 30
  %2130 = load i64, i64* %PC.i739
  %2131 = add i64 %2130, 6
  %2132 = load i64, i64* %PC.i739
  %2133 = add i64 %2132, 6
  store i64 %2133, i64* %PC.i739
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2135 = load i8, i8* %2134, align 1
  %2136 = icmp eq i8 %2135, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %BRANCH_TAKEN, align 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2139 = select i1 %2136, i64 %2129, i64 %2131
  store i64 %2139, i64* %2138, align 8
  store %struct.Memory* %loadMem_41efaf, %struct.Memory** %MEMORY
  %loadBr_41efaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41efaf = icmp eq i8 %loadBr_41efaf, 1
  br i1 %cmpBr_41efaf, label %block_.L_41efcd, label %block_41efb5

block_41efb5:                                     ; preds = %block_.L_41ef5e
  %loadMem_41efb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2143, i64 0, i64 0
  %YMM0.i738 = bitcast %union.VectorReg* %2144 to %"class.std::bitset"*
  %2145 = bitcast %"class.std::bitset"* %YMM0.i738 to i8*
  %2146 = load i64, i64* %PC.i737
  %2147 = add i64 %2146, ptrtoint (%G_0x928a3__rip__type* @G_0x928a3__rip_ to i64)
  %2148 = load i64, i64* %PC.i737
  %2149 = add i64 %2148, 8
  store i64 %2149, i64* %PC.i737
  %2150 = inttoptr i64 %2147 to double*
  %2151 = load double, double* %2150
  %2152 = bitcast i8* %2145 to double*
  store double %2151, double* %2152, align 1
  %2153 = getelementptr inbounds i8, i8* %2145, i64 8
  %2154 = bitcast i8* %2153 to double*
  store double 0.000000e+00, double* %2154, align 1
  store %struct.Memory* %loadMem_41efb5, %struct.Memory** %MEMORY
  %loadMem_41efbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 1
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %PC.i735
  %2162 = add i64 %2161, 8
  store i64 %2162, i64* %PC.i735
  %2163 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2163, i64* %RAX.i736, align 8
  store %struct.Memory* %loadMem_41efbd, %struct.Memory** %MEMORY
  %loadMem_41efc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 1
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2171 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2170, i64 0, i64 0
  %XMM0.i734 = bitcast %union.VectorReg* %2171 to %union.vec128_t*
  %2172 = load i64, i64* %RAX.i733
  %2173 = add i64 %2172, 71896
  %2174 = bitcast %union.vec128_t* %XMM0.i734 to i8*
  %2175 = load i64, i64* %PC.i732
  %2176 = add i64 %2175, 8
  store i64 %2176, i64* %PC.i732
  %2177 = bitcast i8* %2174 to double*
  %2178 = load double, double* %2177, align 1
  %2179 = inttoptr i64 %2173 to double*
  store double %2178, double* %2179
  store %struct.Memory* %loadMem_41efc5, %struct.Memory** %MEMORY
  br label %block_.L_41efcd

block_.L_41efcd:                                  ; preds = %block_41efb5, %block_.L_41ef5e
  %loadMem_41efcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 1
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %PC.i730
  %2187 = add i64 %2186, 8
  store i64 %2187, i64* %PC.i730
  %2188 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2188, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_41efcd, %struct.Memory** %MEMORY
  %loadMem_41efd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %RAX.i729
  %2196 = add i64 %2195, 1224
  %2197 = load i64, i64* %PC.i728
  %2198 = add i64 %2197, 7
  store i64 %2198, i64* %PC.i728
  %2199 = inttoptr i64 %2196 to i32*
  %2200 = load i32, i32* %2199
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2201, align 1
  %2202 = and i32 %2200, 255
  %2203 = call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2206, i8* %2207, align 1
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2208, align 1
  %2209 = icmp eq i32 %2200, 0
  %2210 = zext i1 %2209 to i8
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2210, i8* %2211, align 1
  %2212 = lshr i32 %2200, 31
  %2213 = trunc i32 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2213, i8* %2214, align 1
  %2215 = lshr i32 %2200, 31
  %2216 = xor i32 %2212, %2215
  %2217 = add i32 %2216, %2215
  %2218 = icmp eq i32 %2217, 2
  %2219 = zext i1 %2218 to i8
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2219, i8* %2220, align 1
  store %struct.Memory* %loadMem_41efd5, %struct.Memory** %MEMORY
  %loadMem_41efdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %PC.i727
  %2225 = add i64 %2224, 183
  %2226 = load i64, i64* %PC.i727
  %2227 = add i64 %2226, 6
  %2228 = load i64, i64* %PC.i727
  %2229 = add i64 %2228, 6
  store i64 %2229, i64* %PC.i727
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2231 = load i8, i8* %2230, align 1
  store i8 %2231, i8* %BRANCH_TAKEN, align 1
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2233 = icmp ne i8 %2231, 0
  %2234 = select i1 %2233, i64 %2225, i64 %2227
  store i64 %2234, i64* %2232, align 8
  store %struct.Memory* %loadMem_41efdc, %struct.Memory** %MEMORY
  %loadBr_41efdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41efdc = icmp eq i8 %loadBr_41efdc, 1
  br i1 %cmpBr_41efdc, label %block_.L_41f093, label %block_41efe2

block_41efe2:                                     ; preds = %block_.L_41efcd
  %loadMem_41efe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %PC.i725
  %2242 = add i64 %2241, 8
  store i64 %2242, i64* %PC.i725
  %2243 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2243, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_41efe2, %struct.Memory** %MEMORY
  %loadMem_41efea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 1
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RAX.i724
  %2251 = add i64 %2250, 1228
  %2252 = load i64, i64* %PC.i723
  %2253 = add i64 %2252, 7
  store i64 %2253, i64* %PC.i723
  %2254 = inttoptr i64 %2251 to i32*
  %2255 = load i32, i32* %2254
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2256, align 1
  %2257 = and i32 %2255, 255
  %2258 = call i32 @llvm.ctpop.i32(i32 %2257)
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  %2261 = xor i8 %2260, 1
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2261, i8* %2262, align 1
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2263, align 1
  %2264 = icmp eq i32 %2255, 0
  %2265 = zext i1 %2264 to i8
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2265, i8* %2266, align 1
  %2267 = lshr i32 %2255, 31
  %2268 = trunc i32 %2267 to i8
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2268, i8* %2269, align 1
  %2270 = lshr i32 %2255, 31
  %2271 = xor i32 %2267, %2270
  %2272 = add i32 %2271, %2270
  %2273 = icmp eq i32 %2272, 2
  %2274 = zext i1 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2274, i8* %2275, align 1
  store %struct.Memory* %loadMem_41efea, %struct.Memory** %MEMORY
  %loadMem_41eff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %PC.i722
  %2280 = add i64 %2279, 162
  %2281 = load i64, i64* %PC.i722
  %2282 = add i64 %2281, 6
  %2283 = load i64, i64* %PC.i722
  %2284 = add i64 %2283, 6
  store i64 %2284, i64* %PC.i722
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2286 = load i8, i8* %2285, align 1
  store i8 %2286, i8* %BRANCH_TAKEN, align 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2288 = icmp ne i8 %2286, 0
  %2289 = select i1 %2288, i64 %2280, i64 %2282
  store i64 %2289, i64* %2287, align 8
  store %struct.Memory* %loadMem_41eff1, %struct.Memory** %MEMORY
  %loadBr_41eff1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eff1 = icmp eq i8 %loadBr_41eff1, 1
  br i1 %cmpBr_41eff1, label %block_.L_41f093, label %block_41eff7

block_41eff7:                                     ; preds = %block_41efe2
  %loadMem_41eff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 1
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %PC.i720
  %2297 = add i64 %2296, 8
  store i64 %2297, i64* %PC.i720
  %2298 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2298, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_41eff7, %struct.Memory** %MEMORY
  %loadMem_41efff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 5
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RAX.i718
  %2309 = load i64, i64* %PC.i717
  %2310 = add i64 %2309, 2
  store i64 %2310, i64* %PC.i717
  %2311 = inttoptr i64 %2308 to i32*
  %2312 = load i32, i32* %2311
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_41efff, %struct.Memory** %MEMORY
  %loadMem_41f001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 5
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RCX.i716
  %2321 = load i64, i64* %PC.i715
  %2322 = add i64 %2321, 7
  store i64 %2322, i64* %PC.i715
  %2323 = trunc i64 %2320 to i32
  %2324 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %2325 = sub i32 %2323, %2324
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RCX.i716, align 8
  %2327 = icmp ult i32 %2323, %2324
  %2328 = zext i1 %2327 to i8
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2328, i8* %2329, align 1
  %2330 = and i32 %2325, 255
  %2331 = call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2334, i8* %2335, align 1
  %2336 = xor i32 %2324, %2323
  %2337 = xor i32 %2336, %2325
  %2338 = lshr i32 %2337, 4
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2340, i8* %2341, align 1
  %2342 = icmp eq i32 %2325, 0
  %2343 = zext i1 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2343, i8* %2344, align 1
  %2345 = lshr i32 %2325, 31
  %2346 = trunc i32 %2345 to i8
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2346, i8* %2347, align 1
  %2348 = lshr i32 %2323, 31
  %2349 = lshr i32 %2324, 31
  %2350 = xor i32 %2349, %2348
  %2351 = xor i32 %2345, %2348
  %2352 = add i32 %2351, %2350
  %2353 = icmp eq i32 %2352, 2
  %2354 = zext i1 %2353 to i8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2354, i8* %2355, align 1
  store %struct.Memory* %loadMem_41f001, %struct.Memory** %MEMORY
  %loadMem_41f008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %PC.i713
  %2363 = add i64 %2362, 8
  store i64 %2363, i64* %PC.i713
  %2364 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2364, i64* %RAX.i714, align 8
  store %struct.Memory* %loadMem_41f008, %struct.Memory** %MEMORY
  %loadMem_41f010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RBP.i712
  %2375 = sub i64 %2374, 16
  %2376 = load i64, i64* %RAX.i711
  %2377 = load i64, i64* %PC.i710
  %2378 = add i64 %2377, 4
  store i64 %2378, i64* %PC.i710
  %2379 = inttoptr i64 %2375 to i64*
  store i64 %2376, i64* %2379
  store %struct.Memory* %loadMem_41f010, %struct.Memory** %MEMORY
  %loadMem_41f014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 5
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %ECX.i708 = bitcast %union.anon* %2385 to i32*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 1
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RAX.i709 = bitcast %union.anon* %2388 to i64*
  %2389 = load i32, i32* %ECX.i708
  %2390 = zext i32 %2389 to i64
  %2391 = load i64, i64* %PC.i707
  %2392 = add i64 %2391, 2
  store i64 %2392, i64* %PC.i707
  %2393 = and i64 %2390, 4294967295
  store i64 %2393, i64* %RAX.i709, align 8
  store %struct.Memory* %loadMem_41f014, %struct.Memory** %MEMORY
  %loadMem_41f016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2396 to i64*
  %2397 = load i64, i64* %PC.i706
  %2398 = add i64 %2397, 1
  store i64 %2398, i64* %PC.i706
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2401 = bitcast %union.anon* %2400 to i32*
  %2402 = load i32, i32* %2401, align 8
  %2403 = sext i32 %2402 to i64
  %2404 = lshr i64 %2403, 32
  store i64 %2404, i64* %2399, align 8
  store %struct.Memory* %loadMem_41f016, %struct.Memory** %MEMORY
  %loadMem_41f017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 9
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RSI.i704 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 15
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2413 to i64*
  %2414 = load i64, i64* %RBP.i705
  %2415 = sub i64 %2414, 16
  %2416 = load i64, i64* %PC.i703
  %2417 = add i64 %2416, 4
  store i64 %2417, i64* %PC.i703
  %2418 = inttoptr i64 %2415 to i64*
  %2419 = load i64, i64* %2418
  store i64 %2419, i64* %RSI.i704, align 8
  store %struct.Memory* %loadMem_41f017, %struct.Memory** %MEMORY
  %loadMem_41f01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 9
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RSI.i699 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RSI.i699
  %2427 = add i64 %2426, 1224
  %2428 = load i64, i64* %PC.i698
  %2429 = add i64 %2428, 6
  store i64 %2429, i64* %PC.i698
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2431 = bitcast %union.anon* %2430 to i32*
  %2432 = load i32, i32* %2431, align 8
  %2433 = zext i32 %2432 to i64
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2435 = bitcast %union.anon* %2434 to i32*
  %2436 = load i32, i32* %2435, align 8
  %2437 = zext i32 %2436 to i64
  %2438 = inttoptr i64 %2427 to i32*
  %2439 = load i32, i32* %2438
  %2440 = sext i32 %2439 to i64
  %2441 = shl i64 %2437, 32
  %2442 = or i64 %2441, %2433
  %2443 = sdiv i64 %2442, %2440
  %2444 = shl i64 %2443, 32
  %2445 = ashr exact i64 %2444, 32
  %2446 = icmp eq i64 %2443, %2445
  br i1 %2446, label %2451, label %2447

; <label>:2447:                                   ; preds = %block_41eff7
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2449 = load i64, i64* %2448, align 8
  %2450 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2449, %struct.Memory* %loadMem_41f01b)
  br label %routine_idivl_0x4c8__rsi_.exit700

; <label>:2451:                                   ; preds = %block_41eff7
  %2452 = srem i64 %2442, %2440
  %2453 = getelementptr inbounds %union.anon, %union.anon* %2430, i64 0, i32 0
  %2454 = and i64 %2443, 4294967295
  store i64 %2454, i64* %2453, align 8
  %2455 = getelementptr inbounds %union.anon, %union.anon* %2434, i64 0, i32 0
  %2456 = and i64 %2452, 4294967295
  store i64 %2456, i64* %2455, align 8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2457, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2458, align 1
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2459, align 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2460, align 1
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2461, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2462, align 1
  br label %routine_idivl_0x4c8__rsi_.exit700

routine_idivl_0x4c8__rsi_.exit700:                ; preds = %2447, %2451
  %2463 = phi %struct.Memory* [ %2450, %2447 ], [ %loadMem_41f01b, %2451 ]
  store %struct.Memory* %2463, %struct.Memory** %MEMORY
  %loadMem_41f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 7
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RDX.i697 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RDX.i697
  %2471 = load i64, i64* %PC.i696
  %2472 = add i64 %2471, 3
  store i64 %2472, i64* %PC.i696
  %2473 = trunc i64 %2470 to i32
  %2474 = sub i32 %2473, 1
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RDX.i697, align 8
  %2476 = icmp ult i32 %2473, 1
  %2477 = zext i1 %2476 to i8
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2477, i8* %2478, align 1
  %2479 = and i32 %2474, 255
  %2480 = call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2483, i8* %2484, align 1
  %2485 = xor i64 1, %2470
  %2486 = trunc i64 %2485 to i32
  %2487 = xor i32 %2486, %2474
  %2488 = lshr i32 %2487, 4
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2490, i8* %2491, align 1
  %2492 = icmp eq i32 %2474, 0
  %2493 = zext i1 %2492 to i8
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2493, i8* %2494, align 1
  %2495 = lshr i32 %2474, 31
  %2496 = trunc i32 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2496, i8* %2497, align 1
  %2498 = lshr i32 %2473, 31
  %2499 = xor i32 %2495, %2498
  %2500 = add i32 %2499, %2498
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2502, i8* %2503, align 1
  store %struct.Memory* %loadMem_41f021, %struct.Memory** %MEMORY
  %loadMem_41f024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 11
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RDI.i695 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %PC.i694
  %2511 = add i64 %2510, 8
  store i64 %2511, i64* %PC.i694
  %2512 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2512, i64* %RDI.i695, align 8
  store %struct.Memory* %loadMem_41f024, %struct.Memory** %MEMORY
  %loadMem_41f02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i692 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 11
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RDI.i693 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RDI.i693
  %2523 = add i64 %2522, 20
  %2524 = load i64, i64* %PC.i691
  %2525 = add i64 %2524, 3
  store i64 %2525, i64* %PC.i691
  %2526 = inttoptr i64 %2523 to i32*
  %2527 = load i32, i32* %2526
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RCX.i692, align 8
  store %struct.Memory* %loadMem_41f02c, %struct.Memory** %MEMORY
  %loadMem_41f02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 5
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RCX.i690
  %2536 = load i64, i64* %PC.i689
  %2537 = add i64 %2536, 3
  store i64 %2537, i64* %PC.i689
  %2538 = trunc i64 %2535 to i32
  %2539 = add i32 1, %2538
  %2540 = zext i32 %2539 to i64
  store i64 %2540, i64* %RCX.i690, align 8
  %2541 = icmp ult i32 %2539, %2538
  %2542 = icmp ult i32 %2539, 1
  %2543 = or i1 %2541, %2542
  %2544 = zext i1 %2543 to i8
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2544, i8* %2545, align 1
  %2546 = and i32 %2539, 255
  %2547 = call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2550, i8* %2551, align 1
  %2552 = xor i64 1, %2535
  %2553 = trunc i64 %2552 to i32
  %2554 = xor i32 %2553, %2539
  %2555 = lshr i32 %2554, 4
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2557, i8* %2558, align 1
  %2559 = icmp eq i32 %2539, 0
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2560, i8* %2561, align 1
  %2562 = lshr i32 %2539, 31
  %2563 = trunc i32 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2538, 31
  %2566 = xor i32 %2562, %2565
  %2567 = add i32 %2566, %2562
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2569, i8* %2570, align 1
  store %struct.Memory* %loadMem_41f02f, %struct.Memory** %MEMORY
  %loadMem_41f032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 5
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %ECX.i687 = bitcast %union.anon* %2576 to i32*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 7
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RDX.i688 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RDX.i688
  %2581 = load i32, i32* %ECX.i687
  %2582 = zext i32 %2581 to i64
  %2583 = load i64, i64* %PC.i686
  %2584 = add i64 %2583, 3
  store i64 %2584, i64* %PC.i686
  %2585 = shl i64 %2580, 32
  %2586 = ashr exact i64 %2585, 32
  %2587 = shl i64 %2582, 32
  %2588 = ashr exact i64 %2587, 32
  %2589 = mul i64 %2588, %2586
  %2590 = trunc i64 %2589 to i32
  %2591 = and i64 %2589, 4294967295
  store i64 %2591, i64* %RDX.i688, align 8
  %2592 = shl i64 %2589, 32
  %2593 = ashr exact i64 %2592, 32
  %2594 = icmp ne i64 %2593, %2589
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2595, i8* %2596, align 1
  %2597 = and i32 %2590, 255
  %2598 = call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2601, i8* %2602, align 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2603, align 1
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2604, align 1
  %2605 = lshr i32 %2590, 31
  %2606 = trunc i32 %2605 to i8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2606, i8* %2607, align 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2595, i8* %2608, align 1
  store %struct.Memory* %loadMem_41f032, %struct.Memory** %MEMORY
  %loadMem_41f035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 11
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RDI.i685 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %PC.i684
  %2616 = add i64 %2615, 8
  store i64 %2616, i64* %PC.i684
  %2617 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2617, i64* %RDI.i685, align 8
  store %struct.Memory* %loadMem_41f035, %struct.Memory** %MEMORY
  %loadMem_41f03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 11
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RDI.i682 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2625 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2624, i64 0, i64 0
  %YMM0.i683 = bitcast %union.VectorReg* %2625 to %"class.std::bitset"*
  %2626 = bitcast %"class.std::bitset"* %YMM0.i683 to i8*
  %2627 = load i64, i64* %RDI.i682
  %2628 = add i64 %2627, 71896
  %2629 = load i64, i64* %PC.i681
  %2630 = add i64 %2629, 8
  store i64 %2630, i64* %PC.i681
  %2631 = inttoptr i64 %2628 to double*
  %2632 = load double, double* %2631
  %2633 = bitcast i8* %2626 to double*
  store double %2632, double* %2633, align 1
  %2634 = getelementptr inbounds i8, i8* %2626, i64 8
  %2635 = bitcast i8* %2634 to double*
  store double 0.000000e+00, double* %2635, align 1
  store %struct.Memory* %loadMem_41f03d, %struct.Memory** %MEMORY
  %loadMem_41f045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 11
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RDI.i680 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %PC.i679
  %2643 = add i64 %2642, 8
  store i64 %2643, i64* %PC.i679
  %2644 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %2644, i64* %RDI.i680, align 8
  store %struct.Memory* %loadMem_41f045, %struct.Memory** %MEMORY
  %loadMem_41f04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2647 to i64*
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 17
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %R8.i678 = bitcast %union.anon* %2650 to i64*
  %2651 = load i64, i64* %PC.i677
  %2652 = add i64 %2651, 8
  store i64 %2652, i64* %PC.i677
  %2653 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2653, i64* %R8.i678, align 8
  store %struct.Memory* %loadMem_41f04d, %struct.Memory** %MEMORY
  %loadMem_41f055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 5
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RCX.i675 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 17
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %R8.i676 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %R8.i676
  %2664 = add i64 %2663, 71908
  %2665 = load i64, i64* %PC.i674
  %2666 = add i64 %2665, 7
  store i64 %2666, i64* %PC.i674
  %2667 = inttoptr i64 %2664 to i32*
  %2668 = load i32, i32* %2667
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RCX.i675, align 8
  store %struct.Memory* %loadMem_41f055, %struct.Memory** %MEMORY
  %loadMem_41f05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 5
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RCX.i673
  %2677 = load i64, i64* %PC.i672
  %2678 = add i64 %2677, 3
  store i64 %2678, i64* %PC.i672
  %2679 = trunc i64 %2676 to i32
  %2680 = sub i32 %2679, 1
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %RCX.i673, align 8
  %2682 = icmp ult i32 %2679, 1
  %2683 = zext i1 %2682 to i8
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2683, i8* %2684, align 1
  %2685 = and i32 %2680, 255
  %2686 = call i32 @llvm.ctpop.i32(i32 %2685)
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  %2689 = xor i8 %2688, 1
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2689, i8* %2690, align 1
  %2691 = xor i64 1, %2676
  %2692 = trunc i64 %2691 to i32
  %2693 = xor i32 %2692, %2680
  %2694 = lshr i32 %2693, 4
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2696, i8* %2697, align 1
  %2698 = icmp eq i32 %2680, 0
  %2699 = zext i1 %2698 to i8
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2699, i8* %2700, align 1
  %2701 = lshr i32 %2680, 31
  %2702 = trunc i32 %2701 to i8
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2702, i8* %2703, align 1
  %2704 = lshr i32 %2679, 31
  %2705 = xor i32 %2701, %2704
  %2706 = add i32 %2705, %2704
  %2707 = icmp eq i32 %2706, 2
  %2708 = zext i1 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2708, i8* %2709, align 1
  store %struct.Memory* %loadMem_41f05c, %struct.Memory** %MEMORY
  %loadMem_41f05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 5
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %ECX.i670 = bitcast %union.anon* %2715 to i32*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 17
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %R8.i671 = bitcast %union.anon* %2718 to i64*
  %2719 = load i32, i32* %ECX.i670
  %2720 = zext i32 %2719 to i64
  %2721 = load i64, i64* %PC.i669
  %2722 = add i64 %2721, 3
  store i64 %2722, i64* %PC.i669
  %2723 = shl i64 %2720, 32
  %2724 = ashr exact i64 %2723, 32
  store i64 %2724, i64* %R8.i671, align 8
  store %struct.Memory* %loadMem_41f05f, %struct.Memory** %MEMORY
  %loadMem_41f062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 17
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %R8.i668 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %R8.i668
  %2732 = load i64, i64* %PC.i667
  %2733 = add i64 %2732, 4
  store i64 %2733, i64* %PC.i667
  %2734 = sext i64 %2731 to i128
  %2735 = and i128 %2734, -18446744073709551616
  %2736 = zext i64 %2731 to i128
  %2737 = or i128 %2735, %2736
  %2738 = mul i128 24, %2737
  %2739 = trunc i128 %2738 to i64
  store i64 %2739, i64* %R8.i668, align 8
  %2740 = sext i64 %2739 to i128
  %2741 = icmp ne i128 %2740, %2738
  %2742 = zext i1 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2742, i8* %2743, align 1
  %2744 = trunc i128 %2738 to i32
  %2745 = and i32 %2744, 255
  %2746 = call i32 @llvm.ctpop.i32(i32 %2745)
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2749, i8* %2750, align 1
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2751, align 1
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2752, align 1
  %2753 = lshr i64 %2739, 63
  %2754 = trunc i64 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2754, i8* %2755, align 1
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2742, i8* %2756, align 1
  store %struct.Memory* %loadMem_41f062, %struct.Memory** %MEMORY
  %loadMem_41f066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 11
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RDI.i665 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 17
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %R8.i666 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RDI.i665
  %2767 = load i64, i64* %R8.i666
  %2768 = load i64, i64* %PC.i664
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC.i664
  %2770 = add i64 %2767, %2766
  store i64 %2770, i64* %RDI.i665, align 8
  %2771 = icmp ult i64 %2770, %2766
  %2772 = icmp ult i64 %2770, %2767
  %2773 = or i1 %2771, %2772
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2774, i8* %2775, align 1
  %2776 = trunc i64 %2770 to i32
  %2777 = and i32 %2776, 255
  %2778 = call i32 @llvm.ctpop.i32(i32 %2777)
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  %2781 = xor i8 %2780, 1
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2781, i8* %2782, align 1
  %2783 = xor i64 %2767, %2766
  %2784 = xor i64 %2783, %2770
  %2785 = lshr i64 %2784, 4
  %2786 = trunc i64 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2787, i8* %2788, align 1
  %2789 = icmp eq i64 %2770, 0
  %2790 = zext i1 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2790, i8* %2791, align 1
  %2792 = lshr i64 %2770, 63
  %2793 = trunc i64 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2793, i8* %2794, align 1
  %2795 = lshr i64 %2766, 63
  %2796 = lshr i64 %2767, 63
  %2797 = xor i64 %2792, %2795
  %2798 = xor i64 %2792, %2796
  %2799 = add i64 %2797, %2798
  %2800 = icmp eq i64 %2799, 2
  %2801 = zext i1 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2801, i8* %2802, align 1
  store %struct.Memory* %loadMem_41f066, %struct.Memory** %MEMORY
  %loadMem_41f069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 5
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RCX.i662 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 11
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RDI.i663 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %RDI.i663
  %2813 = add i64 %2812, 4
  %2814 = load i64, i64* %PC.i661
  %2815 = add i64 %2814, 3
  store i64 %2815, i64* %PC.i661
  %2816 = inttoptr i64 %2813 to i32*
  %2817 = load i32, i32* %2816
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RCX.i662, align 8
  store %struct.Memory* %loadMem_41f069, %struct.Memory** %MEMORY
  %loadMem_41f06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 5
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RCX.i660 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RCX.i660
  %2826 = load i64, i64* %PC.i659
  %2827 = add i64 %2826, 3
  store i64 %2827, i64* %PC.i659
  %2828 = trunc i64 %2825 to i32
  %2829 = add i32 1, %2828
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RCX.i660, align 8
  %2831 = icmp ult i32 %2829, %2828
  %2832 = icmp ult i32 %2829, 1
  %2833 = or i1 %2831, %2832
  %2834 = zext i1 %2833 to i8
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2834, i8* %2835, align 1
  %2836 = and i32 %2829, 255
  %2837 = call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2840, i8* %2841, align 1
  %2842 = xor i64 1, %2825
  %2843 = trunc i64 %2842 to i32
  %2844 = xor i32 %2843, %2829
  %2845 = lshr i32 %2844, 4
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2847, i8* %2848, align 1
  %2849 = icmp eq i32 %2829, 0
  %2850 = zext i1 %2849 to i8
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2850, i8* %2851, align 1
  %2852 = lshr i32 %2829, 31
  %2853 = trunc i32 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2853, i8* %2854, align 1
  %2855 = lshr i32 %2828, 31
  %2856 = xor i32 %2852, %2855
  %2857 = add i32 %2856, %2852
  %2858 = icmp eq i32 %2857, 2
  %2859 = zext i1 %2858 to i8
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2859, i8* %2860, align 1
  store %struct.Memory* %loadMem_41f06c, %struct.Memory** %MEMORY
  %loadMem_41f06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 5
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %ECX.i657 = bitcast %union.anon* %2866 to i32*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2867, i64 0, i64 1
  %YMM1.i658 = bitcast %union.VectorReg* %2868 to %"class.std::bitset"*
  %2869 = bitcast %"class.std::bitset"* %YMM1.i658 to i8*
  %2870 = load i32, i32* %ECX.i657
  %2871 = zext i32 %2870 to i64
  %2872 = load i64, i64* %PC.i656
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %PC.i656
  %2874 = sitofp i32 %2870 to double
  %2875 = bitcast i8* %2869 to double*
  store double %2874, double* %2875, align 1
  store %struct.Memory* %loadMem_41f06f, %struct.Memory** %MEMORY
  %loadMem_41f073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2880 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2879, i64 0, i64 0
  %YMM0.i654 = bitcast %union.VectorReg* %2880 to %"class.std::bitset"*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2881, i64 0, i64 1
  %XMM1.i655 = bitcast %union.VectorReg* %2882 to %union.vec128_t*
  %2883 = bitcast %"class.std::bitset"* %YMM0.i654 to i8*
  %2884 = bitcast %"class.std::bitset"* %YMM0.i654 to i8*
  %2885 = bitcast %union.vec128_t* %XMM1.i655 to i8*
  %2886 = load i64, i64* %PC.i653
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i653
  %2888 = bitcast i8* %2884 to double*
  %2889 = load double, double* %2888, align 1
  %2890 = getelementptr inbounds i8, i8* %2884, i64 8
  %2891 = bitcast i8* %2890 to i64*
  %2892 = load i64, i64* %2891, align 1
  %2893 = bitcast i8* %2885 to double*
  %2894 = load double, double* %2893, align 1
  %2895 = fmul double %2889, %2894
  %2896 = bitcast i8* %2883 to double*
  store double %2895, double* %2896, align 1
  %2897 = getelementptr inbounds i8, i8* %2883, i64 8
  %2898 = bitcast i8* %2897 to i64*
  store i64 %2892, i64* %2898, align 1
  store %struct.Memory* %loadMem_41f073, %struct.Memory** %MEMORY
  %loadMem_41f077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 5
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2905, i64 0, i64 0
  %XMM0.i652 = bitcast %union.VectorReg* %2906 to %union.vec128_t*
  %2907 = bitcast %union.vec128_t* %XMM0.i652 to i8*
  %2908 = load i64, i64* %PC.i650
  %2909 = add i64 %2908, 4
  store i64 %2909, i64* %PC.i650
  %2910 = bitcast i8* %2907 to double*
  %2911 = load double, double* %2910, align 1
  %2912 = call double @llvm.trunc.f64(double %2911)
  %2913 = call double @llvm.fabs.f64(double %2912)
  %2914 = fcmp ogt double %2913, 0x41DFFFFFFFC00000
  %2915 = fptosi double %2912 to i32
  %2916 = zext i32 %2915 to i64
  %2917 = select i1 %2914, i64 2147483648, i64 %2916
  store i64 %2917, i64* %RCX.i651, align 8
  store %struct.Memory* %loadMem_41f077, %struct.Memory** %MEMORY
  %loadMem_41f07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 5
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %ECX.i648 = bitcast %union.anon* %2923 to i32*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 7
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %RDX.i649
  %2928 = load i32, i32* %ECX.i648
  %2929 = zext i32 %2928 to i64
  %2930 = load i64, i64* %PC.i647
  %2931 = add i64 %2930, 2
  store i64 %2931, i64* %PC.i647
  %2932 = trunc i64 %2927 to i32
  %2933 = add i32 %2928, %2932
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RDX.i649, align 8
  %2935 = icmp ult i32 %2933, %2932
  %2936 = icmp ult i32 %2933, %2928
  %2937 = or i1 %2935, %2936
  %2938 = zext i1 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2938, i8* %2939, align 1
  %2940 = and i32 %2933, 255
  %2941 = call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2944, i8* %2945, align 1
  %2946 = xor i64 %2929, %2927
  %2947 = trunc i64 %2946 to i32
  %2948 = xor i32 %2947, %2933
  %2949 = lshr i32 %2948, 4
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2951, i8* %2952, align 1
  %2953 = icmp eq i32 %2933, 0
  %2954 = zext i1 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2954, i8* %2955, align 1
  %2956 = lshr i32 %2933, 31
  %2957 = trunc i32 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2957, i8* %2958, align 1
  %2959 = lshr i32 %2932, 31
  %2960 = lshr i32 %2928, 31
  %2961 = xor i32 %2956, %2959
  %2962 = xor i32 %2956, %2960
  %2963 = add i32 %2961, %2962
  %2964 = icmp eq i32 %2963, 2
  %2965 = zext i1 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2965, i8* %2966, align 1
  store %struct.Memory* %loadMem_41f07b, %struct.Memory** %MEMORY
  %loadMem_41f07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 7
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RDX.i646 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RDX.i646
  %2974 = load i64, i64* %PC.i645
  %2975 = add i64 %2974, 2
  store i64 %2975, i64* %PC.i645
  %2976 = trunc i64 %2973 to i32
  %2977 = shl i32 %2976, 1
  %2978 = icmp slt i32 %2976, 0
  %2979 = icmp slt i32 %2977, 0
  %2980 = xor i1 %2978, %2979
  %2981 = zext i32 %2977 to i64
  store i64 %2981, i64* %RDX.i646, align 8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2983 = zext i1 %2978 to i8
  store i8 %2983, i8* %2982, align 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2985 = and i32 %2977, 254
  %2986 = call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %2984, align 1
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2990, align 1
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2992 = icmp eq i32 %2977, 0
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %2991, align 1
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2995 = lshr i32 %2977, 31
  %2996 = trunc i32 %2995 to i8
  store i8 %2996, i8* %2994, align 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2998 = zext i1 %2980 to i8
  store i8 %2998, i8* %2997, align 1
  store %struct.Memory* %loadMem_41f07d, %struct.Memory** %MEMORY
  %loadMem_41f080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 11
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RDI.i644 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %PC.i643
  %3006 = add i64 %3005, 8
  store i64 %3006, i64* %PC.i643
  %3007 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3007, i64* %RDI.i644, align 8
  store %struct.Memory* %loadMem_41f080, %struct.Memory** %MEMORY
  %loadMem_41f088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 7
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %EDX.i641 = bitcast %union.anon* %3013 to i32*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 11
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RDI.i642 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %RDI.i642
  %3018 = add i64 %3017, 72448
  %3019 = load i32, i32* %EDX.i641
  %3020 = zext i32 %3019 to i64
  %3021 = load i64, i64* %PC.i640
  %3022 = add i64 %3021, 6
  store i64 %3022, i64* %PC.i640
  %3023 = inttoptr i64 %3018 to i32*
  store i32 %3019, i32* %3023
  store %struct.Memory* %loadMem_41f088, %struct.Memory** %MEMORY
  %loadMem_41f08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3026 to i64*
  %3027 = load i64, i64* %PC.i639
  %3028 = add i64 %3027, 130
  %3029 = load i64, i64* %PC.i639
  %3030 = add i64 %3029, 5
  store i64 %3030, i64* %PC.i639
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3028, i64* %3031, align 8
  store %struct.Memory* %loadMem_41f08e, %struct.Memory** %MEMORY
  br label %block_.L_41f110

block_.L_41f093:                                  ; preds = %block_41efe2, %block_.L_41efcd
  %loadMem_41f093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %3037 to i64*
  %3038 = load i64, i64* %PC.i637
  %3039 = add i64 %3038, 8
  store i64 %3039, i64* %PC.i637
  %3040 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3040, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_41f093, %struct.Memory** %MEMORY
  %loadMem_41f09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 1
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 5
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RAX.i635
  %3051 = load i64, i64* %PC.i634
  %3052 = add i64 %3051, 2
  store i64 %3052, i64* %PC.i634
  %3053 = inttoptr i64 %3050 to i32*
  %3054 = load i32, i32* %3053
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_41f09b, %struct.Memory** %MEMORY
  %loadMem_41f09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 5
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %RCX.i633
  %3063 = load i64, i64* %PC.i632
  %3064 = add i64 %3063, 7
  store i64 %3064, i64* %PC.i632
  %3065 = trunc i64 %3062 to i32
  %3066 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %3067 = sub i32 %3065, %3066
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RCX.i633, align 8
  %3069 = icmp ult i32 %3065, %3066
  %3070 = zext i1 %3069 to i8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3070, i8* %3071, align 1
  %3072 = and i32 %3067, 255
  %3073 = call i32 @llvm.ctpop.i32(i32 %3072)
  %3074 = trunc i32 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = xor i8 %3075, 1
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3076, i8* %3077, align 1
  %3078 = xor i32 %3066, %3065
  %3079 = xor i32 %3078, %3067
  %3080 = lshr i32 %3079, 4
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3082, i8* %3083, align 1
  %3084 = icmp eq i32 %3067, 0
  %3085 = zext i1 %3084 to i8
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3085, i8* %3086, align 1
  %3087 = lshr i32 %3067, 31
  %3088 = trunc i32 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3088, i8* %3089, align 1
  %3090 = lshr i32 %3065, 31
  %3091 = lshr i32 %3066, 31
  %3092 = xor i32 %3091, %3090
  %3093 = xor i32 %3087, %3090
  %3094 = add i32 %3093, %3092
  %3095 = icmp eq i32 %3094, 2
  %3096 = zext i1 %3095 to i8
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3096, i8* %3097, align 1
  store %struct.Memory* %loadMem_41f09d, %struct.Memory** %MEMORY
  %loadMem_41f0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 5
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %RCX.i631
  %3105 = load i64, i64* %PC.i630
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i630
  %3107 = trunc i64 %3104 to i32
  %3108 = sub i32 %3107, 1
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RCX.i631, align 8
  %3110 = icmp ult i32 %3107, 1
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3111, i8* %3112, align 1
  %3113 = and i32 %3108, 255
  %3114 = call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3117, i8* %3118, align 1
  %3119 = xor i64 1, %3104
  %3120 = trunc i64 %3119 to i32
  %3121 = xor i32 %3120, %3108
  %3122 = lshr i32 %3121, 4
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3124, i8* %3125, align 1
  %3126 = icmp eq i32 %3108, 0
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i32 %3108, 31
  %3130 = trunc i32 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i32 %3107, 31
  %3133 = xor i32 %3129, %3132
  %3134 = add i32 %3133, %3132
  %3135 = icmp eq i32 %3134, 2
  %3136 = zext i1 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3136, i8* %3137, align 1
  store %struct.Memory* %loadMem_41f0a4, %struct.Memory** %MEMORY
  %loadMem_41f0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 1
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %PC.i628
  %3145 = add i64 %3144, 8
  store i64 %3145, i64* %PC.i628
  %3146 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3146, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_41f0a7, %struct.Memory** %MEMORY
  %loadMem_41f0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 1
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 7
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %RAX.i626
  %3157 = add i64 %3156, 20
  %3158 = load i64, i64* %PC.i625
  %3159 = add i64 %3158, 3
  store i64 %3159, i64* %PC.i625
  %3160 = inttoptr i64 %3157 to i32*
  %3161 = load i32, i32* %3160
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RDX.i627, align 8
  store %struct.Memory* %loadMem_41f0af, %struct.Memory** %MEMORY
  %loadMem_41f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 7
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RDX.i624 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %RDX.i624
  %3170 = load i64, i64* %PC.i623
  %3171 = add i64 %3170, 3
  store i64 %3171, i64* %PC.i623
  %3172 = trunc i64 %3169 to i32
  %3173 = add i32 1, %3172
  %3174 = zext i32 %3173 to i64
  store i64 %3174, i64* %RDX.i624, align 8
  %3175 = icmp ult i32 %3173, %3172
  %3176 = icmp ult i32 %3173, 1
  %3177 = or i1 %3175, %3176
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3178, i8* %3179, align 1
  %3180 = and i32 %3173, 255
  %3181 = call i32 @llvm.ctpop.i32(i32 %3180)
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  %3184 = xor i8 %3183, 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3184, i8* %3185, align 1
  %3186 = xor i64 1, %3169
  %3187 = trunc i64 %3186 to i32
  %3188 = xor i32 %3187, %3173
  %3189 = lshr i32 %3188, 4
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3191, i8* %3192, align 1
  %3193 = icmp eq i32 %3173, 0
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3194, i8* %3195, align 1
  %3196 = lshr i32 %3173, 31
  %3197 = trunc i32 %3196 to i8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3197, i8* %3198, align 1
  %3199 = lshr i32 %3172, 31
  %3200 = xor i32 %3196, %3199
  %3201 = add i32 %3200, %3196
  %3202 = icmp eq i32 %3201, 2
  %3203 = zext i1 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3203, i8* %3204, align 1
  store %struct.Memory* %loadMem_41f0b2, %struct.Memory** %MEMORY
  %loadMem_41f0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 7
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %EDX.i621 = bitcast %union.anon* %3210 to i32*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RCX.i622 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %RCX.i622
  %3215 = load i32, i32* %EDX.i621
  %3216 = zext i32 %3215 to i64
  %3217 = load i64, i64* %PC.i620
  %3218 = add i64 %3217, 3
  store i64 %3218, i64* %PC.i620
  %3219 = shl i64 %3214, 32
  %3220 = ashr exact i64 %3219, 32
  %3221 = shl i64 %3216, 32
  %3222 = ashr exact i64 %3221, 32
  %3223 = mul i64 %3222, %3220
  %3224 = trunc i64 %3223 to i32
  %3225 = and i64 %3223, 4294967295
  store i64 %3225, i64* %RCX.i622, align 8
  %3226 = shl i64 %3223, 32
  %3227 = ashr exact i64 %3226, 32
  %3228 = icmp ne i64 %3227, %3223
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3229, i8* %3230, align 1
  %3231 = and i32 %3224, 255
  %3232 = call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3235, i8* %3236, align 1
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3237, align 1
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3238, align 1
  %3239 = lshr i32 %3224, 31
  %3240 = trunc i32 %3239 to i8
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3240, i8* %3241, align 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3229, i8* %3242, align 1
  store %struct.Memory* %loadMem_41f0b5, %struct.Memory** %MEMORY
  %loadMem_41f0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 33
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 1
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %PC.i618
  %3250 = add i64 %3249, 8
  store i64 %3250, i64* %PC.i618
  %3251 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3251, i64* %RAX.i619, align 8
  store %struct.Memory* %loadMem_41f0b8, %struct.Memory** %MEMORY
  %loadMem_41f0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 1
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3258, i64 0, i64 0
  %YMM0.i617 = bitcast %union.VectorReg* %3259 to %"class.std::bitset"*
  %3260 = bitcast %"class.std::bitset"* %YMM0.i617 to i8*
  %3261 = load i64, i64* %RAX.i616
  %3262 = add i64 %3261, 71896
  %3263 = load i64, i64* %PC.i615
  %3264 = add i64 %3263, 8
  store i64 %3264, i64* %PC.i615
  %3265 = inttoptr i64 %3262 to double*
  %3266 = load double, double* %3265
  %3267 = bitcast i8* %3260 to double*
  store double %3266, double* %3267, align 1
  %3268 = getelementptr inbounds i8, i8* %3260, i64 8
  %3269 = bitcast i8* %3268 to double*
  store double 0.000000e+00, double* %3269, align 1
  store %struct.Memory* %loadMem_41f0c0, %struct.Memory** %MEMORY
  %loadMem_41f0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 1
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %PC.i613
  %3277 = add i64 %3276, 8
  store i64 %3277, i64* %PC.i613
  %3278 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %3278, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_41f0c8, %struct.Memory** %MEMORY
  %loadMem_41f0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 9
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RSI.i612 = bitcast %union.anon* %3284 to i64*
  %3285 = load i64, i64* %PC.i611
  %3286 = add i64 %3285, 8
  store i64 %3286, i64* %PC.i611
  %3287 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3287, i64* %RSI.i612, align 8
  store %struct.Memory* %loadMem_41f0d0, %struct.Memory** %MEMORY
  %loadMem_41f0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 7
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 9
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RSI.i610 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RSI.i610
  %3298 = add i64 %3297, 71908
  %3299 = load i64, i64* %PC.i608
  %3300 = add i64 %3299, 6
  store i64 %3300, i64* %PC.i608
  %3301 = inttoptr i64 %3298 to i32*
  %3302 = load i32, i32* %3301
  %3303 = zext i32 %3302 to i64
  store i64 %3303, i64* %RDX.i609, align 8
  store %struct.Memory* %loadMem_41f0d8, %struct.Memory** %MEMORY
  %loadMem_41f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 7
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RDX.i607 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RDX.i607
  %3311 = load i64, i64* %PC.i606
  %3312 = add i64 %3311, 3
  store i64 %3312, i64* %PC.i606
  %3313 = trunc i64 %3310 to i32
  %3314 = sub i32 %3313, 1
  %3315 = zext i32 %3314 to i64
  store i64 %3315, i64* %RDX.i607, align 8
  %3316 = icmp ult i32 %3313, 1
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3317, i8* %3318, align 1
  %3319 = and i32 %3314, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = xor i64 1, %3310
  %3326 = trunc i64 %3325 to i32
  %3327 = xor i32 %3326, %3314
  %3328 = lshr i32 %3327, 4
  %3329 = trunc i32 %3328 to i8
  %3330 = and i8 %3329, 1
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3330, i8* %3331, align 1
  %3332 = icmp eq i32 %3314, 0
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3333, i8* %3334, align 1
  %3335 = lshr i32 %3314, 31
  %3336 = trunc i32 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3336, i8* %3337, align 1
  %3338 = lshr i32 %3313, 31
  %3339 = xor i32 %3335, %3338
  %3340 = add i32 %3339, %3338
  %3341 = icmp eq i32 %3340, 2
  %3342 = zext i1 %3341 to i8
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3342, i8* %3343, align 1
  store %struct.Memory* %loadMem_41f0de, %struct.Memory** %MEMORY
  %loadMem_41f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 7
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %EDX.i604 = bitcast %union.anon* %3349 to i32*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 9
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RSI.i605 = bitcast %union.anon* %3352 to i64*
  %3353 = load i32, i32* %EDX.i604
  %3354 = zext i32 %3353 to i64
  %3355 = load i64, i64* %PC.i603
  %3356 = add i64 %3355, 3
  store i64 %3356, i64* %PC.i603
  %3357 = shl i64 %3354, 32
  %3358 = ashr exact i64 %3357, 32
  store i64 %3358, i64* %RSI.i605, align 8
  store %struct.Memory* %loadMem_41f0e1, %struct.Memory** %MEMORY
  %loadMem_41f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 9
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RSI.i602 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RSI.i602
  %3366 = load i64, i64* %PC.i601
  %3367 = add i64 %3366, 4
  store i64 %3367, i64* %PC.i601
  %3368 = sext i64 %3365 to i128
  %3369 = and i128 %3368, -18446744073709551616
  %3370 = zext i64 %3365 to i128
  %3371 = or i128 %3369, %3370
  %3372 = mul i128 24, %3371
  %3373 = trunc i128 %3372 to i64
  store i64 %3373, i64* %RSI.i602, align 8
  %3374 = sext i64 %3373 to i128
  %3375 = icmp ne i128 %3374, %3372
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3376, i8* %3377, align 1
  %3378 = trunc i128 %3372 to i32
  %3379 = and i32 %3378, 255
  %3380 = call i32 @llvm.ctpop.i32(i32 %3379)
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  %3383 = xor i8 %3382, 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3383, i8* %3384, align 1
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3385, align 1
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3386, align 1
  %3387 = lshr i64 %3373, 63
  %3388 = trunc i64 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3388, i8* %3389, align 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3376, i8* %3390, align 1
  store %struct.Memory* %loadMem_41f0e4, %struct.Memory** %MEMORY
  %loadMem_41f0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 33
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 1
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 9
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %3399 to i64*
  %3400 = load i64, i64* %RAX.i599
  %3401 = load i64, i64* %RSI.i600
  %3402 = load i64, i64* %PC.i598
  %3403 = add i64 %3402, 3
  store i64 %3403, i64* %PC.i598
  %3404 = add i64 %3401, %3400
  store i64 %3404, i64* %RAX.i599, align 8
  %3405 = icmp ult i64 %3404, %3400
  %3406 = icmp ult i64 %3404, %3401
  %3407 = or i1 %3405, %3406
  %3408 = zext i1 %3407 to i8
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3408, i8* %3409, align 1
  %3410 = trunc i64 %3404 to i32
  %3411 = and i32 %3410, 255
  %3412 = call i32 @llvm.ctpop.i32(i32 %3411)
  %3413 = trunc i32 %3412 to i8
  %3414 = and i8 %3413, 1
  %3415 = xor i8 %3414, 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3415, i8* %3416, align 1
  %3417 = xor i64 %3401, %3400
  %3418 = xor i64 %3417, %3404
  %3419 = lshr i64 %3418, 4
  %3420 = trunc i64 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3421, i8* %3422, align 1
  %3423 = icmp eq i64 %3404, 0
  %3424 = zext i1 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3424, i8* %3425, align 1
  %3426 = lshr i64 %3404, 63
  %3427 = trunc i64 %3426 to i8
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3427, i8* %3428, align 1
  %3429 = lshr i64 %3400, 63
  %3430 = lshr i64 %3401, 63
  %3431 = xor i64 %3426, %3429
  %3432 = xor i64 %3426, %3430
  %3433 = add i64 %3431, %3432
  %3434 = icmp eq i64 %3433, 2
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3435, i8* %3436, align 1
  store %struct.Memory* %loadMem_41f0e8, %struct.Memory** %MEMORY
  %loadMem_41f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 1
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 7
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RAX.i596
  %3447 = add i64 %3446, 4
  %3448 = load i64, i64* %PC.i595
  %3449 = add i64 %3448, 3
  store i64 %3449, i64* %PC.i595
  %3450 = inttoptr i64 %3447 to i32*
  %3451 = load i32, i32* %3450
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RDX.i597, align 8
  store %struct.Memory* %loadMem_41f0eb, %struct.Memory** %MEMORY
  %loadMem_41f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 7
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RDX.i594 = bitcast %union.anon* %3458 to i64*
  %3459 = load i64, i64* %RDX.i594
  %3460 = load i64, i64* %PC.i593
  %3461 = add i64 %3460, 3
  store i64 %3461, i64* %PC.i593
  %3462 = trunc i64 %3459 to i32
  %3463 = add i32 1, %3462
  %3464 = zext i32 %3463 to i64
  store i64 %3464, i64* %RDX.i594, align 8
  %3465 = icmp ult i32 %3463, %3462
  %3466 = icmp ult i32 %3463, 1
  %3467 = or i1 %3465, %3466
  %3468 = zext i1 %3467 to i8
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3468, i8* %3469, align 1
  %3470 = and i32 %3463, 255
  %3471 = call i32 @llvm.ctpop.i32(i32 %3470)
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = xor i8 %3473, 1
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3474, i8* %3475, align 1
  %3476 = xor i64 1, %3459
  %3477 = trunc i64 %3476 to i32
  %3478 = xor i32 %3477, %3463
  %3479 = lshr i32 %3478, 4
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3481, i8* %3482, align 1
  %3483 = icmp eq i32 %3463, 0
  %3484 = zext i1 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3484, i8* %3485, align 1
  %3486 = lshr i32 %3463, 31
  %3487 = trunc i32 %3486 to i8
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3487, i8* %3488, align 1
  %3489 = lshr i32 %3462, 31
  %3490 = xor i32 %3486, %3489
  %3491 = add i32 %3490, %3486
  %3492 = icmp eq i32 %3491, 2
  %3493 = zext i1 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3493, i8* %3494, align 1
  store %struct.Memory* %loadMem_41f0ee, %struct.Memory** %MEMORY
  %loadMem_41f0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 33
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 7
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %EDX.i591 = bitcast %union.anon* %3500 to i32*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3502 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3501, i64 0, i64 1
  %YMM1.i592 = bitcast %union.VectorReg* %3502 to %"class.std::bitset"*
  %3503 = bitcast %"class.std::bitset"* %YMM1.i592 to i8*
  %3504 = load i32, i32* %EDX.i591
  %3505 = zext i32 %3504 to i64
  %3506 = load i64, i64* %PC.i590
  %3507 = add i64 %3506, 4
  store i64 %3507, i64* %PC.i590
  %3508 = sitofp i32 %3504 to double
  %3509 = bitcast i8* %3503 to double*
  store double %3508, double* %3509, align 1
  store %struct.Memory* %loadMem_41f0f1, %struct.Memory** %MEMORY
  %loadMem_41f0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3513, i64 0, i64 0
  %YMM0.i588 = bitcast %union.VectorReg* %3514 to %"class.std::bitset"*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3515, i64 0, i64 1
  %XMM1.i589 = bitcast %union.VectorReg* %3516 to %union.vec128_t*
  %3517 = bitcast %"class.std::bitset"* %YMM0.i588 to i8*
  %3518 = bitcast %"class.std::bitset"* %YMM0.i588 to i8*
  %3519 = bitcast %union.vec128_t* %XMM1.i589 to i8*
  %3520 = load i64, i64* %PC.i587
  %3521 = add i64 %3520, 4
  store i64 %3521, i64* %PC.i587
  %3522 = bitcast i8* %3518 to double*
  %3523 = load double, double* %3522, align 1
  %3524 = getelementptr inbounds i8, i8* %3518, i64 8
  %3525 = bitcast i8* %3524 to i64*
  %3526 = load i64, i64* %3525, align 1
  %3527 = bitcast i8* %3519 to double*
  %3528 = load double, double* %3527, align 1
  %3529 = fmul double %3523, %3528
  %3530 = bitcast i8* %3517 to double*
  store double %3529, double* %3530, align 1
  %3531 = getelementptr inbounds i8, i8* %3517, i64 8
  %3532 = bitcast i8* %3531 to i64*
  store i64 %3526, i64* %3532, align 1
  store %struct.Memory* %loadMem_41f0f5, %struct.Memory** %MEMORY
  %loadMem_41f0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 33
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 7
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3539, i64 0, i64 0
  %XMM0.i586 = bitcast %union.VectorReg* %3540 to %union.vec128_t*
  %3541 = bitcast %union.vec128_t* %XMM0.i586 to i8*
  %3542 = load i64, i64* %PC.i584
  %3543 = add i64 %3542, 4
  store i64 %3543, i64* %PC.i584
  %3544 = bitcast i8* %3541 to double*
  %3545 = load double, double* %3544, align 1
  %3546 = call double @llvm.trunc.f64(double %3545)
  %3547 = call double @llvm.fabs.f64(double %3546)
  %3548 = fcmp ogt double %3547, 0x41DFFFFFFFC00000
  %3549 = fptosi double %3546 to i32
  %3550 = zext i32 %3549 to i64
  %3551 = select i1 %3548, i64 2147483648, i64 %3550
  store i64 %3551, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_41f0f9, %struct.Memory** %MEMORY
  %loadMem_41f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 7
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %EDX.i582 = bitcast %union.anon* %3557 to i32*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 5
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RCX.i583
  %3562 = load i32, i32* %EDX.i582
  %3563 = zext i32 %3562 to i64
  %3564 = load i64, i64* %PC.i581
  %3565 = add i64 %3564, 2
  store i64 %3565, i64* %PC.i581
  %3566 = trunc i64 %3561 to i32
  %3567 = add i32 %3562, %3566
  %3568 = zext i32 %3567 to i64
  store i64 %3568, i64* %RCX.i583, align 8
  %3569 = icmp ult i32 %3567, %3566
  %3570 = icmp ult i32 %3567, %3562
  %3571 = or i1 %3569, %3570
  %3572 = zext i1 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3572, i8* %3573, align 1
  %3574 = and i32 %3567, 255
  %3575 = call i32 @llvm.ctpop.i32(i32 %3574)
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  %3578 = xor i8 %3577, 1
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3578, i8* %3579, align 1
  %3580 = xor i64 %3563, %3561
  %3581 = trunc i64 %3580 to i32
  %3582 = xor i32 %3581, %3567
  %3583 = lshr i32 %3582, 4
  %3584 = trunc i32 %3583 to i8
  %3585 = and i8 %3584, 1
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3585, i8* %3586, align 1
  %3587 = icmp eq i32 %3567, 0
  %3588 = zext i1 %3587 to i8
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3588, i8* %3589, align 1
  %3590 = lshr i32 %3567, 31
  %3591 = trunc i32 %3590 to i8
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3591, i8* %3592, align 1
  %3593 = lshr i32 %3566, 31
  %3594 = lshr i32 %3562, 31
  %3595 = xor i32 %3590, %3593
  %3596 = xor i32 %3590, %3594
  %3597 = add i32 %3595, %3596
  %3598 = icmp eq i32 %3597, 2
  %3599 = zext i1 %3598 to i8
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3599, i8* %3600, align 1
  store %struct.Memory* %loadMem_41f0fd, %struct.Memory** %MEMORY
  %loadMem_41f0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 5
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RCX.i580
  %3608 = load i64, i64* %PC.i579
  %3609 = add i64 %3608, 2
  store i64 %3609, i64* %PC.i579
  %3610 = trunc i64 %3607 to i32
  %3611 = shl i32 %3610, 1
  %3612 = icmp slt i32 %3610, 0
  %3613 = icmp slt i32 %3611, 0
  %3614 = xor i1 %3612, %3613
  %3615 = zext i32 %3611 to i64
  store i64 %3615, i64* %RCX.i580, align 8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3617 = zext i1 %3612 to i8
  store i8 %3617, i8* %3616, align 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3619 = and i32 %3611, 254
  %3620 = call i32 @llvm.ctpop.i32(i32 %3619)
  %3621 = trunc i32 %3620 to i8
  %3622 = and i8 %3621, 1
  %3623 = xor i8 %3622, 1
  store i8 %3623, i8* %3618, align 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3624, align 1
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3626 = icmp eq i32 %3611, 0
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %3625, align 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3629 = lshr i32 %3611, 31
  %3630 = trunc i32 %3629 to i8
  store i8 %3630, i8* %3628, align 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3632 = zext i1 %3614 to i8
  store i8 %3632, i8* %3631, align 1
  store %struct.Memory* %loadMem_41f0ff, %struct.Memory** %MEMORY
  %loadMem_41f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 1
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %3638 to i64*
  %3639 = load i64, i64* %PC.i577
  %3640 = add i64 %3639, 8
  store i64 %3640, i64* %PC.i577
  %3641 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3641, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_41f102, %struct.Memory** %MEMORY
  %loadMem_41f10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 33
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 5
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %ECX.i575 = bitcast %union.anon* %3647 to i32*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 1
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3650 to i64*
  %3651 = load i64, i64* %RAX.i576
  %3652 = add i64 %3651, 72448
  %3653 = load i32, i32* %ECX.i575
  %3654 = zext i32 %3653 to i64
  %3655 = load i64, i64* %PC.i574
  %3656 = add i64 %3655, 6
  store i64 %3656, i64* %PC.i574
  %3657 = inttoptr i64 %3652 to i32*
  store i32 %3653, i32* %3657
  store %struct.Memory* %loadMem_41f10a, %struct.Memory** %MEMORY
  br label %block_.L_41f110

block_.L_41f110:                                  ; preds = %block_.L_41f093, %routine_idivl_0x4c8__rsi_.exit700
  %loadMem_41f110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 1
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %PC.i572
  %3665 = add i64 %3664, 8
  store i64 %3665, i64* %PC.i572
  %3666 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3666, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_41f110, %struct.Memory** %MEMORY
  %loadMem_41f118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RAX.i571
  %3674 = add i64 %3673, 71908
  %3675 = load i64, i64* %PC.i570
  %3676 = add i64 %3675, 7
  store i64 %3676, i64* %PC.i570
  %3677 = inttoptr i64 %3674 to i32*
  %3678 = load i32, i32* %3677
  %3679 = sub i32 %3678, 1
  %3680 = icmp ult i32 %3678, 1
  %3681 = zext i1 %3680 to i8
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3681, i8* %3682, align 1
  %3683 = and i32 %3679, 255
  %3684 = call i32 @llvm.ctpop.i32(i32 %3683)
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = xor i8 %3686, 1
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3687, i8* %3688, align 1
  %3689 = xor i32 %3678, 1
  %3690 = xor i32 %3689, %3679
  %3691 = lshr i32 %3690, 4
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3693, i8* %3694, align 1
  %3695 = icmp eq i32 %3679, 0
  %3696 = zext i1 %3695 to i8
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3696, i8* %3697, align 1
  %3698 = lshr i32 %3679, 31
  %3699 = trunc i32 %3698 to i8
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3699, i8* %3700, align 1
  %3701 = lshr i32 %3678, 31
  %3702 = xor i32 %3698, %3701
  %3703 = add i32 %3702, %3701
  %3704 = icmp eq i32 %3703, 2
  %3705 = zext i1 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3705, i8* %3706, align 1
  store %struct.Memory* %loadMem_41f118, %struct.Memory** %MEMORY
  %loadMem_41f11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3709 to i64*
  %3710 = load i64, i64* %PC.i569
  %3711 = add i64 %3710, 87
  %3712 = load i64, i64* %PC.i569
  %3713 = add i64 %3712, 6
  %3714 = load i64, i64* %PC.i569
  %3715 = add i64 %3714, 6
  store i64 %3715, i64* %PC.i569
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3717 = load i8, i8* %3716, align 1
  %3718 = icmp eq i8 %3717, 0
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %BRANCH_TAKEN, align 1
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3721 = select i1 %3718, i64 %3711, i64 %3713
  store i64 %3721, i64* %3720, align 8
  store %struct.Memory* %loadMem_41f11f, %struct.Memory** %MEMORY
  %loadBr_41f11f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f11f = icmp eq i8 %loadBr_41f11f, 1
  br i1 %cmpBr_41f11f, label %block_.L_41f176, label %block_41f125

block_41f125:                                     ; preds = %block_.L_41f110
  %loadMem_41f125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 1
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %3727 to i64*
  %3728 = load i64, i64* %PC.i567
  %3729 = add i64 %3728, 8
  store i64 %3729, i64* %PC.i567
  %3730 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3730, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_41f125, %struct.Memory** %MEMORY
  %loadMem_41f12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 1
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 5
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %RAX.i565
  %3741 = add i64 %3740, 72448
  %3742 = load i64, i64* %PC.i564
  %3743 = add i64 %3742, 6
  store i64 %3743, i64* %PC.i564
  %3744 = inttoptr i64 %3741 to i32*
  %3745 = load i32, i32* %3744
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %RCX.i566, align 8
  store %struct.Memory* %loadMem_41f12d, %struct.Memory** %MEMORY
  %loadMem_41f133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 33
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 7
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %RDX.i563 = bitcast %union.anon* %3752 to i64*
  %3753 = load i64, i64* %PC.i562
  %3754 = add i64 %3753, 7
  store i64 %3754, i64* %PC.i562
  %3755 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %3756 = zext i32 %3755 to i64
  store i64 %3756, i64* %RDX.i563, align 8
  store %struct.Memory* %loadMem_41f133, %struct.Memory** %MEMORY
  %loadMem_41f13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 1
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %PC.i560
  %3764 = add i64 %3763, 8
  store i64 %3764, i64* %PC.i560
  %3765 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3765, i64* %RAX.i561, align 8
  store %struct.Memory* %loadMem_41f13a, %struct.Memory** %MEMORY
  %loadMem_41f142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 1
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 9
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RSI.i559 = bitcast %union.anon* %3774 to i64*
  %3775 = load i64, i64* %RAX.i558
  %3776 = load i64, i64* %PC.i557
  %3777 = add i64 %3776, 2
  store i64 %3777, i64* %PC.i557
  %3778 = inttoptr i64 %3775 to i32*
  %3779 = load i32, i32* %3778
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RSI.i559, align 8
  store %struct.Memory* %loadMem_41f142, %struct.Memory** %MEMORY
  %loadMem_41f144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 9
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RSI.i556 = bitcast %union.anon* %3786 to i64*
  %3787 = load i64, i64* %RSI.i556
  %3788 = load i64, i64* %PC.i555
  %3789 = add i64 %3788, 7
  store i64 %3789, i64* %PC.i555
  %3790 = trunc i64 %3787 to i32
  %3791 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %3792 = sub i32 %3790, %3791
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RSI.i556, align 8
  %3794 = icmp ult i32 %3790, %3791
  %3795 = zext i1 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3795, i8* %3796, align 1
  %3797 = and i32 %3792, 255
  %3798 = call i32 @llvm.ctpop.i32(i32 %3797)
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3801, i8* %3802, align 1
  %3803 = xor i32 %3791, %3790
  %3804 = xor i32 %3803, %3792
  %3805 = lshr i32 %3804, 4
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3807, i8* %3808, align 1
  %3809 = icmp eq i32 %3792, 0
  %3810 = zext i1 %3809 to i8
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3810, i8* %3811, align 1
  %3812 = lshr i32 %3792, 31
  %3813 = trunc i32 %3812 to i8
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3813, i8* %3814, align 1
  %3815 = lshr i32 %3790, 31
  %3816 = lshr i32 %3791, 31
  %3817 = xor i32 %3816, %3815
  %3818 = xor i32 %3812, %3815
  %3819 = add i32 %3818, %3817
  %3820 = icmp eq i32 %3819, 2
  %3821 = zext i1 %3820 to i8
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3821, i8* %3822, align 1
  store %struct.Memory* %loadMem_41f144, %struct.Memory** %MEMORY
  %loadMem_41f14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 33
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 1
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %PC.i553
  %3830 = add i64 %3829, 8
  store i64 %3830, i64* %PC.i553
  %3831 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3831, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_41f14b, %struct.Memory** %MEMORY
  %loadMem_41f153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 1
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 11
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RDI.i552 = bitcast %union.anon* %3840 to i64*
  %3841 = load i64, i64* %RAX.i551
  %3842 = add i64 %3841, 20
  %3843 = load i64, i64* %PC.i550
  %3844 = add i64 %3843, 3
  store i64 %3844, i64* %PC.i550
  %3845 = inttoptr i64 %3842 to i32*
  %3846 = load i32, i32* %3845
  %3847 = zext i32 %3846 to i64
  store i64 %3847, i64* %RDI.i552, align 8
  store %struct.Memory* %loadMem_41f153, %struct.Memory** %MEMORY
  %loadMem_41f156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 11
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RDI.i549 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %RDI.i549
  %3855 = load i64, i64* %PC.i548
  %3856 = add i64 %3855, 3
  store i64 %3856, i64* %PC.i548
  %3857 = trunc i64 %3854 to i32
  %3858 = add i32 1, %3857
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RDI.i549, align 8
  %3860 = icmp ult i32 %3858, %3857
  %3861 = icmp ult i32 %3858, 1
  %3862 = or i1 %3860, %3861
  %3863 = zext i1 %3862 to i8
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3863, i8* %3864, align 1
  %3865 = and i32 %3858, 255
  %3866 = call i32 @llvm.ctpop.i32(i32 %3865)
  %3867 = trunc i32 %3866 to i8
  %3868 = and i8 %3867, 1
  %3869 = xor i8 %3868, 1
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3869, i8* %3870, align 1
  %3871 = xor i64 1, %3854
  %3872 = trunc i64 %3871 to i32
  %3873 = xor i32 %3872, %3858
  %3874 = lshr i32 %3873, 4
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3876, i8* %3877, align 1
  %3878 = icmp eq i32 %3858, 0
  %3879 = zext i1 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3879, i8* %3880, align 1
  %3881 = lshr i32 %3858, 31
  %3882 = trunc i32 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3882, i8* %3883, align 1
  %3884 = lshr i32 %3857, 31
  %3885 = xor i32 %3881, %3884
  %3886 = add i32 %3885, %3881
  %3887 = icmp eq i32 %3886, 2
  %3888 = zext i1 %3887 to i8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3888, i8* %3889, align 1
  store %struct.Memory* %loadMem_41f156, %struct.Memory** %MEMORY
  %loadMem_41f159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 11
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %EDI.i546 = bitcast %union.anon* %3895 to i32*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 9
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RSI.i547 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RSI.i547
  %3900 = load i32, i32* %EDI.i546
  %3901 = zext i32 %3900 to i64
  %3902 = load i64, i64* %PC.i545
  %3903 = add i64 %3902, 3
  store i64 %3903, i64* %PC.i545
  %3904 = shl i64 %3899, 32
  %3905 = ashr exact i64 %3904, 32
  %3906 = shl i64 %3901, 32
  %3907 = ashr exact i64 %3906, 32
  %3908 = mul i64 %3907, %3905
  %3909 = trunc i64 %3908 to i32
  %3910 = and i64 %3908, 4294967295
  store i64 %3910, i64* %RSI.i547, align 8
  %3911 = shl i64 %3908, 32
  %3912 = ashr exact i64 %3911, 32
  %3913 = icmp ne i64 %3912, %3908
  %3914 = zext i1 %3913 to i8
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3914, i8* %3915, align 1
  %3916 = and i32 %3909, 255
  %3917 = call i32 @llvm.ctpop.i32(i32 %3916)
  %3918 = trunc i32 %3917 to i8
  %3919 = and i8 %3918, 1
  %3920 = xor i8 %3919, 1
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3920, i8* %3921, align 1
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3922, align 1
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3923, align 1
  %3924 = lshr i32 %3909, 31
  %3925 = trunc i32 %3924 to i8
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3925, i8* %3926, align 1
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3914, i8* %3927, align 1
  store %struct.Memory* %loadMem_41f159, %struct.Memory** %MEMORY
  %loadMem_41f15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 9
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %ESI.i543 = bitcast %union.anon* %3933 to i32*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 7
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RDX.i544 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %RDX.i544
  %3938 = load i32, i32* %ESI.i543
  %3939 = zext i32 %3938 to i64
  %3940 = load i64, i64* %PC.i542
  %3941 = add i64 %3940, 2
  store i64 %3941, i64* %PC.i542
  %3942 = trunc i64 %3937 to i32
  %3943 = add i32 %3938, %3942
  %3944 = zext i32 %3943 to i64
  store i64 %3944, i64* %RDX.i544, align 8
  %3945 = icmp ult i32 %3943, %3942
  %3946 = icmp ult i32 %3943, %3938
  %3947 = or i1 %3945, %3946
  %3948 = zext i1 %3947 to i8
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3948, i8* %3949, align 1
  %3950 = and i32 %3943, 255
  %3951 = call i32 @llvm.ctpop.i32(i32 %3950)
  %3952 = trunc i32 %3951 to i8
  %3953 = and i8 %3952, 1
  %3954 = xor i8 %3953, 1
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3954, i8* %3955, align 1
  %3956 = xor i64 %3939, %3937
  %3957 = trunc i64 %3956 to i32
  %3958 = xor i32 %3957, %3943
  %3959 = lshr i32 %3958, 4
  %3960 = trunc i32 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3961, i8* %3962, align 1
  %3963 = icmp eq i32 %3943, 0
  %3964 = zext i1 %3963 to i8
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3964, i8* %3965, align 1
  %3966 = lshr i32 %3943, 31
  %3967 = trunc i32 %3966 to i8
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3967, i8* %3968, align 1
  %3969 = lshr i32 %3942, 31
  %3970 = lshr i32 %3938, 31
  %3971 = xor i32 %3966, %3969
  %3972 = xor i32 %3966, %3970
  %3973 = add i32 %3971, %3972
  %3974 = icmp eq i32 %3973, 2
  %3975 = zext i1 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3975, i8* %3976, align 1
  store %struct.Memory* %loadMem_41f15c, %struct.Memory** %MEMORY
  %loadMem_41f15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 7
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RDX.i541 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RDX.i541
  %3984 = load i64, i64* %PC.i540
  %3985 = add i64 %3984, 2
  store i64 %3985, i64* %PC.i540
  %3986 = trunc i64 %3983 to i32
  %3987 = shl i32 %3986, 1
  %3988 = icmp slt i32 %3986, 0
  %3989 = icmp slt i32 %3987, 0
  %3990 = xor i1 %3988, %3989
  %3991 = zext i32 %3987 to i64
  store i64 %3991, i64* %RDX.i541, align 8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3993 = zext i1 %3988 to i8
  store i8 %3993, i8* %3992, align 1
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3995 = and i32 %3987, 254
  %3996 = call i32 @llvm.ctpop.i32(i32 %3995)
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  %3999 = xor i8 %3998, 1
  store i8 %3999, i8* %3994, align 1
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4000, align 1
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4002 = icmp eq i32 %3987, 0
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %4001, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4005 = lshr i32 %3987, 31
  %4006 = trunc i32 %4005 to i8
  store i8 %4006, i8* %4004, align 1
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4008 = zext i1 %3990 to i8
  store i8 %4008, i8* %4007, align 1
  store %struct.Memory* %loadMem_41f15e, %struct.Memory** %MEMORY
  %loadMem_41f161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 7
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %EDX.i538 = bitcast %union.anon* %4014 to i32*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 5
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %4017 to i64*
  %4018 = load i64, i64* %RCX.i539
  %4019 = load i32, i32* %EDX.i538
  %4020 = zext i32 %4019 to i64
  %4021 = load i64, i64* %PC.i537
  %4022 = add i64 %4021, 2
  store i64 %4022, i64* %PC.i537
  %4023 = trunc i64 %4018 to i32
  %4024 = sub i32 %4023, %4019
  %4025 = zext i32 %4024 to i64
  store i64 %4025, i64* %RCX.i539, align 8
  %4026 = icmp ult i32 %4023, %4019
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4027, i8* %4028, align 1
  %4029 = and i32 %4024, 255
  %4030 = call i32 @llvm.ctpop.i32(i32 %4029)
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4033, i8* %4034, align 1
  %4035 = xor i64 %4020, %4018
  %4036 = trunc i64 %4035 to i32
  %4037 = xor i32 %4036, %4024
  %4038 = lshr i32 %4037, 4
  %4039 = trunc i32 %4038 to i8
  %4040 = and i8 %4039, 1
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4040, i8* %4041, align 1
  %4042 = icmp eq i32 %4024, 0
  %4043 = zext i1 %4042 to i8
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4043, i8* %4044, align 1
  %4045 = lshr i32 %4024, 31
  %4046 = trunc i32 %4045 to i8
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4046, i8* %4047, align 1
  %4048 = lshr i32 %4023, 31
  %4049 = lshr i32 %4019, 31
  %4050 = xor i32 %4049, %4048
  %4051 = xor i32 %4045, %4048
  %4052 = add i32 %4051, %4050
  %4053 = icmp eq i32 %4052, 2
  %4054 = zext i1 %4053 to i8
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4054, i8* %4055, align 1
  store %struct.Memory* %loadMem_41f161, %struct.Memory** %MEMORY
  %loadMem_41f163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 33
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 1
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %PC.i535
  %4063 = add i64 %4062, 8
  store i64 %4063, i64* %PC.i535
  %4064 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4064, i64* %RAX.i536, align 8
  store %struct.Memory* %loadMem_41f163, %struct.Memory** %MEMORY
  %loadMem_41f16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 33
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %4067 to i64*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 5
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %ECX.i533 = bitcast %union.anon* %4070 to i32*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 1
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RAX.i534
  %4075 = add i64 %4074, 72436
  %4076 = load i32, i32* %ECX.i533
  %4077 = zext i32 %4076 to i64
  %4078 = load i64, i64* %PC.i532
  %4079 = add i64 %4078, 6
  store i64 %4079, i64* %PC.i532
  %4080 = inttoptr i64 %4075 to i32*
  store i32 %4076, i32* %4080
  store %struct.Memory* %loadMem_41f16b, %struct.Memory** %MEMORY
  %loadMem_41f171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 33
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %4083 to i64*
  %4084 = load i64, i64* %PC.i531
  %4085 = add i64 %4084, 164
  %4086 = load i64, i64* %PC.i531
  %4087 = add i64 %4086, 5
  store i64 %4087, i64* %PC.i531
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4085, i64* %4088, align 8
  store %struct.Memory* %loadMem_41f171, %struct.Memory** %MEMORY
  br label %block_.L_41f215

block_.L_41f176:                                  ; preds = %block_.L_41f110
  %loadMem_41f176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4093 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4092, i64 0, i64 0
  %YMM0.i530 = bitcast %union.VectorReg* %4093 to %"class.std::bitset"*
  %4094 = bitcast %"class.std::bitset"* %YMM0.i530 to i8*
  %4095 = load i64, i64* %PC.i529
  %4096 = add i64 %4095, ptrtoint (%G_0x926ca__rip__type* @G_0x926ca__rip_ to i64)
  %4097 = load i64, i64* %PC.i529
  %4098 = add i64 %4097, 8
  store i64 %4098, i64* %PC.i529
  %4099 = inttoptr i64 %4096 to double*
  %4100 = load double, double* %4099
  %4101 = bitcast i8* %4094 to double*
  store double %4100, double* %4101, align 1
  %4102 = getelementptr inbounds i8, i8* %4094, i64 8
  %4103 = bitcast i8* %4102 to double*
  store double 0.000000e+00, double* %4103, align 1
  store %struct.Memory* %loadMem_41f176, %struct.Memory** %MEMORY
  %loadMem_41f17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 1
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %PC.i527
  %4111 = add i64 %4110, 8
  store i64 %4111, i64* %PC.i527
  %4112 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4112, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_41f17e, %struct.Memory** %MEMORY
  %loadMem_41f186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 1
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 5
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RAX.i525
  %4123 = add i64 %4122, 72448
  %4124 = load i64, i64* %PC.i524
  %4125 = add i64 %4124, 6
  store i64 %4125, i64* %PC.i524
  %4126 = inttoptr i64 %4123 to i32*
  %4127 = load i32, i32* %4126
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_41f186, %struct.Memory** %MEMORY
  %loadMem_41f18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 33
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 7
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %RDX.i523 = bitcast %union.anon* %4134 to i64*
  %4135 = load i64, i64* %PC.i522
  %4136 = add i64 %4135, 7
  store i64 %4136, i64* %PC.i522
  %4137 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %4138 = zext i32 %4137 to i64
  store i64 %4138, i64* %RDX.i523, align 8
  store %struct.Memory* %loadMem_41f18c, %struct.Memory** %MEMORY
  %loadMem_41f193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 1
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %PC.i520
  %4146 = add i64 %4145, 8
  store i64 %4146, i64* %PC.i520
  %4147 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4147, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_41f193, %struct.Memory** %MEMORY
  %loadMem_41f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 1
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 9
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RSI.i519 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %RAX.i518
  %4158 = load i64, i64* %PC.i517
  %4159 = add i64 %4158, 2
  store i64 %4159, i64* %PC.i517
  %4160 = inttoptr i64 %4157 to i32*
  %4161 = load i32, i32* %4160
  %4162 = zext i32 %4161 to i64
  store i64 %4162, i64* %RSI.i519, align 8
  store %struct.Memory* %loadMem_41f19b, %struct.Memory** %MEMORY
  %loadMem_41f19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 9
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RSI.i516 = bitcast %union.anon* %4168 to i64*
  %4169 = load i64, i64* %RSI.i516
  %4170 = load i64, i64* %PC.i515
  %4171 = add i64 %4170, 7
  store i64 %4171, i64* %PC.i515
  %4172 = trunc i64 %4169 to i32
  %4173 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %4174 = sub i32 %4172, %4173
  %4175 = zext i32 %4174 to i64
  store i64 %4175, i64* %RSI.i516, align 8
  %4176 = icmp ult i32 %4172, %4173
  %4177 = zext i1 %4176 to i8
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4177, i8* %4178, align 1
  %4179 = and i32 %4174, 255
  %4180 = call i32 @llvm.ctpop.i32(i32 %4179)
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  %4183 = xor i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4183, i8* %4184, align 1
  %4185 = xor i32 %4173, %4172
  %4186 = xor i32 %4185, %4174
  %4187 = lshr i32 %4186, 4
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4189, i8* %4190, align 1
  %4191 = icmp eq i32 %4174, 0
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4192, i8* %4193, align 1
  %4194 = lshr i32 %4174, 31
  %4195 = trunc i32 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4195, i8* %4196, align 1
  %4197 = lshr i32 %4172, 31
  %4198 = lshr i32 %4173, 31
  %4199 = xor i32 %4198, %4197
  %4200 = xor i32 %4194, %4197
  %4201 = add i32 %4200, %4199
  %4202 = icmp eq i32 %4201, 2
  %4203 = zext i1 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4203, i8* %4204, align 1
  store %struct.Memory* %loadMem_41f19d, %struct.Memory** %MEMORY
  %loadMem_41f1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 33
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 9
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RSI.i514 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RSI.i514
  %4212 = load i64, i64* %PC.i513
  %4213 = add i64 %4212, 3
  store i64 %4213, i64* %PC.i513
  %4214 = trunc i64 %4211 to i32
  %4215 = sub i32 %4214, 1
  %4216 = zext i32 %4215 to i64
  store i64 %4216, i64* %RSI.i514, align 8
  %4217 = icmp ult i32 %4214, 1
  %4218 = zext i1 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4218, i8* %4219, align 1
  %4220 = and i32 %4215, 255
  %4221 = call i32 @llvm.ctpop.i32(i32 %4220)
  %4222 = trunc i32 %4221 to i8
  %4223 = and i8 %4222, 1
  %4224 = xor i8 %4223, 1
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4224, i8* %4225, align 1
  %4226 = xor i64 1, %4211
  %4227 = trunc i64 %4226 to i32
  %4228 = xor i32 %4227, %4215
  %4229 = lshr i32 %4228, 4
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4231, i8* %4232, align 1
  %4233 = icmp eq i32 %4215, 0
  %4234 = zext i1 %4233 to i8
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4234, i8* %4235, align 1
  %4236 = lshr i32 %4215, 31
  %4237 = trunc i32 %4236 to i8
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4237, i8* %4238, align 1
  %4239 = lshr i32 %4214, 31
  %4240 = xor i32 %4236, %4239
  %4241 = add i32 %4240, %4239
  %4242 = icmp eq i32 %4241, 2
  %4243 = zext i1 %4242 to i8
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4243, i8* %4244, align 1
  store %struct.Memory* %loadMem_41f1a4, %struct.Memory** %MEMORY
  %loadMem_41f1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 1
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %PC.i511
  %4252 = add i64 %4251, 8
  store i64 %4252, i64* %PC.i511
  %4253 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4253, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_41f1a7, %struct.Memory** %MEMORY
  %loadMem_41f1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 1
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 11
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %RDI.i510 = bitcast %union.anon* %4262 to i64*
  %4263 = load i64, i64* %RAX.i509
  %4264 = add i64 %4263, 20
  %4265 = load i64, i64* %PC.i508
  %4266 = add i64 %4265, 3
  store i64 %4266, i64* %PC.i508
  %4267 = inttoptr i64 %4264 to i32*
  %4268 = load i32, i32* %4267
  %4269 = zext i32 %4268 to i64
  store i64 %4269, i64* %RDI.i510, align 8
  store %struct.Memory* %loadMem_41f1af, %struct.Memory** %MEMORY
  %loadMem_41f1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 11
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RDI.i507 = bitcast %union.anon* %4275 to i64*
  %4276 = load i64, i64* %RDI.i507
  %4277 = load i64, i64* %PC.i506
  %4278 = add i64 %4277, 3
  store i64 %4278, i64* %PC.i506
  %4279 = trunc i64 %4276 to i32
  %4280 = add i32 1, %4279
  %4281 = zext i32 %4280 to i64
  store i64 %4281, i64* %RDI.i507, align 8
  %4282 = icmp ult i32 %4280, %4279
  %4283 = icmp ult i32 %4280, 1
  %4284 = or i1 %4282, %4283
  %4285 = zext i1 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4285, i8* %4286, align 1
  %4287 = and i32 %4280, 255
  %4288 = call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4291, i8* %4292, align 1
  %4293 = xor i64 1, %4276
  %4294 = trunc i64 %4293 to i32
  %4295 = xor i32 %4294, %4280
  %4296 = lshr i32 %4295, 4
  %4297 = trunc i32 %4296 to i8
  %4298 = and i8 %4297, 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4298, i8* %4299, align 1
  %4300 = icmp eq i32 %4280, 0
  %4301 = zext i1 %4300 to i8
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4301, i8* %4302, align 1
  %4303 = lshr i32 %4280, 31
  %4304 = trunc i32 %4303 to i8
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4304, i8* %4305, align 1
  %4306 = lshr i32 %4279, 31
  %4307 = xor i32 %4303, %4306
  %4308 = add i32 %4307, %4303
  %4309 = icmp eq i32 %4308, 2
  %4310 = zext i1 %4309 to i8
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4310, i8* %4311, align 1
  store %struct.Memory* %loadMem_41f1b2, %struct.Memory** %MEMORY
  %loadMem_41f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 11
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %EDI.i504 = bitcast %union.anon* %4317 to i32*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 9
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RSI.i505 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RSI.i505
  %4322 = load i32, i32* %EDI.i504
  %4323 = zext i32 %4322 to i64
  %4324 = load i64, i64* %PC.i503
  %4325 = add i64 %4324, 3
  store i64 %4325, i64* %PC.i503
  %4326 = shl i64 %4321, 32
  %4327 = ashr exact i64 %4326, 32
  %4328 = shl i64 %4323, 32
  %4329 = ashr exact i64 %4328, 32
  %4330 = mul i64 %4329, %4327
  %4331 = trunc i64 %4330 to i32
  %4332 = and i64 %4330, 4294967295
  store i64 %4332, i64* %RSI.i505, align 8
  %4333 = shl i64 %4330, 32
  %4334 = ashr exact i64 %4333, 32
  %4335 = icmp ne i64 %4334, %4330
  %4336 = zext i1 %4335 to i8
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4336, i8* %4337, align 1
  %4338 = and i32 %4331, 255
  %4339 = call i32 @llvm.ctpop.i32(i32 %4338)
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = xor i8 %4341, 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4342, i8* %4343, align 1
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4344, align 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4345, align 1
  %4346 = lshr i32 %4331, 31
  %4347 = trunc i32 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4347, i8* %4348, align 1
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4336, i8* %4349, align 1
  store %struct.Memory* %loadMem_41f1b5, %struct.Memory** %MEMORY
  %loadMem_41f1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 9
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %ESI.i501 = bitcast %union.anon* %4355 to i32*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 7
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RDX.i502 = bitcast %union.anon* %4358 to i64*
  %4359 = load i64, i64* %RDX.i502
  %4360 = load i32, i32* %ESI.i501
  %4361 = zext i32 %4360 to i64
  %4362 = load i64, i64* %PC.i500
  %4363 = add i64 %4362, 2
  store i64 %4363, i64* %PC.i500
  %4364 = trunc i64 %4359 to i32
  %4365 = add i32 %4360, %4364
  %4366 = zext i32 %4365 to i64
  store i64 %4366, i64* %RDX.i502, align 8
  %4367 = icmp ult i32 %4365, %4364
  %4368 = icmp ult i32 %4365, %4360
  %4369 = or i1 %4367, %4368
  %4370 = zext i1 %4369 to i8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4370, i8* %4371, align 1
  %4372 = and i32 %4365, 255
  %4373 = call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4376, i8* %4377, align 1
  %4378 = xor i64 %4361, %4359
  %4379 = trunc i64 %4378 to i32
  %4380 = xor i32 %4379, %4365
  %4381 = lshr i32 %4380, 4
  %4382 = trunc i32 %4381 to i8
  %4383 = and i8 %4382, 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4383, i8* %4384, align 1
  %4385 = icmp eq i32 %4365, 0
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4386, i8* %4387, align 1
  %4388 = lshr i32 %4365, 31
  %4389 = trunc i32 %4388 to i8
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4389, i8* %4390, align 1
  %4391 = lshr i32 %4364, 31
  %4392 = lshr i32 %4360, 31
  %4393 = xor i32 %4388, %4391
  %4394 = xor i32 %4388, %4392
  %4395 = add i32 %4393, %4394
  %4396 = icmp eq i32 %4395, 2
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4397, i8* %4398, align 1
  store %struct.Memory* %loadMem_41f1b8, %struct.Memory** %MEMORY
  %loadMem_41f1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 1
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %PC.i498
  %4406 = add i64 %4405, 8
  store i64 %4406, i64* %PC.i498
  %4407 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4407, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_41f1ba, %struct.Memory** %MEMORY
  %loadMem_41f1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 1
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4414, i64 0, i64 0
  %YMM0.i497 = bitcast %union.VectorReg* %4415 to %"class.std::bitset"*
  %4416 = bitcast %"class.std::bitset"* %YMM0.i497 to i8*
  %4417 = bitcast %"class.std::bitset"* %YMM0.i497 to i8*
  %4418 = load i64, i64* %RAX.i496
  %4419 = add i64 %4418, 71896
  %4420 = load i64, i64* %PC.i495
  %4421 = add i64 %4420, 8
  store i64 %4421, i64* %PC.i495
  %4422 = bitcast i8* %4417 to double*
  %4423 = load double, double* %4422, align 1
  %4424 = getelementptr inbounds i8, i8* %4417, i64 8
  %4425 = bitcast i8* %4424 to i64*
  %4426 = load i64, i64* %4425, align 1
  %4427 = inttoptr i64 %4419 to double*
  %4428 = load double, double* %4427
  %4429 = fmul double %4423, %4428
  %4430 = bitcast i8* %4416 to double*
  store double %4429, double* %4430, align 1
  %4431 = getelementptr inbounds i8, i8* %4416, i64 8
  %4432 = bitcast i8* %4431 to i64*
  store i64 %4426, i64* %4432, align 1
  store %struct.Memory* %loadMem_41f1c2, %struct.Memory** %MEMORY
  %loadMem_41f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 1
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %PC.i493
  %4440 = add i64 %4439, 8
  store i64 %4440, i64* %PC.i493
  %4441 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %4441, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_41f1ca, %struct.Memory** %MEMORY
  %loadMem_41f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 17
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %R8.i492 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %PC.i491
  %4449 = add i64 %4448, 8
  store i64 %4449, i64* %PC.i491
  %4450 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4450, i64* %R8.i492, align 8
  store %struct.Memory* %loadMem_41f1d2, %struct.Memory** %MEMORY
  %loadMem_41f1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 33
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 9
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RSI.i489 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 17
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %R8.i490 = bitcast %union.anon* %4459 to i64*
  %4460 = load i64, i64* %R8.i490
  %4461 = add i64 %4460, 71908
  %4462 = load i64, i64* %PC.i488
  %4463 = add i64 %4462, 7
  store i64 %4463, i64* %PC.i488
  %4464 = inttoptr i64 %4461 to i32*
  %4465 = load i32, i32* %4464
  %4466 = zext i32 %4465 to i64
  store i64 %4466, i64* %RSI.i489, align 8
  store %struct.Memory* %loadMem_41f1da, %struct.Memory** %MEMORY
  %loadMem_41f1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 9
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RSI.i487 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RSI.i487
  %4474 = load i64, i64* %PC.i486
  %4475 = add i64 %4474, 3
  store i64 %4475, i64* %PC.i486
  %4476 = trunc i64 %4473 to i32
  %4477 = sub i32 %4476, 2
  %4478 = zext i32 %4477 to i64
  store i64 %4478, i64* %RSI.i487, align 8
  %4479 = icmp ult i32 %4476, 2
  %4480 = zext i1 %4479 to i8
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4480, i8* %4481, align 1
  %4482 = and i32 %4477, 255
  %4483 = call i32 @llvm.ctpop.i32(i32 %4482)
  %4484 = trunc i32 %4483 to i8
  %4485 = and i8 %4484, 1
  %4486 = xor i8 %4485, 1
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4486, i8* %4487, align 1
  %4488 = xor i64 2, %4473
  %4489 = trunc i64 %4488 to i32
  %4490 = xor i32 %4489, %4477
  %4491 = lshr i32 %4490, 4
  %4492 = trunc i32 %4491 to i8
  %4493 = and i8 %4492, 1
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4493, i8* %4494, align 1
  %4495 = icmp eq i32 %4477, 0
  %4496 = zext i1 %4495 to i8
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4496, i8* %4497, align 1
  %4498 = lshr i32 %4477, 31
  %4499 = trunc i32 %4498 to i8
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4499, i8* %4500, align 1
  %4501 = lshr i32 %4476, 31
  %4502 = xor i32 %4498, %4501
  %4503 = add i32 %4502, %4501
  %4504 = icmp eq i32 %4503, 2
  %4505 = zext i1 %4504 to i8
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4505, i8* %4506, align 1
  store %struct.Memory* %loadMem_41f1e1, %struct.Memory** %MEMORY
  %loadMem_41f1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 9
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %ESI.i484 = bitcast %union.anon* %4512 to i32*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 17
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %R8.i485 = bitcast %union.anon* %4515 to i64*
  %4516 = load i32, i32* %ESI.i484
  %4517 = zext i32 %4516 to i64
  %4518 = load i64, i64* %PC.i483
  %4519 = add i64 %4518, 3
  store i64 %4519, i64* %PC.i483
  %4520 = shl i64 %4517, 32
  %4521 = ashr exact i64 %4520, 32
  store i64 %4521, i64* %R8.i485, align 8
  store %struct.Memory* %loadMem_41f1e4, %struct.Memory** %MEMORY
  %loadMem_41f1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 17
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %R8.i482 = bitcast %union.anon* %4527 to i64*
  %4528 = load i64, i64* %R8.i482
  %4529 = load i64, i64* %PC.i481
  %4530 = add i64 %4529, 4
  store i64 %4530, i64* %PC.i481
  %4531 = sext i64 %4528 to i128
  %4532 = and i128 %4531, -18446744073709551616
  %4533 = zext i64 %4528 to i128
  %4534 = or i128 %4532, %4533
  %4535 = mul i128 24, %4534
  %4536 = trunc i128 %4535 to i64
  store i64 %4536, i64* %R8.i482, align 8
  %4537 = sext i64 %4536 to i128
  %4538 = icmp ne i128 %4537, %4535
  %4539 = zext i1 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4539, i8* %4540, align 1
  %4541 = trunc i128 %4535 to i32
  %4542 = and i32 %4541, 255
  %4543 = call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4546, i8* %4547, align 1
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4548, align 1
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4549, align 1
  %4550 = lshr i64 %4536, 63
  %4551 = trunc i64 %4550 to i8
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4551, i8* %4552, align 1
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4539, i8* %4553, align 1
  store %struct.Memory* %loadMem_41f1e7, %struct.Memory** %MEMORY
  %loadMem_41f1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 1
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 17
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RAX.i480
  %4564 = load i64, i64* %R8.i
  %4565 = load i64, i64* %PC.i479
  %4566 = add i64 %4565, 3
  store i64 %4566, i64* %PC.i479
  %4567 = add i64 %4564, %4563
  store i64 %4567, i64* %RAX.i480, align 8
  %4568 = icmp ult i64 %4567, %4563
  %4569 = icmp ult i64 %4567, %4564
  %4570 = or i1 %4568, %4569
  %4571 = zext i1 %4570 to i8
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4571, i8* %4572, align 1
  %4573 = trunc i64 %4567 to i32
  %4574 = and i32 %4573, 255
  %4575 = call i32 @llvm.ctpop.i32(i32 %4574)
  %4576 = trunc i32 %4575 to i8
  %4577 = and i8 %4576, 1
  %4578 = xor i8 %4577, 1
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4578, i8* %4579, align 1
  %4580 = xor i64 %4564, %4563
  %4581 = xor i64 %4580, %4567
  %4582 = lshr i64 %4581, 4
  %4583 = trunc i64 %4582 to i8
  %4584 = and i8 %4583, 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4584, i8* %4585, align 1
  %4586 = icmp eq i64 %4567, 0
  %4587 = zext i1 %4586 to i8
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4587, i8* %4588, align 1
  %4589 = lshr i64 %4567, 63
  %4590 = trunc i64 %4589 to i8
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4590, i8* %4591, align 1
  %4592 = lshr i64 %4563, 63
  %4593 = lshr i64 %4564, 63
  %4594 = xor i64 %4589, %4592
  %4595 = xor i64 %4589, %4593
  %4596 = add i64 %4594, %4595
  %4597 = icmp eq i64 %4596, 2
  %4598 = zext i1 %4597 to i8
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4598, i8* %4599, align 1
  store %struct.Memory* %loadMem_41f1eb, %struct.Memory** %MEMORY
  %loadMem_41f1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 1
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 9
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RSI.i478 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RAX.i477
  %4610 = add i64 %4609, 4
  %4611 = load i64, i64* %PC.i476
  %4612 = add i64 %4611, 3
  store i64 %4612, i64* %PC.i476
  %4613 = inttoptr i64 %4610 to i32*
  %4614 = load i32, i32* %4613
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RSI.i478, align 8
  store %struct.Memory* %loadMem_41f1ee, %struct.Memory** %MEMORY
  %loadMem_41f1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 9
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RSI.i475 = bitcast %union.anon* %4621 to i64*
  %4622 = load i64, i64* %RSI.i475
  %4623 = load i64, i64* %PC.i474
  %4624 = add i64 %4623, 3
  store i64 %4624, i64* %PC.i474
  %4625 = trunc i64 %4622 to i32
  %4626 = add i32 1, %4625
  %4627 = zext i32 %4626 to i64
  store i64 %4627, i64* %RSI.i475, align 8
  %4628 = icmp ult i32 %4626, %4625
  %4629 = icmp ult i32 %4626, 1
  %4630 = or i1 %4628, %4629
  %4631 = zext i1 %4630 to i8
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4631, i8* %4632, align 1
  %4633 = and i32 %4626, 255
  %4634 = call i32 @llvm.ctpop.i32(i32 %4633)
  %4635 = trunc i32 %4634 to i8
  %4636 = and i8 %4635, 1
  %4637 = xor i8 %4636, 1
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4637, i8* %4638, align 1
  %4639 = xor i64 1, %4622
  %4640 = trunc i64 %4639 to i32
  %4641 = xor i32 %4640, %4626
  %4642 = lshr i32 %4641, 4
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4644, i8* %4645, align 1
  %4646 = icmp eq i32 %4626, 0
  %4647 = zext i1 %4646 to i8
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4647, i8* %4648, align 1
  %4649 = lshr i32 %4626, 31
  %4650 = trunc i32 %4649 to i8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4650, i8* %4651, align 1
  %4652 = lshr i32 %4625, 31
  %4653 = xor i32 %4649, %4652
  %4654 = add i32 %4653, %4649
  %4655 = icmp eq i32 %4654, 2
  %4656 = zext i1 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4656, i8* %4657, align 1
  store %struct.Memory* %loadMem_41f1f1, %struct.Memory** %MEMORY
  %loadMem_41f1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 9
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %ESI.i472 = bitcast %union.anon* %4663 to i32*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4664, i64 0, i64 1
  %YMM1.i473 = bitcast %union.VectorReg* %4665 to %"class.std::bitset"*
  %4666 = bitcast %"class.std::bitset"* %YMM1.i473 to i8*
  %4667 = load i32, i32* %ESI.i472
  %4668 = zext i32 %4667 to i64
  %4669 = load i64, i64* %PC.i471
  %4670 = add i64 %4669, 4
  store i64 %4670, i64* %PC.i471
  %4671 = sitofp i32 %4667 to double
  %4672 = bitcast i8* %4666 to double*
  store double %4671, double* %4672, align 1
  store %struct.Memory* %loadMem_41f1f4, %struct.Memory** %MEMORY
  %loadMem_41f1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4677 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4676, i64 0, i64 0
  %YMM0.i469 = bitcast %union.VectorReg* %4677 to %"class.std::bitset"*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4678, i64 0, i64 1
  %XMM1.i470 = bitcast %union.VectorReg* %4679 to %union.vec128_t*
  %4680 = bitcast %"class.std::bitset"* %YMM0.i469 to i8*
  %4681 = bitcast %"class.std::bitset"* %YMM0.i469 to i8*
  %4682 = bitcast %union.vec128_t* %XMM1.i470 to i8*
  %4683 = load i64, i64* %PC.i468
  %4684 = add i64 %4683, 4
  store i64 %4684, i64* %PC.i468
  %4685 = bitcast i8* %4681 to double*
  %4686 = load double, double* %4685, align 1
  %4687 = getelementptr inbounds i8, i8* %4681, i64 8
  %4688 = bitcast i8* %4687 to i64*
  %4689 = load i64, i64* %4688, align 1
  %4690 = bitcast i8* %4682 to double*
  %4691 = load double, double* %4690, align 1
  %4692 = fmul double %4686, %4691
  %4693 = bitcast i8* %4680 to double*
  store double %4692, double* %4693, align 1
  %4694 = getelementptr inbounds i8, i8* %4680, i64 8
  %4695 = bitcast i8* %4694 to i64*
  store i64 %4689, i64* %4695, align 1
  store %struct.Memory* %loadMem_41f1f8, %struct.Memory** %MEMORY
  %loadMem_41f1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 9
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RSI.i466 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4702, i64 0, i64 0
  %XMM0.i467 = bitcast %union.VectorReg* %4703 to %union.vec128_t*
  %4704 = bitcast %union.vec128_t* %XMM0.i467 to i8*
  %4705 = load i64, i64* %PC.i465
  %4706 = add i64 %4705, 4
  store i64 %4706, i64* %PC.i465
  %4707 = bitcast i8* %4704 to double*
  %4708 = load double, double* %4707, align 1
  %4709 = call double @llvm.trunc.f64(double %4708)
  %4710 = call double @llvm.fabs.f64(double %4709)
  %4711 = fcmp ogt double %4710, 0x41DFFFFFFFC00000
  %4712 = fptosi double %4709 to i32
  %4713 = zext i32 %4712 to i64
  %4714 = select i1 %4711, i64 2147483648, i64 %4713
  store i64 %4714, i64* %RSI.i466, align 8
  store %struct.Memory* %loadMem_41f1fc, %struct.Memory** %MEMORY
  %loadMem_41f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 9
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4720 to i32*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 7
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RDX.i464
  %4725 = load i32, i32* %ESI.i
  %4726 = zext i32 %4725 to i64
  %4727 = load i64, i64* %PC.i463
  %4728 = add i64 %4727, 2
  store i64 %4728, i64* %PC.i463
  %4729 = trunc i64 %4724 to i32
  %4730 = add i32 %4725, %4729
  %4731 = zext i32 %4730 to i64
  store i64 %4731, i64* %RDX.i464, align 8
  %4732 = icmp ult i32 %4730, %4729
  %4733 = icmp ult i32 %4730, %4725
  %4734 = or i1 %4732, %4733
  %4735 = zext i1 %4734 to i8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4735, i8* %4736, align 1
  %4737 = and i32 %4730, 255
  %4738 = call i32 @llvm.ctpop.i32(i32 %4737)
  %4739 = trunc i32 %4738 to i8
  %4740 = and i8 %4739, 1
  %4741 = xor i8 %4740, 1
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4741, i8* %4742, align 1
  %4743 = xor i64 %4726, %4724
  %4744 = trunc i64 %4743 to i32
  %4745 = xor i32 %4744, %4730
  %4746 = lshr i32 %4745, 4
  %4747 = trunc i32 %4746 to i8
  %4748 = and i8 %4747, 1
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4748, i8* %4749, align 1
  %4750 = icmp eq i32 %4730, 0
  %4751 = zext i1 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4751, i8* %4752, align 1
  %4753 = lshr i32 %4730, 31
  %4754 = trunc i32 %4753 to i8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4754, i8* %4755, align 1
  %4756 = lshr i32 %4729, 31
  %4757 = lshr i32 %4725, 31
  %4758 = xor i32 %4753, %4756
  %4759 = xor i32 %4753, %4757
  %4760 = add i32 %4758, %4759
  %4761 = icmp eq i32 %4760, 2
  %4762 = zext i1 %4761 to i8
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4762, i8* %4763, align 1
  store %struct.Memory* %loadMem_41f200, %struct.Memory** %MEMORY
  %loadMem_41f202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 7
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %4769 to i64*
  %4770 = load i64, i64* %RDX.i462
  %4771 = load i64, i64* %PC.i461
  %4772 = add i64 %4771, 2
  store i64 %4772, i64* %PC.i461
  %4773 = trunc i64 %4770 to i32
  %4774 = shl i32 %4773, 1
  %4775 = icmp slt i32 %4773, 0
  %4776 = icmp slt i32 %4774, 0
  %4777 = xor i1 %4775, %4776
  %4778 = zext i32 %4774 to i64
  store i64 %4778, i64* %RDX.i462, align 8
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4780 = zext i1 %4775 to i8
  store i8 %4780, i8* %4779, align 1
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4782 = and i32 %4774, 254
  %4783 = call i32 @llvm.ctpop.i32(i32 %4782)
  %4784 = trunc i32 %4783 to i8
  %4785 = and i8 %4784, 1
  %4786 = xor i8 %4785, 1
  store i8 %4786, i8* %4781, align 1
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4787, align 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4789 = icmp eq i32 %4774, 0
  %4790 = zext i1 %4789 to i8
  store i8 %4790, i8* %4788, align 1
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4792 = lshr i32 %4774, 31
  %4793 = trunc i32 %4792 to i8
  store i8 %4793, i8* %4791, align 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4795 = zext i1 %4777 to i8
  store i8 %4795, i8* %4794, align 1
  store %struct.Memory* %loadMem_41f202, %struct.Memory** %MEMORY
  %loadMem_41f205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 33
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 7
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %EDX.i459 = bitcast %union.anon* %4801 to i32*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 5
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %4804 to i64*
  %4805 = load i64, i64* %RCX.i460
  %4806 = load i32, i32* %EDX.i459
  %4807 = zext i32 %4806 to i64
  %4808 = load i64, i64* %PC.i458
  %4809 = add i64 %4808, 2
  store i64 %4809, i64* %PC.i458
  %4810 = trunc i64 %4805 to i32
  %4811 = sub i32 %4810, %4806
  %4812 = zext i32 %4811 to i64
  store i64 %4812, i64* %RCX.i460, align 8
  %4813 = icmp ult i32 %4810, %4806
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4814, i8* %4815, align 1
  %4816 = and i32 %4811, 255
  %4817 = call i32 @llvm.ctpop.i32(i32 %4816)
  %4818 = trunc i32 %4817 to i8
  %4819 = and i8 %4818, 1
  %4820 = xor i8 %4819, 1
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4820, i8* %4821, align 1
  %4822 = xor i64 %4807, %4805
  %4823 = trunc i64 %4822 to i32
  %4824 = xor i32 %4823, %4811
  %4825 = lshr i32 %4824, 4
  %4826 = trunc i32 %4825 to i8
  %4827 = and i8 %4826, 1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4827, i8* %4828, align 1
  %4829 = icmp eq i32 %4811, 0
  %4830 = zext i1 %4829 to i8
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4830, i8* %4831, align 1
  %4832 = lshr i32 %4811, 31
  %4833 = trunc i32 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4833, i8* %4834, align 1
  %4835 = lshr i32 %4810, 31
  %4836 = lshr i32 %4806, 31
  %4837 = xor i32 %4836, %4835
  %4838 = xor i32 %4832, %4835
  %4839 = add i32 %4838, %4837
  %4840 = icmp eq i32 %4839, 2
  %4841 = zext i1 %4840 to i8
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4841, i8* %4842, align 1
  store %struct.Memory* %loadMem_41f205, %struct.Memory** %MEMORY
  %loadMem_41f207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 33
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4845 to i64*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 1
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %4848 to i64*
  %4849 = load i64, i64* %PC.i456
  %4850 = add i64 %4849, 8
  store i64 %4850, i64* %PC.i456
  %4851 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4851, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_41f207, %struct.Memory** %MEMORY
  %loadMem_41f20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 5
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %ECX.i454 = bitcast %union.anon* %4857 to i32*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 1
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %4860 to i64*
  %4861 = load i64, i64* %RAX.i455
  %4862 = add i64 %4861, 72436
  %4863 = load i32, i32* %ECX.i454
  %4864 = zext i32 %4863 to i64
  %4865 = load i64, i64* %PC.i453
  %4866 = add i64 %4865, 6
  store i64 %4866, i64* %PC.i453
  %4867 = inttoptr i64 %4862 to i32*
  store i32 %4863, i32* %4867
  store %struct.Memory* %loadMem_41f20f, %struct.Memory** %MEMORY
  br label %block_.L_41f215

block_.L_41f215:                                  ; preds = %block_.L_41f176, %block_41f125
  %loadMem_41f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 33
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4870 to i64*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 1
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %4873 to i64*
  %4874 = load i64, i64* %PC.i451
  %4875 = add i64 %4874, 8
  store i64 %4875, i64* %PC.i451
  %4876 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4876, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_41f215, %struct.Memory** %MEMORY
  %loadMem_41f21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 1
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %RAX.i450
  %4884 = add i64 %4883, 2880
  %4885 = load i64, i64* %PC.i449
  %4886 = add i64 %4885, 7
  store i64 %4886, i64* %PC.i449
  %4887 = inttoptr i64 %4884 to i32*
  %4888 = load i32, i32* %4887
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4889, align 1
  %4890 = and i32 %4888, 255
  %4891 = call i32 @llvm.ctpop.i32(i32 %4890)
  %4892 = trunc i32 %4891 to i8
  %4893 = and i8 %4892, 1
  %4894 = xor i8 %4893, 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4894, i8* %4895, align 1
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4896, align 1
  %4897 = icmp eq i32 %4888, 0
  %4898 = zext i1 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4898, i8* %4899, align 1
  %4900 = lshr i32 %4888, 31
  %4901 = trunc i32 %4900 to i8
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4901, i8* %4902, align 1
  %4903 = lshr i32 %4888, 31
  %4904 = xor i32 %4900, %4903
  %4905 = add i32 %4904, %4903
  %4906 = icmp eq i32 %4905, 2
  %4907 = zext i1 %4906 to i8
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4907, i8* %4908, align 1
  store %struct.Memory* %loadMem_41f21d, %struct.Memory** %MEMORY
  %loadMem_41f224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 33
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4911 to i64*
  %4912 = load i64, i64* %PC.i448
  %4913 = add i64 %4912, 60
  %4914 = load i64, i64* %PC.i448
  %4915 = add i64 %4914, 6
  %4916 = load i64, i64* %PC.i448
  %4917 = add i64 %4916, 6
  store i64 %4917, i64* %PC.i448
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4919 = load i8, i8* %4918, align 1
  %4920 = icmp eq i8 %4919, 0
  %4921 = zext i1 %4920 to i8
  store i8 %4921, i8* %BRANCH_TAKEN, align 1
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4923 = select i1 %4920, i64 %4913, i64 %4915
  store i64 %4923, i64* %4922, align 8
  store %struct.Memory* %loadMem_41f224, %struct.Memory** %MEMORY
  %loadBr_41f224 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f224 = icmp eq i8 %loadBr_41f224, 1
  br i1 %cmpBr_41f224, label %block_.L_41f260, label %block_41f22a

block_41f22a:                                     ; preds = %block_.L_41f215
  %loadMem_41f22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 33
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4926 to i64*
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 1
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %4929 to i64*
  %4930 = load i64, i64* %PC.i446
  %4931 = add i64 %4930, 8
  store i64 %4931, i64* %PC.i446
  %4932 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4932, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_41f22a, %struct.Memory** %MEMORY
  %loadMem_41f232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 33
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 1
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %4938 to i64*
  %4939 = load i64, i64* %RAX.i445
  %4940 = add i64 %4939, 2884
  %4941 = load i64, i64* %PC.i444
  %4942 = add i64 %4941, 7
  store i64 %4942, i64* %PC.i444
  %4943 = inttoptr i64 %4940 to i32*
  %4944 = load i32, i32* %4943
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4945, align 1
  %4946 = and i32 %4944, 255
  %4947 = call i32 @llvm.ctpop.i32(i32 %4946)
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  %4950 = xor i8 %4949, 1
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4950, i8* %4951, align 1
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4952, align 1
  %4953 = icmp eq i32 %4944, 0
  %4954 = zext i1 %4953 to i8
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4954, i8* %4955, align 1
  %4956 = lshr i32 %4944, 31
  %4957 = trunc i32 %4956 to i8
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4957, i8* %4958, align 1
  %4959 = lshr i32 %4944, 31
  %4960 = xor i32 %4956, %4959
  %4961 = add i32 %4960, %4959
  %4962 = icmp eq i32 %4961, 2
  %4963 = zext i1 %4962 to i8
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4963, i8* %4964, align 1
  store %struct.Memory* %loadMem_41f232, %struct.Memory** %MEMORY
  %loadMem_41f239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 33
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4967 to i64*
  %4968 = load i64, i64* %PC.i443
  %4969 = add i64 %4968, 39
  %4970 = load i64, i64* %PC.i443
  %4971 = add i64 %4970, 6
  %4972 = load i64, i64* %PC.i443
  %4973 = add i64 %4972, 6
  store i64 %4973, i64* %PC.i443
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4975 = load i8, i8* %4974, align 1
  %4976 = icmp eq i8 %4975, 0
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %BRANCH_TAKEN, align 1
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4979 = select i1 %4976, i64 %4969, i64 %4971
  store i64 %4979, i64* %4978, align 8
  store %struct.Memory* %loadMem_41f239, %struct.Memory** %MEMORY
  %loadBr_41f239 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f239 = icmp eq i8 %loadBr_41f239, 1
  br i1 %cmpBr_41f239, label %block_.L_41f260, label %block_41f23f

block_41f23f:                                     ; preds = %block_41f22a
  %loadMem_41f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 1
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4985 to i64*
  %4986 = load i64, i64* %PC.i441
  %4987 = add i64 %4986, 8
  store i64 %4987, i64* %PC.i441
  %4988 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4988, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_41f23f, %struct.Memory** %MEMORY
  %loadMem_41f247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 33
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 1
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 5
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %4997 to i64*
  %4998 = load i64, i64* %RAX.i439
  %4999 = add i64 %4998, 72448
  %5000 = load i64, i64* %PC.i438
  %5001 = add i64 %5000, 6
  store i64 %5001, i64* %PC.i438
  %5002 = inttoptr i64 %4999 to i32*
  %5003 = load i32, i32* %5002
  %5004 = zext i32 %5003 to i64
  store i64 %5004, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_41f247, %struct.Memory** %MEMORY
  %loadMem_41f24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 33
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 1
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %5010 to i64*
  %5011 = load i64, i64* %PC.i436
  %5012 = add i64 %5011, 8
  store i64 %5012, i64* %PC.i436
  %5013 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5013, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_41f24d, %struct.Memory** %MEMORY
  %loadMem_41f255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 33
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 5
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %ECX.i434 = bitcast %union.anon* %5019 to i32*
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 1
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %5022 to i64*
  %5023 = load i64, i64* %RAX.i435
  %5024 = add i64 %5023, 72452
  %5025 = load i32, i32* %ECX.i434
  %5026 = zext i32 %5025 to i64
  %5027 = load i64, i64* %PC.i433
  %5028 = add i64 %5027, 6
  store i64 %5028, i64* %PC.i433
  %5029 = inttoptr i64 %5024 to i32*
  store i32 %5025, i32* %5029
  store %struct.Memory* %loadMem_41f255, %struct.Memory** %MEMORY
  %loadMem_41f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 33
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %PC.i432
  %5034 = add i64 %5033, 36
  %5035 = load i64, i64* %PC.i432
  %5036 = add i64 %5035, 5
  store i64 %5036, i64* %PC.i432
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5034, i64* %5037, align 8
  store %struct.Memory* %loadMem_41f25b, %struct.Memory** %MEMORY
  br label %block_.L_41f27f

block_.L_41f260:                                  ; preds = %block_41f22a, %block_.L_41f215
  %loadMem_41f260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 1
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %5043 to i64*
  %5044 = load i64, i64* %PC.i430
  %5045 = add i64 %5044, 8
  store i64 %5045, i64* %PC.i430
  %5046 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5046, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_41f260, %struct.Memory** %MEMORY
  %loadMem_41f268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 33
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 1
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %5052 to i64*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 5
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %5055 to i64*
  %5056 = load i64, i64* %RAX.i428
  %5057 = add i64 %5056, 72448
  %5058 = load i64, i64* %PC.i427
  %5059 = add i64 %5058, 6
  store i64 %5059, i64* %PC.i427
  %5060 = inttoptr i64 %5057 to i32*
  %5061 = load i32, i32* %5060
  %5062 = zext i32 %5061 to i64
  store i64 %5062, i64* %RCX.i429, align 8
  store %struct.Memory* %loadMem_41f268, %struct.Memory** %MEMORY
  %loadMem_41f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 5
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %5068 to i64*
  %5069 = load i64, i64* %RCX.i426
  %5070 = load i64, i64* %PC.i425
  %5071 = add i64 %5070, 3
  store i64 %5071, i64* %PC.i425
  %5072 = trunc i64 %5069 to i32
  %5073 = add i32 1, %5072
  %5074 = zext i32 %5073 to i64
  store i64 %5074, i64* %RCX.i426, align 8
  %5075 = icmp ult i32 %5073, %5072
  %5076 = icmp ult i32 %5073, 1
  %5077 = or i1 %5075, %5076
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5078, i8* %5079, align 1
  %5080 = and i32 %5073, 255
  %5081 = call i32 @llvm.ctpop.i32(i32 %5080)
  %5082 = trunc i32 %5081 to i8
  %5083 = and i8 %5082, 1
  %5084 = xor i8 %5083, 1
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5084, i8* %5085, align 1
  %5086 = xor i64 1, %5069
  %5087 = trunc i64 %5086 to i32
  %5088 = xor i32 %5087, %5073
  %5089 = lshr i32 %5088, 4
  %5090 = trunc i32 %5089 to i8
  %5091 = and i8 %5090, 1
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5091, i8* %5092, align 1
  %5093 = icmp eq i32 %5073, 0
  %5094 = zext i1 %5093 to i8
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5094, i8* %5095, align 1
  %5096 = lshr i32 %5073, 31
  %5097 = trunc i32 %5096 to i8
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5097, i8* %5098, align 1
  %5099 = lshr i32 %5072, 31
  %5100 = xor i32 %5096, %5099
  %5101 = add i32 %5100, %5096
  %5102 = icmp eq i32 %5101, 2
  %5103 = zext i1 %5102 to i8
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5103, i8* %5104, align 1
  store %struct.Memory* %loadMem_41f26e, %struct.Memory** %MEMORY
  %loadMem_41f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 1
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %PC.i423
  %5112 = add i64 %5111, 8
  store i64 %5112, i64* %PC.i423
  %5113 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5113, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_41f271, %struct.Memory** %MEMORY
  %loadMem_41f279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 33
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 5
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %ECX.i421 = bitcast %union.anon* %5119 to i32*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 1
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %5122 to i64*
  %5123 = load i64, i64* %RAX.i422
  %5124 = add i64 %5123, 72452
  %5125 = load i32, i32* %ECX.i421
  %5126 = zext i32 %5125 to i64
  %5127 = load i64, i64* %PC.i420
  %5128 = add i64 %5127, 6
  store i64 %5128, i64* %PC.i420
  %5129 = inttoptr i64 %5124 to i32*
  store i32 %5125, i32* %5129
  store %struct.Memory* %loadMem_41f279, %struct.Memory** %MEMORY
  br label %block_.L_41f27f

block_.L_41f27f:                                  ; preds = %block_.L_41f260, %block_41f23f
  %loadMem_41f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 33
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 1
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %PC.i418
  %5137 = add i64 %5136, 8
  store i64 %5137, i64* %PC.i418
  %5138 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5138, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_41f27f, %struct.Memory** %MEMORY
  %loadMem_41f287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 1
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %5144 to i64*
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 5
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %5147 to i64*
  %5148 = load i64, i64* %RAX.i416
  %5149 = add i64 %5148, 72448
  %5150 = load i64, i64* %PC.i415
  %5151 = add i64 %5150, 6
  store i64 %5151, i64* %PC.i415
  %5152 = inttoptr i64 %5149 to i32*
  %5153 = load i32, i32* %5152
  %5154 = zext i32 %5153 to i64
  store i64 %5154, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_41f287, %struct.Memory** %MEMORY
  %loadMem_41f28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 33
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5157 to i64*
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 1
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %5160 to i64*
  %5161 = load i64, i64* %PC.i413
  %5162 = add i64 %5161, 8
  store i64 %5162, i64* %PC.i413
  %5163 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5163, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_41f28d, %struct.Memory** %MEMORY
  %loadMem_41f295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 33
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 5
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %ECX.i411 = bitcast %union.anon* %5169 to i32*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 1
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %5172 to i64*
  %5173 = load i32, i32* %ECX.i411
  %5174 = zext i32 %5173 to i64
  %5175 = load i64, i64* %RAX.i412
  %5176 = add i64 %5175, 72452
  %5177 = load i64, i64* %PC.i410
  %5178 = add i64 %5177, 6
  store i64 %5178, i64* %PC.i410
  %5179 = inttoptr i64 %5176 to i32*
  %5180 = load i32, i32* %5179
  %5181 = sub i32 %5173, %5180
  %5182 = icmp ult i32 %5173, %5180
  %5183 = zext i1 %5182 to i8
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5183, i8* %5184, align 1
  %5185 = and i32 %5181, 255
  %5186 = call i32 @llvm.ctpop.i32(i32 %5185)
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = xor i8 %5188, 1
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5189, i8* %5190, align 1
  %5191 = xor i32 %5180, %5173
  %5192 = xor i32 %5191, %5181
  %5193 = lshr i32 %5192, 4
  %5194 = trunc i32 %5193 to i8
  %5195 = and i8 %5194, 1
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5195, i8* %5196, align 1
  %5197 = icmp eq i32 %5181, 0
  %5198 = zext i1 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5198, i8* %5199, align 1
  %5200 = lshr i32 %5181, 31
  %5201 = trunc i32 %5200 to i8
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5201, i8* %5202, align 1
  %5203 = lshr i32 %5173, 31
  %5204 = lshr i32 %5180, 31
  %5205 = xor i32 %5204, %5203
  %5206 = xor i32 %5200, %5203
  %5207 = add i32 %5206, %5205
  %5208 = icmp eq i32 %5207, 2
  %5209 = zext i1 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5209, i8* %5210, align 1
  store %struct.Memory* %loadMem_41f295, %struct.Memory** %MEMORY
  %loadMem_41f29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 33
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5213 to i64*
  %5214 = load i64, i64* %PC.i409
  %5215 = add i64 %5214, 28
  %5216 = load i64, i64* %PC.i409
  %5217 = add i64 %5216, 6
  %5218 = load i64, i64* %PC.i409
  %5219 = add i64 %5218, 6
  store i64 %5219, i64* %PC.i409
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5221 = load i8, i8* %5220, align 1
  %5222 = icmp ne i8 %5221, 0
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5224 = load i8, i8* %5223, align 1
  %5225 = icmp ne i8 %5224, 0
  %5226 = xor i1 %5222, %5225
  %5227 = xor i1 %5226, true
  %5228 = zext i1 %5227 to i8
  store i8 %5228, i8* %BRANCH_TAKEN, align 1
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5230 = select i1 %5226, i64 %5217, i64 %5215
  store i64 %5230, i64* %5229, align 8
  store %struct.Memory* %loadMem_41f29b, %struct.Memory** %MEMORY
  %loadBr_41f29b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f29b = icmp eq i8 %loadBr_41f29b, 1
  br i1 %cmpBr_41f29b, label %block_.L_41f2b7, label %block_41f2a1

block_41f2a1:                                     ; preds = %block_.L_41f27f
  %loadMem_41f2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 1
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %5236 to i64*
  %5237 = load i64, i64* %PC.i407
  %5238 = add i64 %5237, 8
  store i64 %5238, i64* %PC.i407
  %5239 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5239, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_41f2a1, %struct.Memory** %MEMORY
  %loadMem_41f2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 33
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 1
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 5
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %5248 to i64*
  %5249 = load i64, i64* %RAX.i405
  %5250 = add i64 %5249, 72448
  %5251 = load i64, i64* %PC.i404
  %5252 = add i64 %5251, 6
  store i64 %5252, i64* %PC.i404
  %5253 = inttoptr i64 %5250 to i32*
  %5254 = load i32, i32* %5253
  %5255 = zext i32 %5254 to i64
  store i64 %5255, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_41f2a9, %struct.Memory** %MEMORY
  %loadMem_41f2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 5
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %ECX.i402 = bitcast %union.anon* %5261 to i32*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 15
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RBP.i403
  %5266 = sub i64 %5265, 20
  %5267 = load i32, i32* %ECX.i402
  %5268 = zext i32 %5267 to i64
  %5269 = load i64, i64* %PC.i401
  %5270 = add i64 %5269, 3
  store i64 %5270, i64* %PC.i401
  %5271 = inttoptr i64 %5266 to i32*
  store i32 %5267, i32* %5271
  store %struct.Memory* %loadMem_41f2af, %struct.Memory** %MEMORY
  %loadMem_41f2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5274 to i64*
  %5275 = load i64, i64* %PC.i400
  %5276 = add i64 %5275, 22
  %5277 = load i64, i64* %PC.i400
  %5278 = add i64 %5277, 5
  store i64 %5278, i64* %PC.i400
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5276, i64* %5279, align 8
  store %struct.Memory* %loadMem_41f2b2, %struct.Memory** %MEMORY
  br label %block_.L_41f2c8

block_.L_41f2b7:                                  ; preds = %block_.L_41f27f
  %loadMem_41f2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %5282 to i64*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 1
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %5285 to i64*
  %5286 = load i64, i64* %PC.i398
  %5287 = add i64 %5286, 8
  store i64 %5287, i64* %PC.i398
  %5288 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5288, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_41f2b7, %struct.Memory** %MEMORY
  %loadMem_41f2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 1
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %5294 to i64*
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 5
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %5297 to i64*
  %5298 = load i64, i64* %RAX.i396
  %5299 = add i64 %5298, 72452
  %5300 = load i64, i64* %PC.i395
  %5301 = add i64 %5300, 6
  store i64 %5301, i64* %PC.i395
  %5302 = inttoptr i64 %5299 to i32*
  %5303 = load i32, i32* %5302
  %5304 = zext i32 %5303 to i64
  store i64 %5304, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_41f2bf, %struct.Memory** %MEMORY
  %loadMem_41f2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 33
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 5
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %ECX.i393 = bitcast %union.anon* %5310 to i32*
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 15
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %5313 to i64*
  %5314 = load i64, i64* %RBP.i394
  %5315 = sub i64 %5314, 20
  %5316 = load i32, i32* %ECX.i393
  %5317 = zext i32 %5316 to i64
  %5318 = load i64, i64* %PC.i392
  %5319 = add i64 %5318, 3
  store i64 %5319, i64* %PC.i392
  %5320 = inttoptr i64 %5315 to i32*
  store i32 %5316, i32* %5320
  store %struct.Memory* %loadMem_41f2c5, %struct.Memory** %MEMORY
  br label %block_.L_41f2c8

block_.L_41f2c8:                                  ; preds = %block_.L_41f2b7, %block_41f2a1
  %loadMem_41f2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 33
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %5323 to i64*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 1
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 15
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %5329 to i64*
  %5330 = load i64, i64* %RBP.i391
  %5331 = sub i64 %5330, 20
  %5332 = load i64, i64* %PC.i389
  %5333 = add i64 %5332, 3
  store i64 %5333, i64* %PC.i389
  %5334 = inttoptr i64 %5331 to i32*
  %5335 = load i32, i32* %5334
  %5336 = zext i32 %5335 to i64
  store i64 %5336, i64* %RAX.i390, align 8
  store %struct.Memory* %loadMem_41f2c8, %struct.Memory** %MEMORY
  %loadMem_41f2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 5
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %PC.i387
  %5344 = add i64 %5343, 8
  store i64 %5344, i64* %PC.i387
  %5345 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5345, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_41f2cb, %struct.Memory** %MEMORY
  %loadMem_41f2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 33
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %5348 to i64*
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 1
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %5351 to i32*
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 5
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %5354 to i64*
  %5355 = load i64, i64* %RCX.i386
  %5356 = add i64 %5355, 72456
  %5357 = load i32, i32* %EAX.i385
  %5358 = zext i32 %5357 to i64
  %5359 = load i64, i64* %PC.i384
  %5360 = add i64 %5359, 6
  store i64 %5360, i64* %PC.i384
  %5361 = inttoptr i64 %5356 to i32*
  store i32 %5357, i32* %5361
  store %struct.Memory* %loadMem_41f2d3, %struct.Memory** %MEMORY
  %loadMem_41f2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 33
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 5
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %PC.i382
  %5369 = add i64 %5368, 8
  store i64 %5369, i64* %PC.i382
  %5370 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5370, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_41f2d9, %struct.Memory** %MEMORY
  %loadMem_41f2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 33
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 5
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %5376 to i64*
  %5377 = load i64, i64* %RCX.i381
  %5378 = add i64 %5377, 72440
  %5379 = load i64, i64* %PC.i380
  %5380 = add i64 %5379, 10
  store i64 %5380, i64* %PC.i380
  %5381 = inttoptr i64 %5378 to i32*
  store i32 0, i32* %5381
  store %struct.Memory* %loadMem_41f2e1, %struct.Memory** %MEMORY
  %loadMem_41f2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 33
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 1
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %5388 = bitcast %union.anon* %5387 to %struct.anon.2*
  %AL.i379 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5388, i32 0, i32 0
  %5389 = load i64, i64* %PC.i378
  %5390 = add i64 %5389, 2
  store i64 %5390, i64* %PC.i378
  store i8 0, i8* %AL.i379, align 1
  store %struct.Memory* %loadMem_41f2eb, %struct.Memory** %MEMORY
  %loadMem1_41f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 33
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5393 to i64*
  %5394 = load i64, i64* %PC.i377
  %5395 = add i64 %5394, 35379
  %5396 = load i64, i64* %PC.i377
  %5397 = add i64 %5396, 5
  %5398 = load i64, i64* %PC.i377
  %5399 = add i64 %5398, 5
  store i64 %5399, i64* %PC.i377
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5401 = load i64, i64* %5400, align 8
  %5402 = add i64 %5401, -8
  %5403 = inttoptr i64 %5402 to i64*
  store i64 %5397, i64* %5403
  store i64 %5402, i64* %5400, align 8
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5395, i64* %5404, align 8
  store %struct.Memory* %loadMem1_41f2ed, %struct.Memory** %MEMORY
  %loadMem2_41f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f2ed = load i64, i64* %3
  %call2_41f2ed = call %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* %0, i64 %loadPC_41f2ed, %struct.Memory* %loadMem2_41f2ed)
  store %struct.Memory* %call2_41f2ed, %struct.Memory** %MEMORY
  %loadMem_41f2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 33
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5407 to i64*
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 5
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %5410 to i64*
  %5411 = load i64, i64* %PC.i375
  %5412 = add i64 %5411, 8
  store i64 %5412, i64* %PC.i375
  %5413 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5413, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_41f2f2, %struct.Memory** %MEMORY
  %loadMem_41f2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 33
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5416 to i64*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 5
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %5419 to i64*
  %5420 = load i64, i64* %RCX.i374
  %5421 = add i64 %5420, 3228
  %5422 = load i64, i64* %PC.i373
  %5423 = add i64 %5422, 7
  store i64 %5423, i64* %PC.i373
  %5424 = inttoptr i64 %5421 to i32*
  %5425 = load i32, i32* %5424
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5426, align 1
  %5427 = and i32 %5425, 255
  %5428 = call i32 @llvm.ctpop.i32(i32 %5427)
  %5429 = trunc i32 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = xor i8 %5430, 1
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5431, i8* %5432, align 1
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5433, align 1
  %5434 = icmp eq i32 %5425, 0
  %5435 = zext i1 %5434 to i8
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5435, i8* %5436, align 1
  %5437 = lshr i32 %5425, 31
  %5438 = trunc i32 %5437 to i8
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5438, i8* %5439, align 1
  %5440 = lshr i32 %5425, 31
  %5441 = xor i32 %5437, %5440
  %5442 = add i32 %5441, %5440
  %5443 = icmp eq i32 %5442, 2
  %5444 = zext i1 %5443 to i8
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5444, i8* %5445, align 1
  store %struct.Memory* %loadMem_41f2fa, %struct.Memory** %MEMORY
  %loadMem_41f301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 33
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5448 to i64*
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 1
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %5451 to i32*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 15
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %RBP.i372
  %5456 = sub i64 %5455, 24
  %5457 = load i32, i32* %EAX.i371
  %5458 = zext i32 %5457 to i64
  %5459 = load i64, i64* %PC.i370
  %5460 = add i64 %5459, 3
  store i64 %5460, i64* %PC.i370
  %5461 = inttoptr i64 %5456 to i32*
  store i32 %5457, i32* %5461
  store %struct.Memory* %loadMem_41f301, %struct.Memory** %MEMORY
  %loadMem_41f304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5464 to i64*
  %5465 = load i64, i64* %PC.i369
  %5466 = add i64 %5465, 13
  %5467 = load i64, i64* %PC.i369
  %5468 = add i64 %5467, 6
  %5469 = load i64, i64* %PC.i369
  %5470 = add i64 %5469, 6
  store i64 %5470, i64* %PC.i369
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5472 = load i8, i8* %5471, align 1
  store i8 %5472, i8* %BRANCH_TAKEN, align 1
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5474 = icmp ne i8 %5472, 0
  %5475 = select i1 %5474, i64 %5466, i64 %5468
  store i64 %5475, i64* %5473, align 8
  store %struct.Memory* %loadMem_41f304, %struct.Memory** %MEMORY
  %loadBr_41f304 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f304 = icmp eq i8 %loadBr_41f304, 1
  br i1 %cmpBr_41f304, label %block_.L_41f311, label %block_41f30a

block_41f30a:                                     ; preds = %block_.L_41f2c8
  %loadMem_41f30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 33
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5478 to i64*
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 1
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %5482 = bitcast %union.anon* %5481 to %struct.anon.2*
  %AL.i368 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5482, i32 0, i32 0
  %5483 = load i64, i64* %PC.i367
  %5484 = add i64 %5483, 2
  store i64 %5484, i64* %PC.i367
  store i8 0, i8* %AL.i368, align 1
  store %struct.Memory* %loadMem_41f30a, %struct.Memory** %MEMORY
  %loadMem1_41f30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %PC.i366
  %5489 = add i64 %5488, 89268
  %5490 = load i64, i64* %PC.i366
  %5491 = add i64 %5490, 5
  %5492 = load i64, i64* %PC.i366
  %5493 = add i64 %5492, 5
  store i64 %5493, i64* %PC.i366
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5495 = load i64, i64* %5494, align 8
  %5496 = add i64 %5495, -8
  %5497 = inttoptr i64 %5496 to i64*
  store i64 %5491, i64* %5497
  store i64 %5496, i64* %5494, align 8
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5489, i64* %5498, align 8
  store %struct.Memory* %loadMem1_41f30c, %struct.Memory** %MEMORY
  %loadMem2_41f30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f30c = load i64, i64* %3
  %call2_41f30c = call %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* %0, i64 %loadPC_41f30c, %struct.Memory* %loadMem2_41f30c)
  store %struct.Memory* %call2_41f30c, %struct.Memory** %MEMORY
  br label %block_.L_41f311

block_.L_41f311:                                  ; preds = %block_41f30a, %block_.L_41f2c8
  %loadMem_41f311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5501 to i64*
  %5502 = load i64, i64* %PC.i365
  %5503 = add i64 %5502, 5
  %5504 = load i64, i64* %PC.i365
  %5505 = add i64 %5504, 5
  store i64 %5505, i64* %PC.i365
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5503, i64* %5506, align 8
  store %struct.Memory* %loadMem_41f311, %struct.Memory** %MEMORY
  br label %block_.L_41f316

block_.L_41f316:                                  ; preds = %block_.L_41f311
  %loadMem_41f316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 33
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5509 to i64*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 1
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %5512 to i64*
  %5513 = load i64, i64* %PC.i363
  %5514 = add i64 %5513, 8
  store i64 %5514, i64* %PC.i363
  %5515 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5515, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_41f316, %struct.Memory** %MEMORY
  %loadMem_41f31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 33
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 1
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %5521 to i64*
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 5
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %5524 to i64*
  %5525 = load i64, i64* %RAX.i361
  %5526 = add i64 %5525, 71908
  %5527 = load i64, i64* %PC.i360
  %5528 = add i64 %5527, 6
  store i64 %5528, i64* %PC.i360
  %5529 = inttoptr i64 %5526 to i32*
  %5530 = load i32, i32* %5529
  %5531 = zext i32 %5530 to i64
  store i64 %5531, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_41f31e, %struct.Memory** %MEMORY
  %loadMem_41f324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 5
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %5537 to i64*
  %5538 = load i64, i64* %RCX.i359
  %5539 = load i64, i64* %PC.i358
  %5540 = add i64 %5539, 3
  store i64 %5540, i64* %PC.i358
  %5541 = trunc i64 %5538 to i32
  %5542 = add i32 1, %5541
  %5543 = zext i32 %5542 to i64
  store i64 %5543, i64* %RCX.i359, align 8
  %5544 = icmp ult i32 %5542, %5541
  %5545 = icmp ult i32 %5542, 1
  %5546 = or i1 %5544, %5545
  %5547 = zext i1 %5546 to i8
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5547, i8* %5548, align 1
  %5549 = and i32 %5542, 255
  %5550 = call i32 @llvm.ctpop.i32(i32 %5549)
  %5551 = trunc i32 %5550 to i8
  %5552 = and i8 %5551, 1
  %5553 = xor i8 %5552, 1
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5553, i8* %5554, align 1
  %5555 = xor i64 1, %5538
  %5556 = trunc i64 %5555 to i32
  %5557 = xor i32 %5556, %5542
  %5558 = lshr i32 %5557, 4
  %5559 = trunc i32 %5558 to i8
  %5560 = and i8 %5559, 1
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5560, i8* %5561, align 1
  %5562 = icmp eq i32 %5542, 0
  %5563 = zext i1 %5562 to i8
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5563, i8* %5564, align 1
  %5565 = lshr i32 %5542, 31
  %5566 = trunc i32 %5565 to i8
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5566, i8* %5567, align 1
  %5568 = lshr i32 %5541, 31
  %5569 = xor i32 %5565, %5568
  %5570 = add i32 %5569, %5565
  %5571 = icmp eq i32 %5570, 2
  %5572 = zext i1 %5571 to i8
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5572, i8* %5573, align 1
  store %struct.Memory* %loadMem_41f324, %struct.Memory** %MEMORY
  %loadMem_41f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 33
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5576 to i64*
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 5
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %5579 to i32*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 1
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %5582 to i64*
  %5583 = load i64, i64* %RAX.i357
  %5584 = add i64 %5583, 71908
  %5585 = load i32, i32* %ECX.i356
  %5586 = zext i32 %5585 to i64
  %5587 = load i64, i64* %PC.i355
  %5588 = add i64 %5587, 6
  store i64 %5588, i64* %PC.i355
  %5589 = inttoptr i64 %5584 to i32*
  store i32 %5585, i32* %5589
  store %struct.Memory* %loadMem_41f327, %struct.Memory** %MEMORY
  %loadMem_41f32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 33
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5592 to i64*
  %5593 = load i64, i64* %PC.i354
  %5594 = add i64 %5593, -1212
  %5595 = load i64, i64* %PC.i354
  %5596 = add i64 %5595, 5
  store i64 %5596, i64* %PC.i354
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5594, i64* %5597, align 8
  store %struct.Memory* %loadMem_41f32d, %struct.Memory** %MEMORY
  br label %block_.L_41ee71

block_.L_41f332:                                  ; preds = %block_.L_41ee71
  %loadMem_41f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 33
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 1
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %5603 to i64*
  %5604 = load i64, i64* %PC.i352
  %5605 = add i64 %5604, 8
  store i64 %5605, i64* %PC.i352
  %5606 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5606, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_41f332, %struct.Memory** %MEMORY
  %loadMem_41f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 1
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %5612 to i64*
  %5613 = load i64, i64* %RAX.i351
  %5614 = add i64 %5613, 71908
  %5615 = load i64, i64* %PC.i350
  %5616 = add i64 %5615, 10
  store i64 %5616, i64* %PC.i350
  %5617 = inttoptr i64 %5614 to i32*
  store i32 0, i32* %5617
  store %struct.Memory* %loadMem_41f33a, %struct.Memory** %MEMORY
  %loadMem_41f344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 33
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %PC.i349
  %5622 = add i64 %5621, 931
  %5623 = load i64, i64* %PC.i349
  %5624 = add i64 %5623, 5
  store i64 %5624, i64* %PC.i349
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5622, i64* %5625, align 8
  store %struct.Memory* %loadMem_41f344, %struct.Memory** %MEMORY
  br label %block_.L_41f6e7

block_.L_41f349:                                  ; preds = %block_.L_41ee38
  %loadMem_41f349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 33
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5628 to i64*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 1
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5631 to i64*
  %5632 = load i64, i64* %PC.i347
  %5633 = add i64 %5632, 8
  store i64 %5633, i64* %PC.i347
  %5634 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5634, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_41f349, %struct.Memory** %MEMORY
  %loadMem_41f351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5637 to i64*
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 1
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %5640 to i64*
  %5641 = load i64, i64* %RAX.i346
  %5642 = add i64 %5641, 71908
  %5643 = load i64, i64* %PC.i345
  %5644 = add i64 %5643, 10
  store i64 %5644, i64* %PC.i345
  %5645 = inttoptr i64 %5642 to i32*
  store i32 1, i32* %5645
  store %struct.Memory* %loadMem_41f351, %struct.Memory** %MEMORY
  br label %block_.L_41f35b

block_.L_41f35b:                                  ; preds = %block_.L_41f6c6, %block_.L_41f349
  %loadMem_41f35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 33
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 1
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %PC.i343
  %5653 = add i64 %5652, 8
  store i64 %5653, i64* %PC.i343
  %5654 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5654, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_41f35b, %struct.Memory** %MEMORY
  %loadMem_41f363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 1
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 5
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %5663 to i64*
  %5664 = load i64, i64* %RAX.i341
  %5665 = add i64 %5664, 71908
  %5666 = load i64, i64* %PC.i340
  %5667 = add i64 %5666, 6
  store i64 %5667, i64* %PC.i340
  %5668 = inttoptr i64 %5665 to i32*
  %5669 = load i32, i32* %5668
  %5670 = zext i32 %5669 to i64
  store i64 %5670, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_41f363, %struct.Memory** %MEMORY
  %loadMem_41f369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 1
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %PC.i338
  %5678 = add i64 %5677, 8
  store i64 %5678, i64* %PC.i338
  %5679 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5679, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_41f369, %struct.Memory** %MEMORY
  %loadMem_41f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 33
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5682 to i64*
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 5
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %ECX.i336 = bitcast %union.anon* %5685 to i32*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 1
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %5688 to i64*
  %5689 = load i32, i32* %ECX.i336
  %5690 = zext i32 %5689 to i64
  %5691 = load i64, i64* %RAX.i337
  %5692 = add i64 %5691, 1236
  %5693 = load i64, i64* %PC.i335
  %5694 = add i64 %5693, 6
  store i64 %5694, i64* %PC.i335
  %5695 = inttoptr i64 %5692 to i32*
  %5696 = load i32, i32* %5695
  %5697 = sub i32 %5689, %5696
  %5698 = icmp ult i32 %5689, %5696
  %5699 = zext i1 %5698 to i8
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5699, i8* %5700, align 1
  %5701 = and i32 %5697, 255
  %5702 = call i32 @llvm.ctpop.i32(i32 %5701)
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  %5705 = xor i8 %5704, 1
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5705, i8* %5706, align 1
  %5707 = xor i32 %5696, %5689
  %5708 = xor i32 %5707, %5697
  %5709 = lshr i32 %5708, 4
  %5710 = trunc i32 %5709 to i8
  %5711 = and i8 %5710, 1
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5711, i8* %5712, align 1
  %5713 = icmp eq i32 %5697, 0
  %5714 = zext i1 %5713 to i8
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5714, i8* %5715, align 1
  %5716 = lshr i32 %5697, 31
  %5717 = trunc i32 %5716 to i8
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5717, i8* %5718, align 1
  %5719 = lshr i32 %5689, 31
  %5720 = lshr i32 %5696, 31
  %5721 = xor i32 %5720, %5719
  %5722 = xor i32 %5716, %5719
  %5723 = add i32 %5722, %5721
  %5724 = icmp eq i32 %5723, 2
  %5725 = zext i1 %5724 to i8
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5725, i8* %5726, align 1
  store %struct.Memory* %loadMem_41f371, %struct.Memory** %MEMORY
  %loadMem_41f377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 33
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5729 to i64*
  %5730 = load i64, i64* %PC.i334
  %5731 = add i64 %5730, 875
  %5732 = load i64, i64* %PC.i334
  %5733 = add i64 %5732, 6
  %5734 = load i64, i64* %PC.i334
  %5735 = add i64 %5734, 6
  store i64 %5735, i64* %PC.i334
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5737 = load i8, i8* %5736, align 1
  %5738 = icmp eq i8 %5737, 0
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5740 = load i8, i8* %5739, align 1
  %5741 = icmp ne i8 %5740, 0
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5743 = load i8, i8* %5742, align 1
  %5744 = icmp ne i8 %5743, 0
  %5745 = xor i1 %5741, %5744
  %5746 = xor i1 %5745, true
  %5747 = and i1 %5738, %5746
  %5748 = zext i1 %5747 to i8
  store i8 %5748, i8* %BRANCH_TAKEN, align 1
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5750 = select i1 %5747, i64 %5731, i64 %5733
  store i64 %5750, i64* %5749, align 8
  store %struct.Memory* %loadMem_41f377, %struct.Memory** %MEMORY
  %loadBr_41f377 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f377 = icmp eq i8 %loadBr_41f377, 1
  br i1 %cmpBr_41f377, label %block_.L_41f6e2, label %block_41f37d

block_41f37d:                                     ; preds = %block_.L_41f35b
  %loadMem_41f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 33
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 1
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %PC.i332
  %5758 = add i64 %5757, 8
  store i64 %5758, i64* %PC.i332
  %5759 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5759, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_41f37d, %struct.Memory** %MEMORY
  %loadMem_41f385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 33
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5762 to i64*
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 1
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %5765 to i64*
  %5766 = load i64, i64* %RAX.i331
  %5767 = add i64 %5766, 72496
  %5768 = load i64, i64* %PC.i330
  %5769 = add i64 %5768, 10
  store i64 %5769, i64* %PC.i330
  %5770 = inttoptr i64 %5767 to i32*
  store i32 0, i32* %5770
  store %struct.Memory* %loadMem_41f385, %struct.Memory** %MEMORY
  %loadMem_41f38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 33
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5773 to i64*
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 1
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %5776 to i64*
  %5777 = load i64, i64* %PC.i328
  %5778 = add i64 %5777, 8
  store i64 %5778, i64* %PC.i328
  %5779 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5779, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_41f38f, %struct.Memory** %MEMORY
  %loadMem_41f397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 33
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 1
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %5785 to i64*
  %5786 = load i64, i64* %RAX.i327
  %5787 = add i64 %5786, 1316
  %5788 = load i64, i64* %PC.i326
  %5789 = add i64 %5788, 7
  store i64 %5789, i64* %PC.i326
  %5790 = inttoptr i64 %5787 to i32*
  %5791 = load i32, i32* %5790
  %5792 = sub i32 %5791, 1
  %5793 = icmp ult i32 %5791, 1
  %5794 = zext i1 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5794, i8* %5795, align 1
  %5796 = and i32 %5792, 255
  %5797 = call i32 @llvm.ctpop.i32(i32 %5796)
  %5798 = trunc i32 %5797 to i8
  %5799 = and i8 %5798, 1
  %5800 = xor i8 %5799, 1
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5800, i8* %5801, align 1
  %5802 = xor i32 %5791, 1
  %5803 = xor i32 %5802, %5792
  %5804 = lshr i32 %5803, 4
  %5805 = trunc i32 %5804 to i8
  %5806 = and i8 %5805, 1
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5806, i8* %5807, align 1
  %5808 = icmp eq i32 %5792, 0
  %5809 = zext i1 %5808 to i8
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5809, i8* %5810, align 1
  %5811 = lshr i32 %5792, 31
  %5812 = trunc i32 %5811 to i8
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5812, i8* %5813, align 1
  %5814 = lshr i32 %5791, 31
  %5815 = xor i32 %5811, %5814
  %5816 = add i32 %5815, %5814
  %5817 = icmp eq i32 %5816, 2
  %5818 = zext i1 %5817 to i8
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5818, i8* %5819, align 1
  store %struct.Memory* %loadMem_41f397, %struct.Memory** %MEMORY
  %loadMem_41f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 33
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %PC.i325
  %5824 = add i64 %5823, 98
  %5825 = load i64, i64* %PC.i325
  %5826 = add i64 %5825, 6
  %5827 = load i64, i64* %PC.i325
  %5828 = add i64 %5827, 6
  store i64 %5828, i64* %PC.i325
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5830 = load i8, i8* %5829, align 1
  %5831 = icmp eq i8 %5830, 0
  %5832 = zext i1 %5831 to i8
  store i8 %5832, i8* %BRANCH_TAKEN, align 1
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5834 = select i1 %5831, i64 %5824, i64 %5826
  store i64 %5834, i64* %5833, align 8
  store %struct.Memory* %loadMem_41f39e, %struct.Memory** %MEMORY
  %loadBr_41f39e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f39e = icmp eq i8 %loadBr_41f39e, 1
  br i1 %cmpBr_41f39e, label %block_.L_41f400, label %block_41f3a4

block_41f3a4:                                     ; preds = %block_41f37d
  %loadMem_41f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 33
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5837 to i64*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 1
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %5840 to i64*
  %5841 = load i64, i64* %PC.i323
  %5842 = add i64 %5841, 5
  store i64 %5842, i64* %PC.i323
  store i64 1, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_41f3a4, %struct.Memory** %MEMORY
  %loadMem_41f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 33
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 5
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %5848 to i64*
  %5849 = load i64, i64* %PC.i321
  %5850 = add i64 %5849, 8
  store i64 %5850, i64* %PC.i321
  %5851 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5851, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_41f3a9, %struct.Memory** %MEMORY
  %loadMem_41f3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 33
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5854 to i64*
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 5
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %5857 to i64*
  %5858 = load i64, i64* %RCX.i320
  %5859 = add i64 %5858, 72496
  %5860 = load i64, i64* %PC.i319
  %5861 = add i64 %5860, 10
  store i64 %5861, i64* %PC.i319
  %5862 = inttoptr i64 %5859 to i32*
  store i32 1, i32* %5862
  store %struct.Memory* %loadMem_41f3b1, %struct.Memory** %MEMORY
  %loadMem_41f3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 33
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5865 to i64*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 5
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %5868 to i64*
  %5869 = load i64, i64* %PC.i317
  %5870 = add i64 %5869, 8
  store i64 %5870, i64* %PC.i317
  %5871 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5871, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_41f3bb, %struct.Memory** %MEMORY
  %loadMem_41f3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 33
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5874 to i64*
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 5
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %5877 to i64*
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 7
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %5880 to i64*
  %5881 = load i64, i64* %RCX.i315
  %5882 = add i64 %5881, 72464
  %5883 = load i64, i64* %PC.i314
  %5884 = add i64 %5883, 6
  store i64 %5884, i64* %PC.i314
  %5885 = inttoptr i64 %5882 to i32*
  %5886 = load i32, i32* %5885
  %5887 = zext i32 %5886 to i64
  store i64 %5887, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_41f3c3, %struct.Memory** %MEMORY
  %loadMem_41f3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 33
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5890 to i64*
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 7
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %5893 to i64*
  %5894 = load i64, i64* %RDX.i313
  %5895 = load i64, i64* %PC.i312
  %5896 = add i64 %5895, 3
  store i64 %5896, i64* %PC.i312
  %5897 = trunc i64 %5894 to i32
  %5898 = add i32 1, %5897
  %5899 = zext i32 %5898 to i64
  store i64 %5899, i64* %RDX.i313, align 8
  %5900 = icmp ult i32 %5898, %5897
  %5901 = icmp ult i32 %5898, 1
  %5902 = or i1 %5900, %5901
  %5903 = zext i1 %5902 to i8
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5903, i8* %5904, align 1
  %5905 = and i32 %5898, 255
  %5906 = call i32 @llvm.ctpop.i32(i32 %5905)
  %5907 = trunc i32 %5906 to i8
  %5908 = and i8 %5907, 1
  %5909 = xor i8 %5908, 1
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5909, i8* %5910, align 1
  %5911 = xor i64 1, %5894
  %5912 = trunc i64 %5911 to i32
  %5913 = xor i32 %5912, %5898
  %5914 = lshr i32 %5913, 4
  %5915 = trunc i32 %5914 to i8
  %5916 = and i8 %5915, 1
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5916, i8* %5917, align 1
  %5918 = icmp eq i32 %5898, 0
  %5919 = zext i1 %5918 to i8
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5919, i8* %5920, align 1
  %5921 = lshr i32 %5898, 31
  %5922 = trunc i32 %5921 to i8
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5922, i8* %5923, align 1
  %5924 = lshr i32 %5897, 31
  %5925 = xor i32 %5921, %5924
  %5926 = add i32 %5925, %5921
  %5927 = icmp eq i32 %5926, 2
  %5928 = zext i1 %5927 to i8
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5928, i8* %5929, align 1
  store %struct.Memory* %loadMem_41f3c9, %struct.Memory** %MEMORY
  %loadMem_41f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 33
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5932 to i64*
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5934 = getelementptr inbounds %struct.GPR, %struct.GPR* %5933, i32 0, i32 7
  %5935 = getelementptr inbounds %struct.Reg, %struct.Reg* %5934, i32 0, i32 0
  %EDX.i310 = bitcast %union.anon* %5935 to i32*
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 5
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %5938 to i64*
  %5939 = load i64, i64* %RCX.i311
  %5940 = add i64 %5939, 72464
  %5941 = load i32, i32* %EDX.i310
  %5942 = zext i32 %5941 to i64
  %5943 = load i64, i64* %PC.i309
  %5944 = add i64 %5943, 6
  store i64 %5944, i64* %PC.i309
  %5945 = inttoptr i64 %5940 to i32*
  store i32 %5941, i32* %5945
  store %struct.Memory* %loadMem_41f3cc, %struct.Memory** %MEMORY
  %loadMem_41f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 33
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 7
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %5951 to i64*
  %5952 = load i64, i64* %PC.i307
  %5953 = add i64 %5952, 7
  store i64 %5953, i64* %PC.i307
  %5954 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*)
  %5955 = zext i32 %5954 to i64
  store i64 %5955, i64* %RDX.i308, align 8
  store %struct.Memory* %loadMem_41f3d2, %struct.Memory** %MEMORY
  %loadMem_41f3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 7
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RDX.i306 = bitcast %union.anon* %5961 to i64*
  %5962 = load i64, i64* %RDX.i306
  %5963 = load i64, i64* %PC.i305
  %5964 = add i64 %5963, 3
  store i64 %5964, i64* %PC.i305
  %5965 = trunc i64 %5962 to i32
  %5966 = add i32 4, %5965
  %5967 = zext i32 %5966 to i64
  store i64 %5967, i64* %RDX.i306, align 8
  %5968 = icmp ult i32 %5966, %5965
  %5969 = icmp ult i32 %5966, 4
  %5970 = or i1 %5968, %5969
  %5971 = zext i1 %5970 to i8
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5971, i8* %5972, align 1
  %5973 = and i32 %5966, 255
  %5974 = call i32 @llvm.ctpop.i32(i32 %5973)
  %5975 = trunc i32 %5974 to i8
  %5976 = and i8 %5975, 1
  %5977 = xor i8 %5976, 1
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5977, i8* %5978, align 1
  %5979 = xor i64 4, %5962
  %5980 = trunc i64 %5979 to i32
  %5981 = xor i32 %5980, %5966
  %5982 = lshr i32 %5981, 4
  %5983 = trunc i32 %5982 to i8
  %5984 = and i8 %5983, 1
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5984, i8* %5985, align 1
  %5986 = icmp eq i32 %5966, 0
  %5987 = zext i1 %5986 to i8
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5987, i8* %5988, align 1
  %5989 = lshr i32 %5966, 31
  %5990 = trunc i32 %5989 to i8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5990, i8* %5991, align 1
  %5992 = lshr i32 %5965, 31
  %5993 = xor i32 %5989, %5992
  %5994 = add i32 %5993, %5989
  %5995 = icmp eq i32 %5994, 2
  %5996 = zext i1 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5996, i8* %5997, align 1
  store %struct.Memory* %loadMem_41f3d9, %struct.Memory** %MEMORY
  %loadMem_41f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 33
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %6000 to i64*
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 7
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %EDX.i303 = bitcast %union.anon* %6003 to i32*
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 5
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %6006 to i64*
  %6007 = load i32, i32* %EDX.i303
  %6008 = zext i32 %6007 to i64
  %6009 = load i64, i64* %PC.i302
  %6010 = add i64 %6009, 2
  store i64 %6010, i64* %PC.i302
  %6011 = and i64 %6008, 4294967295
  store i64 %6011, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_41f3dc, %struct.Memory** %MEMORY
  %loadMem_41f3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 33
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 5
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %6018 = bitcast %union.anon* %6017 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6018, i32 0, i32 0
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 1
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %6021 to i64*
  %6022 = load i64, i64* %RAX.i301
  %6023 = load i8, i8* %CL.i
  %6024 = zext i8 %6023 to i64
  %6025 = load i64, i64* %PC.i300
  %6026 = add i64 %6025, 2
  store i64 %6026, i64* %PC.i300
  %6027 = trunc i64 %6024 to i5
  switch i5 %6027, label %6034 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %6028
  ]

; <label>:6028:                                   ; preds = %block_41f3a4
  %6029 = trunc i64 %6022 to i32
  %6030 = shl i32 %6029, 1
  %6031 = icmp slt i32 %6029, 0
  %6032 = icmp slt i32 %6030, 0
  %6033 = xor i1 %6031, %6032
  br label %6043

; <label>:6034:                                   ; preds = %block_41f3a4
  %6035 = and i64 %6024, 31
  %6036 = add i64 %6035, 4294967295
  %6037 = and i64 %6022, 4294967295
  %6038 = and i64 %6036, 4294967295
  %6039 = shl i64 %6037, %6038
  %6040 = trunc i64 %6039 to i32
  %6041 = icmp slt i32 %6040, 0
  %6042 = shl i32 %6040, 1
  br label %6043

; <label>:6043:                                   ; preds = %6034, %6028
  %6044 = phi i1 [ %6031, %6028 ], [ %6041, %6034 ]
  %6045 = phi i1 [ %6033, %6028 ], [ false, %6034 ]
  %6046 = phi i32 [ %6030, %6028 ], [ %6042, %6034 ]
  %6047 = zext i32 %6046 to i64
  store i64 %6047, i64* %RAX.i301, align 8
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6049 = zext i1 %6044 to i8
  store i8 %6049, i8* %6048, align 1
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6051 = and i32 %6046, 254
  %6052 = call i32 @llvm.ctpop.i32(i32 %6051)
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = xor i8 %6054, 1
  store i8 %6055, i8* %6050, align 1
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6056, align 1
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6058 = icmp eq i32 %6046, 0
  %6059 = zext i1 %6058 to i8
  store i8 %6059, i8* %6057, align 1
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6061 = lshr i32 %6046, 31
  %6062 = trunc i32 %6061 to i8
  store i8 %6062, i8* %6060, align 1
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6064 = zext i1 %6045 to i8
  store i8 %6064, i8* %6063, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %block_41f3a4, %6043
  store %struct.Memory* %loadMem_41f3de, %struct.Memory** %MEMORY
  %loadMem_41f3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 33
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6067 to i64*
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 9
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %RSI.i299 = bitcast %union.anon* %6070 to i64*
  %6071 = load i64, i64* %PC.i298
  %6072 = add i64 %6071, 8
  store i64 %6072, i64* %PC.i298
  %6073 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6073, i64* %RSI.i299, align 8
  store %struct.Memory* %loadMem_41f3e0, %struct.Memory** %MEMORY
  %loadMem_41f3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 7
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 9
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RSI.i297 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %RSI.i297
  %6084 = add i64 %6083, 72464
  %6085 = load i64, i64* %PC.i295
  %6086 = add i64 %6085, 6
  store i64 %6086, i64* %PC.i295
  %6087 = inttoptr i64 %6084 to i32*
  %6088 = load i32, i32* %6087
  %6089 = zext i32 %6088 to i64
  store i64 %6089, i64* %RDX.i296, align 8
  store %struct.Memory* %loadMem_41f3e8, %struct.Memory** %MEMORY
  %loadMem_41f3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6092 to i64*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 1
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %6095 to i32*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 15
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %6098 to i64*
  %6099 = load i64, i64* %RBP.i294
  %6100 = sub i64 %6099, 28
  %6101 = load i32, i32* %EAX.i293
  %6102 = zext i32 %6101 to i64
  %6103 = load i64, i64* %PC.i292
  %6104 = add i64 %6103, 3
  store i64 %6104, i64* %PC.i292
  %6105 = inttoptr i64 %6100 to i32*
  store i32 %6101, i32* %6105
  store %struct.Memory* %loadMem_41f3ee, %struct.Memory** %MEMORY
  %loadMem_41f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 33
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6108 to i64*
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 7
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %EDX.i290 = bitcast %union.anon* %6111 to i32*
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 1
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %6114 to i64*
  %6115 = load i32, i32* %EDX.i290
  %6116 = zext i32 %6115 to i64
  %6117 = load i64, i64* %PC.i289
  %6118 = add i64 %6117, 2
  store i64 %6118, i64* %PC.i289
  %6119 = and i64 %6116, 4294967295
  store i64 %6119, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_41f3f1, %struct.Memory** %MEMORY
  %loadMem_41f3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 33
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 7
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %EDX.i287 = bitcast %union.anon* %6125 to i32*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 7
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %6128 to i64*
  %6129 = load i64, i64* %RDX.i288
  %6130 = load i32, i32* %EDX.i287
  %6131 = zext i32 %6130 to i64
  %6132 = load i64, i64* %PC.i286
  %6133 = add i64 %6132, 2
  store i64 %6133, i64* %PC.i286
  %6134 = xor i64 %6131, %6129
  %6135 = trunc i64 %6134 to i32
  %6136 = and i64 %6134, 4294967295
  store i64 %6136, i64* %RDX.i288, align 8
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6137, align 1
  %6138 = and i32 %6135, 255
  %6139 = call i32 @llvm.ctpop.i32(i32 %6138)
  %6140 = trunc i32 %6139 to i8
  %6141 = and i8 %6140, 1
  %6142 = xor i8 %6141, 1
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6142, i8* %6143, align 1
  %6144 = icmp eq i32 %6135, 0
  %6145 = zext i1 %6144 to i8
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6145, i8* %6146, align 1
  %6147 = lshr i32 %6135, 31
  %6148 = trunc i32 %6147 to i8
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6148, i8* %6149, align 1
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6150, align 1
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6151, align 1
  store %struct.Memory* %loadMem_41f3f3, %struct.Memory** %MEMORY
  %loadMem_41f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 33
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6154 to i64*
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6156 = getelementptr inbounds %struct.GPR, %struct.GPR* %6155, i32 0, i32 11
  %6157 = getelementptr inbounds %struct.Reg, %struct.Reg* %6156, i32 0, i32 0
  %RDI.i284 = bitcast %union.anon* %6157 to i64*
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 15
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %6160 to i64*
  %6161 = load i64, i64* %RBP.i285
  %6162 = sub i64 %6161, 28
  %6163 = load i64, i64* %PC.i283
  %6164 = add i64 %6163, 3
  store i64 %6164, i64* %PC.i283
  %6165 = inttoptr i64 %6162 to i32*
  %6166 = load i32, i32* %6165
  %6167 = zext i32 %6166 to i64
  store i64 %6167, i64* %RDI.i284, align 8
  store %struct.Memory* %loadMem_41f3f5, %struct.Memory** %MEMORY
  %loadMem_41f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 33
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %6170 to i64*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 11
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %6173 to i32*
  %6174 = load i32, i32* %EDI.i
  %6175 = zext i32 %6174 to i64
  %6176 = load i64, i64* %PC.i280
  %6177 = add i64 %6176, 2
  store i64 %6177, i64* %PC.i280
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6179 = bitcast %union.anon* %6178 to i32*
  %6180 = load i32, i32* %6179, align 8
  %6181 = zext i32 %6180 to i64
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6183 = bitcast %union.anon* %6182 to i32*
  %6184 = load i32, i32* %6183, align 8
  %6185 = zext i32 %6184 to i64
  %6186 = and i64 %6175, 4294967295
  %6187 = shl i64 %6185, 32
  %6188 = or i64 %6187, %6181
  %6189 = udiv i64 %6188, %6186
  %6190 = and i64 %6189, 4294967295
  %6191 = icmp eq i64 %6189, %6190
  br i1 %6191, label %6196, label %6192

; <label>:6192:                                   ; preds = %routine_shll__cl___eax.exit
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6194 = load i64, i64* %6193, align 8
  %6195 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6194, %struct.Memory* %loadMem_41f3f8)
  br label %routine_divl__edi.exit

; <label>:6196:                                   ; preds = %routine_shll__cl___eax.exit
  %6197 = urem i64 %6188, %6186
  %6198 = getelementptr inbounds %union.anon, %union.anon* %6178, i64 0, i32 0
  store i64 %6189, i64* %6198, align 8
  %6199 = getelementptr inbounds %union.anon, %union.anon* %6182, i64 0, i32 0
  store i64 %6197, i64* %6199, align 8
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6200, align 1
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6201, align 1
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6202, align 1
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6203, align 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6204, align 1
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6205, align 1
  br label %routine_divl__edi.exit

routine_divl__edi.exit:                           ; preds = %6192, %6196
  %6206 = phi %struct.Memory* [ %6195, %6192 ], [ %loadMem_41f3f8, %6196 ]
  store %struct.Memory* %6206, %struct.Memory** %MEMORY
  %loadMem_41f3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6208 = getelementptr inbounds %struct.GPR, %struct.GPR* %6207, i32 0, i32 33
  %6209 = getelementptr inbounds %struct.Reg, %struct.Reg* %6208, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %6209 to i64*
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 7
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %EDX.i278 = bitcast %union.anon* %6212 to i32*
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 9
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %RSI.i279 = bitcast %union.anon* %6215 to i64*
  %6216 = load i64, i64* %RSI.i279
  %6217 = add i64 %6216, 72464
  %6218 = load i32, i32* %EDX.i278
  %6219 = zext i32 %6218 to i64
  %6220 = load i64, i64* %PC.i277
  %6221 = add i64 %6220, 6
  store i64 %6221, i64* %PC.i277
  %6222 = inttoptr i64 %6217 to i32*
  store i32 %6218, i32* %6222
  store %struct.Memory* %loadMem_41f3fa, %struct.Memory** %MEMORY
  br label %block_.L_41f400

block_.L_41f400:                                  ; preds = %routine_divl__edi.exit, %block_41f37d
  %loadMem_41f400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 33
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %6225 to i64*
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6226, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %6227 to %"class.std::bitset"*
  %6228 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %6229 = load i64, i64* %PC.i275
  %6230 = add i64 %6229, ptrtoint (%G_0x92458__rip__type* @G_0x92458__rip_ to i64)
  %6231 = load i64, i64* %PC.i275
  %6232 = add i64 %6231, 8
  store i64 %6232, i64* %PC.i275
  %6233 = inttoptr i64 %6230 to double*
  %6234 = load double, double* %6233
  %6235 = bitcast i8* %6228 to double*
  store double %6234, double* %6235, align 1
  %6236 = getelementptr inbounds i8, i8* %6228, i64 8
  %6237 = bitcast i8* %6236 to double*
  store double 0.000000e+00, double* %6237, align 1
  store %struct.Memory* %loadMem_41f400, %struct.Memory** %MEMORY
  %loadMem_41f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 33
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6240 to i64*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 1
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %6243 to i64*
  %6244 = load i64, i64* %PC.i273
  %6245 = add i64 %6244, 8
  store i64 %6245, i64* %PC.i273
  %6246 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6246, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_41f408, %struct.Memory** %MEMORY
  %loadMem_41f410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 33
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6249 to i64*
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 1
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %6252 to i64*
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 5
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %6255 to i64*
  %6256 = load i64, i64* %RAX.i271
  %6257 = add i64 %6256, 20
  %6258 = load i64, i64* %PC.i270
  %6259 = add i64 %6258, 3
  store i64 %6259, i64* %PC.i270
  %6260 = inttoptr i64 %6257 to i32*
  %6261 = load i32, i32* %6260
  %6262 = zext i32 %6261 to i64
  store i64 %6262, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_41f410, %struct.Memory** %MEMORY
  %loadMem_41f413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 33
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6265 to i64*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 5
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %6268 to i64*
  %6269 = load i64, i64* %RCX.i269
  %6270 = load i64, i64* %PC.i268
  %6271 = add i64 %6270, 3
  store i64 %6271, i64* %PC.i268
  %6272 = trunc i64 %6269 to i32
  %6273 = add i32 1, %6272
  %6274 = zext i32 %6273 to i64
  store i64 %6274, i64* %RCX.i269, align 8
  %6275 = icmp ult i32 %6273, %6272
  %6276 = icmp ult i32 %6273, 1
  %6277 = or i1 %6275, %6276
  %6278 = zext i1 %6277 to i8
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6278, i8* %6279, align 1
  %6280 = and i32 %6273, 255
  %6281 = call i32 @llvm.ctpop.i32(i32 %6280)
  %6282 = trunc i32 %6281 to i8
  %6283 = and i8 %6282, 1
  %6284 = xor i8 %6283, 1
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6284, i8* %6285, align 1
  %6286 = xor i64 1, %6269
  %6287 = trunc i64 %6286 to i32
  %6288 = xor i32 %6287, %6273
  %6289 = lshr i32 %6288, 4
  %6290 = trunc i32 %6289 to i8
  %6291 = and i8 %6290, 1
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6291, i8* %6292, align 1
  %6293 = icmp eq i32 %6273, 0
  %6294 = zext i1 %6293 to i8
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6294, i8* %6295, align 1
  %6296 = lshr i32 %6273, 31
  %6297 = trunc i32 %6296 to i8
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6297, i8* %6298, align 1
  %6299 = lshr i32 %6272, 31
  %6300 = xor i32 %6296, %6299
  %6301 = add i32 %6300, %6296
  %6302 = icmp eq i32 %6301, 2
  %6303 = zext i1 %6302 to i8
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6303, i8* %6304, align 1
  store %struct.Memory* %loadMem_41f413, %struct.Memory** %MEMORY
  %loadMem_41f416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 33
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6307 to i64*
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 5
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %ECX.i266 = bitcast %union.anon* %6310 to i32*
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6311, i64 0, i64 1
  %YMM1.i267 = bitcast %union.VectorReg* %6312 to %"class.std::bitset"*
  %6313 = bitcast %"class.std::bitset"* %YMM1.i267 to i8*
  %6314 = load i32, i32* %ECX.i266
  %6315 = zext i32 %6314 to i64
  %6316 = load i64, i64* %PC.i265
  %6317 = add i64 %6316, 4
  store i64 %6317, i64* %PC.i265
  %6318 = sitofp i32 %6314 to double
  %6319 = bitcast i8* %6313 to double*
  store double %6318, double* %6319, align 1
  store %struct.Memory* %loadMem_41f416, %struct.Memory** %MEMORY
  %loadMem_41f41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 33
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6322 to i64*
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 1
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %6325 to i64*
  %6326 = load i64, i64* %PC.i263
  %6327 = add i64 %6326, 8
  store i64 %6327, i64* %PC.i263
  %6328 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6328, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_41f41a, %struct.Memory** %MEMORY
  %loadMem_41f422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 33
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6331 to i64*
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 1
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6336 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6335, i64 0, i64 2
  %YMM2.i262 = bitcast %union.VectorReg* %6336 to %"class.std::bitset"*
  %6337 = bitcast %"class.std::bitset"* %YMM2.i262 to i8*
  %6338 = load i64, i64* %RAX.i261
  %6339 = add i64 %6338, 1236
  %6340 = load i64, i64* %PC.i260
  %6341 = add i64 %6340, 8
  store i64 %6341, i64* %PC.i260
  %6342 = inttoptr i64 %6339 to i32*
  %6343 = load i32, i32* %6342
  %6344 = sitofp i32 %6343 to double
  %6345 = bitcast i8* %6337 to double*
  store double %6344, double* %6345, align 1
  store %struct.Memory* %loadMem_41f422, %struct.Memory** %MEMORY
  %loadMem_41f42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 33
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6348 to i64*
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6349, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %6350 to %"class.std::bitset"*
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6351, i64 0, i64 0
  %XMM0.i259 = bitcast %union.VectorReg* %6352 to %union.vec128_t*
  %6353 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %6354 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %6355 = bitcast %union.vec128_t* %XMM0.i259 to i8*
  %6356 = load i64, i64* %PC.i258
  %6357 = add i64 %6356, 4
  store i64 %6357, i64* %PC.i258
  %6358 = bitcast i8* %6354 to double*
  %6359 = load double, double* %6358, align 1
  %6360 = getelementptr inbounds i8, i8* %6354, i64 8
  %6361 = bitcast i8* %6360 to i64*
  %6362 = load i64, i64* %6361, align 1
  %6363 = bitcast i8* %6355 to double*
  %6364 = load double, double* %6363, align 1
  %6365 = fadd double %6359, %6364
  %6366 = bitcast i8* %6353 to double*
  store double %6365, double* %6366, align 1
  %6367 = getelementptr inbounds i8, i8* %6353, i64 8
  %6368 = bitcast i8* %6367 to i64*
  store i64 %6362, i64* %6368, align 1
  store %struct.Memory* %loadMem_41f42a, %struct.Memory** %MEMORY
  %loadMem_41f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6370 = getelementptr inbounds %struct.GPR, %struct.GPR* %6369, i32 0, i32 33
  %6371 = getelementptr inbounds %struct.Reg, %struct.Reg* %6370, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %6371 to i64*
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6372, i64 0, i64 1
  %YMM1.i257 = bitcast %union.VectorReg* %6373 to %"class.std::bitset"*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6374, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %6375 to %union.vec128_t*
  %6376 = bitcast %"class.std::bitset"* %YMM1.i257 to i8*
  %6377 = bitcast %"class.std::bitset"* %YMM1.i257 to i8*
  %6378 = bitcast %union.vec128_t* %XMM2.i to i8*
  %6379 = load i64, i64* %PC.i256
  %6380 = add i64 %6379, 4
  store i64 %6380, i64* %PC.i256
  %6381 = bitcast i8* %6377 to double*
  %6382 = load double, double* %6381, align 1
  %6383 = getelementptr inbounds i8, i8* %6377, i64 8
  %6384 = bitcast i8* %6383 to i64*
  %6385 = load i64, i64* %6384, align 1
  %6386 = bitcast i8* %6378 to double*
  %6387 = load double, double* %6386, align 1
  %6388 = fdiv double %6382, %6387
  %6389 = bitcast i8* %6376 to double*
  store double %6388, double* %6389, align 1
  %6390 = getelementptr inbounds i8, i8* %6376, i64 8
  %6391 = bitcast i8* %6390 to i64*
  store i64 %6385, i64* %6391, align 1
  store %struct.Memory* %loadMem_41f42e, %struct.Memory** %MEMORY
  %loadMem_41f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 33
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6394 to i64*
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6396 = getelementptr inbounds %struct.GPR, %struct.GPR* %6395, i32 0, i32 1
  %6397 = getelementptr inbounds %struct.Reg, %struct.Reg* %6396, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %6397 to i64*
  %6398 = load i64, i64* %PC.i254
  %6399 = add i64 %6398, 8
  store i64 %6399, i64* %PC.i254
  %6400 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6400, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_41f432, %struct.Memory** %MEMORY
  %loadMem_41f43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 33
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6403 to i64*
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 1
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %6406 to i64*
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6407, i64 0, i64 1
  %XMM1.i253 = bitcast %union.VectorReg* %6408 to %union.vec128_t*
  %6409 = load i64, i64* %RAX.i252
  %6410 = add i64 %6409, 71896
  %6411 = bitcast %union.vec128_t* %XMM1.i253 to i8*
  %6412 = load i64, i64* %PC.i251
  %6413 = add i64 %6412, 8
  store i64 %6413, i64* %PC.i251
  %6414 = bitcast i8* %6411 to double*
  %6415 = load double, double* %6414, align 1
  %6416 = inttoptr i64 %6410 to double*
  store double %6415, double* %6416
  store %struct.Memory* %loadMem_41f43a, %struct.Memory** %MEMORY
  %loadMem_41f442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 1
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %6422 to i64*
  %6423 = load i64, i64* %PC.i249
  %6424 = add i64 %6423, 8
  store i64 %6424, i64* %PC.i249
  %6425 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6425, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_41f442, %struct.Memory** %MEMORY
  %loadMem_41f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 33
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6428 to i64*
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 1
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %6431 to i64*
  %6432 = load i64, i64* %RAX.i248
  %6433 = add i64 %6432, 1320
  %6434 = load i64, i64* %PC.i247
  %6435 = add i64 %6434, 7
  store i64 %6435, i64* %PC.i247
  %6436 = inttoptr i64 %6433 to i32*
  %6437 = load i32, i32* %6436
  %6438 = sub i32 %6437, 3
  %6439 = icmp ult i32 %6437, 3
  %6440 = zext i1 %6439 to i8
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6440, i8* %6441, align 1
  %6442 = and i32 %6438, 255
  %6443 = call i32 @llvm.ctpop.i32(i32 %6442)
  %6444 = trunc i32 %6443 to i8
  %6445 = and i8 %6444, 1
  %6446 = xor i8 %6445, 1
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6446, i8* %6447, align 1
  %6448 = xor i32 %6437, 3
  %6449 = xor i32 %6448, %6438
  %6450 = lshr i32 %6449, 4
  %6451 = trunc i32 %6450 to i8
  %6452 = and i8 %6451, 1
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6452, i8* %6453, align 1
  %6454 = icmp eq i32 %6438, 0
  %6455 = zext i1 %6454 to i8
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6455, i8* %6456, align 1
  %6457 = lshr i32 %6438, 31
  %6458 = trunc i32 %6457 to i8
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6458, i8* %6459, align 1
  %6460 = lshr i32 %6437, 31
  %6461 = xor i32 %6457, %6460
  %6462 = add i32 %6461, %6460
  %6463 = icmp eq i32 %6462, 2
  %6464 = zext i1 %6463 to i8
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6464, i8* %6465, align 1
  store %struct.Memory* %loadMem_41f44a, %struct.Memory** %MEMORY
  %loadMem_41f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 33
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6468 to i64*
  %6469 = load i64, i64* %PC.i246
  %6470 = add i64 %6469, 30
  %6471 = load i64, i64* %PC.i246
  %6472 = add i64 %6471, 6
  %6473 = load i64, i64* %PC.i246
  %6474 = add i64 %6473, 6
  store i64 %6474, i64* %PC.i246
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6476 = load i8, i8* %6475, align 1
  %6477 = icmp eq i8 %6476, 0
  %6478 = zext i1 %6477 to i8
  store i8 %6478, i8* %BRANCH_TAKEN, align 1
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6480 = select i1 %6477, i64 %6470, i64 %6472
  store i64 %6480, i64* %6479, align 8
  store %struct.Memory* %loadMem_41f451, %struct.Memory** %MEMORY
  %loadBr_41f451 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f451 = icmp eq i8 %loadBr_41f451, 1
  br i1 %cmpBr_41f451, label %block_.L_41f46f, label %block_41f457

block_41f457:                                     ; preds = %block_.L_41f400
  %loadMem_41f457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 33
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6483 to i64*
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6484, i64 0, i64 0
  %YMM0.i245 = bitcast %union.VectorReg* %6485 to %"class.std::bitset"*
  %6486 = bitcast %"class.std::bitset"* %YMM0.i245 to i8*
  %6487 = load i64, i64* %PC.i244
  %6488 = add i64 %6487, ptrtoint (%G_0x92401__rip__type* @G_0x92401__rip_ to i64)
  %6489 = load i64, i64* %PC.i244
  %6490 = add i64 %6489, 8
  store i64 %6490, i64* %PC.i244
  %6491 = inttoptr i64 %6488 to double*
  %6492 = load double, double* %6491
  %6493 = bitcast i8* %6486 to double*
  store double %6492, double* %6493, align 1
  %6494 = getelementptr inbounds i8, i8* %6486, i64 8
  %6495 = bitcast i8* %6494 to double*
  store double 0.000000e+00, double* %6495, align 1
  store %struct.Memory* %loadMem_41f457, %struct.Memory** %MEMORY
  %loadMem_41f45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6497 = getelementptr inbounds %struct.GPR, %struct.GPR* %6496, i32 0, i32 33
  %6498 = getelementptr inbounds %struct.Reg, %struct.Reg* %6497, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6498 to i64*
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 1
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %6501 to i64*
  %6502 = load i64, i64* %PC.i242
  %6503 = add i64 %6502, 8
  store i64 %6503, i64* %PC.i242
  %6504 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6504, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_41f45f, %struct.Memory** %MEMORY
  %loadMem_41f467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 33
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6507 to i64*
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 1
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %6510 to i64*
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6512 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6511, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %6512 to %union.vec128_t*
  %6513 = load i64, i64* %RAX.i240
  %6514 = add i64 %6513, 71896
  %6515 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %6516 = load i64, i64* %PC.i239
  %6517 = add i64 %6516, 8
  store i64 %6517, i64* %PC.i239
  %6518 = bitcast i8* %6515 to double*
  %6519 = load double, double* %6518, align 1
  %6520 = inttoptr i64 %6514 to double*
  store double %6519, double* %6520
  store %struct.Memory* %loadMem_41f467, %struct.Memory** %MEMORY
  br label %block_.L_41f46f

block_.L_41f46f:                                  ; preds = %block_41f457, %block_.L_41f400
  %loadMem_41f46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 1
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %6526 to i64*
  %6527 = load i64, i64* %PC.i237
  %6528 = add i64 %6527, 8
  store i64 %6528, i64* %PC.i237
  %6529 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6529, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_41f46f, %struct.Memory** %MEMORY
  %loadMem_41f477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 33
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6532 to i64*
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6534 = getelementptr inbounds %struct.GPR, %struct.GPR* %6533, i32 0, i32 1
  %6535 = getelementptr inbounds %struct.Reg, %struct.Reg* %6534, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %6535 to i64*
  %6536 = load i64, i64* %RAX.i236
  %6537 = add i64 %6536, 1224
  %6538 = load i64, i64* %PC.i235
  %6539 = add i64 %6538, 7
  store i64 %6539, i64* %PC.i235
  %6540 = inttoptr i64 %6537 to i32*
  %6541 = load i32, i32* %6540
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6542, align 1
  %6543 = and i32 %6541, 255
  %6544 = call i32 @llvm.ctpop.i32(i32 %6543)
  %6545 = trunc i32 %6544 to i8
  %6546 = and i8 %6545, 1
  %6547 = xor i8 %6546, 1
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6547, i8* %6548, align 1
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6549, align 1
  %6550 = icmp eq i32 %6541, 0
  %6551 = zext i1 %6550 to i8
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6551, i8* %6552, align 1
  %6553 = lshr i32 %6541, 31
  %6554 = trunc i32 %6553 to i8
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6554, i8* %6555, align 1
  %6556 = lshr i32 %6541, 31
  %6557 = xor i32 %6553, %6556
  %6558 = add i32 %6557, %6556
  %6559 = icmp eq i32 %6558, 2
  %6560 = zext i1 %6559 to i8
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6560, i8* %6561, align 1
  store %struct.Memory* %loadMem_41f477, %struct.Memory** %MEMORY
  %loadMem_41f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6563 = getelementptr inbounds %struct.GPR, %struct.GPR* %6562, i32 0, i32 33
  %6564 = getelementptr inbounds %struct.Reg, %struct.Reg* %6563, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6564 to i64*
  %6565 = load i64, i64* %PC.i234
  %6566 = add i64 %6565, 153
  %6567 = load i64, i64* %PC.i234
  %6568 = add i64 %6567, 6
  %6569 = load i64, i64* %PC.i234
  %6570 = add i64 %6569, 6
  store i64 %6570, i64* %PC.i234
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6572 = load i8, i8* %6571, align 1
  store i8 %6572, i8* %BRANCH_TAKEN, align 1
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6574 = icmp ne i8 %6572, 0
  %6575 = select i1 %6574, i64 %6566, i64 %6568
  store i64 %6575, i64* %6573, align 8
  store %struct.Memory* %loadMem_41f47e, %struct.Memory** %MEMORY
  %loadBr_41f47e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f47e = icmp eq i8 %loadBr_41f47e, 1
  br i1 %cmpBr_41f47e, label %block_.L_41f517, label %block_41f484

block_41f484:                                     ; preds = %block_.L_41f46f
  %loadMem_41f484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 33
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 1
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %6581 to i64*
  %6582 = load i64, i64* %PC.i232
  %6583 = add i64 %6582, 8
  store i64 %6583, i64* %PC.i232
  %6584 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6584, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_41f484, %struct.Memory** %MEMORY
  %loadMem_41f48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 33
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 1
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6590 to i64*
  %6591 = load i64, i64* %RAX.i231
  %6592 = add i64 %6591, 1228
  %6593 = load i64, i64* %PC.i230
  %6594 = add i64 %6593, 7
  store i64 %6594, i64* %PC.i230
  %6595 = inttoptr i64 %6592 to i32*
  %6596 = load i32, i32* %6595
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6597, align 1
  %6598 = and i32 %6596, 255
  %6599 = call i32 @llvm.ctpop.i32(i32 %6598)
  %6600 = trunc i32 %6599 to i8
  %6601 = and i8 %6600, 1
  %6602 = xor i8 %6601, 1
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6602, i8* %6603, align 1
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6604, align 1
  %6605 = icmp eq i32 %6596, 0
  %6606 = zext i1 %6605 to i8
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6606, i8* %6607, align 1
  %6608 = lshr i32 %6596, 31
  %6609 = trunc i32 %6608 to i8
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6609, i8* %6610, align 1
  %6611 = lshr i32 %6596, 31
  %6612 = xor i32 %6608, %6611
  %6613 = add i32 %6612, %6611
  %6614 = icmp eq i32 %6613, 2
  %6615 = zext i1 %6614 to i8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6615, i8* %6616, align 1
  store %struct.Memory* %loadMem_41f48c, %struct.Memory** %MEMORY
  %loadMem_41f493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6618 = getelementptr inbounds %struct.GPR, %struct.GPR* %6617, i32 0, i32 33
  %6619 = getelementptr inbounds %struct.Reg, %struct.Reg* %6618, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6619 to i64*
  %6620 = load i64, i64* %PC.i229
  %6621 = add i64 %6620, 132
  %6622 = load i64, i64* %PC.i229
  %6623 = add i64 %6622, 6
  %6624 = load i64, i64* %PC.i229
  %6625 = add i64 %6624, 6
  store i64 %6625, i64* %PC.i229
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6627 = load i8, i8* %6626, align 1
  store i8 %6627, i8* %BRANCH_TAKEN, align 1
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6629 = icmp ne i8 %6627, 0
  %6630 = select i1 %6629, i64 %6621, i64 %6623
  store i64 %6630, i64* %6628, align 8
  store %struct.Memory* %loadMem_41f493, %struct.Memory** %MEMORY
  %loadBr_41f493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f493 = icmp eq i8 %loadBr_41f493, 1
  br i1 %cmpBr_41f493, label %block_.L_41f517, label %block_41f499

block_41f499:                                     ; preds = %block_41f484
  %loadMem_41f499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 33
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 1
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %PC.i227
  %6638 = add i64 %6637, 8
  store i64 %6638, i64* %PC.i227
  %6639 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6639, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_41f499, %struct.Memory** %MEMORY
  %loadMem_41f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 33
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6642 to i64*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 1
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6645 to i64*
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 5
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %6648 to i64*
  %6649 = load i64, i64* %RAX.i225
  %6650 = load i64, i64* %PC.i224
  %6651 = add i64 %6650, 2
  store i64 %6651, i64* %PC.i224
  %6652 = inttoptr i64 %6649 to i32*
  %6653 = load i32, i32* %6652
  %6654 = zext i32 %6653 to i64
  store i64 %6654, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_41f4a1, %struct.Memory** %MEMORY
  %loadMem_41f4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 33
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 5
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %6660 to i64*
  %6661 = load i64, i64* %RCX.i223
  %6662 = load i64, i64* %PC.i222
  %6663 = add i64 %6662, 7
  store i64 %6663, i64* %PC.i222
  %6664 = trunc i64 %6661 to i32
  %6665 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %6666 = sub i32 %6664, %6665
  %6667 = zext i32 %6666 to i64
  store i64 %6667, i64* %RCX.i223, align 8
  %6668 = icmp ult i32 %6664, %6665
  %6669 = zext i1 %6668 to i8
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6669, i8* %6670, align 1
  %6671 = and i32 %6666, 255
  %6672 = call i32 @llvm.ctpop.i32(i32 %6671)
  %6673 = trunc i32 %6672 to i8
  %6674 = and i8 %6673, 1
  %6675 = xor i8 %6674, 1
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6675, i8* %6676, align 1
  %6677 = xor i32 %6665, %6664
  %6678 = xor i32 %6677, %6666
  %6679 = lshr i32 %6678, 4
  %6680 = trunc i32 %6679 to i8
  %6681 = and i8 %6680, 1
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6681, i8* %6682, align 1
  %6683 = icmp eq i32 %6666, 0
  %6684 = zext i1 %6683 to i8
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6684, i8* %6685, align 1
  %6686 = lshr i32 %6666, 31
  %6687 = trunc i32 %6686 to i8
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6687, i8* %6688, align 1
  %6689 = lshr i32 %6664, 31
  %6690 = lshr i32 %6665, 31
  %6691 = xor i32 %6690, %6689
  %6692 = xor i32 %6686, %6689
  %6693 = add i32 %6692, %6691
  %6694 = icmp eq i32 %6693, 2
  %6695 = zext i1 %6694 to i8
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6695, i8* %6696, align 1
  store %struct.Memory* %loadMem_41f4a3, %struct.Memory** %MEMORY
  %loadMem_41f4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 33
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6699 to i64*
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 1
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %6702 to i64*
  %6703 = load i64, i64* %PC.i220
  %6704 = add i64 %6703, 8
  store i64 %6704, i64* %PC.i220
  %6705 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6705, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_41f4aa, %struct.Memory** %MEMORY
  %loadMem_41f4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 33
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6708 to i64*
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 1
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %6711 to i64*
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 15
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %6714 to i64*
  %6715 = load i64, i64* %RBP.i219
  %6716 = sub i64 %6715, 40
  %6717 = load i64, i64* %RAX.i218
  %6718 = load i64, i64* %PC.i217
  %6719 = add i64 %6718, 4
  store i64 %6719, i64* %PC.i217
  %6720 = inttoptr i64 %6716 to i64*
  store i64 %6717, i64* %6720
  store %struct.Memory* %loadMem_41f4b2, %struct.Memory** %MEMORY
  %loadMem_41f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6722 = getelementptr inbounds %struct.GPR, %struct.GPR* %6721, i32 0, i32 33
  %6723 = getelementptr inbounds %struct.Reg, %struct.Reg* %6722, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6723 to i64*
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 5
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %ECX.i215 = bitcast %union.anon* %6726 to i32*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 1
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %6729 to i64*
  %6730 = load i32, i32* %ECX.i215
  %6731 = zext i32 %6730 to i64
  %6732 = load i64, i64* %PC.i214
  %6733 = add i64 %6732, 2
  store i64 %6733, i64* %PC.i214
  %6734 = and i64 %6731, 4294967295
  store i64 %6734, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_41f4b6, %struct.Memory** %MEMORY
  %loadMem_41f4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 33
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6737 to i64*
  %6738 = load i64, i64* %PC.i213
  %6739 = add i64 %6738, 1
  store i64 %6739, i64* %PC.i213
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6742 = bitcast %union.anon* %6741 to i32*
  %6743 = load i32, i32* %6742, align 8
  %6744 = sext i32 %6743 to i64
  %6745 = lshr i64 %6744, 32
  store i64 %6745, i64* %6740, align 8
  store %struct.Memory* %loadMem_41f4b8, %struct.Memory** %MEMORY
  %loadMem_41f4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6747 = getelementptr inbounds %struct.GPR, %struct.GPR* %6746, i32 0, i32 33
  %6748 = getelementptr inbounds %struct.Reg, %struct.Reg* %6747, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6748 to i64*
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6750 = getelementptr inbounds %struct.GPR, %struct.GPR* %6749, i32 0, i32 9
  %6751 = getelementptr inbounds %struct.Reg, %struct.Reg* %6750, i32 0, i32 0
  %RSI.i211 = bitcast %union.anon* %6751 to i64*
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6753 = getelementptr inbounds %struct.GPR, %struct.GPR* %6752, i32 0, i32 15
  %6754 = getelementptr inbounds %struct.Reg, %struct.Reg* %6753, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %6754 to i64*
  %6755 = load i64, i64* %RBP.i212
  %6756 = sub i64 %6755, 40
  %6757 = load i64, i64* %PC.i210
  %6758 = add i64 %6757, 4
  store i64 %6758, i64* %PC.i210
  %6759 = inttoptr i64 %6756 to i64*
  %6760 = load i64, i64* %6759
  store i64 %6760, i64* %RSI.i211, align 8
  store %struct.Memory* %loadMem_41f4b9, %struct.Memory** %MEMORY
  %loadMem_41f4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 33
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6763 to i64*
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 9
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6766 to i64*
  %6767 = load i64, i64* %RSI.i
  %6768 = add i64 %6767, 1224
  %6769 = load i64, i64* %PC.i206
  %6770 = add i64 %6769, 6
  store i64 %6770, i64* %PC.i206
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6772 = bitcast %union.anon* %6771 to i32*
  %6773 = load i32, i32* %6772, align 8
  %6774 = zext i32 %6773 to i64
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6776 = bitcast %union.anon* %6775 to i32*
  %6777 = load i32, i32* %6776, align 8
  %6778 = zext i32 %6777 to i64
  %6779 = inttoptr i64 %6768 to i32*
  %6780 = load i32, i32* %6779
  %6781 = sext i32 %6780 to i64
  %6782 = shl i64 %6778, 32
  %6783 = or i64 %6782, %6774
  %6784 = sdiv i64 %6783, %6781
  %6785 = shl i64 %6784, 32
  %6786 = ashr exact i64 %6785, 32
  %6787 = icmp eq i64 %6784, %6786
  br i1 %6787, label %6792, label %6788

; <label>:6788:                                   ; preds = %block_41f499
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6790 = load i64, i64* %6789, align 8
  %6791 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6790, %struct.Memory* %loadMem_41f4bd)
  br label %routine_idivl_0x4c8__rsi_.exit

; <label>:6792:                                   ; preds = %block_41f499
  %6793 = srem i64 %6783, %6781
  %6794 = getelementptr inbounds %union.anon, %union.anon* %6771, i64 0, i32 0
  %6795 = and i64 %6784, 4294967295
  store i64 %6795, i64* %6794, align 8
  %6796 = getelementptr inbounds %union.anon, %union.anon* %6775, i64 0, i32 0
  %6797 = and i64 %6793, 4294967295
  store i64 %6797, i64* %6796, align 8
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6798, align 1
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6799, align 1
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6800, align 1
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6801, align 1
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6802, align 1
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6803, align 1
  br label %routine_idivl_0x4c8__rsi_.exit

routine_idivl_0x4c8__rsi_.exit:                   ; preds = %6788, %6792
  %6804 = phi %struct.Memory* [ %6791, %6788 ], [ %loadMem_41f4bd, %6792 ]
  store %struct.Memory* %6804, %struct.Memory** %MEMORY
  %loadMem_41f4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 33
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 7
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %6810 to i64*
  %6811 = load i64, i64* %RDX.i205
  %6812 = load i64, i64* %PC.i204
  %6813 = add i64 %6812, 3
  store i64 %6813, i64* %PC.i204
  %6814 = trunc i64 %6811 to i32
  %6815 = sub i32 %6814, 1
  %6816 = zext i32 %6815 to i64
  store i64 %6816, i64* %RDX.i205, align 8
  %6817 = icmp ult i32 %6814, 1
  %6818 = zext i1 %6817 to i8
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6818, i8* %6819, align 1
  %6820 = and i32 %6815, 255
  %6821 = call i32 @llvm.ctpop.i32(i32 %6820)
  %6822 = trunc i32 %6821 to i8
  %6823 = and i8 %6822, 1
  %6824 = xor i8 %6823, 1
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6824, i8* %6825, align 1
  %6826 = xor i64 1, %6811
  %6827 = trunc i64 %6826 to i32
  %6828 = xor i32 %6827, %6815
  %6829 = lshr i32 %6828, 4
  %6830 = trunc i32 %6829 to i8
  %6831 = and i8 %6830, 1
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6831, i8* %6832, align 1
  %6833 = icmp eq i32 %6815, 0
  %6834 = zext i1 %6833 to i8
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6834, i8* %6835, align 1
  %6836 = lshr i32 %6815, 31
  %6837 = trunc i32 %6836 to i8
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6837, i8* %6838, align 1
  %6839 = lshr i32 %6814, 31
  %6840 = xor i32 %6836, %6839
  %6841 = add i32 %6840, %6839
  %6842 = icmp eq i32 %6841, 2
  %6843 = zext i1 %6842 to i8
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6843, i8* %6844, align 1
  store %struct.Memory* %loadMem_41f4c3, %struct.Memory** %MEMORY
  %loadMem_41f4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 33
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6847 to i64*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 11
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %RDI.i203 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %PC.i202
  %6852 = add i64 %6851, 8
  store i64 %6852, i64* %PC.i202
  %6853 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6853, i64* %RDI.i203, align 8
  store %struct.Memory* %loadMem_41f4c6, %struct.Memory** %MEMORY
  %loadMem_41f4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6855 = getelementptr inbounds %struct.GPR, %struct.GPR* %6854, i32 0, i32 33
  %6856 = getelementptr inbounds %struct.Reg, %struct.Reg* %6855, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6856 to i64*
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 5
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %6859 to i64*
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 11
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %RDI.i201 = bitcast %union.anon* %6862 to i64*
  %6863 = load i64, i64* %RDI.i201
  %6864 = add i64 %6863, 20
  %6865 = load i64, i64* %PC.i199
  %6866 = add i64 %6865, 3
  store i64 %6866, i64* %PC.i199
  %6867 = inttoptr i64 %6864 to i32*
  %6868 = load i32, i32* %6867
  %6869 = zext i32 %6868 to i64
  store i64 %6869, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_41f4ce, %struct.Memory** %MEMORY
  %loadMem_41f4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 33
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %6872 to i64*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 5
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %6875 to i64*
  %6876 = load i64, i64* %RCX.i198
  %6877 = load i64, i64* %PC.i197
  %6878 = add i64 %6877, 3
  store i64 %6878, i64* %PC.i197
  %6879 = trunc i64 %6876 to i32
  %6880 = add i32 1, %6879
  %6881 = zext i32 %6880 to i64
  store i64 %6881, i64* %RCX.i198, align 8
  %6882 = icmp ult i32 %6880, %6879
  %6883 = icmp ult i32 %6880, 1
  %6884 = or i1 %6882, %6883
  %6885 = zext i1 %6884 to i8
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6885, i8* %6886, align 1
  %6887 = and i32 %6880, 255
  %6888 = call i32 @llvm.ctpop.i32(i32 %6887)
  %6889 = trunc i32 %6888 to i8
  %6890 = and i8 %6889, 1
  %6891 = xor i8 %6890, 1
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6891, i8* %6892, align 1
  %6893 = xor i64 1, %6876
  %6894 = trunc i64 %6893 to i32
  %6895 = xor i32 %6894, %6880
  %6896 = lshr i32 %6895, 4
  %6897 = trunc i32 %6896 to i8
  %6898 = and i8 %6897, 1
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6898, i8* %6899, align 1
  %6900 = icmp eq i32 %6880, 0
  %6901 = zext i1 %6900 to i8
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6901, i8* %6902, align 1
  %6903 = lshr i32 %6880, 31
  %6904 = trunc i32 %6903 to i8
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6904, i8* %6905, align 1
  %6906 = lshr i32 %6879, 31
  %6907 = xor i32 %6903, %6906
  %6908 = add i32 %6907, %6903
  %6909 = icmp eq i32 %6908, 2
  %6910 = zext i1 %6909 to i8
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6910, i8* %6911, align 1
  store %struct.Memory* %loadMem_41f4d1, %struct.Memory** %MEMORY
  %loadMem_41f4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 33
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6914 to i64*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 5
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %ECX.i195 = bitcast %union.anon* %6917 to i32*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 7
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %RDX.i196 = bitcast %union.anon* %6920 to i64*
  %6921 = load i64, i64* %RDX.i196
  %6922 = load i32, i32* %ECX.i195
  %6923 = zext i32 %6922 to i64
  %6924 = load i64, i64* %PC.i194
  %6925 = add i64 %6924, 3
  store i64 %6925, i64* %PC.i194
  %6926 = shl i64 %6921, 32
  %6927 = ashr exact i64 %6926, 32
  %6928 = shl i64 %6923, 32
  %6929 = ashr exact i64 %6928, 32
  %6930 = mul i64 %6929, %6927
  %6931 = trunc i64 %6930 to i32
  %6932 = and i64 %6930, 4294967295
  store i64 %6932, i64* %RDX.i196, align 8
  %6933 = shl i64 %6930, 32
  %6934 = ashr exact i64 %6933, 32
  %6935 = icmp ne i64 %6934, %6930
  %6936 = zext i1 %6935 to i8
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6936, i8* %6937, align 1
  %6938 = and i32 %6931, 255
  %6939 = call i32 @llvm.ctpop.i32(i32 %6938)
  %6940 = trunc i32 %6939 to i8
  %6941 = and i8 %6940, 1
  %6942 = xor i8 %6941, 1
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6942, i8* %6943, align 1
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6944, align 1
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6945, align 1
  %6946 = lshr i32 %6931, 31
  %6947 = trunc i32 %6946 to i8
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6947, i8* %6948, align 1
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6936, i8* %6949, align 1
  store %struct.Memory* %loadMem_41f4d4, %struct.Memory** %MEMORY
  %loadMem_41f4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 33
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 11
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RDI.i193 = bitcast %union.anon* %6955 to i64*
  %6956 = load i64, i64* %PC.i192
  %6957 = add i64 %6956, 8
  store i64 %6957, i64* %PC.i192
  %6958 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6958, i64* %RDI.i193, align 8
  store %struct.Memory* %loadMem_41f4d7, %struct.Memory** %MEMORY
  %loadMem_41f4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 33
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6961 to i64*
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 11
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %RDI.i190 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6965, i64 0, i64 0
  %YMM0.i191 = bitcast %union.VectorReg* %6966 to %"class.std::bitset"*
  %6967 = bitcast %"class.std::bitset"* %YMM0.i191 to i8*
  %6968 = load i64, i64* %RDI.i190
  %6969 = add i64 %6968, 71896
  %6970 = load i64, i64* %PC.i189
  %6971 = add i64 %6970, 8
  store i64 %6971, i64* %PC.i189
  %6972 = inttoptr i64 %6969 to double*
  %6973 = load double, double* %6972
  %6974 = bitcast i8* %6967 to double*
  store double %6973, double* %6974, align 1
  %6975 = getelementptr inbounds i8, i8* %6967, i64 8
  %6976 = bitcast i8* %6975 to double*
  store double 0.000000e+00, double* %6976, align 1
  store %struct.Memory* %loadMem_41f4df, %struct.Memory** %MEMORY
  %loadMem_41f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 33
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 11
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RDI.i188 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %PC.i187
  %6984 = add i64 %6983, 8
  store i64 %6984, i64* %PC.i187
  %6985 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6985, i64* %RDI.i188, align 8
  store %struct.Memory* %loadMem_41f4e7, %struct.Memory** %MEMORY
  %loadMem_41f4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 33
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6988 to i64*
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 11
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %RDI.i185 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6992, i64 0, i64 1
  %YMM1.i186 = bitcast %union.VectorReg* %6993 to %"class.std::bitset"*
  %6994 = bitcast %"class.std::bitset"* %YMM1.i186 to i8*
  %6995 = load i64, i64* %RDI.i185
  %6996 = add i64 %6995, 71908
  %6997 = load i64, i64* %PC.i184
  %6998 = add i64 %6997, 8
  store i64 %6998, i64* %PC.i184
  %6999 = inttoptr i64 %6996 to i32*
  %7000 = load i32, i32* %6999
  %7001 = sitofp i32 %7000 to double
  %7002 = bitcast i8* %6994 to double*
  store double %7001, double* %7002, align 1
  store %struct.Memory* %loadMem_41f4ef, %struct.Memory** %MEMORY
  %loadMem_41f4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7004 = getelementptr inbounds %struct.GPR, %struct.GPR* %7003, i32 0, i32 33
  %7005 = getelementptr inbounds %struct.Reg, %struct.Reg* %7004, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7005 to i64*
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7007 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7006, i64 0, i64 0
  %YMM0.i182 = bitcast %union.VectorReg* %7007 to %"class.std::bitset"*
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7008, i64 0, i64 1
  %XMM1.i183 = bitcast %union.VectorReg* %7009 to %union.vec128_t*
  %7010 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %7011 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %7012 = bitcast %union.vec128_t* %XMM1.i183 to i8*
  %7013 = load i64, i64* %PC.i181
  %7014 = add i64 %7013, 4
  store i64 %7014, i64* %PC.i181
  %7015 = bitcast i8* %7011 to double*
  %7016 = load double, double* %7015, align 1
  %7017 = getelementptr inbounds i8, i8* %7011, i64 8
  %7018 = bitcast i8* %7017 to i64*
  %7019 = load i64, i64* %7018, align 1
  %7020 = bitcast i8* %7012 to double*
  %7021 = load double, double* %7020, align 1
  %7022 = fmul double %7016, %7021
  %7023 = bitcast i8* %7010 to double*
  store double %7022, double* %7023, align 1
  %7024 = getelementptr inbounds i8, i8* %7010, i64 8
  %7025 = bitcast i8* %7024 to i64*
  store i64 %7019, i64* %7025, align 1
  store %struct.Memory* %loadMem_41f4f7, %struct.Memory** %MEMORY
  %loadMem_41f4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 33
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7028 to i64*
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 5
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %7031 to i64*
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7032, i64 0, i64 0
  %XMM0.i180 = bitcast %union.VectorReg* %7033 to %union.vec128_t*
  %7034 = bitcast %union.vec128_t* %XMM0.i180 to i8*
  %7035 = load i64, i64* %PC.i178
  %7036 = add i64 %7035, 4
  store i64 %7036, i64* %PC.i178
  %7037 = bitcast i8* %7034 to double*
  %7038 = load double, double* %7037, align 1
  %7039 = call double @llvm.trunc.f64(double %7038)
  %7040 = call double @llvm.fabs.f64(double %7039)
  %7041 = fcmp ogt double %7040, 0x41DFFFFFFFC00000
  %7042 = fptosi double %7039 to i32
  %7043 = zext i32 %7042 to i64
  %7044 = select i1 %7041, i64 2147483648, i64 %7043
  store i64 %7044, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_41f4fb, %struct.Memory** %MEMORY
  %loadMem_41f4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7046 = getelementptr inbounds %struct.GPR, %struct.GPR* %7045, i32 0, i32 33
  %7047 = getelementptr inbounds %struct.Reg, %struct.Reg* %7046, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %7047 to i64*
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 5
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %ECX.i176 = bitcast %union.anon* %7050 to i32*
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 7
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %7053 to i64*
  %7054 = load i64, i64* %RDX.i177
  %7055 = load i32, i32* %ECX.i176
  %7056 = zext i32 %7055 to i64
  %7057 = load i64, i64* %PC.i175
  %7058 = add i64 %7057, 2
  store i64 %7058, i64* %PC.i175
  %7059 = trunc i64 %7054 to i32
  %7060 = add i32 %7055, %7059
  %7061 = zext i32 %7060 to i64
  store i64 %7061, i64* %RDX.i177, align 8
  %7062 = icmp ult i32 %7060, %7059
  %7063 = icmp ult i32 %7060, %7055
  %7064 = or i1 %7062, %7063
  %7065 = zext i1 %7064 to i8
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7065, i8* %7066, align 1
  %7067 = and i32 %7060, 255
  %7068 = call i32 @llvm.ctpop.i32(i32 %7067)
  %7069 = trunc i32 %7068 to i8
  %7070 = and i8 %7069, 1
  %7071 = xor i8 %7070, 1
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7071, i8* %7072, align 1
  %7073 = xor i64 %7056, %7054
  %7074 = trunc i64 %7073 to i32
  %7075 = xor i32 %7074, %7060
  %7076 = lshr i32 %7075, 4
  %7077 = trunc i32 %7076 to i8
  %7078 = and i8 %7077, 1
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7078, i8* %7079, align 1
  %7080 = icmp eq i32 %7060, 0
  %7081 = zext i1 %7080 to i8
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7081, i8* %7082, align 1
  %7083 = lshr i32 %7060, 31
  %7084 = trunc i32 %7083 to i8
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7084, i8* %7085, align 1
  %7086 = lshr i32 %7059, 31
  %7087 = lshr i32 %7055, 31
  %7088 = xor i32 %7083, %7086
  %7089 = xor i32 %7083, %7087
  %7090 = add i32 %7088, %7089
  %7091 = icmp eq i32 %7090, 2
  %7092 = zext i1 %7091 to i8
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7092, i8* %7093, align 1
  store %struct.Memory* %loadMem_41f4ff, %struct.Memory** %MEMORY
  %loadMem_41f501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7095 = getelementptr inbounds %struct.GPR, %struct.GPR* %7094, i32 0, i32 33
  %7096 = getelementptr inbounds %struct.Reg, %struct.Reg* %7095, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %7096 to i64*
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 7
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %7099 to i64*
  %7100 = load i64, i64* %RDX.i174
  %7101 = load i64, i64* %PC.i173
  %7102 = add i64 %7101, 2
  store i64 %7102, i64* %PC.i173
  %7103 = trunc i64 %7100 to i32
  %7104 = shl i32 %7103, 1
  %7105 = icmp slt i32 %7103, 0
  %7106 = icmp slt i32 %7104, 0
  %7107 = xor i1 %7105, %7106
  %7108 = zext i32 %7104 to i64
  store i64 %7108, i64* %RDX.i174, align 8
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7110 = zext i1 %7105 to i8
  store i8 %7110, i8* %7109, align 1
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7112 = and i32 %7104, 254
  %7113 = call i32 @llvm.ctpop.i32(i32 %7112)
  %7114 = trunc i32 %7113 to i8
  %7115 = and i8 %7114, 1
  %7116 = xor i8 %7115, 1
  store i8 %7116, i8* %7111, align 1
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7117, align 1
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7119 = icmp eq i32 %7104, 0
  %7120 = zext i1 %7119 to i8
  store i8 %7120, i8* %7118, align 1
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7122 = lshr i32 %7104, 31
  %7123 = trunc i32 %7122 to i8
  store i8 %7123, i8* %7121, align 1
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7125 = zext i1 %7107 to i8
  store i8 %7125, i8* %7124, align 1
  store %struct.Memory* %loadMem_41f501, %struct.Memory** %MEMORY
  %loadMem_41f504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7127 = getelementptr inbounds %struct.GPR, %struct.GPR* %7126, i32 0, i32 33
  %7128 = getelementptr inbounds %struct.Reg, %struct.Reg* %7127, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %7128 to i64*
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7130 = getelementptr inbounds %struct.GPR, %struct.GPR* %7129, i32 0, i32 11
  %7131 = getelementptr inbounds %struct.Reg, %struct.Reg* %7130, i32 0, i32 0
  %RDI.i172 = bitcast %union.anon* %7131 to i64*
  %7132 = load i64, i64* %PC.i171
  %7133 = add i64 %7132, 8
  store i64 %7133, i64* %PC.i171
  %7134 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7134, i64* %RDI.i172, align 8
  store %struct.Memory* %loadMem_41f504, %struct.Memory** %MEMORY
  %loadMem_41f50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 7
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %EDX.i170 = bitcast %union.anon* %7140 to i32*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 11
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7143 to i64*
  %7144 = load i64, i64* %RDI.i
  %7145 = add i64 %7144, 72448
  %7146 = load i32, i32* %EDX.i170
  %7147 = zext i32 %7146 to i64
  %7148 = load i64, i64* %PC.i169
  %7149 = add i64 %7148, 6
  store i64 %7149, i64* %PC.i169
  %7150 = inttoptr i64 %7145 to i32*
  store i32 %7146, i32* %7150
  store %struct.Memory* %loadMem_41f50c, %struct.Memory** %MEMORY
  %loadMem_41f512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 33
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7153 to i64*
  %7154 = load i64, i64* %PC.i168
  %7155 = add i64 %7154, 101
  %7156 = load i64, i64* %PC.i168
  %7157 = add i64 %7156, 5
  store i64 %7157, i64* %PC.i168
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7155, i64* %7158, align 8
  store %struct.Memory* %loadMem_41f512, %struct.Memory** %MEMORY
  br label %block_.L_41f577

block_.L_41f517:                                  ; preds = %block_41f484, %block_.L_41f46f
  %loadMem_41f517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 33
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7161 to i64*
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 1
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %PC.i166
  %7166 = add i64 %7165, 8
  store i64 %7166, i64* %PC.i166
  %7167 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7167, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_41f517, %struct.Memory** %MEMORY
  %loadMem_41f51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 33
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 1
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 5
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %7176 to i64*
  %7177 = load i64, i64* %RAX.i164
  %7178 = load i64, i64* %PC.i163
  %7179 = add i64 %7178, 2
  store i64 %7179, i64* %PC.i163
  %7180 = inttoptr i64 %7177 to i32*
  %7181 = load i32, i32* %7180
  %7182 = zext i32 %7181 to i64
  store i64 %7182, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_41f51f, %struct.Memory** %MEMORY
  %loadMem_41f521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 5
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RCX.i162
  %7190 = load i64, i64* %PC.i161
  %7191 = add i64 %7190, 7
  store i64 %7191, i64* %PC.i161
  %7192 = trunc i64 %7189 to i32
  %7193 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %7194 = sub i32 %7192, %7193
  %7195 = zext i32 %7194 to i64
  store i64 %7195, i64* %RCX.i162, align 8
  %7196 = icmp ult i32 %7192, %7193
  %7197 = zext i1 %7196 to i8
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7197, i8* %7198, align 1
  %7199 = and i32 %7194, 255
  %7200 = call i32 @llvm.ctpop.i32(i32 %7199)
  %7201 = trunc i32 %7200 to i8
  %7202 = and i8 %7201, 1
  %7203 = xor i8 %7202, 1
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7203, i8* %7204, align 1
  %7205 = xor i32 %7193, %7192
  %7206 = xor i32 %7205, %7194
  %7207 = lshr i32 %7206, 4
  %7208 = trunc i32 %7207 to i8
  %7209 = and i8 %7208, 1
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7209, i8* %7210, align 1
  %7211 = icmp eq i32 %7194, 0
  %7212 = zext i1 %7211 to i8
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7212, i8* %7213, align 1
  %7214 = lshr i32 %7194, 31
  %7215 = trunc i32 %7214 to i8
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7215, i8* %7216, align 1
  %7217 = lshr i32 %7192, 31
  %7218 = lshr i32 %7193, 31
  %7219 = xor i32 %7218, %7217
  %7220 = xor i32 %7214, %7217
  %7221 = add i32 %7220, %7219
  %7222 = icmp eq i32 %7221, 2
  %7223 = zext i1 %7222 to i8
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7223, i8* %7224, align 1
  store %struct.Memory* %loadMem_41f521, %struct.Memory** %MEMORY
  %loadMem_41f528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7226 = getelementptr inbounds %struct.GPR, %struct.GPR* %7225, i32 0, i32 33
  %7227 = getelementptr inbounds %struct.Reg, %struct.Reg* %7226, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %7227 to i64*
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7229 = getelementptr inbounds %struct.GPR, %struct.GPR* %7228, i32 0, i32 5
  %7230 = getelementptr inbounds %struct.Reg, %struct.Reg* %7229, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %7230 to i64*
  %7231 = load i64, i64* %RCX.i160
  %7232 = load i64, i64* %PC.i159
  %7233 = add i64 %7232, 3
  store i64 %7233, i64* %PC.i159
  %7234 = trunc i64 %7231 to i32
  %7235 = sub i32 %7234, 1
  %7236 = zext i32 %7235 to i64
  store i64 %7236, i64* %RCX.i160, align 8
  %7237 = icmp ult i32 %7234, 1
  %7238 = zext i1 %7237 to i8
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7238, i8* %7239, align 1
  %7240 = and i32 %7235, 255
  %7241 = call i32 @llvm.ctpop.i32(i32 %7240)
  %7242 = trunc i32 %7241 to i8
  %7243 = and i8 %7242, 1
  %7244 = xor i8 %7243, 1
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7244, i8* %7245, align 1
  %7246 = xor i64 1, %7231
  %7247 = trunc i64 %7246 to i32
  %7248 = xor i32 %7247, %7235
  %7249 = lshr i32 %7248, 4
  %7250 = trunc i32 %7249 to i8
  %7251 = and i8 %7250, 1
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7251, i8* %7252, align 1
  %7253 = icmp eq i32 %7235, 0
  %7254 = zext i1 %7253 to i8
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7254, i8* %7255, align 1
  %7256 = lshr i32 %7235, 31
  %7257 = trunc i32 %7256 to i8
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7257, i8* %7258, align 1
  %7259 = lshr i32 %7234, 31
  %7260 = xor i32 %7256, %7259
  %7261 = add i32 %7260, %7259
  %7262 = icmp eq i32 %7261, 2
  %7263 = zext i1 %7262 to i8
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7263, i8* %7264, align 1
  store %struct.Memory* %loadMem_41f528, %struct.Memory** %MEMORY
  %loadMem_41f52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 33
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7267 to i64*
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 1
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %7270 to i64*
  %7271 = load i64, i64* %PC.i157
  %7272 = add i64 %7271, 8
  store i64 %7272, i64* %PC.i157
  %7273 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7273, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_41f52b, %struct.Memory** %MEMORY
  %loadMem_41f533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7275 = getelementptr inbounds %struct.GPR, %struct.GPR* %7274, i32 0, i32 33
  %7276 = getelementptr inbounds %struct.Reg, %struct.Reg* %7275, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %7276 to i64*
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7278 = getelementptr inbounds %struct.GPR, %struct.GPR* %7277, i32 0, i32 1
  %7279 = getelementptr inbounds %struct.Reg, %struct.Reg* %7278, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %7279 to i64*
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7281 = getelementptr inbounds %struct.GPR, %struct.GPR* %7280, i32 0, i32 7
  %7282 = getelementptr inbounds %struct.Reg, %struct.Reg* %7281, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %7282 to i64*
  %7283 = load i64, i64* %RAX.i155
  %7284 = add i64 %7283, 20
  %7285 = load i64, i64* %PC.i154
  %7286 = add i64 %7285, 3
  store i64 %7286, i64* %PC.i154
  %7287 = inttoptr i64 %7284 to i32*
  %7288 = load i32, i32* %7287
  %7289 = zext i32 %7288 to i64
  store i64 %7289, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_41f533, %struct.Memory** %MEMORY
  %loadMem_41f536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7291 = getelementptr inbounds %struct.GPR, %struct.GPR* %7290, i32 0, i32 33
  %7292 = getelementptr inbounds %struct.Reg, %struct.Reg* %7291, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7292 to i64*
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7294 = getelementptr inbounds %struct.GPR, %struct.GPR* %7293, i32 0, i32 7
  %7295 = getelementptr inbounds %struct.Reg, %struct.Reg* %7294, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %7295 to i64*
  %7296 = load i64, i64* %RDX.i153
  %7297 = load i64, i64* %PC.i152
  %7298 = add i64 %7297, 3
  store i64 %7298, i64* %PC.i152
  %7299 = trunc i64 %7296 to i32
  %7300 = add i32 1, %7299
  %7301 = zext i32 %7300 to i64
  store i64 %7301, i64* %RDX.i153, align 8
  %7302 = icmp ult i32 %7300, %7299
  %7303 = icmp ult i32 %7300, 1
  %7304 = or i1 %7302, %7303
  %7305 = zext i1 %7304 to i8
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7305, i8* %7306, align 1
  %7307 = and i32 %7300, 255
  %7308 = call i32 @llvm.ctpop.i32(i32 %7307)
  %7309 = trunc i32 %7308 to i8
  %7310 = and i8 %7309, 1
  %7311 = xor i8 %7310, 1
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7311, i8* %7312, align 1
  %7313 = xor i64 1, %7296
  %7314 = trunc i64 %7313 to i32
  %7315 = xor i32 %7314, %7300
  %7316 = lshr i32 %7315, 4
  %7317 = trunc i32 %7316 to i8
  %7318 = and i8 %7317, 1
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7318, i8* %7319, align 1
  %7320 = icmp eq i32 %7300, 0
  %7321 = zext i1 %7320 to i8
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7321, i8* %7322, align 1
  %7323 = lshr i32 %7300, 31
  %7324 = trunc i32 %7323 to i8
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7324, i8* %7325, align 1
  %7326 = lshr i32 %7299, 31
  %7327 = xor i32 %7323, %7326
  %7328 = add i32 %7327, %7323
  %7329 = icmp eq i32 %7328, 2
  %7330 = zext i1 %7329 to i8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7330, i8* %7331, align 1
  store %struct.Memory* %loadMem_41f536, %struct.Memory** %MEMORY
  %loadMem_41f539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7333 = getelementptr inbounds %struct.GPR, %struct.GPR* %7332, i32 0, i32 33
  %7334 = getelementptr inbounds %struct.Reg, %struct.Reg* %7333, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7334 to i64*
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7336 = getelementptr inbounds %struct.GPR, %struct.GPR* %7335, i32 0, i32 7
  %7337 = getelementptr inbounds %struct.Reg, %struct.Reg* %7336, i32 0, i32 0
  %EDX.i150 = bitcast %union.anon* %7337 to i32*
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7339 = getelementptr inbounds %struct.GPR, %struct.GPR* %7338, i32 0, i32 5
  %7340 = getelementptr inbounds %struct.Reg, %struct.Reg* %7339, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %7340 to i64*
  %7341 = load i64, i64* %RCX.i151
  %7342 = load i32, i32* %EDX.i150
  %7343 = zext i32 %7342 to i64
  %7344 = load i64, i64* %PC.i149
  %7345 = add i64 %7344, 3
  store i64 %7345, i64* %PC.i149
  %7346 = shl i64 %7341, 32
  %7347 = ashr exact i64 %7346, 32
  %7348 = shl i64 %7343, 32
  %7349 = ashr exact i64 %7348, 32
  %7350 = mul i64 %7349, %7347
  %7351 = trunc i64 %7350 to i32
  %7352 = and i64 %7350, 4294967295
  store i64 %7352, i64* %RCX.i151, align 8
  %7353 = shl i64 %7350, 32
  %7354 = ashr exact i64 %7353, 32
  %7355 = icmp ne i64 %7354, %7350
  %7356 = zext i1 %7355 to i8
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7356, i8* %7357, align 1
  %7358 = and i32 %7351, 255
  %7359 = call i32 @llvm.ctpop.i32(i32 %7358)
  %7360 = trunc i32 %7359 to i8
  %7361 = and i8 %7360, 1
  %7362 = xor i8 %7361, 1
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7362, i8* %7363, align 1
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7364, align 1
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7365, align 1
  %7366 = lshr i32 %7351, 31
  %7367 = trunc i32 %7366 to i8
  %7368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7367, i8* %7368, align 1
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7356, i8* %7369, align 1
  store %struct.Memory* %loadMem_41f539, %struct.Memory** %MEMORY
  %loadMem_41f53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 33
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7372 to i64*
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 1
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %7375 to i64*
  %7376 = load i64, i64* %PC.i147
  %7377 = add i64 %7376, 8
  store i64 %7377, i64* %PC.i147
  %7378 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7378, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_41f53c, %struct.Memory** %MEMORY
  %loadMem_41f544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7380 = getelementptr inbounds %struct.GPR, %struct.GPR* %7379, i32 0, i32 33
  %7381 = getelementptr inbounds %struct.Reg, %struct.Reg* %7380, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7381 to i64*
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 1
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %7384 to i64*
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7385, i64 0, i64 0
  %YMM0.i146 = bitcast %union.VectorReg* %7386 to %"class.std::bitset"*
  %7387 = bitcast %"class.std::bitset"* %YMM0.i146 to i8*
  %7388 = load i64, i64* %RAX.i145
  %7389 = add i64 %7388, 71896
  %7390 = load i64, i64* %PC.i144
  %7391 = add i64 %7390, 8
  store i64 %7391, i64* %PC.i144
  %7392 = inttoptr i64 %7389 to double*
  %7393 = load double, double* %7392
  %7394 = bitcast i8* %7387 to double*
  store double %7393, double* %7394, align 1
  %7395 = getelementptr inbounds i8, i8* %7387, i64 8
  %7396 = bitcast i8* %7395 to double*
  store double 0.000000e+00, double* %7396, align 1
  store %struct.Memory* %loadMem_41f544, %struct.Memory** %MEMORY
  %loadMem_41f54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 33
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7399 to i64*
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7401 = getelementptr inbounds %struct.GPR, %struct.GPR* %7400, i32 0, i32 1
  %7402 = getelementptr inbounds %struct.Reg, %struct.Reg* %7401, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %7402 to i64*
  %7403 = load i64, i64* %PC.i142
  %7404 = add i64 %7403, 8
  store i64 %7404, i64* %PC.i142
  %7405 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7405, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_41f54c, %struct.Memory** %MEMORY
  %loadMem_41f554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 33
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 1
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %7411 to i64*
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7413 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7412, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %7413 to %"class.std::bitset"*
  %7414 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %7415 = load i64, i64* %RAX.i141
  %7416 = add i64 %7415, 71908
  %7417 = load i64, i64* %PC.i140
  %7418 = add i64 %7417, 8
  store i64 %7418, i64* %PC.i140
  %7419 = inttoptr i64 %7416 to i32*
  %7420 = load i32, i32* %7419
  %7421 = sitofp i32 %7420 to double
  %7422 = bitcast i8* %7414 to double*
  store double %7421, double* %7422, align 1
  store %struct.Memory* %loadMem_41f554, %struct.Memory** %MEMORY
  %loadMem_41f55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7424 = getelementptr inbounds %struct.GPR, %struct.GPR* %7423, i32 0, i32 33
  %7425 = getelementptr inbounds %struct.Reg, %struct.Reg* %7424, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7425 to i64*
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7426, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %7427 to %"class.std::bitset"*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7428, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %7429 to %union.vec128_t*
  %7430 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7431 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7432 = bitcast %union.vec128_t* %XMM1.i to i8*
  %7433 = load i64, i64* %PC.i139
  %7434 = add i64 %7433, 4
  store i64 %7434, i64* %PC.i139
  %7435 = bitcast i8* %7431 to double*
  %7436 = load double, double* %7435, align 1
  %7437 = getelementptr inbounds i8, i8* %7431, i64 8
  %7438 = bitcast i8* %7437 to i64*
  %7439 = load i64, i64* %7438, align 1
  %7440 = bitcast i8* %7432 to double*
  %7441 = load double, double* %7440, align 1
  %7442 = fmul double %7436, %7441
  %7443 = bitcast i8* %7430 to double*
  store double %7442, double* %7443, align 1
  %7444 = getelementptr inbounds i8, i8* %7430, i64 8
  %7445 = bitcast i8* %7444 to i64*
  store i64 %7439, i64* %7445, align 1
  store %struct.Memory* %loadMem_41f55c, %struct.Memory** %MEMORY
  %loadMem_41f560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7447 = getelementptr inbounds %struct.GPR, %struct.GPR* %7446, i32 0, i32 33
  %7448 = getelementptr inbounds %struct.Reg, %struct.Reg* %7447, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7448 to i64*
  %7449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7450 = getelementptr inbounds %struct.GPR, %struct.GPR* %7449, i32 0, i32 7
  %7451 = getelementptr inbounds %struct.Reg, %struct.Reg* %7450, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7451 to i64*
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7452, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %7453 to %union.vec128_t*
  %7454 = bitcast %union.vec128_t* %XMM0.i to i8*
  %7455 = load i64, i64* %PC.i138
  %7456 = add i64 %7455, 4
  store i64 %7456, i64* %PC.i138
  %7457 = bitcast i8* %7454 to double*
  %7458 = load double, double* %7457, align 1
  %7459 = call double @llvm.trunc.f64(double %7458)
  %7460 = call double @llvm.fabs.f64(double %7459)
  %7461 = fcmp ogt double %7460, 0x41DFFFFFFFC00000
  %7462 = fptosi double %7459 to i32
  %7463 = zext i32 %7462 to i64
  %7464 = select i1 %7461, i64 2147483648, i64 %7463
  store i64 %7464, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_41f560, %struct.Memory** %MEMORY
  %loadMem_41f564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7466 = getelementptr inbounds %struct.GPR, %struct.GPR* %7465, i32 0, i32 33
  %7467 = getelementptr inbounds %struct.Reg, %struct.Reg* %7466, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7467 to i64*
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 7
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7470 to i32*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 5
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %7473 to i64*
  %7474 = load i64, i64* %RCX.i137
  %7475 = load i32, i32* %EDX.i
  %7476 = zext i32 %7475 to i64
  %7477 = load i64, i64* %PC.i136
  %7478 = add i64 %7477, 2
  store i64 %7478, i64* %PC.i136
  %7479 = trunc i64 %7474 to i32
  %7480 = add i32 %7475, %7479
  %7481 = zext i32 %7480 to i64
  store i64 %7481, i64* %RCX.i137, align 8
  %7482 = icmp ult i32 %7480, %7479
  %7483 = icmp ult i32 %7480, %7475
  %7484 = or i1 %7482, %7483
  %7485 = zext i1 %7484 to i8
  %7486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7485, i8* %7486, align 1
  %7487 = and i32 %7480, 255
  %7488 = call i32 @llvm.ctpop.i32(i32 %7487)
  %7489 = trunc i32 %7488 to i8
  %7490 = and i8 %7489, 1
  %7491 = xor i8 %7490, 1
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7491, i8* %7492, align 1
  %7493 = xor i64 %7476, %7474
  %7494 = trunc i64 %7493 to i32
  %7495 = xor i32 %7494, %7480
  %7496 = lshr i32 %7495, 4
  %7497 = trunc i32 %7496 to i8
  %7498 = and i8 %7497, 1
  %7499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7498, i8* %7499, align 1
  %7500 = icmp eq i32 %7480, 0
  %7501 = zext i1 %7500 to i8
  %7502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7501, i8* %7502, align 1
  %7503 = lshr i32 %7480, 31
  %7504 = trunc i32 %7503 to i8
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7504, i8* %7505, align 1
  %7506 = lshr i32 %7479, 31
  %7507 = lshr i32 %7475, 31
  %7508 = xor i32 %7503, %7506
  %7509 = xor i32 %7503, %7507
  %7510 = add i32 %7508, %7509
  %7511 = icmp eq i32 %7510, 2
  %7512 = zext i1 %7511 to i8
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7512, i8* %7513, align 1
  store %struct.Memory* %loadMem_41f564, %struct.Memory** %MEMORY
  %loadMem_41f566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7515 = getelementptr inbounds %struct.GPR, %struct.GPR* %7514, i32 0, i32 33
  %7516 = getelementptr inbounds %struct.Reg, %struct.Reg* %7515, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7516 to i64*
  %7517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7518 = getelementptr inbounds %struct.GPR, %struct.GPR* %7517, i32 0, i32 5
  %7519 = getelementptr inbounds %struct.Reg, %struct.Reg* %7518, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %7519 to i64*
  %7520 = load i64, i64* %RCX.i135
  %7521 = load i64, i64* %PC.i134
  %7522 = add i64 %7521, 2
  store i64 %7522, i64* %PC.i134
  %7523 = trunc i64 %7520 to i32
  %7524 = shl i32 %7523, 1
  %7525 = icmp slt i32 %7523, 0
  %7526 = icmp slt i32 %7524, 0
  %7527 = xor i1 %7525, %7526
  %7528 = zext i32 %7524 to i64
  store i64 %7528, i64* %RCX.i135, align 8
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7530 = zext i1 %7525 to i8
  store i8 %7530, i8* %7529, align 1
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7532 = and i32 %7524, 254
  %7533 = call i32 @llvm.ctpop.i32(i32 %7532)
  %7534 = trunc i32 %7533 to i8
  %7535 = and i8 %7534, 1
  %7536 = xor i8 %7535, 1
  store i8 %7536, i8* %7531, align 1
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7537, align 1
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7539 = icmp eq i32 %7524, 0
  %7540 = zext i1 %7539 to i8
  store i8 %7540, i8* %7538, align 1
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7542 = lshr i32 %7524, 31
  %7543 = trunc i32 %7542 to i8
  store i8 %7543, i8* %7541, align 1
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7545 = zext i1 %7527 to i8
  store i8 %7545, i8* %7544, align 1
  store %struct.Memory* %loadMem_41f566, %struct.Memory** %MEMORY
  %loadMem_41f569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7547 = getelementptr inbounds %struct.GPR, %struct.GPR* %7546, i32 0, i32 33
  %7548 = getelementptr inbounds %struct.Reg, %struct.Reg* %7547, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7548 to i64*
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 1
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %7551 to i64*
  %7552 = load i64, i64* %PC.i132
  %7553 = add i64 %7552, 8
  store i64 %7553, i64* %PC.i132
  %7554 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7554, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_41f569, %struct.Memory** %MEMORY
  %loadMem_41f571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 33
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7557 to i64*
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7559 = getelementptr inbounds %struct.GPR, %struct.GPR* %7558, i32 0, i32 5
  %7560 = getelementptr inbounds %struct.Reg, %struct.Reg* %7559, i32 0, i32 0
  %ECX.i130 = bitcast %union.anon* %7560 to i32*
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 1
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %7563 to i64*
  %7564 = load i64, i64* %RAX.i131
  %7565 = add i64 %7564, 72448
  %7566 = load i32, i32* %ECX.i130
  %7567 = zext i32 %7566 to i64
  %7568 = load i64, i64* %PC.i129
  %7569 = add i64 %7568, 6
  store i64 %7569, i64* %PC.i129
  %7570 = inttoptr i64 %7565 to i32*
  store i32 %7566, i32* %7570
  store %struct.Memory* %loadMem_41f571, %struct.Memory** %MEMORY
  br label %block_.L_41f577

block_.L_41f577:                                  ; preds = %block_.L_41f517, %routine_idivl_0x4c8__rsi_.exit
  %loadMem_41f577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 33
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7573 to i64*
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7575 = getelementptr inbounds %struct.GPR, %struct.GPR* %7574, i32 0, i32 1
  %7576 = getelementptr inbounds %struct.Reg, %struct.Reg* %7575, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %7576 to i64*
  %7577 = load i64, i64* %PC.i127
  %7578 = add i64 %7577, 8
  store i64 %7578, i64* %PC.i127
  %7579 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7579, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_41f577, %struct.Memory** %MEMORY
  %loadMem_41f57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 33
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7582 to i64*
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 1
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %7585 to i64*
  %7586 = load i64, i64* %RAX.i126
  %7587 = add i64 %7586, 2880
  %7588 = load i64, i64* %PC.i125
  %7589 = add i64 %7588, 7
  store i64 %7589, i64* %PC.i125
  %7590 = inttoptr i64 %7587 to i32*
  %7591 = load i32, i32* %7590
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7592, align 1
  %7593 = and i32 %7591, 255
  %7594 = call i32 @llvm.ctpop.i32(i32 %7593)
  %7595 = trunc i32 %7594 to i8
  %7596 = and i8 %7595, 1
  %7597 = xor i8 %7596, 1
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7597, i8* %7598, align 1
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7599, align 1
  %7600 = icmp eq i32 %7591, 0
  %7601 = zext i1 %7600 to i8
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7601, i8* %7602, align 1
  %7603 = lshr i32 %7591, 31
  %7604 = trunc i32 %7603 to i8
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7604, i8* %7605, align 1
  %7606 = lshr i32 %7591, 31
  %7607 = xor i32 %7603, %7606
  %7608 = add i32 %7607, %7606
  %7609 = icmp eq i32 %7608, 2
  %7610 = zext i1 %7609 to i8
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7610, i8* %7611, align 1
  store %struct.Memory* %loadMem_41f57f, %struct.Memory** %MEMORY
  %loadMem_41f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 33
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7614 to i64*
  %7615 = load i64, i64* %PC.i124
  %7616 = add i64 %7615, 60
  %7617 = load i64, i64* %PC.i124
  %7618 = add i64 %7617, 6
  %7619 = load i64, i64* %PC.i124
  %7620 = add i64 %7619, 6
  store i64 %7620, i64* %PC.i124
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7622 = load i8, i8* %7621, align 1
  %7623 = icmp eq i8 %7622, 0
  %7624 = zext i1 %7623 to i8
  store i8 %7624, i8* %BRANCH_TAKEN, align 1
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7626 = select i1 %7623, i64 %7616, i64 %7618
  store i64 %7626, i64* %7625, align 8
  store %struct.Memory* %loadMem_41f586, %struct.Memory** %MEMORY
  %loadBr_41f586 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f586 = icmp eq i8 %loadBr_41f586, 1
  br i1 %cmpBr_41f586, label %block_.L_41f5c2, label %block_41f58c

block_41f58c:                                     ; preds = %block_.L_41f577
  %loadMem_41f58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7628 = getelementptr inbounds %struct.GPR, %struct.GPR* %7627, i32 0, i32 33
  %7629 = getelementptr inbounds %struct.Reg, %struct.Reg* %7628, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7629 to i64*
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7631 = getelementptr inbounds %struct.GPR, %struct.GPR* %7630, i32 0, i32 1
  %7632 = getelementptr inbounds %struct.Reg, %struct.Reg* %7631, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %7632 to i64*
  %7633 = load i64, i64* %PC.i122
  %7634 = add i64 %7633, 8
  store i64 %7634, i64* %PC.i122
  %7635 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7635, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_41f58c, %struct.Memory** %MEMORY
  %loadMem_41f594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7637 = getelementptr inbounds %struct.GPR, %struct.GPR* %7636, i32 0, i32 33
  %7638 = getelementptr inbounds %struct.Reg, %struct.Reg* %7637, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7638 to i64*
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7640 = getelementptr inbounds %struct.GPR, %struct.GPR* %7639, i32 0, i32 1
  %7641 = getelementptr inbounds %struct.Reg, %struct.Reg* %7640, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %7641 to i64*
  %7642 = load i64, i64* %RAX.i121
  %7643 = add i64 %7642, 2884
  %7644 = load i64, i64* %PC.i120
  %7645 = add i64 %7644, 7
  store i64 %7645, i64* %PC.i120
  %7646 = inttoptr i64 %7643 to i32*
  %7647 = load i32, i32* %7646
  %7648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7648, align 1
  %7649 = and i32 %7647, 255
  %7650 = call i32 @llvm.ctpop.i32(i32 %7649)
  %7651 = trunc i32 %7650 to i8
  %7652 = and i8 %7651, 1
  %7653 = xor i8 %7652, 1
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7653, i8* %7654, align 1
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7655, align 1
  %7656 = icmp eq i32 %7647, 0
  %7657 = zext i1 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7657, i8* %7658, align 1
  %7659 = lshr i32 %7647, 31
  %7660 = trunc i32 %7659 to i8
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7660, i8* %7661, align 1
  %7662 = lshr i32 %7647, 31
  %7663 = xor i32 %7659, %7662
  %7664 = add i32 %7663, %7662
  %7665 = icmp eq i32 %7664, 2
  %7666 = zext i1 %7665 to i8
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7666, i8* %7667, align 1
  store %struct.Memory* %loadMem_41f594, %struct.Memory** %MEMORY
  %loadMem_41f59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 33
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7670 to i64*
  %7671 = load i64, i64* %PC.i119
  %7672 = add i64 %7671, 39
  %7673 = load i64, i64* %PC.i119
  %7674 = add i64 %7673, 6
  %7675 = load i64, i64* %PC.i119
  %7676 = add i64 %7675, 6
  store i64 %7676, i64* %PC.i119
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7678 = load i8, i8* %7677, align 1
  %7679 = icmp eq i8 %7678, 0
  %7680 = zext i1 %7679 to i8
  store i8 %7680, i8* %BRANCH_TAKEN, align 1
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7682 = select i1 %7679, i64 %7672, i64 %7674
  store i64 %7682, i64* %7681, align 8
  store %struct.Memory* %loadMem_41f59b, %struct.Memory** %MEMORY
  %loadBr_41f59b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f59b = icmp eq i8 %loadBr_41f59b, 1
  br i1 %cmpBr_41f59b, label %block_.L_41f5c2, label %block_41f5a1

block_41f5a1:                                     ; preds = %block_41f58c
  %loadMem_41f5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 33
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7685 to i64*
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 1
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %7688 to i64*
  %7689 = load i64, i64* %PC.i117
  %7690 = add i64 %7689, 8
  store i64 %7690, i64* %PC.i117
  %7691 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7691, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_41f5a1, %struct.Memory** %MEMORY
  %loadMem_41f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 33
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7694 to i64*
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 1
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %7697 to i64*
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 5
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %7700 to i64*
  %7701 = load i64, i64* %RAX.i115
  %7702 = add i64 %7701, 72448
  %7703 = load i64, i64* %PC.i114
  %7704 = add i64 %7703, 6
  store i64 %7704, i64* %PC.i114
  %7705 = inttoptr i64 %7702 to i32*
  %7706 = load i32, i32* %7705
  %7707 = zext i32 %7706 to i64
  store i64 %7707, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_41f5a9, %struct.Memory** %MEMORY
  %loadMem_41f5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 33
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 1
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %7713 to i64*
  %7714 = load i64, i64* %PC.i112
  %7715 = add i64 %7714, 8
  store i64 %7715, i64* %PC.i112
  %7716 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7716, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_41f5af, %struct.Memory** %MEMORY
  %loadMem_41f5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7718 = getelementptr inbounds %struct.GPR, %struct.GPR* %7717, i32 0, i32 33
  %7719 = getelementptr inbounds %struct.Reg, %struct.Reg* %7718, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %7719 to i64*
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7721 = getelementptr inbounds %struct.GPR, %struct.GPR* %7720, i32 0, i32 5
  %7722 = getelementptr inbounds %struct.Reg, %struct.Reg* %7721, i32 0, i32 0
  %ECX.i110 = bitcast %union.anon* %7722 to i32*
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 1
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7725 to i64*
  %7726 = load i64, i64* %RAX.i111
  %7727 = add i64 %7726, 72452
  %7728 = load i32, i32* %ECX.i110
  %7729 = zext i32 %7728 to i64
  %7730 = load i64, i64* %PC.i109
  %7731 = add i64 %7730, 6
  store i64 %7731, i64* %PC.i109
  %7732 = inttoptr i64 %7727 to i32*
  store i32 %7728, i32* %7732
  store %struct.Memory* %loadMem_41f5b7, %struct.Memory** %MEMORY
  %loadMem_41f5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7734 = getelementptr inbounds %struct.GPR, %struct.GPR* %7733, i32 0, i32 33
  %7735 = getelementptr inbounds %struct.Reg, %struct.Reg* %7734, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7735 to i64*
  %7736 = load i64, i64* %PC.i108
  %7737 = add i64 %7736, 36
  %7738 = load i64, i64* %PC.i108
  %7739 = add i64 %7738, 5
  store i64 %7739, i64* %PC.i108
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7737, i64* %7740, align 8
  store %struct.Memory* %loadMem_41f5bd, %struct.Memory** %MEMORY
  br label %block_.L_41f5e1

block_.L_41f5c2:                                  ; preds = %block_41f58c, %block_.L_41f577
  %loadMem_41f5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7742 = getelementptr inbounds %struct.GPR, %struct.GPR* %7741, i32 0, i32 33
  %7743 = getelementptr inbounds %struct.Reg, %struct.Reg* %7742, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7743 to i64*
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7745 = getelementptr inbounds %struct.GPR, %struct.GPR* %7744, i32 0, i32 1
  %7746 = getelementptr inbounds %struct.Reg, %struct.Reg* %7745, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %7746 to i64*
  %7747 = load i64, i64* %PC.i106
  %7748 = add i64 %7747, 8
  store i64 %7748, i64* %PC.i106
  %7749 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7749, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_41f5c2, %struct.Memory** %MEMORY
  %loadMem_41f5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7751 = getelementptr inbounds %struct.GPR, %struct.GPR* %7750, i32 0, i32 33
  %7752 = getelementptr inbounds %struct.Reg, %struct.Reg* %7751, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %7752 to i64*
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7754 = getelementptr inbounds %struct.GPR, %struct.GPR* %7753, i32 0, i32 1
  %7755 = getelementptr inbounds %struct.Reg, %struct.Reg* %7754, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %7755 to i64*
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7757 = getelementptr inbounds %struct.GPR, %struct.GPR* %7756, i32 0, i32 5
  %7758 = getelementptr inbounds %struct.Reg, %struct.Reg* %7757, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %7758 to i64*
  %7759 = load i64, i64* %RAX.i104
  %7760 = add i64 %7759, 72448
  %7761 = load i64, i64* %PC.i103
  %7762 = add i64 %7761, 6
  store i64 %7762, i64* %PC.i103
  %7763 = inttoptr i64 %7760 to i32*
  %7764 = load i32, i32* %7763
  %7765 = zext i32 %7764 to i64
  store i64 %7765, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_41f5ca, %struct.Memory** %MEMORY
  %loadMem_41f5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7767 = getelementptr inbounds %struct.GPR, %struct.GPR* %7766, i32 0, i32 33
  %7768 = getelementptr inbounds %struct.Reg, %struct.Reg* %7767, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7768 to i64*
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7770 = getelementptr inbounds %struct.GPR, %struct.GPR* %7769, i32 0, i32 5
  %7771 = getelementptr inbounds %struct.Reg, %struct.Reg* %7770, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %7771 to i64*
  %7772 = load i64, i64* %RCX.i102
  %7773 = load i64, i64* %PC.i101
  %7774 = add i64 %7773, 3
  store i64 %7774, i64* %PC.i101
  %7775 = trunc i64 %7772 to i32
  %7776 = add i32 1, %7775
  %7777 = zext i32 %7776 to i64
  store i64 %7777, i64* %RCX.i102, align 8
  %7778 = icmp ult i32 %7776, %7775
  %7779 = icmp ult i32 %7776, 1
  %7780 = or i1 %7778, %7779
  %7781 = zext i1 %7780 to i8
  %7782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7781, i8* %7782, align 1
  %7783 = and i32 %7776, 255
  %7784 = call i32 @llvm.ctpop.i32(i32 %7783)
  %7785 = trunc i32 %7784 to i8
  %7786 = and i8 %7785, 1
  %7787 = xor i8 %7786, 1
  %7788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7787, i8* %7788, align 1
  %7789 = xor i64 1, %7772
  %7790 = trunc i64 %7789 to i32
  %7791 = xor i32 %7790, %7776
  %7792 = lshr i32 %7791, 4
  %7793 = trunc i32 %7792 to i8
  %7794 = and i8 %7793, 1
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7794, i8* %7795, align 1
  %7796 = icmp eq i32 %7776, 0
  %7797 = zext i1 %7796 to i8
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7797, i8* %7798, align 1
  %7799 = lshr i32 %7776, 31
  %7800 = trunc i32 %7799 to i8
  %7801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7800, i8* %7801, align 1
  %7802 = lshr i32 %7775, 31
  %7803 = xor i32 %7799, %7802
  %7804 = add i32 %7803, %7799
  %7805 = icmp eq i32 %7804, 2
  %7806 = zext i1 %7805 to i8
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7806, i8* %7807, align 1
  store %struct.Memory* %loadMem_41f5d0, %struct.Memory** %MEMORY
  %loadMem_41f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 33
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %7810 to i64*
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 1
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %7813 to i64*
  %7814 = load i64, i64* %PC.i99
  %7815 = add i64 %7814, 8
  store i64 %7815, i64* %PC.i99
  %7816 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7816, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_41f5d3, %struct.Memory** %MEMORY
  %loadMem_41f5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7818 = getelementptr inbounds %struct.GPR, %struct.GPR* %7817, i32 0, i32 33
  %7819 = getelementptr inbounds %struct.Reg, %struct.Reg* %7818, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7819 to i64*
  %7820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7821 = getelementptr inbounds %struct.GPR, %struct.GPR* %7820, i32 0, i32 5
  %7822 = getelementptr inbounds %struct.Reg, %struct.Reg* %7821, i32 0, i32 0
  %ECX.i97 = bitcast %union.anon* %7822 to i32*
  %7823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7824 = getelementptr inbounds %struct.GPR, %struct.GPR* %7823, i32 0, i32 1
  %7825 = getelementptr inbounds %struct.Reg, %struct.Reg* %7824, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %7825 to i64*
  %7826 = load i64, i64* %RAX.i98
  %7827 = add i64 %7826, 72452
  %7828 = load i32, i32* %ECX.i97
  %7829 = zext i32 %7828 to i64
  %7830 = load i64, i64* %PC.i96
  %7831 = add i64 %7830, 6
  store i64 %7831, i64* %PC.i96
  %7832 = inttoptr i64 %7827 to i32*
  store i32 %7828, i32* %7832
  store %struct.Memory* %loadMem_41f5db, %struct.Memory** %MEMORY
  br label %block_.L_41f5e1

block_.L_41f5e1:                                  ; preds = %block_.L_41f5c2, %block_41f5a1
  %loadMem_41f5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7834 = getelementptr inbounds %struct.GPR, %struct.GPR* %7833, i32 0, i32 33
  %7835 = getelementptr inbounds %struct.Reg, %struct.Reg* %7834, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7835 to i64*
  %7836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7837 = getelementptr inbounds %struct.GPR, %struct.GPR* %7836, i32 0, i32 1
  %7838 = getelementptr inbounds %struct.Reg, %struct.Reg* %7837, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %7838 to i64*
  %7839 = load i64, i64* %PC.i94
  %7840 = add i64 %7839, 8
  store i64 %7840, i64* %PC.i94
  %7841 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7841, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_41f5e1, %struct.Memory** %MEMORY
  %loadMem_41f5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7843 = getelementptr inbounds %struct.GPR, %struct.GPR* %7842, i32 0, i32 33
  %7844 = getelementptr inbounds %struct.Reg, %struct.Reg* %7843, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7844 to i64*
  %7845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7846 = getelementptr inbounds %struct.GPR, %struct.GPR* %7845, i32 0, i32 1
  %7847 = getelementptr inbounds %struct.Reg, %struct.Reg* %7846, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %7847 to i64*
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7849 = getelementptr inbounds %struct.GPR, %struct.GPR* %7848, i32 0, i32 5
  %7850 = getelementptr inbounds %struct.Reg, %struct.Reg* %7849, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %7850 to i64*
  %7851 = load i64, i64* %RAX.i92
  %7852 = add i64 %7851, 72448
  %7853 = load i64, i64* %PC.i91
  %7854 = add i64 %7853, 6
  store i64 %7854, i64* %PC.i91
  %7855 = inttoptr i64 %7852 to i32*
  %7856 = load i32, i32* %7855
  %7857 = zext i32 %7856 to i64
  store i64 %7857, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_41f5e9, %struct.Memory** %MEMORY
  %loadMem_41f5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7859 = getelementptr inbounds %struct.GPR, %struct.GPR* %7858, i32 0, i32 33
  %7860 = getelementptr inbounds %struct.Reg, %struct.Reg* %7859, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7860 to i64*
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7862 = getelementptr inbounds %struct.GPR, %struct.GPR* %7861, i32 0, i32 1
  %7863 = getelementptr inbounds %struct.Reg, %struct.Reg* %7862, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %7863 to i64*
  %7864 = load i64, i64* %PC.i89
  %7865 = add i64 %7864, 8
  store i64 %7865, i64* %PC.i89
  %7866 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7866, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_41f5ef, %struct.Memory** %MEMORY
  %loadMem_41f5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7868 = getelementptr inbounds %struct.GPR, %struct.GPR* %7867, i32 0, i32 33
  %7869 = getelementptr inbounds %struct.Reg, %struct.Reg* %7868, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7869 to i64*
  %7870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7871 = getelementptr inbounds %struct.GPR, %struct.GPR* %7870, i32 0, i32 5
  %7872 = getelementptr inbounds %struct.Reg, %struct.Reg* %7871, i32 0, i32 0
  %ECX.i87 = bitcast %union.anon* %7872 to i32*
  %7873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7874 = getelementptr inbounds %struct.GPR, %struct.GPR* %7873, i32 0, i32 1
  %7875 = getelementptr inbounds %struct.Reg, %struct.Reg* %7874, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %7875 to i64*
  %7876 = load i32, i32* %ECX.i87
  %7877 = zext i32 %7876 to i64
  %7878 = load i64, i64* %RAX.i88
  %7879 = add i64 %7878, 72452
  %7880 = load i64, i64* %PC.i86
  %7881 = add i64 %7880, 6
  store i64 %7881, i64* %PC.i86
  %7882 = inttoptr i64 %7879 to i32*
  %7883 = load i32, i32* %7882
  %7884 = sub i32 %7876, %7883
  %7885 = icmp ult i32 %7876, %7883
  %7886 = zext i1 %7885 to i8
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7886, i8* %7887, align 1
  %7888 = and i32 %7884, 255
  %7889 = call i32 @llvm.ctpop.i32(i32 %7888)
  %7890 = trunc i32 %7889 to i8
  %7891 = and i8 %7890, 1
  %7892 = xor i8 %7891, 1
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7892, i8* %7893, align 1
  %7894 = xor i32 %7883, %7876
  %7895 = xor i32 %7894, %7884
  %7896 = lshr i32 %7895, 4
  %7897 = trunc i32 %7896 to i8
  %7898 = and i8 %7897, 1
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7898, i8* %7899, align 1
  %7900 = icmp eq i32 %7884, 0
  %7901 = zext i1 %7900 to i8
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7901, i8* %7902, align 1
  %7903 = lshr i32 %7884, 31
  %7904 = trunc i32 %7903 to i8
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7904, i8* %7905, align 1
  %7906 = lshr i32 %7876, 31
  %7907 = lshr i32 %7883, 31
  %7908 = xor i32 %7907, %7906
  %7909 = xor i32 %7903, %7906
  %7910 = add i32 %7909, %7908
  %7911 = icmp eq i32 %7910, 2
  %7912 = zext i1 %7911 to i8
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7912, i8* %7913, align 1
  store %struct.Memory* %loadMem_41f5f7, %struct.Memory** %MEMORY
  %loadMem_41f5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7915 = getelementptr inbounds %struct.GPR, %struct.GPR* %7914, i32 0, i32 33
  %7916 = getelementptr inbounds %struct.Reg, %struct.Reg* %7915, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7916 to i64*
  %7917 = load i64, i64* %PC.i85
  %7918 = add i64 %7917, 28
  %7919 = load i64, i64* %PC.i85
  %7920 = add i64 %7919, 6
  %7921 = load i64, i64* %PC.i85
  %7922 = add i64 %7921, 6
  store i64 %7922, i64* %PC.i85
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7924 = load i8, i8* %7923, align 1
  %7925 = icmp ne i8 %7924, 0
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7927 = load i8, i8* %7926, align 1
  %7928 = icmp ne i8 %7927, 0
  %7929 = xor i1 %7925, %7928
  %7930 = xor i1 %7929, true
  %7931 = zext i1 %7930 to i8
  store i8 %7931, i8* %BRANCH_TAKEN, align 1
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7933 = select i1 %7929, i64 %7920, i64 %7918
  store i64 %7933, i64* %7932, align 8
  store %struct.Memory* %loadMem_41f5fd, %struct.Memory** %MEMORY
  %loadBr_41f5fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f5fd = icmp eq i8 %loadBr_41f5fd, 1
  br i1 %cmpBr_41f5fd, label %block_.L_41f619, label %block_41f603

block_41f603:                                     ; preds = %block_.L_41f5e1
  %loadMem_41f603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 33
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7936 to i64*
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 1
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %7939 to i64*
  %7940 = load i64, i64* %PC.i83
  %7941 = add i64 %7940, 8
  store i64 %7941, i64* %PC.i83
  %7942 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7942, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_41f603, %struct.Memory** %MEMORY
  %loadMem_41f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 33
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7945 to i64*
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7947 = getelementptr inbounds %struct.GPR, %struct.GPR* %7946, i32 0, i32 1
  %7948 = getelementptr inbounds %struct.Reg, %struct.Reg* %7947, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %7948 to i64*
  %7949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7950 = getelementptr inbounds %struct.GPR, %struct.GPR* %7949, i32 0, i32 5
  %7951 = getelementptr inbounds %struct.Reg, %struct.Reg* %7950, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %7951 to i64*
  %7952 = load i64, i64* %RAX.i81
  %7953 = add i64 %7952, 72448
  %7954 = load i64, i64* %PC.i80
  %7955 = add i64 %7954, 6
  store i64 %7955, i64* %PC.i80
  %7956 = inttoptr i64 %7953 to i32*
  %7957 = load i32, i32* %7956
  %7958 = zext i32 %7957 to i64
  store i64 %7958, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_41f60b, %struct.Memory** %MEMORY
  %loadMem_41f611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7960 = getelementptr inbounds %struct.GPR, %struct.GPR* %7959, i32 0, i32 33
  %7961 = getelementptr inbounds %struct.Reg, %struct.Reg* %7960, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7961 to i64*
  %7962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7963 = getelementptr inbounds %struct.GPR, %struct.GPR* %7962, i32 0, i32 5
  %7964 = getelementptr inbounds %struct.Reg, %struct.Reg* %7963, i32 0, i32 0
  %ECX.i78 = bitcast %union.anon* %7964 to i32*
  %7965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7966 = getelementptr inbounds %struct.GPR, %struct.GPR* %7965, i32 0, i32 15
  %7967 = getelementptr inbounds %struct.Reg, %struct.Reg* %7966, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %7967 to i64*
  %7968 = load i64, i64* %RBP.i79
  %7969 = sub i64 %7968, 44
  %7970 = load i32, i32* %ECX.i78
  %7971 = zext i32 %7970 to i64
  %7972 = load i64, i64* %PC.i77
  %7973 = add i64 %7972, 3
  store i64 %7973, i64* %PC.i77
  %7974 = inttoptr i64 %7969 to i32*
  store i32 %7970, i32* %7974
  store %struct.Memory* %loadMem_41f611, %struct.Memory** %MEMORY
  %loadMem_41f614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7976 = getelementptr inbounds %struct.GPR, %struct.GPR* %7975, i32 0, i32 33
  %7977 = getelementptr inbounds %struct.Reg, %struct.Reg* %7976, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7977 to i64*
  %7978 = load i64, i64* %PC.i76
  %7979 = add i64 %7978, 22
  %7980 = load i64, i64* %PC.i76
  %7981 = add i64 %7980, 5
  store i64 %7981, i64* %PC.i76
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7979, i64* %7982, align 8
  store %struct.Memory* %loadMem_41f614, %struct.Memory** %MEMORY
  br label %block_.L_41f62a

block_.L_41f619:                                  ; preds = %block_.L_41f5e1
  %loadMem_41f619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7984 = getelementptr inbounds %struct.GPR, %struct.GPR* %7983, i32 0, i32 33
  %7985 = getelementptr inbounds %struct.Reg, %struct.Reg* %7984, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7985 to i64*
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 1
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %7988 to i64*
  %7989 = load i64, i64* %PC.i74
  %7990 = add i64 %7989, 8
  store i64 %7990, i64* %PC.i74
  %7991 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7991, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_41f619, %struct.Memory** %MEMORY
  %loadMem_41f621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 33
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7994 to i64*
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7996 = getelementptr inbounds %struct.GPR, %struct.GPR* %7995, i32 0, i32 1
  %7997 = getelementptr inbounds %struct.Reg, %struct.Reg* %7996, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %7997 to i64*
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 5
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %8000 to i64*
  %8001 = load i64, i64* %RAX.i72
  %8002 = add i64 %8001, 72452
  %8003 = load i64, i64* %PC.i71
  %8004 = add i64 %8003, 6
  store i64 %8004, i64* %PC.i71
  %8005 = inttoptr i64 %8002 to i32*
  %8006 = load i32, i32* %8005
  %8007 = zext i32 %8006 to i64
  store i64 %8007, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_41f621, %struct.Memory** %MEMORY
  %loadMem_41f627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8009 = getelementptr inbounds %struct.GPR, %struct.GPR* %8008, i32 0, i32 33
  %8010 = getelementptr inbounds %struct.Reg, %struct.Reg* %8009, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %8010 to i64*
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 5
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %ECX.i69 = bitcast %union.anon* %8013 to i32*
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8015 = getelementptr inbounds %struct.GPR, %struct.GPR* %8014, i32 0, i32 15
  %8016 = getelementptr inbounds %struct.Reg, %struct.Reg* %8015, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %8016 to i64*
  %8017 = load i64, i64* %RBP.i70
  %8018 = sub i64 %8017, 44
  %8019 = load i32, i32* %ECX.i69
  %8020 = zext i32 %8019 to i64
  %8021 = load i64, i64* %PC.i68
  %8022 = add i64 %8021, 3
  store i64 %8022, i64* %PC.i68
  %8023 = inttoptr i64 %8018 to i32*
  store i32 %8019, i32* %8023
  store %struct.Memory* %loadMem_41f627, %struct.Memory** %MEMORY
  br label %block_.L_41f62a

block_.L_41f62a:                                  ; preds = %block_.L_41f619, %block_41f603
  %loadMem_41f62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8025 = getelementptr inbounds %struct.GPR, %struct.GPR* %8024, i32 0, i32 33
  %8026 = getelementptr inbounds %struct.Reg, %struct.Reg* %8025, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %8026 to i64*
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8028 = getelementptr inbounds %struct.GPR, %struct.GPR* %8027, i32 0, i32 1
  %8029 = getelementptr inbounds %struct.Reg, %struct.Reg* %8028, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %8029 to i64*
  %8030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8031 = getelementptr inbounds %struct.GPR, %struct.GPR* %8030, i32 0, i32 15
  %8032 = getelementptr inbounds %struct.Reg, %struct.Reg* %8031, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %8032 to i64*
  %8033 = load i64, i64* %RBP.i67
  %8034 = sub i64 %8033, 44
  %8035 = load i64, i64* %PC.i65
  %8036 = add i64 %8035, 3
  store i64 %8036, i64* %PC.i65
  %8037 = inttoptr i64 %8034 to i32*
  %8038 = load i32, i32* %8037
  %8039 = zext i32 %8038 to i64
  store i64 %8039, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_41f62a, %struct.Memory** %MEMORY
  %loadMem_41f62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8041 = getelementptr inbounds %struct.GPR, %struct.GPR* %8040, i32 0, i32 33
  %8042 = getelementptr inbounds %struct.Reg, %struct.Reg* %8041, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8042 to i64*
  %8043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8044 = getelementptr inbounds %struct.GPR, %struct.GPR* %8043, i32 0, i32 5
  %8045 = getelementptr inbounds %struct.Reg, %struct.Reg* %8044, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %8045 to i64*
  %8046 = load i64, i64* %PC.i63
  %8047 = add i64 %8046, 8
  store i64 %8047, i64* %PC.i63
  %8048 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8048, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_41f62d, %struct.Memory** %MEMORY
  %loadMem_41f635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8050 = getelementptr inbounds %struct.GPR, %struct.GPR* %8049, i32 0, i32 33
  %8051 = getelementptr inbounds %struct.Reg, %struct.Reg* %8050, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %8051 to i64*
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8053 = getelementptr inbounds %struct.GPR, %struct.GPR* %8052, i32 0, i32 1
  %8054 = getelementptr inbounds %struct.Reg, %struct.Reg* %8053, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %8054 to i32*
  %8055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8056 = getelementptr inbounds %struct.GPR, %struct.GPR* %8055, i32 0, i32 5
  %8057 = getelementptr inbounds %struct.Reg, %struct.Reg* %8056, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %8057 to i64*
  %8058 = load i64, i64* %RCX.i62
  %8059 = add i64 %8058, 72456
  %8060 = load i32, i32* %EAX.i61
  %8061 = zext i32 %8060 to i64
  %8062 = load i64, i64* %PC.i60
  %8063 = add i64 %8062, 6
  store i64 %8063, i64* %PC.i60
  %8064 = inttoptr i64 %8059 to i32*
  store i32 %8060, i32* %8064
  store %struct.Memory* %loadMem_41f635, %struct.Memory** %MEMORY
  %loadMem_41f63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8066 = getelementptr inbounds %struct.GPR, %struct.GPR* %8065, i32 0, i32 33
  %8067 = getelementptr inbounds %struct.Reg, %struct.Reg* %8066, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8067 to i64*
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8069 = getelementptr inbounds %struct.GPR, %struct.GPR* %8068, i32 0, i32 5
  %8070 = getelementptr inbounds %struct.Reg, %struct.Reg* %8069, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %8070 to i64*
  %8071 = load i64, i64* %PC.i58
  %8072 = add i64 %8071, 8
  store i64 %8072, i64* %PC.i58
  %8073 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %8073, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_41f63b, %struct.Memory** %MEMORY
  %loadMem_41f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8075 = getelementptr inbounds %struct.GPR, %struct.GPR* %8074, i32 0, i32 33
  %8076 = getelementptr inbounds %struct.Reg, %struct.Reg* %8075, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %8076 to i64*
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8078 = getelementptr inbounds %struct.GPR, %struct.GPR* %8077, i32 0, i32 5
  %8079 = getelementptr inbounds %struct.Reg, %struct.Reg* %8078, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %8079 to i64*
  %8080 = load i64, i64* %RCX.i57
  %8081 = add i64 %8080, 1316
  %8082 = load i64, i64* %PC.i56
  %8083 = add i64 %8082, 7
  store i64 %8083, i64* %PC.i56
  %8084 = inttoptr i64 %8081 to i32*
  %8085 = load i32, i32* %8084
  %8086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8086, align 1
  %8087 = and i32 %8085, 255
  %8088 = call i32 @llvm.ctpop.i32(i32 %8087)
  %8089 = trunc i32 %8088 to i8
  %8090 = and i8 %8089, 1
  %8091 = xor i8 %8090, 1
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8091, i8* %8092, align 1
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8093, align 1
  %8094 = icmp eq i32 %8085, 0
  %8095 = zext i1 %8094 to i8
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8095, i8* %8096, align 1
  %8097 = lshr i32 %8085, 31
  %8098 = trunc i32 %8097 to i8
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8098, i8* %8099, align 1
  %8100 = lshr i32 %8085, 31
  %8101 = xor i32 %8097, %8100
  %8102 = add i32 %8101, %8100
  %8103 = icmp eq i32 %8102, 2
  %8104 = zext i1 %8103 to i8
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8104, i8* %8105, align 1
  store %struct.Memory* %loadMem_41f643, %struct.Memory** %MEMORY
  %loadMem_41f64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 33
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8108 to i64*
  %8109 = load i64, i64* %PC.i55
  %8110 = add i64 %8109, 45
  %8111 = load i64, i64* %PC.i55
  %8112 = add i64 %8111, 6
  %8113 = load i64, i64* %PC.i55
  %8114 = add i64 %8113, 6
  store i64 %8114, i64* %PC.i55
  %8115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8116 = load i8, i8* %8115, align 1
  %8117 = icmp eq i8 %8116, 0
  %8118 = zext i1 %8117 to i8
  store i8 %8118, i8* %BRANCH_TAKEN, align 1
  %8119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8120 = select i1 %8117, i64 %8110, i64 %8112
  store i64 %8120, i64* %8119, align 8
  store %struct.Memory* %loadMem_41f64a, %struct.Memory** %MEMORY
  %loadBr_41f64a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f64a = icmp eq i8 %loadBr_41f64a, 1
  br i1 %cmpBr_41f64a, label %block_.L_41f677, label %block_41f650

block_41f650:                                     ; preds = %block_.L_41f62a
  %loadMem_41f650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8122 = getelementptr inbounds %struct.GPR, %struct.GPR* %8121, i32 0, i32 33
  %8123 = getelementptr inbounds %struct.Reg, %struct.Reg* %8122, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8123 to i64*
  %8124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8125 = getelementptr inbounds %struct.GPR, %struct.GPR* %8124, i32 0, i32 1
  %8126 = getelementptr inbounds %struct.Reg, %struct.Reg* %8125, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %8126 to i64*
  %8127 = load i64, i64* %PC.i53
  %8128 = add i64 %8127, 8
  store i64 %8128, i64* %PC.i53
  %8129 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8129, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_41f650, %struct.Memory** %MEMORY
  %loadMem_41f658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8131 = getelementptr inbounds %struct.GPR, %struct.GPR* %8130, i32 0, i32 33
  %8132 = getelementptr inbounds %struct.Reg, %struct.Reg* %8131, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8132 to i64*
  %8133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8134 = getelementptr inbounds %struct.GPR, %struct.GPR* %8133, i32 0, i32 1
  %8135 = getelementptr inbounds %struct.Reg, %struct.Reg* %8134, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %8135 to i64*
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8137 = getelementptr inbounds %struct.GPR, %struct.GPR* %8136, i32 0, i32 5
  %8138 = getelementptr inbounds %struct.Reg, %struct.Reg* %8137, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %8138 to i64*
  %8139 = load i64, i64* %RAX.i51
  %8140 = add i64 %8139, 71908
  %8141 = load i64, i64* %PC.i50
  %8142 = add i64 %8141, 6
  store i64 %8142, i64* %PC.i50
  %8143 = inttoptr i64 %8140 to i32*
  %8144 = load i32, i32* %8143
  %8145 = zext i32 %8144 to i64
  store i64 %8145, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_41f658, %struct.Memory** %MEMORY
  %loadMem_41f65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8147 = getelementptr inbounds %struct.GPR, %struct.GPR* %8146, i32 0, i32 33
  %8148 = getelementptr inbounds %struct.Reg, %struct.Reg* %8147, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8148 to i64*
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8150 = getelementptr inbounds %struct.GPR, %struct.GPR* %8149, i32 0, i32 5
  %8151 = getelementptr inbounds %struct.Reg, %struct.Reg* %8150, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %8151 to i64*
  %8152 = load i64, i64* %RCX.i49
  %8153 = load i64, i64* %PC.i48
  %8154 = add i64 %8153, 3
  store i64 %8154, i64* %PC.i48
  %8155 = trunc i64 %8152 to i32
  %8156 = sub i32 %8155, 1
  %8157 = zext i32 %8156 to i64
  store i64 %8157, i64* %RCX.i49, align 8
  %8158 = icmp ult i32 %8155, 1
  %8159 = zext i1 %8158 to i8
  %8160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8159, i8* %8160, align 1
  %8161 = and i32 %8156, 255
  %8162 = call i32 @llvm.ctpop.i32(i32 %8161)
  %8163 = trunc i32 %8162 to i8
  %8164 = and i8 %8163, 1
  %8165 = xor i8 %8164, 1
  %8166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8165, i8* %8166, align 1
  %8167 = xor i64 1, %8152
  %8168 = trunc i64 %8167 to i32
  %8169 = xor i32 %8168, %8156
  %8170 = lshr i32 %8169, 4
  %8171 = trunc i32 %8170 to i8
  %8172 = and i8 %8171, 1
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8172, i8* %8173, align 1
  %8174 = icmp eq i32 %8156, 0
  %8175 = zext i1 %8174 to i8
  %8176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8175, i8* %8176, align 1
  %8177 = lshr i32 %8156, 31
  %8178 = trunc i32 %8177 to i8
  %8179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8178, i8* %8179, align 1
  %8180 = lshr i32 %8155, 31
  %8181 = xor i32 %8177, %8180
  %8182 = add i32 %8181, %8180
  %8183 = icmp eq i32 %8182, 2
  %8184 = zext i1 %8183 to i8
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8184, i8* %8185, align 1
  store %struct.Memory* %loadMem_41f65e, %struct.Memory** %MEMORY
  %loadMem_41f661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8187 = getelementptr inbounds %struct.GPR, %struct.GPR* %8186, i32 0, i32 33
  %8188 = getelementptr inbounds %struct.Reg, %struct.Reg* %8187, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %8188 to i64*
  %8189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8190 = getelementptr inbounds %struct.GPR, %struct.GPR* %8189, i32 0, i32 5
  %8191 = getelementptr inbounds %struct.Reg, %struct.Reg* %8190, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %8191 to i64*
  %8192 = load i64, i64* %RCX.i47
  %8193 = load i64, i64* %PC.i46
  %8194 = add i64 %8193, 2
  store i64 %8194, i64* %PC.i46
  %8195 = trunc i64 %8192 to i32
  %8196 = shl i32 %8195, 1
  %8197 = icmp slt i32 %8195, 0
  %8198 = icmp slt i32 %8196, 0
  %8199 = xor i1 %8197, %8198
  %8200 = zext i32 %8196 to i64
  store i64 %8200, i64* %RCX.i47, align 8
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8202 = zext i1 %8197 to i8
  store i8 %8202, i8* %8201, align 1
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8204 = and i32 %8196, 254
  %8205 = call i32 @llvm.ctpop.i32(i32 %8204)
  %8206 = trunc i32 %8205 to i8
  %8207 = and i8 %8206, 1
  %8208 = xor i8 %8207, 1
  store i8 %8208, i8* %8203, align 1
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8209, align 1
  %8210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8211 = icmp eq i32 %8196, 0
  %8212 = zext i1 %8211 to i8
  store i8 %8212, i8* %8210, align 1
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8214 = lshr i32 %8196, 31
  %8215 = trunc i32 %8214 to i8
  store i8 %8215, i8* %8213, align 1
  %8216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8217 = zext i1 %8199 to i8
  store i8 %8217, i8* %8216, align 1
  store %struct.Memory* %loadMem_41f661, %struct.Memory** %MEMORY
  %loadMem_41f664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8219 = getelementptr inbounds %struct.GPR, %struct.GPR* %8218, i32 0, i32 33
  %8220 = getelementptr inbounds %struct.Reg, %struct.Reg* %8219, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8220 to i64*
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8222 = getelementptr inbounds %struct.GPR, %struct.GPR* %8221, i32 0, i32 1
  %8223 = getelementptr inbounds %struct.Reg, %struct.Reg* %8222, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %8223 to i64*
  %8224 = load i64, i64* %PC.i44
  %8225 = add i64 %8224, 8
  store i64 %8225, i64* %PC.i44
  %8226 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8226, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_41f664, %struct.Memory** %MEMORY
  %loadMem_41f66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 33
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %8229 to i64*
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 5
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %ECX.i42 = bitcast %union.anon* %8232 to i32*
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8234 = getelementptr inbounds %struct.GPR, %struct.GPR* %8233, i32 0, i32 1
  %8235 = getelementptr inbounds %struct.Reg, %struct.Reg* %8234, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %8235 to i64*
  %8236 = load i64, i64* %RAX.i43
  %8237 = add i64 %8236, 72436
  %8238 = load i32, i32* %ECX.i42
  %8239 = zext i32 %8238 to i64
  %8240 = load i64, i64* %PC.i41
  %8241 = add i64 %8240, 6
  store i64 %8241, i64* %PC.i41
  %8242 = inttoptr i64 %8237 to i32*
  store i32 %8238, i32* %8242
  store %struct.Memory* %loadMem_41f66c, %struct.Memory** %MEMORY
  %loadMem_41f672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8244 = getelementptr inbounds %struct.GPR, %struct.GPR* %8243, i32 0, i32 33
  %8245 = getelementptr inbounds %struct.Reg, %struct.Reg* %8244, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8245 to i64*
  %8246 = load i64, i64* %PC.i40
  %8247 = add i64 %8246, 23
  %8248 = load i64, i64* %PC.i40
  %8249 = add i64 %8248, 5
  store i64 %8249, i64* %PC.i40
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8247, i64* %8250, align 8
  store %struct.Memory* %loadMem_41f672, %struct.Memory** %MEMORY
  br label %block_.L_41f689

block_.L_41f677:                                  ; preds = %block_.L_41f62a
  %loadMem_41f677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 33
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8253 to i64*
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8255 = getelementptr inbounds %struct.GPR, %struct.GPR* %8254, i32 0, i32 1
  %8256 = getelementptr inbounds %struct.Reg, %struct.Reg* %8255, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %8256 to i64*
  %8257 = load i64, i64* %PC.i38
  %8258 = add i64 %8257, 8
  store i64 %8258, i64* %PC.i38
  %8259 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8259, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_41f677, %struct.Memory** %MEMORY
  %loadMem_41f67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8261 = getelementptr inbounds %struct.GPR, %struct.GPR* %8260, i32 0, i32 33
  %8262 = getelementptr inbounds %struct.Reg, %struct.Reg* %8261, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8262 to i64*
  %8263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8264 = getelementptr inbounds %struct.GPR, %struct.GPR* %8263, i32 0, i32 1
  %8265 = getelementptr inbounds %struct.Reg, %struct.Reg* %8264, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %8265 to i64*
  %8266 = load i64, i64* %RAX.i37
  %8267 = add i64 %8266, 72436
  %8268 = load i64, i64* %PC.i36
  %8269 = add i64 %8268, 10
  store i64 %8269, i64* %PC.i36
  %8270 = inttoptr i64 %8267 to i32*
  store i32 -2, i32* %8270
  store %struct.Memory* %loadMem_41f67f, %struct.Memory** %MEMORY
  br label %block_.L_41f689

block_.L_41f689:                                  ; preds = %block_.L_41f677, %block_41f650
  %loadMem_41f689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8272 = getelementptr inbounds %struct.GPR, %struct.GPR* %8271, i32 0, i32 33
  %8273 = getelementptr inbounds %struct.Reg, %struct.Reg* %8272, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8273 to i64*
  %8274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8275 = getelementptr inbounds %struct.GPR, %struct.GPR* %8274, i32 0, i32 1
  %8276 = getelementptr inbounds %struct.Reg, %struct.Reg* %8275, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %8276 to i64*
  %8277 = load i64, i64* %PC.i34
  %8278 = add i64 %8277, 8
  store i64 %8278, i64* %PC.i34
  %8279 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8279, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_41f689, %struct.Memory** %MEMORY
  %loadMem_41f691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8281 = getelementptr inbounds %struct.GPR, %struct.GPR* %8280, i32 0, i32 33
  %8282 = getelementptr inbounds %struct.Reg, %struct.Reg* %8281, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8282 to i64*
  %8283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8284 = getelementptr inbounds %struct.GPR, %struct.GPR* %8283, i32 0, i32 1
  %8285 = getelementptr inbounds %struct.Reg, %struct.Reg* %8284, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %8285 to i64*
  %8286 = load i64, i64* %RAX.i33
  %8287 = add i64 %8286, 72440
  %8288 = load i64, i64* %PC.i32
  %8289 = add i64 %8288, 10
  store i64 %8289, i64* %PC.i32
  %8290 = inttoptr i64 %8287 to i32*
  store i32 0, i32* %8290
  store %struct.Memory* %loadMem_41f691, %struct.Memory** %MEMORY
  %loadMem_41f69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8292 = getelementptr inbounds %struct.GPR, %struct.GPR* %8291, i32 0, i32 33
  %8293 = getelementptr inbounds %struct.Reg, %struct.Reg* %8292, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8293 to i64*
  %8294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8295 = getelementptr inbounds %struct.GPR, %struct.GPR* %8294, i32 0, i32 1
  %8296 = getelementptr inbounds %struct.Reg, %struct.Reg* %8295, i32 0, i32 0
  %8297 = bitcast %union.anon* %8296 to %struct.anon.2*
  %AL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8297, i32 0, i32 0
  %8298 = load i64, i64* %PC.i30
  %8299 = add i64 %8298, 2
  store i64 %8299, i64* %PC.i30
  store i8 0, i8* %AL.i31, align 1
  store %struct.Memory* %loadMem_41f69b, %struct.Memory** %MEMORY
  %loadMem1_41f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8301 = getelementptr inbounds %struct.GPR, %struct.GPR* %8300, i32 0, i32 33
  %8302 = getelementptr inbounds %struct.Reg, %struct.Reg* %8301, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8302 to i64*
  %8303 = load i64, i64* %PC.i29
  %8304 = add i64 %8303, 34435
  %8305 = load i64, i64* %PC.i29
  %8306 = add i64 %8305, 5
  %8307 = load i64, i64* %PC.i29
  %8308 = add i64 %8307, 5
  store i64 %8308, i64* %PC.i29
  %8309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8310 = load i64, i64* %8309, align 8
  %8311 = add i64 %8310, -8
  %8312 = inttoptr i64 %8311 to i64*
  store i64 %8306, i64* %8312
  store i64 %8311, i64* %8309, align 8
  %8313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8304, i64* %8313, align 8
  store %struct.Memory* %loadMem1_41f69d, %struct.Memory** %MEMORY
  %loadMem2_41f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f69d = load i64, i64* %3
  %call2_41f69d = call %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* %0, i64 %loadPC_41f69d, %struct.Memory* %loadMem2_41f69d)
  store %struct.Memory* %call2_41f69d, %struct.Memory** %MEMORY
  %loadMem_41f6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8315 = getelementptr inbounds %struct.GPR, %struct.GPR* %8314, i32 0, i32 33
  %8316 = getelementptr inbounds %struct.Reg, %struct.Reg* %8315, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8316 to i64*
  %8317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8318 = getelementptr inbounds %struct.GPR, %struct.GPR* %8317, i32 0, i32 5
  %8319 = getelementptr inbounds %struct.Reg, %struct.Reg* %8318, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %8319 to i64*
  %8320 = load i64, i64* %PC.i27
  %8321 = add i64 %8320, 8
  store i64 %8321, i64* %PC.i27
  %8322 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %8322, i64* %RCX.i28, align 8
  store %struct.Memory* %loadMem_41f6a2, %struct.Memory** %MEMORY
  %loadMem_41f6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %8323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8324 = getelementptr inbounds %struct.GPR, %struct.GPR* %8323, i32 0, i32 33
  %8325 = getelementptr inbounds %struct.Reg, %struct.Reg* %8324, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8325 to i64*
  %8326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8327 = getelementptr inbounds %struct.GPR, %struct.GPR* %8326, i32 0, i32 5
  %8328 = getelementptr inbounds %struct.Reg, %struct.Reg* %8327, i32 0, i32 0
  %RCX.i26 = bitcast %union.anon* %8328 to i64*
  %8329 = load i64, i64* %RCX.i26
  %8330 = add i64 %8329, 3228
  %8331 = load i64, i64* %PC.i25
  %8332 = add i64 %8331, 7
  store i64 %8332, i64* %PC.i25
  %8333 = inttoptr i64 %8330 to i32*
  %8334 = load i32, i32* %8333
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8335, align 1
  %8336 = and i32 %8334, 255
  %8337 = call i32 @llvm.ctpop.i32(i32 %8336)
  %8338 = trunc i32 %8337 to i8
  %8339 = and i8 %8338, 1
  %8340 = xor i8 %8339, 1
  %8341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8340, i8* %8341, align 1
  %8342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8342, align 1
  %8343 = icmp eq i32 %8334, 0
  %8344 = zext i1 %8343 to i8
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8344, i8* %8345, align 1
  %8346 = lshr i32 %8334, 31
  %8347 = trunc i32 %8346 to i8
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8347, i8* %8348, align 1
  %8349 = lshr i32 %8334, 31
  %8350 = xor i32 %8346, %8349
  %8351 = add i32 %8350, %8349
  %8352 = icmp eq i32 %8351, 2
  %8353 = zext i1 %8352 to i8
  %8354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8353, i8* %8354, align 1
  store %struct.Memory* %loadMem_41f6aa, %struct.Memory** %MEMORY
  %loadMem_41f6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8356 = getelementptr inbounds %struct.GPR, %struct.GPR* %8355, i32 0, i32 33
  %8357 = getelementptr inbounds %struct.Reg, %struct.Reg* %8356, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8357 to i64*
  %8358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8359 = getelementptr inbounds %struct.GPR, %struct.GPR* %8358, i32 0, i32 1
  %8360 = getelementptr inbounds %struct.Reg, %struct.Reg* %8359, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8360 to i32*
  %8361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8362 = getelementptr inbounds %struct.GPR, %struct.GPR* %8361, i32 0, i32 15
  %8363 = getelementptr inbounds %struct.Reg, %struct.Reg* %8362, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %8363 to i64*
  %8364 = load i64, i64* %RBP.i24
  %8365 = sub i64 %8364, 48
  %8366 = load i32, i32* %EAX.i
  %8367 = zext i32 %8366 to i64
  %8368 = load i64, i64* %PC.i23
  %8369 = add i64 %8368, 3
  store i64 %8369, i64* %PC.i23
  %8370 = inttoptr i64 %8365 to i32*
  store i32 %8366, i32* %8370
  store %struct.Memory* %loadMem_41f6b1, %struct.Memory** %MEMORY
  %loadMem_41f6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8372 = getelementptr inbounds %struct.GPR, %struct.GPR* %8371, i32 0, i32 33
  %8373 = getelementptr inbounds %struct.Reg, %struct.Reg* %8372, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8373 to i64*
  %8374 = load i64, i64* %PC.i22
  %8375 = add i64 %8374, 13
  %8376 = load i64, i64* %PC.i22
  %8377 = add i64 %8376, 6
  %8378 = load i64, i64* %PC.i22
  %8379 = add i64 %8378, 6
  store i64 %8379, i64* %PC.i22
  %8380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8381 = load i8, i8* %8380, align 1
  store i8 %8381, i8* %BRANCH_TAKEN, align 1
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8383 = icmp ne i8 %8381, 0
  %8384 = select i1 %8383, i64 %8375, i64 %8377
  store i64 %8384, i64* %8382, align 8
  store %struct.Memory* %loadMem_41f6b4, %struct.Memory** %MEMORY
  %loadBr_41f6b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f6b4 = icmp eq i8 %loadBr_41f6b4, 1
  br i1 %cmpBr_41f6b4, label %block_.L_41f6c1, label %block_41f6ba

block_41f6ba:                                     ; preds = %block_.L_41f689
  %loadMem_41f6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %8385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8386 = getelementptr inbounds %struct.GPR, %struct.GPR* %8385, i32 0, i32 33
  %8387 = getelementptr inbounds %struct.Reg, %struct.Reg* %8386, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %8387 to i64*
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8389 = getelementptr inbounds %struct.GPR, %struct.GPR* %8388, i32 0, i32 1
  %8390 = getelementptr inbounds %struct.Reg, %struct.Reg* %8389, i32 0, i32 0
  %8391 = bitcast %union.anon* %8390 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8391, i32 0, i32 0
  %8392 = load i64, i64* %PC.i21
  %8393 = add i64 %8392, 2
  store i64 %8393, i64* %PC.i21
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_41f6ba, %struct.Memory** %MEMORY
  %loadMem1_41f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8395 = getelementptr inbounds %struct.GPR, %struct.GPR* %8394, i32 0, i32 33
  %8396 = getelementptr inbounds %struct.Reg, %struct.Reg* %8395, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8396 to i64*
  %8397 = load i64, i64* %PC.i20
  %8398 = add i64 %8397, 88324
  %8399 = load i64, i64* %PC.i20
  %8400 = add i64 %8399, 5
  %8401 = load i64, i64* %PC.i20
  %8402 = add i64 %8401, 5
  store i64 %8402, i64* %PC.i20
  %8403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8404 = load i64, i64* %8403, align 8
  %8405 = add i64 %8404, -8
  %8406 = inttoptr i64 %8405 to i64*
  store i64 %8400, i64* %8406
  store i64 %8405, i64* %8403, align 8
  %8407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8398, i64* %8407, align 8
  store %struct.Memory* %loadMem1_41f6bc, %struct.Memory** %MEMORY
  %loadMem2_41f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f6bc = load i64, i64* %3
  %call2_41f6bc = call %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* %0, i64 %loadPC_41f6bc, %struct.Memory* %loadMem2_41f6bc)
  store %struct.Memory* %call2_41f6bc, %struct.Memory** %MEMORY
  br label %block_.L_41f6c1

block_.L_41f6c1:                                  ; preds = %block_41f6ba, %block_.L_41f689
  %loadMem_41f6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 33
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8410 to i64*
  %8411 = load i64, i64* %PC.i19
  %8412 = add i64 %8411, 5
  %8413 = load i64, i64* %PC.i19
  %8414 = add i64 %8413, 5
  store i64 %8414, i64* %PC.i19
  %8415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8412, i64* %8415, align 8
  store %struct.Memory* %loadMem_41f6c1, %struct.Memory** %MEMORY
  br label %block_.L_41f6c6

block_.L_41f6c6:                                  ; preds = %block_.L_41f6c1
  %loadMem_41f6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8417 = getelementptr inbounds %struct.GPR, %struct.GPR* %8416, i32 0, i32 33
  %8418 = getelementptr inbounds %struct.Reg, %struct.Reg* %8417, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8418 to i64*
  %8419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8420 = getelementptr inbounds %struct.GPR, %struct.GPR* %8419, i32 0, i32 1
  %8421 = getelementptr inbounds %struct.Reg, %struct.Reg* %8420, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8421 to i64*
  %8422 = load i64, i64* %PC.i17
  %8423 = add i64 %8422, 8
  store i64 %8423, i64* %PC.i17
  %8424 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8424, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_41f6c6, %struct.Memory** %MEMORY
  %loadMem_41f6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %8425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8426 = getelementptr inbounds %struct.GPR, %struct.GPR* %8425, i32 0, i32 33
  %8427 = getelementptr inbounds %struct.Reg, %struct.Reg* %8426, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8427 to i64*
  %8428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8429 = getelementptr inbounds %struct.GPR, %struct.GPR* %8428, i32 0, i32 1
  %8430 = getelementptr inbounds %struct.Reg, %struct.Reg* %8429, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %8430 to i64*
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8432 = getelementptr inbounds %struct.GPR, %struct.GPR* %8431, i32 0, i32 5
  %8433 = getelementptr inbounds %struct.Reg, %struct.Reg* %8432, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %8433 to i64*
  %8434 = load i64, i64* %RAX.i15
  %8435 = add i64 %8434, 71908
  %8436 = load i64, i64* %PC.i14
  %8437 = add i64 %8436, 6
  store i64 %8437, i64* %PC.i14
  %8438 = inttoptr i64 %8435 to i32*
  %8439 = load i32, i32* %8438
  %8440 = zext i32 %8439 to i64
  store i64 %8440, i64* %RCX.i16, align 8
  store %struct.Memory* %loadMem_41f6ce, %struct.Memory** %MEMORY
  %loadMem_41f6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8442 = getelementptr inbounds %struct.GPR, %struct.GPR* %8441, i32 0, i32 33
  %8443 = getelementptr inbounds %struct.Reg, %struct.Reg* %8442, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8443 to i64*
  %8444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8445 = getelementptr inbounds %struct.GPR, %struct.GPR* %8444, i32 0, i32 5
  %8446 = getelementptr inbounds %struct.Reg, %struct.Reg* %8445, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8446 to i64*
  %8447 = load i64, i64* %RCX.i
  %8448 = load i64, i64* %PC.i13
  %8449 = add i64 %8448, 3
  store i64 %8449, i64* %PC.i13
  %8450 = trunc i64 %8447 to i32
  %8451 = add i32 1, %8450
  %8452 = zext i32 %8451 to i64
  store i64 %8452, i64* %RCX.i, align 8
  %8453 = icmp ult i32 %8451, %8450
  %8454 = icmp ult i32 %8451, 1
  %8455 = or i1 %8453, %8454
  %8456 = zext i1 %8455 to i8
  %8457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8456, i8* %8457, align 1
  %8458 = and i32 %8451, 255
  %8459 = call i32 @llvm.ctpop.i32(i32 %8458)
  %8460 = trunc i32 %8459 to i8
  %8461 = and i8 %8460, 1
  %8462 = xor i8 %8461, 1
  %8463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8462, i8* %8463, align 1
  %8464 = xor i64 1, %8447
  %8465 = trunc i64 %8464 to i32
  %8466 = xor i32 %8465, %8451
  %8467 = lshr i32 %8466, 4
  %8468 = trunc i32 %8467 to i8
  %8469 = and i8 %8468, 1
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8469, i8* %8470, align 1
  %8471 = icmp eq i32 %8451, 0
  %8472 = zext i1 %8471 to i8
  %8473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8472, i8* %8473, align 1
  %8474 = lshr i32 %8451, 31
  %8475 = trunc i32 %8474 to i8
  %8476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8475, i8* %8476, align 1
  %8477 = lshr i32 %8450, 31
  %8478 = xor i32 %8474, %8477
  %8479 = add i32 %8478, %8474
  %8480 = icmp eq i32 %8479, 2
  %8481 = zext i1 %8480 to i8
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8481, i8* %8482, align 1
  store %struct.Memory* %loadMem_41f6d4, %struct.Memory** %MEMORY
  %loadMem_41f6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 33
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8485 to i64*
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 5
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8488 to i32*
  %8489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8490 = getelementptr inbounds %struct.GPR, %struct.GPR* %8489, i32 0, i32 1
  %8491 = getelementptr inbounds %struct.Reg, %struct.Reg* %8490, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %8491 to i64*
  %8492 = load i64, i64* %RAX.i12
  %8493 = add i64 %8492, 71908
  %8494 = load i32, i32* %ECX.i
  %8495 = zext i32 %8494 to i64
  %8496 = load i64, i64* %PC.i11
  %8497 = add i64 %8496, 6
  store i64 %8497, i64* %PC.i11
  %8498 = inttoptr i64 %8493 to i32*
  store i32 %8494, i32* %8498
  store %struct.Memory* %loadMem_41f6d7, %struct.Memory** %MEMORY
  %loadMem_41f6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8500 = getelementptr inbounds %struct.GPR, %struct.GPR* %8499, i32 0, i32 33
  %8501 = getelementptr inbounds %struct.Reg, %struct.Reg* %8500, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8501 to i64*
  %8502 = load i64, i64* %PC.i10
  %8503 = add i64 %8502, -898
  %8504 = load i64, i64* %PC.i10
  %8505 = add i64 %8504, 5
  store i64 %8505, i64* %PC.i10
  %8506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8503, i64* %8506, align 8
  store %struct.Memory* %loadMem_41f6dd, %struct.Memory** %MEMORY
  br label %block_.L_41f35b

block_.L_41f6e2:                                  ; preds = %block_.L_41f35b
  %loadMem_41f6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8508 = getelementptr inbounds %struct.GPR, %struct.GPR* %8507, i32 0, i32 33
  %8509 = getelementptr inbounds %struct.Reg, %struct.Reg* %8508, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8509 to i64*
  %8510 = load i64, i64* %PC.i9
  %8511 = add i64 %8510, 5
  %8512 = load i64, i64* %PC.i9
  %8513 = add i64 %8512, 5
  store i64 %8513, i64* %PC.i9
  %8514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8511, i64* %8514, align 8
  store %struct.Memory* %loadMem_41f6e2, %struct.Memory** %MEMORY
  br label %block_.L_41f6e7

block_.L_41f6e7:                                  ; preds = %block_.L_41f6e2, %block_.L_41f332
  %loadMem_41f6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8516 = getelementptr inbounds %struct.GPR, %struct.GPR* %8515, i32 0, i32 33
  %8517 = getelementptr inbounds %struct.Reg, %struct.Reg* %8516, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8517 to i64*
  %8518 = load i64, i64* %PC.i8
  %8519 = add i64 %8518, 5
  %8520 = load i64, i64* %PC.i8
  %8521 = add i64 %8520, 5
  store i64 %8521, i64* %PC.i8
  %8522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8519, i64* %8522, align 8
  store %struct.Memory* %loadMem_41f6e7, %struct.Memory** %MEMORY
  br label %block_.L_41f6ec

block_.L_41f6ec:                                  ; preds = %block_.L_41f6e7, %block_41ed5d, %entry
  %loadMem_41f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %8523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8524 = getelementptr inbounds %struct.GPR, %struct.GPR* %8523, i32 0, i32 33
  %8525 = getelementptr inbounds %struct.Reg, %struct.Reg* %8524, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8525 to i64*
  %8526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8527 = getelementptr inbounds %struct.GPR, %struct.GPR* %8526, i32 0, i32 1
  %8528 = getelementptr inbounds %struct.Reg, %struct.Reg* %8527, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %8528 to i64*
  %8529 = load i64, i64* %PC.i6
  %8530 = add i64 %8529, 8
  store i64 %8530, i64* %PC.i6
  %8531 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %8531, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_41f6ec, %struct.Memory** %MEMORY
  %loadMem_41f6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8533 = getelementptr inbounds %struct.GPR, %struct.GPR* %8532, i32 0, i32 33
  %8534 = getelementptr inbounds %struct.Reg, %struct.Reg* %8533, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8534 to i64*
  %8535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8536 = getelementptr inbounds %struct.GPR, %struct.GPR* %8535, i32 0, i32 1
  %8537 = getelementptr inbounds %struct.Reg, %struct.Reg* %8536, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8537 to i64*
  %8538 = load i64, i64* %RAX.i
  %8539 = add i64 %8538, 71908
  %8540 = load i64, i64* %PC.i5
  %8541 = add i64 %8540, 10
  store i64 %8541, i64* %PC.i5
  %8542 = inttoptr i64 %8539 to i32*
  store i32 0, i32* %8542
  store %struct.Memory* %loadMem_41f6f4, %struct.Memory** %MEMORY
  %loadMem_41f6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8544 = getelementptr inbounds %struct.GPR, %struct.GPR* %8543, i32 0, i32 33
  %8545 = getelementptr inbounds %struct.Reg, %struct.Reg* %8544, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8545 to i64*
  %8546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8547 = getelementptr inbounds %struct.GPR, %struct.GPR* %8546, i32 0, i32 13
  %8548 = getelementptr inbounds %struct.Reg, %struct.Reg* %8547, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8548 to i64*
  %8549 = load i64, i64* %RSP.i
  %8550 = load i64, i64* %PC.i4
  %8551 = add i64 %8550, 4
  store i64 %8551, i64* %PC.i4
  %8552 = add i64 48, %8549
  store i64 %8552, i64* %RSP.i, align 8
  %8553 = icmp ult i64 %8552, %8549
  %8554 = icmp ult i64 %8552, 48
  %8555 = or i1 %8553, %8554
  %8556 = zext i1 %8555 to i8
  %8557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8556, i8* %8557, align 1
  %8558 = trunc i64 %8552 to i32
  %8559 = and i32 %8558, 255
  %8560 = call i32 @llvm.ctpop.i32(i32 %8559)
  %8561 = trunc i32 %8560 to i8
  %8562 = and i8 %8561, 1
  %8563 = xor i8 %8562, 1
  %8564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8563, i8* %8564, align 1
  %8565 = xor i64 48, %8549
  %8566 = xor i64 %8565, %8552
  %8567 = lshr i64 %8566, 4
  %8568 = trunc i64 %8567 to i8
  %8569 = and i8 %8568, 1
  %8570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8569, i8* %8570, align 1
  %8571 = icmp eq i64 %8552, 0
  %8572 = zext i1 %8571 to i8
  %8573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8572, i8* %8573, align 1
  %8574 = lshr i64 %8552, 63
  %8575 = trunc i64 %8574 to i8
  %8576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8575, i8* %8576, align 1
  %8577 = lshr i64 %8549, 63
  %8578 = xor i64 %8574, %8577
  %8579 = add i64 %8578, %8574
  %8580 = icmp eq i64 %8579, 2
  %8581 = zext i1 %8580 to i8
  %8582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8581, i8* %8582, align 1
  store %struct.Memory* %loadMem_41f6fe, %struct.Memory** %MEMORY
  %loadMem_41f702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8584 = getelementptr inbounds %struct.GPR, %struct.GPR* %8583, i32 0, i32 33
  %8585 = getelementptr inbounds %struct.Reg, %struct.Reg* %8584, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8585 to i64*
  %8586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8587 = getelementptr inbounds %struct.GPR, %struct.GPR* %8586, i32 0, i32 15
  %8588 = getelementptr inbounds %struct.Reg, %struct.Reg* %8587, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8588 to i64*
  %8589 = load i64, i64* %PC.i2
  %8590 = add i64 %8589, 1
  store i64 %8590, i64* %PC.i2
  %8591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8592 = load i64, i64* %8591, align 8
  %8593 = add i64 %8592, 8
  %8594 = inttoptr i64 %8592 to i64*
  %8595 = load i64, i64* %8594
  store i64 %8595, i64* %RBP.i3, align 8
  store i64 %8593, i64* %8591, align 8
  store %struct.Memory* %loadMem_41f702, %struct.Memory** %MEMORY
  %loadMem_41f703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8597 = getelementptr inbounds %struct.GPR, %struct.GPR* %8596, i32 0, i32 33
  %8598 = getelementptr inbounds %struct.Reg, %struct.Reg* %8597, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8598 to i64*
  %8599 = load i64, i64* %PC.i1
  %8600 = add i64 %8599, 1
  store i64 %8600, i64* %PC.i1
  %8601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8603 = load i64, i64* %8602, align 8
  %8604 = inttoptr i64 %8603 to i64*
  %8605 = load i64, i64* %8604
  store i64 %8605, i64* %8601, align 8
  %8606 = add i64 %8603, 8
  store i64 %8606, i64* %8602, align 8
  store %struct.Memory* %loadMem_41f703, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41f703
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_41f6ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %12, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %12
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

define %struct.Memory* @routine_jle_.L_41f6ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xb60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2912
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41edb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0x11ac0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41edc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__0x11ac0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41ee38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b10__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x11b10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 72464
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x722c98___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_movl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__cl___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = trunc i64 %15 to i5
  switch i5 %18, label %25 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %19
  ]

; <label>:19:                                     ; preds = %block_400488
  %20 = trunc i64 %13 to i32
  %21 = shl i32 %20, 1
  %22 = icmp slt i32 %20, 0
  %23 = icmp slt i32 %21, 0
  %24 = xor i1 %22, %23
  br label %34

; <label>:25:                                     ; preds = %block_400488
  %26 = and i64 %15, 31
  %27 = add i64 %26, 4294967295
  %28 = and i64 %13, 4294967295
  %29 = and i64 %27, 4294967295
  %30 = shl i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 0
  %33 = shl i32 %31, 1
  br label %34

; <label>:34:                                     ; preds = %25, %19
  %35 = phi i1 [ %22, %19 ], [ %32, %25 ]
  %36 = phi i1 [ %24, %19 ], [ false, %25 ]
  %37 = phi i32 [ %21, %19 ], [ %33, %25 ]
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %RAX, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %40 = zext i1 %35 to i8
  store i8 %40, i8* %39, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %42 = and i32 %37, 254
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  store i8 %46, i8* %41, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %49 = icmp eq i32 %37, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %48, align 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = lshr i32 %37, 31
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %51, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %55 = zext i1 %36 to i8
  store i8 %55, i8* %54, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400488, %34
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b10__rsi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_divl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
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
  %21 = and i64 %10, 4294967295
  %22 = shl i64 %20, 32
  %23 = or i64 %22, %16
  %24 = udiv i64 %23, %21
  %25 = and i64 %24, 4294967295
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %block_400488
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = urem i64 %23, %21
  %33 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  store i64 %24, i64* %33, align 8
  %34 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %31
  %41 = phi %struct.Memory* [ %30, %27 ], [ %2, %31 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_movl__edx__0x11b10__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 72464
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_41f349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x118e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 71908
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x4d4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 1236
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

define %struct.Memory* @routine_jg_.L_41f332(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x118e4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
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

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41ef5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x11b30__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movsd_0x928fa__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x928fa__rip__type* @G_0x928fa__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movsd__xmm1__0x118d8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 71896
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__0x528__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41efcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x928a3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x928a3__rip__type* @G_0x928a3__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__0x118d8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 71896
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_41f093(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %10 to i32*
  %22 = load i32, i32* %21
  %23 = sext i32 %22 to i64
  %24 = shl i64 %20, 32
  %25 = or i64 %24, %16
  %26 = sdiv i64 %25, %23
  %27 = shl i64 %26, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %block_400488
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = srem i64 %25, %23
  %36 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %37 = and i64 %26, 4294967295
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %39 = and i64 %35, 4294967295
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %34
  %46 = phi %struct.Memory* [ %33, %30 ], [ %2, %34 ]
  ret %struct.Memory* %46
}

define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_imull__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RDX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x118d8__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 71896
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movq_0x6d0278___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x118e4__r8____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R8, align 8
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

define %struct.Memory* @routine_addq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x4__rdi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x11b00__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72448
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41f110(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RCX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x118d8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71896
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movl_0x118e4__rsi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_cvtsi2sdl__edx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
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

define %struct.Memory* @routine_addl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x11b00__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72448
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__0x118e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 71908
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41f176(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6cc024___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x6cc020___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %12, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %12
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_imull__edi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RSI, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41f215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x926ca__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x926ca__rip__type* @G_0x926ca__rip_ to i64)
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

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_mulsd_0x118d8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 71896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_movl_0x118e4__r8____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_movslq__esi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_cvtsi2sdl__esi___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
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
  store i64 %21, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xb40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2880
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41f260(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2884
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72452
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41f27f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x11b04__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72452
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

define %struct.Memory* @routine_jge_.L_41f2b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f2c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__0x11b08__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11af8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.encode_one_frame(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_41f311(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.report_frame_statistic(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f316(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx__0x118e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 71908
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41ee71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__0x118e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 71908
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41f6e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_41f6e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x524__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41f400(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x92458__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x92458__rip__type* @G_0x92458__rip_ to i64)
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

define %struct.Memory* @routine_jne_.L_41f46f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x92401__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x92401__rip__type* @G_0x92401__rip_ to i64)
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

define %struct.Memory* @routine_je_.L_41f517(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl_0x118e4__rdi____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41f577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2sdl_0x118e4__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41f5c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f5e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_41f619(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f62a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x524__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_41f677(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f689(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xfffffffe__0x11af4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11af8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_je_.L_41f6c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f6c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41f35b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41f6ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
