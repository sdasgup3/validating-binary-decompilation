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
%G_0x6cb908_type = type <{ [8 x i8] }>
%G_0x6cc020_type = type <{ [4 x i8] }>
%G_0x6cc024_type = type <{ [4 x i8] }>
%G_0x6cd870_type = type <{ [4 x i8] }>
%G_0x6cea00_type = type <{ [8 x i8] }>
%G_0x6d0278_type = type <{ [8 x i8] }>
%G_0x722ca0_type = type <{ [8 x i8] }>
%G_0x88689__rip__type = type <{ [8 x i8] }>
%G_0x886e0__rip__type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cb908 = global %G_0x6cb908_type zeroinitializer
@G_0x6cc020 = global %G_0x6cc020_type zeroinitializer
@G_0x6cc024 = global %G_0x6cc024_type zeroinitializer
@G_0x6cd870 = global %G_0x6cd870_type zeroinitializer
@G_0x6cea00 = global %G_0x6cea00_type zeroinitializer
@G_0x6d0278 = global %G_0x6d0278_type zeroinitializer
@G_0x722ca0 = global %G_0x722ca0_type zeroinitializer
@G_0x88689__rip_ = global %G_0x88689__rip__type zeroinitializer
@G_0x886e0__rip_ = global %G_0x886e0__rip__type zeroinitializer

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

declare %struct.Memory* @sub_4a0b00.UpdateSubseqInfo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4a1490.UpdateSceneInformation(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42dd30.init_dec_ref_pic_marking_buffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @init_frame(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_428bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_428bf0, %struct.Memory** %MEMORY
  %loadMem_428bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i19 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i19
  %27 = load i64, i64* %PC.i18
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i18
  store i64 %26, i64* %RBP.i20, align 8
  store %struct.Memory* %loadMem_428bf1, %struct.Memory** %MEMORY
  %loadMem_428bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i573 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i573
  %36 = load i64, i64* %PC.i572
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i572
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i573, align 8
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
  store %struct.Memory* %loadMem_428bf4, %struct.Memory** %MEMORY
  %loadMem_428bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i589
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC.i589
  %75 = load i64, i64* bitcast (%G_0x722ca0_type* @G_0x722ca0 to i64*)
  store i64 %75, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_428bf8, %struct.Memory** %MEMORY
  %loadMem_428c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RAX.i609
  %83 = load i64, i64* %PC.i608
  %84 = add i64 %83, 8
  store i64 %84, i64* %PC.i608
  store i64 %82, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*)
  store %struct.Memory* %loadMem_428c00, %struct.Memory** %MEMORY
  %loadMem_428c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 33
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %PC.i893
  %92 = add i64 %91, 8
  store i64 %92, i64* %PC.i893
  %93 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %93, i64* %RAX.i894, align 8
  store %struct.Memory* %loadMem_428c08, %struct.Memory** %MEMORY
  %loadMem_428c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RAX.i911
  %101 = add i64 %100, 12
  %102 = load i64, i64* %PC.i910
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC.i910
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104
  store %struct.Memory* %loadMem_428c10, %struct.Memory** %MEMORY
  %loadMem_428c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RAX.i977 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %PC.i976
  %112 = add i64 %111, 8
  store i64 %112, i64* %PC.i976
  %113 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %113, i64* %RAX.i977, align 8
  store %struct.Memory* %loadMem_428c17, %struct.Memory** %MEMORY
  %loadMem_428c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %119 to i64*
  %120 = load i64, i64* %RAX.i975
  %121 = add i64 %120, 20
  %122 = load i64, i64* %PC.i974
  %123 = add i64 %122, 7
  store i64 %123, i64* %PC.i974
  %124 = inttoptr i64 %121 to i32*
  store i32 0, i32* %124
  store %struct.Memory* %loadMem_428c1f, %struct.Memory** %MEMORY
  %loadMem_428c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 33
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RAX.i973 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %PC.i972
  %132 = add i64 %131, 8
  store i64 %132, i64* %PC.i972
  %133 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %133, i64* %RAX.i973, align 8
  store %struct.Memory* %loadMem_428c26, %struct.Memory** %MEMORY
  %loadMem_428c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RAX.i971 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RAX.i971
  %141 = add i64 %140, 24
  %142 = load i64, i64* %PC.i970
  %143 = add i64 %142, 7
  store i64 %143, i64* %PC.i970
  %144 = inttoptr i64 %141 to i32*
  store i32 0, i32* %144
  store %struct.Memory* %loadMem_428c2e, %struct.Memory** %MEMORY
  %loadMem_428c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RAX.i969 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i968
  %152 = add i64 %151, 8
  store i64 %152, i64* %PC.i968
  %153 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %153, i64* %RAX.i969, align 8
  store %struct.Memory* %loadMem_428c35, %struct.Memory** %MEMORY
  %loadMem_428c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RAX.i967
  %161 = add i64 %160, 136
  %162 = load i64, i64* %PC.i966
  %163 = add i64 %162, 10
  store i64 %163, i64* %PC.i966
  %164 = inttoptr i64 %161 to i32*
  store i32 0, i32* %164
  store %struct.Memory* %loadMem_428c3d, %struct.Memory** %MEMORY
  %loadMem_428c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %170 to i64*
  %171 = load i64, i64* %PC.i964
  %172 = add i64 %171, 8
  store i64 %172, i64* %PC.i964
  %173 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %173, i64* %RAX.i965, align 8
  store %struct.Memory* %loadMem_428c47, %struct.Memory** %MEMORY
  %loadMem_428c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RAX.i963 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RAX.i963
  %181 = add i64 %180, 140
  %182 = load i64, i64* %PC.i962
  %183 = add i64 %182, 10
  store i64 %183, i64* %PC.i962
  %184 = inttoptr i64 %181 to i32*
  store i32 0, i32* %184
  store %struct.Memory* %loadMem_428c4f, %struct.Memory** %MEMORY
  %loadMem_428c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RAX.i961 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %PC.i960
  %192 = add i64 %191, 8
  store i64 %192, i64* %PC.i960
  %193 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %193, i64* %RAX.i961, align 8
  store %struct.Memory* %loadMem_428c59, %struct.Memory** %MEMORY
  %loadMem_428c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RAX.i959 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RAX.i959
  %201 = add i64 %200, 164
  %202 = load i64, i64* %PC.i958
  %203 = add i64 %202, 10
  store i64 %203, i64* %PC.i958
  %204 = inttoptr i64 %201 to i32*
  store i32 0, i32* %204
  store %struct.Memory* %loadMem_428c61, %struct.Memory** %MEMORY
  %loadMem_428c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RAX.i957 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %PC.i956
  %212 = add i64 %211, 8
  store i64 %212, i64* %PC.i956
  %213 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %213, i64* %RAX.i957, align 8
  store %struct.Memory* %loadMem_428c6b, %struct.Memory** %MEMORY
  %loadMem_428c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %RAX.i955
  %221 = add i64 %220, 156
  %222 = load i64, i64* %PC.i954
  %223 = add i64 %222, 10
  store i64 %223, i64* %PC.i954
  %224 = inttoptr i64 %221 to i32*
  store i32 0, i32* %224
  store %struct.Memory* %loadMem_428c73, %struct.Memory** %MEMORY
  %loadMem_428c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %PC.i952
  %232 = add i64 %231, 8
  store i64 %232, i64* %PC.i952
  %233 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %233, i64* %RAX.i953, align 8
  store %struct.Memory* %loadMem_428c7d, %struct.Memory** %MEMORY
  %loadMem_428c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RAX.i951 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RAX.i951
  %241 = add i64 %240, 148
  %242 = load i64, i64* %PC.i950
  %243 = add i64 %242, 10
  store i64 %243, i64* %PC.i950
  %244 = inttoptr i64 %241 to i32*
  store i32 0, i32* %244
  store %struct.Memory* %loadMem_428c85, %struct.Memory** %MEMORY
  %loadMem_428c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %PC.i948
  %252 = add i64 %251, 8
  store i64 %252, i64* %PC.i948
  %253 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %253, i64* %RAX.i949, align 8
  store %struct.Memory* %loadMem_428c8f, %struct.Memory** %MEMORY
  %loadMem_428c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RAX.i947 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RAX.i947
  %261 = add i64 %260, 160
  %262 = load i64, i64* %PC.i946
  %263 = add i64 %262, 10
  store i64 %263, i64* %PC.i946
  %264 = inttoptr i64 %261 to i32*
  store i32 0, i32* %264
  store %struct.Memory* %loadMem_428c97, %struct.Memory** %MEMORY
  %loadMem_428ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RAX.i945 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %PC.i944
  %272 = add i64 %271, 8
  store i64 %272, i64* %PC.i944
  %273 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %273, i64* %RAX.i945, align 8
  store %struct.Memory* %loadMem_428ca1, %struct.Memory** %MEMORY
  %loadMem_428ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RAX.i943 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RAX.i943
  %281 = add i64 %280, 96
  %282 = load i64, i64* %PC.i942
  %283 = add i64 %282, 7
  store i64 %283, i64* %PC.i942
  %284 = inttoptr i64 %281 to i32*
  store i32 0, i32* %284
  store %struct.Memory* %loadMem_428ca9, %struct.Memory** %MEMORY
  %loadMem_428cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RAX.i941 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %PC.i940
  %292 = add i64 %291, 8
  store i64 %292, i64* %PC.i940
  %293 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %293, i64* %RAX.i941, align 8
  store %struct.Memory* %loadMem_428cb0, %struct.Memory** %MEMORY
  %loadMem_428cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RAX.i939 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RAX.i939
  %301 = add i64 %300, 152
  %302 = load i64, i64* %PC.i938
  %303 = add i64 %302, 10
  store i64 %303, i64* %PC.i938
  %304 = inttoptr i64 %301 to i32*
  store i32 0, i32* %304
  store %struct.Memory* %loadMem_428cb8, %struct.Memory** %MEMORY
  %loadMem_428cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RAX.i937 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %PC.i936
  %312 = add i64 %311, 8
  store i64 %312, i64* %PC.i936
  %313 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %313, i64* %RAX.i937, align 8
  store %struct.Memory* %loadMem_428cc2, %struct.Memory** %MEMORY
  %loadMem_428cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RAX.i935 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RAX.i935
  %321 = add i64 %320, 144
  %322 = load i64, i64* %PC.i934
  %323 = add i64 %322, 10
  store i64 %323, i64* %PC.i934
  %324 = inttoptr i64 %321 to i32*
  store i32 0, i32* %324
  store %struct.Memory* %loadMem_428cca, %struct.Memory** %MEMORY
  %loadMem_428cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 15
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RBP.i933
  %332 = sub i64 %331, 4
  %333 = load i64, i64* %PC.i932
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC.i932
  %335 = inttoptr i64 %332 to i32*
  store i32 0, i32* %335
  store %struct.Memory* %loadMem_428cd4, %struct.Memory** %MEMORY
  br label %block_.L_428cdb

block_.L_428cdb:                                  ; preds = %block_428d1f, %entry
  %loadMem_428cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %PC.i930
  %343 = add i64 %342, 5
  store i64 %343, i64* %PC.i930
  store i64 16, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_428cdb, %struct.Memory** %MEMORY
  %loadMem_428ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 5
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RCX.i928 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 15
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %RBP.i929
  %354 = sub i64 %353, 4
  %355 = load i64, i64* %PC.i927
  %356 = add i64 %355, 3
  store i64 %356, i64* %PC.i927
  %357 = inttoptr i64 %354 to i32*
  %358 = load i32, i32* %357
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RCX.i928, align 8
  store %struct.Memory* %loadMem_428ce0, %struct.Memory** %MEMORY
  %loadMem_428ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 7
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RDX.i926 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %PC.i925
  %367 = add i64 %366, 8
  store i64 %367, i64* %PC.i925
  %368 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %368, i64* %RDX.i926, align 8
  store %struct.Memory* %loadMem_428ce3, %struct.Memory** %MEMORY
  %loadMem_428ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 7
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RDX.i923 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 9
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RSI.i924 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %RDX.i923
  %379 = add i64 %378, 52
  %380 = load i64, i64* %PC.i922
  %381 = add i64 %380, 3
  store i64 %381, i64* %PC.i922
  %382 = inttoptr i64 %379 to i32*
  %383 = load i32, i32* %382
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RSI.i924, align 8
  store %struct.Memory* %loadMem_428ceb, %struct.Memory** %MEMORY
  %loadMem_428cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %EAX.i920 = bitcast %union.anon* %390 to i32*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RBP.i921
  %395 = sub i64 %394, 16
  %396 = load i32, i32* %EAX.i920
  %397 = zext i32 %396 to i64
  %398 = load i64, i64* %PC.i919
  %399 = add i64 %398, 3
  store i64 %399, i64* %PC.i919
  %400 = inttoptr i64 %395 to i32*
  store i32 %396, i32* %400
  store %struct.Memory* %loadMem_428cee, %struct.Memory** %MEMORY
  %loadMem_428cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 9
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %ESI.i917 = bitcast %union.anon* %406 to i32*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RAX.i918 = bitcast %union.anon* %409 to i64*
  %410 = load i32, i32* %ESI.i917
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %PC.i916
  %413 = add i64 %412, 2
  store i64 %413, i64* %PC.i916
  %414 = and i64 %411, 4294967295
  store i64 %414, i64* %RAX.i918, align 8
  store %struct.Memory* %loadMem_428cf1, %struct.Memory** %MEMORY
  %loadMem_428cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %PC.i915
  %419 = add i64 %418, 1
  store i64 %419, i64* %PC.i915
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %422 = bitcast %union.anon* %421 to i32*
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = lshr i64 %424, 32
  store i64 %425, i64* %420, align 8
  store %struct.Memory* %loadMem_428cf3, %struct.Memory** %MEMORY
  %loadMem_428cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 33
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 9
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %RSI.i913 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 15
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RBP.i914 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %RBP.i914
  %436 = sub i64 %435, 16
  %437 = load i64, i64* %PC.i912
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC.i912
  %439 = inttoptr i64 %436 to i32*
  %440 = load i32, i32* %439
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RSI.i913, align 8
  store %struct.Memory* %loadMem_428cf4, %struct.Memory** %MEMORY
  %loadMem_428cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 9
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %ESI.i908 = bitcast %union.anon* %447 to i32*
  %448 = load i32, i32* %ESI.i908
  %449 = zext i32 %448 to i64
  %450 = load i64, i64* %PC.i907
  %451 = add i64 %450, 2
  store i64 %451, i64* %PC.i907
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %453 = bitcast %union.anon* %452 to i32*
  %454 = load i32, i32* %453, align 8
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %457 = bitcast %union.anon* %456 to i32*
  %458 = load i32, i32* %457, align 8
  %459 = zext i32 %458 to i64
  %460 = shl i64 %449, 32
  %461 = ashr exact i64 %460, 32
  %462 = shl i64 %459, 32
  %463 = or i64 %462, %455
  %464 = sdiv i64 %463, %461
  %465 = shl i64 %464, 32
  %466 = ashr exact i64 %465, 32
  %467 = icmp eq i64 %464, %466
  br i1 %467, label %472, label %468

; <label>:468:                                    ; preds = %block_.L_428cdb
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %470, %struct.Memory* %loadMem_428cf7)
  br label %routine_idivl__esi.exit909

; <label>:472:                                    ; preds = %block_.L_428cdb
  %473 = srem i64 %463, %461
  %474 = getelementptr inbounds %union.anon, %union.anon* %452, i64 0, i32 0
  %475 = and i64 %464, 4294967295
  store i64 %475, i64* %474, align 8
  %476 = getelementptr inbounds %union.anon, %union.anon* %456, i64 0, i32 0
  %477 = and i64 %473, 4294967295
  store i64 %477, i64* %476, align 8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %478, align 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %479, align 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %480, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %481, align 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %482, align 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %483, align 1
  br label %routine_idivl__esi.exit909

routine_idivl__esi.exit909:                       ; preds = %468, %472
  %484 = phi %struct.Memory* [ %471, %468 ], [ %loadMem_428cf7, %472 ]
  store %struct.Memory* %484, %struct.Memory** %MEMORY
  %loadMem_428cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 11
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RDI.i906 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %PC.i905
  %492 = add i64 %491, 8
  store i64 %492, i64* %PC.i905
  %493 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %493, i64* %RDI.i906, align 8
  store %struct.Memory* %loadMem_428cf9, %struct.Memory** %MEMORY
  %loadMem_428d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 17
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %R8D.i903 = bitcast %union.anon* %499 to i32*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 11
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RDI.i904 = bitcast %union.anon* %502 to i64*
  %503 = bitcast i32* %R8D.i903 to i64*
  %504 = load i64, i64* %RDI.i904
  %505 = add i64 %504, 60
  %506 = load i64, i64* %PC.i902
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC.i902
  %508 = inttoptr i64 %505 to i32*
  %509 = load i32, i32* %508
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %503, align 8
  store %struct.Memory* %loadMem_428d01, %struct.Memory** %MEMORY
  %loadMem_428d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %EAX.i900 = bitcast %union.anon* %516 to i32*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 15
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %519 to i64*
  %520 = load i64, i64* %RBP.i901
  %521 = sub i64 %520, 20
  %522 = load i32, i32* %EAX.i900
  %523 = zext i32 %522 to i64
  %524 = load i64, i64* %PC.i899
  %525 = add i64 %524, 3
  store i64 %525, i64* %PC.i899
  %526 = inttoptr i64 %521 to i32*
  store i32 %522, i32* %526
  store %struct.Memory* %loadMem_428d05, %struct.Memory** %MEMORY
  %loadMem_428d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 17
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %R8D.i897 = bitcast %union.anon* %532 to i32*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RAX.i898 = bitcast %union.anon* %535 to i64*
  %536 = load i32, i32* %R8D.i897
  %537 = zext i32 %536 to i64
  %538 = load i64, i64* %PC.i896
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC.i896
  %540 = and i64 %537, 4294967295
  store i64 %540, i64* %RAX.i898, align 8
  store %struct.Memory* %loadMem_428d08, %struct.Memory** %MEMORY
  %loadMem_428d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %PC.i895
  %545 = add i64 %544, 1
  store i64 %545, i64* %PC.i895
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %548 = bitcast %union.anon* %547 to i32*
  %549 = load i32, i32* %548, align 8
  %550 = sext i32 %549 to i64
  %551 = lshr i64 %550, 32
  store i64 %551, i64* %546, align 8
  store %struct.Memory* %loadMem_428d0b, %struct.Memory** %MEMORY
  %loadMem_428d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 9
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %ESI.i891 = bitcast %union.anon* %557 to i32*
  %558 = load i32, i32* %ESI.i891
  %559 = zext i32 %558 to i64
  %560 = load i64, i64* %PC.i890
  %561 = add i64 %560, 2
  store i64 %561, i64* %PC.i890
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %563 = bitcast %union.anon* %562 to i32*
  %564 = load i32, i32* %563, align 8
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %567 = bitcast %union.anon* %566 to i32*
  %568 = load i32, i32* %567, align 8
  %569 = zext i32 %568 to i64
  %570 = shl i64 %559, 32
  %571 = ashr exact i64 %570, 32
  %572 = shl i64 %569, 32
  %573 = or i64 %572, %565
  %574 = sdiv i64 %573, %571
  %575 = shl i64 %574, 32
  %576 = ashr exact i64 %575, 32
  %577 = icmp eq i64 %574, %576
  br i1 %577, label %582, label %578

; <label>:578:                                    ; preds = %routine_idivl__esi.exit909
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %580, %struct.Memory* %loadMem_428d0c)
  br label %routine_idivl__esi.exit892

; <label>:582:                                    ; preds = %routine_idivl__esi.exit909
  %583 = srem i64 %573, %571
  %584 = getelementptr inbounds %union.anon, %union.anon* %562, i64 0, i32 0
  %585 = and i64 %574, 4294967295
  store i64 %585, i64* %584, align 8
  %586 = getelementptr inbounds %union.anon, %union.anon* %566, i64 0, i32 0
  %587 = and i64 %583, 4294967295
  store i64 %587, i64* %586, align 8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %588, align 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %589, align 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %591, align 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %592, align 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %593, align 1
  br label %routine_idivl__esi.exit892

routine_idivl__esi.exit892:                       ; preds = %578, %582
  %594 = phi %struct.Memory* [ %581, %578 ], [ %loadMem_428d0c, %582 ]
  store %struct.Memory* %594, %struct.Memory** %MEMORY
  %loadMem_428d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 17
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %R8D.i888 = bitcast %union.anon* %600 to i32*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 15
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %603 to i64*
  %604 = bitcast i32* %R8D.i888 to i64*
  %605 = load i64, i64* %RBP.i889
  %606 = sub i64 %605, 20
  %607 = load i64, i64* %PC.i887
  %608 = add i64 %607, 4
  store i64 %608, i64* %PC.i887
  %609 = inttoptr i64 %606 to i32*
  %610 = load i32, i32* %609
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %604, align 8
  store %struct.Memory* %loadMem_428d0e, %struct.Memory** %MEMORY
  %loadMem_428d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %EAX.i885 = bitcast %union.anon* %617 to i32*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 17
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %R8D.i886 = bitcast %union.anon* %620 to i32*
  %621 = bitcast i32* %R8D.i886 to i64*
  %622 = load i32, i32* %R8D.i886
  %623 = zext i32 %622 to i64
  %624 = load i32, i32* %EAX.i885
  %625 = zext i32 %624 to i64
  %626 = load i64, i64* %PC.i884
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC.i884
  %628 = shl i64 %623, 32
  %629 = ashr exact i64 %628, 32
  %630 = shl i64 %625, 32
  %631 = ashr exact i64 %630, 32
  %632 = mul i64 %631, %629
  %633 = trunc i64 %632 to i32
  %634 = and i64 %632, 4294967295
  store i64 %634, i64* %621, align 8
  %635 = shl i64 %632, 32
  %636 = ashr exact i64 %635, 32
  %637 = icmp ne i64 %636, %632
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %638, i8* %639, align 1
  %640 = and i32 %633, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %644, i8* %645, align 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %646, align 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %647, align 1
  %648 = lshr i32 %633, 31
  %649 = trunc i32 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %649, i8* %650, align 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %638, i8* %651, align 1
  store %struct.Memory* %loadMem_428d12, %struct.Memory** %MEMORY
  %loadMem_428d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 5
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %ECX.i882 = bitcast %union.anon* %657 to i32*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 17
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %R8D.i883 = bitcast %union.anon* %660 to i32*
  %661 = load i32, i32* %ECX.i882
  %662 = zext i32 %661 to i64
  %663 = load i32, i32* %R8D.i883
  %664 = zext i32 %663 to i64
  %665 = load i64, i64* %PC.i881
  %666 = add i64 %665, 3
  store i64 %666, i64* %PC.i881
  %667 = sub i32 %661, %663
  %668 = icmp ult i32 %661, %663
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %669, i8* %670, align 1
  %671 = and i32 %667, 255
  %672 = call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %675, i8* %676, align 1
  %677 = xor i64 %664, %662
  %678 = trunc i64 %677 to i32
  %679 = xor i32 %678, %667
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %682, i8* %683, align 1
  %684 = icmp eq i32 %667, 0
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %685, i8* %686, align 1
  %687 = lshr i32 %667, 31
  %688 = trunc i32 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %688, i8* %689, align 1
  %690 = lshr i32 %661, 31
  %691 = lshr i32 %663, 31
  %692 = xor i32 %691, %690
  %693 = xor i32 %687, %690
  %694 = add i32 %693, %692
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %696, i8* %697, align 1
  store %struct.Memory* %loadMem_428d16, %struct.Memory** %MEMORY
  %loadMem_428d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %700 to i64*
  %701 = load i64, i64* %PC.i880
  %702 = add i64 %701, 56
  %703 = load i64, i64* %PC.i880
  %704 = add i64 %703, 6
  %705 = load i64, i64* %PC.i880
  %706 = add i64 %705, 6
  store i64 %706, i64* %PC.i880
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %708 = load i8, i8* %707, align 1
  %709 = icmp ne i8 %708, 0
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %711 = load i8, i8* %710, align 1
  %712 = icmp ne i8 %711, 0
  %713 = xor i1 %709, %712
  %714 = xor i1 %713, true
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %BRANCH_TAKEN, align 1
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %717 = select i1 %713, i64 %704, i64 %702
  store i64 %717, i64* %716, align 8
  store %struct.Memory* %loadMem_428d19, %struct.Memory** %MEMORY
  %loadBr_428d19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428d19 = icmp eq i8 %loadBr_428d19, 1
  br i1 %cmpBr_428d19, label %block_.L_428d51, label %block_428d1f

block_428d1f:                                     ; preds = %routine_idivl__esi.exit892
  %loadMem_428d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RAX.i879 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %PC.i878
  %725 = add i64 %724, 8
  store i64 %725, i64* %PC.i878
  %726 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %726, i64* %RAX.i879, align 8
  store %struct.Memory* %loadMem_428d1f, %struct.Memory** %MEMORY
  %loadMem_428d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RAX.i877
  %734 = add i64 %733, 14168
  %735 = load i64, i64* %PC.i876
  %736 = add i64 %735, 7
  store i64 %736, i64* %PC.i876
  %737 = inttoptr i64 %734 to i64*
  %738 = load i64, i64* %737
  store i64 %738, i64* %RAX.i877, align 8
  store %struct.Memory* %loadMem_428d27, %struct.Memory** %MEMORY
  %loadMem_428d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RCX.i874 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RBP.i875
  %749 = sub i64 %748, 4
  %750 = load i64, i64* %PC.i873
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC.i873
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i874, align 8
  store %struct.Memory* %loadMem_428d2e, %struct.Memory** %MEMORY
  %loadMem_428d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 5
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RCX.i872
  %762 = load i64, i64* %PC.i871
  %763 = add i64 %762, 7
  store i64 %763, i64* %PC.i871
  %764 = sext i64 %761 to i128
  %765 = and i128 %764, -18446744073709551616
  %766 = zext i64 %761 to i128
  %767 = or i128 %765, %766
  %768 = mul i128 632, %767
  %769 = trunc i128 %768 to i64
  store i64 %769, i64* %RCX.i872, align 8
  %770 = sext i64 %769 to i128
  %771 = icmp ne i128 %770, %768
  %772 = zext i1 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %772, i8* %773, align 1
  %774 = trunc i128 %768 to i32
  %775 = and i32 %774, 255
  %776 = call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %779, i8* %780, align 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %782, align 1
  %783 = lshr i64 %769, 63
  %784 = trunc i64 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %784, i8* %785, align 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %772, i8* %786, align 1
  store %struct.Memory* %loadMem_428d32, %struct.Memory** %MEMORY
  %loadMem_428d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 5
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RCX.i870 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RAX.i869
  %797 = load i64, i64* %RCX.i870
  %798 = load i64, i64* %PC.i868
  %799 = add i64 %798, 3
  store i64 %799, i64* %PC.i868
  %800 = add i64 %797, %796
  store i64 %800, i64* %RAX.i869, align 8
  %801 = icmp ult i64 %800, %796
  %802 = icmp ult i64 %800, %797
  %803 = or i1 %801, %802
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %804, i8* %805, align 1
  %806 = trunc i64 %800 to i32
  %807 = and i32 %806, 255
  %808 = call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %811, i8* %812, align 1
  %813 = xor i64 %797, %796
  %814 = xor i64 %813, %800
  %815 = lshr i64 %814, 4
  %816 = trunc i64 %815 to i8
  %817 = and i8 %816, 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %817, i8* %818, align 1
  %819 = icmp eq i64 %800, 0
  %820 = zext i1 %819 to i8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %820, i8* %821, align 1
  %822 = lshr i64 %800, 63
  %823 = trunc i64 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %823, i8* %824, align 1
  %825 = lshr i64 %796, 63
  %826 = lshr i64 %797, 63
  %827 = xor i64 %822, %825
  %828 = xor i64 %822, %826
  %829 = add i64 %827, %828
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %831, i8* %832, align 1
  store %struct.Memory* %loadMem_428d39, %struct.Memory** %MEMORY
  %loadMem_428d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RAX.i867
  %840 = add i64 %839, 4
  %841 = load i64, i64* %PC.i866
  %842 = add i64 %841, 7
  store i64 %842, i64* %PC.i866
  %843 = inttoptr i64 %840 to i32*
  store i32 -1, i32* %843
  store %struct.Memory* %loadMem_428d3c, %struct.Memory** %MEMORY
  %loadMem_428d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i865
  %854 = sub i64 %853, 4
  %855 = load i64, i64* %PC.i863
  %856 = add i64 %855, 3
  store i64 %856, i64* %PC.i863
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_428d43, %struct.Memory** %MEMORY
  %loadMem_428d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RAX.i862
  %867 = load i64, i64* %PC.i861
  %868 = add i64 %867, 3
  store i64 %868, i64* %PC.i861
  %869 = trunc i64 %866 to i32
  %870 = add i32 1, %869
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX.i862, align 8
  %872 = icmp ult i32 %870, %869
  %873 = icmp ult i32 %870, 1
  %874 = or i1 %872, %873
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %875, i8* %876, align 1
  %877 = and i32 %870, 255
  %878 = call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %881, i8* %882, align 1
  %883 = xor i64 1, %866
  %884 = trunc i64 %883 to i32
  %885 = xor i32 %884, %870
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %888, i8* %889, align 1
  %890 = icmp eq i32 %870, 0
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %891, i8* %892, align 1
  %893 = lshr i32 %870, 31
  %894 = trunc i32 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %894, i8* %895, align 1
  %896 = lshr i32 %869, 31
  %897 = xor i32 %893, %896
  %898 = add i32 %897, %893
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %900, i8* %901, align 1
  store %struct.Memory* %loadMem_428d46, %struct.Memory** %MEMORY
  %loadMem_428d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 1
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %EAX.i859 = bitcast %union.anon* %907 to i32*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 15
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %910 to i64*
  %911 = load i64, i64* %RBP.i860
  %912 = sub i64 %911, 4
  %913 = load i32, i32* %EAX.i859
  %914 = zext i32 %913 to i64
  %915 = load i64, i64* %PC.i858
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i858
  %917 = inttoptr i64 %912 to i32*
  store i32 %913, i32* %917
  store %struct.Memory* %loadMem_428d49, %struct.Memory** %MEMORY
  %loadMem_428d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %PC.i857
  %922 = add i64 %921, -113
  %923 = load i64, i64* %PC.i857
  %924 = add i64 %923, 5
  store i64 %924, i64* %PC.i857
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %922, i64* %925, align 8
  store %struct.Memory* %loadMem_428d4c, %struct.Memory** %MEMORY
  br label %block_.L_428cdb

block_.L_428d51:                                  ; preds = %routine_idivl__esi.exit892
  %loadMem_428d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 1
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %PC.i855
  %933 = add i64 %932, 8
  store i64 %933, i64* %PC.i855
  %934 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %934, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_428d51, %struct.Memory** %MEMORY
  %loadMem_428d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RAX.i854 = bitcast %union.anon* %940 to i64*
  %941 = load i64, i64* %RAX.i854
  %942 = add i64 %941, 71908
  %943 = load i64, i64* %PC.i853
  %944 = add i64 %943, 7
  store i64 %944, i64* %PC.i853
  %945 = inttoptr i64 %942 to i32*
  %946 = load i32, i32* %945
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %947, align 1
  %948 = and i32 %946, 255
  %949 = call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %952, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %954, align 1
  %955 = icmp eq i32 %946, 0
  %956 = zext i1 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %956, i8* %957, align 1
  %958 = lshr i32 %946, 31
  %959 = trunc i32 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %959, i8* %960, align 1
  %961 = lshr i32 %946, 31
  %962 = xor i32 %958, %961
  %963 = add i32 %962, %961
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %965, i8* %966, align 1
  store %struct.Memory* %loadMem_428d59, %struct.Memory** %MEMORY
  %loadMem_428d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %PC.i852
  %971 = add i64 %970, 735
  %972 = load i64, i64* %PC.i852
  %973 = add i64 %972, 6
  %974 = load i64, i64* %PC.i852
  %975 = add i64 %974, 6
  store i64 %975, i64* %PC.i852
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %977 = load i8, i8* %976, align 1
  %978 = icmp eq i8 %977, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %BRANCH_TAKEN, align 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %981 = select i1 %978, i64 %971, i64 %973
  store i64 %981, i64* %980, align 8
  store %struct.Memory* %loadMem_428d60, %struct.Memory** %MEMORY
  %loadBr_428d60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428d60 = icmp eq i8 %loadBr_428d60, 1
  br i1 %cmpBr_428d60, label %block_.L_42903f, label %block_428d66

block_428d66:                                     ; preds = %block_.L_428d51
  %loadMem_428d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 1
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %PC.i850
  %989 = add i64 %988, 7
  store i64 %989, i64* %PC.i850
  %990 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RAX.i851, align 8
  store %struct.Memory* %loadMem_428d66, %struct.Memory** %MEMORY
  %loadMem_428d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 5
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RCX.i849 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %PC.i848
  %999 = add i64 %998, 8
  store i64 %999, i64* %PC.i848
  %1000 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1000, i64* %RCX.i849, align 8
  store %struct.Memory* %loadMem_428d6d, %struct.Memory** %MEMORY
  %loadMem_428d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 5
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RCX.i846 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 7
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDX.i847 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RCX.i846
  %1011 = load i64, i64* %PC.i845
  %1012 = add i64 %1011, 2
  store i64 %1012, i64* %PC.i845
  %1013 = inttoptr i64 %1010 to i32*
  %1014 = load i32, i32* %1013
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RDX.i847, align 8
  store %struct.Memory* %loadMem_428d75, %struct.Memory** %MEMORY
  %loadMem_428d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 7
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RDX.i844 = bitcast %union.anon* %1021 to i64*
  %1022 = load i64, i64* %RDX.i844
  %1023 = load i64, i64* %PC.i843
  %1024 = add i64 %1023, 7
  store i64 %1024, i64* %PC.i843
  %1025 = trunc i64 %1022 to i32
  %1026 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %1027 = sub i32 %1025, %1026
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RDX.i844, align 8
  %1029 = icmp ult i32 %1025, %1026
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1030, i8* %1031, align 1
  %1032 = and i32 %1027, 255
  %1033 = call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1036, i8* %1037, align 1
  %1038 = xor i32 %1026, %1025
  %1039 = xor i32 %1038, %1027
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1042, i8* %1043, align 1
  %1044 = icmp eq i32 %1027, 0
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1045, i8* %1046, align 1
  %1047 = lshr i32 %1027, 31
  %1048 = trunc i32 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1048, i8* %1049, align 1
  %1050 = lshr i32 %1025, 31
  %1051 = lshr i32 %1026, 31
  %1052 = xor i32 %1051, %1050
  %1053 = xor i32 %1047, %1050
  %1054 = add i32 %1053, %1052
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1056, i8* %1057, align 1
  store %struct.Memory* %loadMem_428d77, %struct.Memory** %MEMORY
  %loadMem_428d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 5
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RCX.i842 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %PC.i841
  %1065 = add i64 %1064, 8
  store i64 %1065, i64* %PC.i841
  %1066 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1066, i64* %RCX.i842, align 8
  store %struct.Memory* %loadMem_428d7e, %struct.Memory** %MEMORY
  %loadMem_428d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 5
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RCX.i839 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 9
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RSI.i840 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %RCX.i839
  %1077 = add i64 %1076, 20
  %1078 = load i64, i64* %PC.i838
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %PC.i838
  %1080 = inttoptr i64 %1077 to i32*
  %1081 = load i32, i32* %1080
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RSI.i840, align 8
  store %struct.Memory* %loadMem_428d86, %struct.Memory** %MEMORY
  %loadMem_428d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 9
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RSI.i837 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %RSI.i837
  %1090 = load i64, i64* %PC.i836
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC.i836
  %1092 = trunc i64 %1089 to i32
  %1093 = add i32 1, %1092
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RSI.i837, align 8
  %1095 = icmp ult i32 %1093, %1092
  %1096 = icmp ult i32 %1093, 1
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1098, i8* %1099, align 1
  %1100 = and i32 %1093, 255
  %1101 = call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1104, i8* %1105, align 1
  %1106 = xor i64 1, %1089
  %1107 = trunc i64 %1106 to i32
  %1108 = xor i32 %1107, %1093
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1111, i8* %1112, align 1
  %1113 = icmp eq i32 %1093, 0
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1114, i8* %1115, align 1
  %1116 = lshr i32 %1093, 31
  %1117 = trunc i32 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i32 %1092, 31
  %1120 = xor i32 %1116, %1119
  %1121 = add i32 %1120, %1116
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1123, i8* %1124, align 1
  store %struct.Memory* %loadMem_428d89, %struct.Memory** %MEMORY
  %loadMem_428d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 9
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %ESI.i834 = bitcast %union.anon* %1130 to i32*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 7
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RDX.i835
  %1135 = load i32, i32* %ESI.i834
  %1136 = zext i32 %1135 to i64
  %1137 = load i64, i64* %PC.i833
  %1138 = add i64 %1137, 3
  store i64 %1138, i64* %PC.i833
  %1139 = shl i64 %1134, 32
  %1140 = ashr exact i64 %1139, 32
  %1141 = shl i64 %1136, 32
  %1142 = ashr exact i64 %1141, 32
  %1143 = mul i64 %1142, %1140
  %1144 = trunc i64 %1143 to i32
  %1145 = and i64 %1143, 4294967295
  store i64 %1145, i64* %RDX.i835, align 8
  %1146 = shl i64 %1143, 32
  %1147 = ashr exact i64 %1146, 32
  %1148 = icmp ne i64 %1147, %1143
  %1149 = zext i1 %1148 to i8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1149, i8* %1150, align 1
  %1151 = and i32 %1144, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1157, align 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1158, align 1
  %1159 = lshr i32 %1144, 31
  %1160 = trunc i32 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1160, i8* %1161, align 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1149, i8* %1162, align 1
  store %struct.Memory* %loadMem_428d8c, %struct.Memory** %MEMORY
  %loadMem_428d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 7
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %EDX.i831 = bitcast %union.anon* %1168 to i32*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RAX.i832 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RAX.i832
  %1173 = load i32, i32* %EDX.i831
  %1174 = zext i32 %1173 to i64
  %1175 = load i64, i64* %PC.i830
  %1176 = add i64 %1175, 2
  store i64 %1176, i64* %PC.i830
  %1177 = trunc i64 %1172 to i32
  %1178 = add i32 %1173, %1177
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RAX.i832, align 8
  %1180 = icmp ult i32 %1178, %1177
  %1181 = icmp ult i32 %1178, %1173
  %1182 = or i1 %1180, %1181
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1183, i8* %1184, align 1
  %1185 = and i32 %1178, 255
  %1186 = call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1189, i8* %1190, align 1
  %1191 = xor i64 %1174, %1172
  %1192 = trunc i64 %1191 to i32
  %1193 = xor i32 %1192, %1178
  %1194 = lshr i32 %1193, 4
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1196, i8* %1197, align 1
  %1198 = icmp eq i32 %1178, 0
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1199, i8* %1200, align 1
  %1201 = lshr i32 %1178, 31
  %1202 = trunc i32 %1201 to i8
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1202, i8* %1203, align 1
  %1204 = lshr i32 %1177, 31
  %1205 = lshr i32 %1173, 31
  %1206 = xor i32 %1201, %1204
  %1207 = xor i32 %1201, %1205
  %1208 = add i32 %1206, %1207
  %1209 = icmp eq i32 %1208, 2
  %1210 = zext i1 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1210, i8* %1211, align 1
  store %struct.Memory* %loadMem_428d8f, %struct.Memory** %MEMORY
  %loadMem_428d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 5
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RCX.i829 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %PC.i828
  %1219 = add i64 %1218, 8
  store i64 %1219, i64* %PC.i828
  %1220 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1220, i64* %RCX.i829, align 8
  store %struct.Memory* %loadMem_428d91, %struct.Memory** %MEMORY
  %loadMem_428d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 1
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %EAX.i826 = bitcast %union.anon* %1226 to i32*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 5
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RCX.i827 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %RCX.i827
  %1231 = add i64 %1230, 71792
  %1232 = load i32, i32* %EAX.i826
  %1233 = zext i32 %1232 to i64
  %1234 = load i64, i64* %PC.i825
  %1235 = add i64 %1234, 6
  store i64 %1235, i64* %PC.i825
  %1236 = inttoptr i64 %1231 to i32*
  store i32 %1232, i32* %1236
  store %struct.Memory* %loadMem_428d99, %struct.Memory** %MEMORY
  %loadMem_428d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 5
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %PC.i823
  %1244 = add i64 %1243, 8
  store i64 %1244, i64* %PC.i823
  %1245 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1245, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_428d9f, %struct.Memory** %MEMORY
  %loadMem_428da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 5
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RCX.i822 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RCX.i822
  %1256 = add i64 %1255, 71876
  %1257 = load i64, i64* %PC.i820
  %1258 = add i64 %1257, 6
  store i64 %1258, i64* %PC.i820
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i821, align 8
  store %struct.Memory* %loadMem_428da7, %struct.Memory** %MEMORY
  %loadMem_428dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 5
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RCX.i819 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %PC.i818
  %1269 = add i64 %1268, 8
  store i64 %1269, i64* %PC.i818
  %1270 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1270, i64* %RCX.i819, align 8
  store %struct.Memory* %loadMem_428dad, %struct.Memory** %MEMORY
  %loadMem_428db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %EAX.i816 = bitcast %union.anon* %1276 to i32*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 5
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RCX.i817
  %1281 = add i64 %1280, 71880
  %1282 = load i32, i32* %EAX.i816
  %1283 = zext i32 %1282 to i64
  %1284 = load i64, i64* %PC.i815
  %1285 = add i64 %1284, 6
  store i64 %1285, i64* %PC.i815
  %1286 = inttoptr i64 %1281 to i32*
  store i32 %1282, i32* %1286
  store %struct.Memory* %loadMem_428db5, %struct.Memory** %MEMORY
  %loadMem_428dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 5
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %1292 to i64*
  %1293 = load i64, i64* %PC.i813
  %1294 = add i64 %1293, 8
  store i64 %1294, i64* %PC.i813
  %1295 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1295, i64* %RCX.i814, align 8
  store %struct.Memory* %loadMem_428dbb, %struct.Memory** %MEMORY
  %loadMem_428dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 1
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 5
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RCX.i812
  %1306 = add i64 %1305, 71792
  %1307 = load i64, i64* %PC.i810
  %1308 = add i64 %1307, 6
  store i64 %1308, i64* %PC.i810
  %1309 = inttoptr i64 %1306 to i32*
  %1310 = load i32, i32* %1309
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RAX.i811, align 8
  store %struct.Memory* %loadMem_428dc3, %struct.Memory** %MEMORY
  %loadMem_428dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 5
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RCX.i809 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %PC.i808
  %1319 = add i64 %1318, 8
  store i64 %1319, i64* %PC.i808
  %1320 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1320, i64* %RCX.i809, align 8
  store %struct.Memory* %loadMem_428dc9, %struct.Memory** %MEMORY
  %loadMem_428dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 1
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %EAX.i806 = bitcast %union.anon* %1326 to i32*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i807 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RCX.i807
  %1331 = add i64 %1330, 71876
  %1332 = load i32, i32* %EAX.i806
  %1333 = zext i32 %1332 to i64
  %1334 = load i64, i64* %PC.i805
  %1335 = add i64 %1334, 6
  store i64 %1335, i64* %PC.i805
  %1336 = inttoptr i64 %1331 to i32*
  store i32 %1332, i32* %1336
  store %struct.Memory* %loadMem_428dd1, %struct.Memory** %MEMORY
  %loadMem_428dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 5
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RCX.i804 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %PC.i803
  %1344 = add i64 %1343, 8
  store i64 %1344, i64* %PC.i803
  %1345 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1345, i64* %RCX.i804, align 8
  store %struct.Memory* %loadMem_428dd7, %struct.Memory** %MEMORY
  %loadMem_428ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 5
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RCX.i802 = bitcast %union.anon* %1351 to i64*
  %1352 = load i64, i64* %RCX.i802
  %1353 = add i64 %1352, 2440
  %1354 = load i64, i64* %PC.i801
  %1355 = add i64 %1354, 7
  store i64 %1355, i64* %PC.i801
  %1356 = inttoptr i64 %1353 to i32*
  %1357 = load i32, i32* %1356
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1358, align 1
  %1359 = and i32 %1357, 255
  %1360 = call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1363, i8* %1364, align 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1365, align 1
  %1366 = icmp eq i32 %1357, 0
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1367, i8* %1368, align 1
  %1369 = lshr i32 %1357, 31
  %1370 = trunc i32 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1370, i8* %1371, align 1
  %1372 = lshr i32 %1357, 31
  %1373 = xor i32 %1369, %1372
  %1374 = add i32 %1373, %1372
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1376, i8* %1377, align 1
  store %struct.Memory* %loadMem_428ddf, %struct.Memory** %MEMORY
  %loadMem_428de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %PC.i800
  %1382 = add i64 %1381, 64
  %1383 = load i64, i64* %PC.i800
  %1384 = add i64 %1383, 6
  %1385 = load i64, i64* %PC.i800
  %1386 = add i64 %1385, 6
  store i64 %1386, i64* %PC.i800
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1388 = load i8, i8* %1387, align 1
  store i8 %1388, i8* %BRANCH_TAKEN, align 1
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1390 = icmp ne i8 %1388, 0
  %1391 = select i1 %1390, i64 %1382, i64 %1384
  store i64 %1391, i64* %1389, align 8
  store %struct.Memory* %loadMem_428de6, %struct.Memory** %MEMORY
  %loadBr_428de6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428de6 = icmp eq i8 %loadBr_428de6, 1
  br i1 %cmpBr_428de6, label %block_.L_428e26, label %block_428dec

block_428dec:                                     ; preds = %block_428d66
  %loadMem_428dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 1
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %PC.i798
  %1399 = add i64 %1398, 8
  store i64 %1399, i64* %PC.i798
  %1400 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1400, i64* %RAX.i799, align 8
  store %struct.Memory* %loadMem_428dec, %struct.Memory** %MEMORY
  %loadMem_428df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 1
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 5
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RAX.i796
  %1411 = load i64, i64* %PC.i795
  %1412 = add i64 %1411, 2
  store i64 %1412, i64* %PC.i795
  %1413 = inttoptr i64 %1410 to i32*
  %1414 = load i32, i32* %1413
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RCX.i797, align 8
  store %struct.Memory* %loadMem_428df4, %struct.Memory** %MEMORY
  %loadMem_428df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 5
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RCX.i794 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RCX.i794
  %1423 = load i64, i64* %PC.i793
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i793
  %1425 = trunc i64 %1422 to i32
  %1426 = add i32 1, %1425
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RCX.i794, align 8
  %1428 = icmp ult i32 %1426, %1425
  %1429 = icmp ult i32 %1426, 1
  %1430 = or i1 %1428, %1429
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1431, i8* %1432, align 1
  %1433 = and i32 %1426, 255
  %1434 = call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1437, i8* %1438, align 1
  %1439 = xor i64 1, %1422
  %1440 = trunc i64 %1439 to i32
  %1441 = xor i32 %1440, %1426
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1444, i8* %1445, align 1
  %1446 = icmp eq i32 %1426, 0
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1447, i8* %1448, align 1
  %1449 = lshr i32 %1426, 31
  %1450 = trunc i32 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1450, i8* %1451, align 1
  %1452 = lshr i32 %1425, 31
  %1453 = xor i32 %1449, %1452
  %1454 = add i32 %1453, %1449
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1456, i8* %1457, align 1
  store %struct.Memory* %loadMem_428df6, %struct.Memory** %MEMORY
  %loadMem_428df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 1
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i791
  %1465 = add i64 %1464, 8
  store i64 %1465, i64* %PC.i791
  %1466 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1466, i64* %RAX.i792, align 8
  store %struct.Memory* %loadMem_428df9, %struct.Memory** %MEMORY
  %loadMem_428e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 5
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %ECX.i789 = bitcast %union.anon* %1472 to i32*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %1475 to i64*
  %1476 = load i32, i32* %ECX.i789
  %1477 = zext i32 %1476 to i64
  %1478 = load i64, i64* %RAX.i790
  %1479 = add i64 %1478, 8
  %1480 = load i64, i64* %PC.i788
  %1481 = add i64 %1480, 3
  store i64 %1481, i64* %PC.i788
  %1482 = inttoptr i64 %1479 to i32*
  %1483 = load i32, i32* %1482
  %1484 = sub i32 %1476, %1483
  %1485 = icmp ult i32 %1476, %1483
  %1486 = zext i1 %1485 to i8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1486, i8* %1487, align 1
  %1488 = and i32 %1484, 255
  %1489 = call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1492, i8* %1493, align 1
  %1494 = xor i32 %1483, %1476
  %1495 = xor i32 %1494, %1484
  %1496 = lshr i32 %1495, 4
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1498, i8* %1499, align 1
  %1500 = icmp eq i32 %1484, 0
  %1501 = zext i1 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1501, i8* %1502, align 1
  %1503 = lshr i32 %1484, 31
  %1504 = trunc i32 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1504, i8* %1505, align 1
  %1506 = lshr i32 %1476, 31
  %1507 = lshr i32 %1483, 31
  %1508 = xor i32 %1507, %1506
  %1509 = xor i32 %1503, %1506
  %1510 = add i32 %1509, %1508
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1512, i8* %1513, align 1
  store %struct.Memory* %loadMem_428e01, %struct.Memory** %MEMORY
  %loadMem_428e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %PC.i787
  %1518 = add i64 %1517, 34
  %1519 = load i64, i64* %PC.i787
  %1520 = add i64 %1519, 6
  %1521 = load i64, i64* %PC.i787
  %1522 = add i64 %1521, 6
  store i64 %1522, i64* %PC.i787
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1524 = load i8, i8* %1523, align 1
  %1525 = icmp eq i8 %1524, 0
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %BRANCH_TAKEN, align 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1528 = select i1 %1525, i64 %1518, i64 %1520
  store i64 %1528, i64* %1527, align 8
  store %struct.Memory* %loadMem_428e04, %struct.Memory** %MEMORY
  %loadBr_428e04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428e04 = icmp eq i8 %loadBr_428e04, 1
  br i1 %cmpBr_428e04, label %block_.L_428e26, label %block_428e0a

block_428e0a:                                     ; preds = %block_428dec
  %loadMem_428e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 1
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RAX.i786 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %PC.i785
  %1536 = add i64 %1535, 8
  store i64 %1536, i64* %PC.i785
  %1537 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1537, i64* %RAX.i786, align 8
  store %struct.Memory* %loadMem_428e0a, %struct.Memory** %MEMORY
  %loadMem_428e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 1
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 5
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RCX.i784 = bitcast %union.anon* %1546 to i64*
  %1547 = load i64, i64* %RAX.i783
  %1548 = add i64 %1547, 2440
  %1549 = load i64, i64* %PC.i782
  %1550 = add i64 %1549, 6
  store i64 %1550, i64* %PC.i782
  %1551 = inttoptr i64 %1548 to i32*
  %1552 = load i32, i32* %1551
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i784, align 8
  store %struct.Memory* %loadMem_428e12, %struct.Memory** %MEMORY
  %loadMem_428e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 1
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %PC.i780
  %1561 = add i64 %1560, 8
  store i64 %1561, i64* %PC.i780
  %1562 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1562, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_428e18, %struct.Memory** %MEMORY
  %loadMem_428e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 5
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %ECX.i778 = bitcast %union.anon* %1568 to i32*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 1
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %RAX.i779
  %1573 = add i64 %1572, 71792
  %1574 = load i32, i32* %ECX.i778
  %1575 = zext i32 %1574 to i64
  %1576 = load i64, i64* %PC.i777
  %1577 = add i64 %1576, 6
  store i64 %1577, i64* %PC.i777
  %1578 = inttoptr i64 %1573 to i32*
  store i32 %1574, i32* %1578
  store %struct.Memory* %loadMem_428e20, %struct.Memory** %MEMORY
  br label %block_.L_428e26

block_.L_428e26:                                  ; preds = %block_428e0a, %block_428dec, %block_428d66
  %loadMem_428e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 1
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %PC.i775
  %1586 = add i64 %1585, 8
  store i64 %1586, i64* %PC.i775
  %1587 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1587, i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_428e26, %struct.Memory** %MEMORY
  %loadMem_428e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 1
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 5
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RAX.i773
  %1598 = load i64, i64* %PC.i772
  %1599 = add i64 %1598, 2
  store i64 %1599, i64* %PC.i772
  %1600 = inttoptr i64 %1597 to i32*
  %1601 = load i32, i32* %1600
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RCX.i774, align 8
  store %struct.Memory* %loadMem_428e2e, %struct.Memory** %MEMORY
  %loadMem_428e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 5
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RCX.i771 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %RCX.i771
  %1610 = load i64, i64* %PC.i770
  %1611 = add i64 %1610, 7
  store i64 %1611, i64* %PC.i770
  %1612 = trunc i64 %1609 to i32
  %1613 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %1614 = sub i32 %1612, %1613
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RCX.i771, align 8
  %1616 = icmp ult i32 %1612, %1613
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1617, i8* %1618, align 1
  %1619 = and i32 %1614, 255
  %1620 = call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1623, i8* %1624, align 1
  %1625 = xor i32 %1613, %1612
  %1626 = xor i32 %1625, %1614
  %1627 = lshr i32 %1626, 4
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1629, i8* %1630, align 1
  %1631 = icmp eq i32 %1614, 0
  %1632 = zext i1 %1631 to i8
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1632, i8* %1633, align 1
  %1634 = lshr i32 %1614, 31
  %1635 = trunc i32 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1635, i8* %1636, align 1
  %1637 = lshr i32 %1612, 31
  %1638 = lshr i32 %1613, 31
  %1639 = xor i32 %1638, %1637
  %1640 = xor i32 %1634, %1637
  %1641 = add i32 %1640, %1639
  %1642 = icmp eq i32 %1641, 2
  %1643 = zext i1 %1642 to i8
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1643, i8* %1644, align 1
  store %struct.Memory* %loadMem_428e30, %struct.Memory** %MEMORY
  %loadMem_428e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 5
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %ECX.i769 = bitcast %union.anon* %1650 to i32*
  %1651 = load i32, i32* %ECX.i769
  %1652 = zext i32 %1651 to i64
  %1653 = load i64, i64* %PC.i768
  %1654 = add i64 %1653, 3
  store i64 %1654, i64* %PC.i768
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1655, align 1
  %1656 = and i32 %1651, 255
  %1657 = call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1660, i8* %1661, align 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1662, align 1
  %1663 = icmp eq i32 %1651, 0
  %1664 = zext i1 %1663 to i8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1664, i8* %1665, align 1
  %1666 = lshr i32 %1651, 31
  %1667 = trunc i32 %1666 to i8
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1667, i8* %1668, align 1
  %1669 = lshr i32 %1651, 31
  %1670 = xor i32 %1666, %1669
  %1671 = add i32 %1670, %1669
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1673, i8* %1674, align 1
  store %struct.Memory* %loadMem_428e37, %struct.Memory** %MEMORY
  %loadMem_428e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %PC.i767
  %1679 = add i64 %1678, 48
  %1680 = load i64, i64* %PC.i767
  %1681 = add i64 %1680, 6
  %1682 = load i64, i64* %PC.i767
  %1683 = add i64 %1682, 6
  store i64 %1683, i64* %PC.i767
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1685 = load i8, i8* %1684, align 1
  store i8 %1685, i8* %BRANCH_TAKEN, align 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1687 = icmp ne i8 %1685, 0
  %1688 = select i1 %1687, i64 %1679, i64 %1681
  store i64 %1688, i64* %1686, align 8
  store %struct.Memory* %loadMem_428e3a, %struct.Memory** %MEMORY
  %loadBr_428e3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428e3a = icmp eq i8 %loadBr_428e3a, 1
  br i1 %cmpBr_428e3a, label %block_.L_428e6a, label %block_428e40

block_428e40:                                     ; preds = %block_.L_428e26
  %loadMem_428e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 1
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %PC.i765
  %1696 = add i64 %1695, 8
  store i64 %1696, i64* %PC.i765
  %1697 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1697, i64* %RAX.i766, align 8
  store %struct.Memory* %loadMem_428e40, %struct.Memory** %MEMORY
  %loadMem_428e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %RAX.i764
  %1705 = add i64 %1704, 1236
  %1706 = load i64, i64* %PC.i763
  %1707 = add i64 %1706, 7
  store i64 %1707, i64* %PC.i763
  %1708 = inttoptr i64 %1705 to i32*
  %1709 = load i32, i32* %1708
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1710, align 1
  %1711 = and i32 %1709, 255
  %1712 = call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1715, i8* %1716, align 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1717, align 1
  %1718 = icmp eq i32 %1709, 0
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1719, i8* %1720, align 1
  %1721 = lshr i32 %1709, 31
  %1722 = trunc i32 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1722, i8* %1723, align 1
  %1724 = lshr i32 %1709, 31
  %1725 = xor i32 %1721, %1724
  %1726 = add i32 %1725, %1724
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1728, i8* %1729, align 1
  store %struct.Memory* %loadMem_428e48, %struct.Memory** %MEMORY
  %loadMem_428e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %PC.i762
  %1734 = add i64 %1733, 27
  %1735 = load i64, i64* %PC.i762
  %1736 = add i64 %1735, 6
  %1737 = load i64, i64* %PC.i762
  %1738 = add i64 %1737, 6
  store i64 %1738, i64* %PC.i762
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1740 = load i8, i8* %1739, align 1
  store i8 %1740, i8* %BRANCH_TAKEN, align 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1742 = icmp ne i8 %1740, 0
  %1743 = select i1 %1742, i64 %1734, i64 %1736
  store i64 %1743, i64* %1741, align 8
  store %struct.Memory* %loadMem_428e4f, %struct.Memory** %MEMORY
  %loadBr_428e4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428e4f = icmp eq i8 %loadBr_428e4f, 1
  br i1 %cmpBr_428e4f, label %block_.L_428e6a, label %block_428e55

block_428e55:                                     ; preds = %block_428e40
  %loadMem_428e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 1
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %PC.i760
  %1751 = add i64 %1750, 8
  store i64 %1751, i64* %PC.i760
  %1752 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1752, i64* %RAX.i761, align 8
  store %struct.Memory* %loadMem_428e55, %struct.Memory** %MEMORY
  %loadMem_428e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 1
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 5
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RAX.i758
  %1763 = add i64 %1762, 71792
  %1764 = load i64, i64* %PC.i757
  %1765 = add i64 %1764, 6
  store i64 %1765, i64* %PC.i757
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766
  %1768 = zext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i759, align 8
  store %struct.Memory* %loadMem_428e5d, %struct.Memory** %MEMORY
  %loadMem_428e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 5
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %ECX.i756 = bitcast %union.anon* %1774 to i32*
  %1775 = load i32, i32* %ECX.i756
  %1776 = zext i32 %1775 to i64
  %1777 = load i64, i64* %PC.i755
  %1778 = add i64 %1777, 7
  store i64 %1778, i64* %PC.i755
  store i32 %1775, i32* bitcast (%G_0x6cd870_type* @G_0x6cd870 to i32*)
  store %struct.Memory* %loadMem_428e63, %struct.Memory** %MEMORY
  br label %block_.L_428e6a

block_.L_428e6a:                                  ; preds = %block_428e55, %block_428e40, %block_.L_428e26
  %loadMem_428e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %PC.i753
  %1786 = add i64 %1785, 8
  store i64 %1786, i64* %PC.i753
  %1787 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1787, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_428e6a, %struct.Memory** %MEMORY
  %loadMem_428e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 1
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RAX.i752
  %1795 = add i64 %1794, 3236
  %1796 = load i64, i64* %PC.i751
  %1797 = add i64 %1796, 7
  store i64 %1797, i64* %PC.i751
  %1798 = inttoptr i64 %1795 to i32*
  %1799 = load i32, i32* %1798
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1800, align 1
  %1801 = and i32 %1799, 255
  %1802 = call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1805, i8* %1806, align 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1807, align 1
  %1808 = icmp eq i32 %1799, 0
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1799, 31
  %1812 = trunc i32 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1812, i8* %1813, align 1
  %1814 = lshr i32 %1799, 31
  %1815 = xor i32 %1811, %1814
  %1816 = add i32 %1815, %1814
  %1817 = icmp eq i32 %1816, 2
  %1818 = zext i1 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1818, i8* %1819, align 1
  store %struct.Memory* %loadMem_428e72, %struct.Memory** %MEMORY
  %loadMem_428e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %PC.i750
  %1824 = add i64 %1823, 321
  %1825 = load i64, i64* %PC.i750
  %1826 = add i64 %1825, 6
  %1827 = load i64, i64* %PC.i750
  %1828 = add i64 %1827, 6
  store i64 %1828, i64* %PC.i750
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1830 = load i8, i8* %1829, align 1
  %1831 = icmp eq i8 %1830, 0
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %BRANCH_TAKEN, align 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1834 = select i1 %1831, i64 %1824, i64 %1826
  store i64 %1834, i64* %1833, align 8
  store %struct.Memory* %loadMem_428e79, %struct.Memory** %MEMORY
  %loadBr_428e79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428e79 = icmp eq i8 %loadBr_428e79, 1
  br i1 %cmpBr_428e79, label %block_.L_428fba, label %block_428e7f

block_428e7f:                                     ; preds = %block_.L_428e6a
  %loadMem_428e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 1
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %1840 to i64*
  %1841 = load i64, i64* %PC.i748
  %1842 = add i64 %1841, 8
  store i64 %1842, i64* %PC.i748
  %1843 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1843, i64* %RAX.i749, align 8
  store %struct.Memory* %loadMem_428e7f, %struct.Memory** %MEMORY
  %loadMem_428e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 1
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %RAX.i747
  %1851 = add i64 %1850, 24
  %1852 = load i64, i64* %PC.i746
  %1853 = add i64 %1852, 4
  store i64 %1853, i64* %PC.i746
  %1854 = inttoptr i64 %1851 to i32*
  %1855 = load i32, i32* %1854
  %1856 = sub i32 %1855, 2
  %1857 = icmp ult i32 %1855, 2
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1858, i8* %1859, align 1
  %1860 = and i32 %1856, 255
  %1861 = call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1865, align 1
  %1866 = xor i32 %1855, 2
  %1867 = xor i32 %1866, %1856
  %1868 = lshr i32 %1867, 4
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1870, i8* %1871, align 1
  %1872 = icmp eq i32 %1856, 0
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1873, i8* %1874, align 1
  %1875 = lshr i32 %1856, 31
  %1876 = trunc i32 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1876, i8* %1877, align 1
  %1878 = lshr i32 %1855, 31
  %1879 = xor i32 %1875, %1878
  %1880 = add i32 %1879, %1878
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1882, i8* %1883, align 1
  store %struct.Memory* %loadMem_428e87, %struct.Memory** %MEMORY
  %loadMem_428e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %PC.i745
  %1888 = add i64 %1887, 118
  %1889 = load i64, i64* %PC.i745
  %1890 = add i64 %1889, 6
  %1891 = load i64, i64* %PC.i745
  %1892 = add i64 %1891, 6
  store i64 %1892, i64* %PC.i745
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1894 = load i8, i8* %1893, align 1
  %1895 = icmp eq i8 %1894, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %BRANCH_TAKEN, align 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1898 = select i1 %1895, i64 %1888, i64 %1890
  store i64 %1898, i64* %1897, align 8
  store %struct.Memory* %loadMem_428e8b, %struct.Memory** %MEMORY
  %loadBr_428e8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428e8b = icmp eq i8 %loadBr_428e8b, 1
  br i1 %cmpBr_428e8b, label %block_.L_428f01, label %block_428e91

block_428e91:                                     ; preds = %block_428e7f
  %loadMem_428e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %PC.i743
  %1906 = add i64 %1905, 8
  store i64 %1906, i64* %PC.i743
  %1907 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1907, i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_428e91, %struct.Memory** %MEMORY
  %loadMem_428e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %RAX.i742
  %1915 = add i64 %1914, 2452
  %1916 = load i64, i64* %PC.i741
  %1917 = add i64 %1916, 7
  store i64 %1917, i64* %PC.i741
  %1918 = inttoptr i64 %1915 to i32*
  %1919 = load i32, i32* %1918
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1920, align 1
  %1921 = and i32 %1919, 255
  %1922 = call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1925, i8* %1926, align 1
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1927, align 1
  %1928 = icmp eq i32 %1919, 0
  %1929 = zext i1 %1928 to i8
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1929, i8* %1930, align 1
  %1931 = lshr i32 %1919, 31
  %1932 = trunc i32 %1931 to i8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1932, i8* %1933, align 1
  %1934 = lshr i32 %1919, 31
  %1935 = xor i32 %1931, %1934
  %1936 = add i32 %1935, %1934
  %1937 = icmp eq i32 %1936, 2
  %1938 = zext i1 %1937 to i8
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1938, i8* %1939, align 1
  store %struct.Memory* %loadMem_428e99, %struct.Memory** %MEMORY
  %loadMem_428ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %PC.i740
  %1944 = add i64 %1943, 70
  %1945 = load i64, i64* %PC.i740
  %1946 = add i64 %1945, 6
  %1947 = load i64, i64* %PC.i740
  %1948 = add i64 %1947, 6
  store i64 %1948, i64* %PC.i740
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1950 = load i8, i8* %1949, align 1
  %1951 = icmp ne i8 %1950, 0
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1953 = load i8, i8* %1952, align 1
  %1954 = icmp ne i8 %1953, 0
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1956 = load i8, i8* %1955, align 1
  %1957 = icmp ne i8 %1956, 0
  %1958 = xor i1 %1954, %1957
  %1959 = or i1 %1951, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %BRANCH_TAKEN, align 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1962 = select i1 %1959, i64 %1944, i64 %1946
  store i64 %1962, i64* %1961, align 8
  store %struct.Memory* %loadMem_428ea0, %struct.Memory** %MEMORY
  %loadBr_428ea0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428ea0 = icmp eq i8 %loadBr_428ea0, 1
  br i1 %cmpBr_428ea0, label %block_.L_428ee6, label %block_428ea6

block_428ea6:                                     ; preds = %block_428e91
  %loadMem_428ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 1
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1968 to i64*
  %1969 = load i64, i64* %PC.i738
  %1970 = add i64 %1969, 8
  store i64 %1970, i64* %PC.i738
  %1971 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1971, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_428ea6, %struct.Memory** %MEMORY
  %loadMem_428eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 1
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 5
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RCX.i737 = bitcast %union.anon* %1980 to i64*
  %1981 = load i64, i64* %RAX.i736
  %1982 = add i64 %1981, 71792
  %1983 = load i64, i64* %PC.i735
  %1984 = add i64 %1983, 6
  store i64 %1984, i64* %PC.i735
  %1985 = inttoptr i64 %1982 to i32*
  %1986 = load i32, i32* %1985
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i737, align 8
  store %struct.Memory* %loadMem_428eae, %struct.Memory** %MEMORY
  %loadMem_428eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 1
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %PC.i733
  %1995 = add i64 %1994, 8
  store i64 %1995, i64* %PC.i733
  %1996 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1996, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_428eb4, %struct.Memory** %MEMORY
  %loadMem_428ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 5
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %ECX.i731 = bitcast %union.anon* %2002 to i32*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 1
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %2005 to i64*
  %2006 = load i32, i32* %ECX.i731
  %2007 = zext i32 %2006 to i64
  %2008 = load i64, i64* %RAX.i732
  %2009 = add i64 %2008, 2452
  %2010 = load i64, i64* %PC.i730
  %2011 = add i64 %2010, 6
  store i64 %2011, i64* %PC.i730
  %2012 = inttoptr i64 %2009 to i32*
  %2013 = load i32, i32* %2012
  %2014 = sub i32 %2006, %2013
  %2015 = icmp ult i32 %2006, %2013
  %2016 = zext i1 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2016, i8* %2017, align 1
  %2018 = and i32 %2014, 255
  %2019 = call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2022, i8* %2023, align 1
  %2024 = xor i32 %2013, %2006
  %2025 = xor i32 %2024, %2014
  %2026 = lshr i32 %2025, 4
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2028, i8* %2029, align 1
  %2030 = icmp eq i32 %2014, 0
  %2031 = zext i1 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2031, i8* %2032, align 1
  %2033 = lshr i32 %2014, 31
  %2034 = trunc i32 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2034, i8* %2035, align 1
  %2036 = lshr i32 %2006, 31
  %2037 = lshr i32 %2013, 31
  %2038 = xor i32 %2037, %2036
  %2039 = xor i32 %2033, %2036
  %2040 = add i32 %2039, %2038
  %2041 = icmp eq i32 %2040, 2
  %2042 = zext i1 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2042, i8* %2043, align 1
  store %struct.Memory* %loadMem_428ebc, %struct.Memory** %MEMORY
  %loadMem_428ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 33
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %PC.i729
  %2048 = add i64 %2047, 36
  %2049 = load i64, i64* %PC.i729
  %2050 = add i64 %2049, 6
  %2051 = load i64, i64* %PC.i729
  %2052 = add i64 %2051, 6
  store i64 %2052, i64* %PC.i729
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2054 = load i8, i8* %2053, align 1
  %2055 = icmp ne i8 %2054, 0
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2057 = load i8, i8* %2056, align 1
  %2058 = icmp ne i8 %2057, 0
  %2059 = xor i1 %2055, %2058
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %BRANCH_TAKEN, align 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2062 = select i1 %2059, i64 %2048, i64 %2050
  store i64 %2062, i64* %2061, align 8
  store %struct.Memory* %loadMem_428ec2, %struct.Memory** %MEMORY
  %loadBr_428ec2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428ec2 = icmp eq i8 %loadBr_428ec2, 1
  br i1 %cmpBr_428ec2, label %block_.L_428ee6, label %block_428ec8

block_428ec8:                                     ; preds = %block_428ea6
  %loadMem_428ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 1
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %PC.i727
  %2070 = add i64 %2069, 8
  store i64 %2070, i64* %PC.i727
  %2071 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2071, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_428ec8, %struct.Memory** %MEMORY
  %loadMem_428ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 1
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 5
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RAX.i725
  %2082 = add i64 %2081, 2456
  %2083 = load i64, i64* %PC.i724
  %2084 = add i64 %2083, 6
  store i64 %2084, i64* %PC.i724
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_428ed0, %struct.Memory** %MEMORY
  %loadMem_428ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 1
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %PC.i722
  %2095 = add i64 %2094, 8
  store i64 %2095, i64* %PC.i722
  %2096 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2096, i64* %RAX.i723, align 8
  store %struct.Memory* %loadMem_428ed6, %struct.Memory** %MEMORY
  %loadMem_428ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 5
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %ECX.i720 = bitcast %union.anon* %2102 to i32*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 1
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RAX.i721
  %2107 = add i64 %2106, 40
  %2108 = load i32, i32* %ECX.i720
  %2109 = zext i32 %2108 to i64
  %2110 = load i64, i64* %PC.i719
  %2111 = add i64 %2110, 3
  store i64 %2111, i64* %PC.i719
  %2112 = inttoptr i64 %2107 to i32*
  store i32 %2108, i32* %2112
  store %struct.Memory* %loadMem_428ede, %struct.Memory** %MEMORY
  %loadMem_428ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %PC.i718
  %2117 = add i64 %2116, 27
  %2118 = load i64, i64* %PC.i718
  %2119 = add i64 %2118, 5
  store i64 %2119, i64* %PC.i718
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2117, i64* %2120, align 8
  store %struct.Memory* %loadMem_428ee1, %struct.Memory** %MEMORY
  br label %block_.L_428efc

block_.L_428ee6:                                  ; preds = %block_428ea6, %block_428e91
  %loadMem_428ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 1
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %PC.i716
  %2128 = add i64 %2127, 8
  store i64 %2128, i64* %PC.i716
  %2129 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2129, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_428ee6, %struct.Memory** %MEMORY
  %loadMem_428eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 1
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 5
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %RAX.i714
  %2140 = add i64 %2139, 12
  %2141 = load i64, i64* %PC.i713
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %PC.i713
  %2143 = inttoptr i64 %2140 to i32*
  %2144 = load i32, i32* %2143
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RCX.i715, align 8
  store %struct.Memory* %loadMem_428eee, %struct.Memory** %MEMORY
  %loadMem_428ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 1
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %PC.i711
  %2153 = add i64 %2152, 8
  store i64 %2153, i64* %PC.i711
  %2154 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2154, i64* %RAX.i712, align 8
  store %struct.Memory* %loadMem_428ef1, %struct.Memory** %MEMORY
  %loadMem_428ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 5
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %ECX.i709 = bitcast %union.anon* %2160 to i32*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 1
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %RAX.i710
  %2165 = add i64 %2164, 40
  %2166 = load i32, i32* %ECX.i709
  %2167 = zext i32 %2166 to i64
  %2168 = load i64, i64* %PC.i708
  %2169 = add i64 %2168, 3
  store i64 %2169, i64* %PC.i708
  %2170 = inttoptr i64 %2165 to i32*
  store i32 %2166, i32* %2170
  store %struct.Memory* %loadMem_428ef9, %struct.Memory** %MEMORY
  br label %block_.L_428efc

block_.L_428efc:                                  ; preds = %block_.L_428ee6, %block_428ec8
  %loadMem_428efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %PC.i707
  %2175 = add i64 %2174, 185
  %2176 = load i64, i64* %PC.i707
  %2177 = add i64 %2176, 5
  store i64 %2177, i64* %PC.i707
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2175, i64* %2178, align 8
  store %struct.Memory* %loadMem_428efc, %struct.Memory** %MEMORY
  br label %block_.L_428fb5

block_.L_428f01:                                  ; preds = %block_428e7f
  %loadMem_428f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 1
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %PC.i705
  %2186 = add i64 %2185, 8
  store i64 %2186, i64* %PC.i705
  %2187 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2187, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_428f01, %struct.Memory** %MEMORY
  %loadMem_428f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 1
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %RAX.i704
  %2195 = add i64 %2194, 2452
  %2196 = load i64, i64* %PC.i703
  %2197 = add i64 %2196, 7
  store i64 %2197, i64* %PC.i703
  %2198 = inttoptr i64 %2195 to i32*
  %2199 = load i32, i32* %2198
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2200, align 1
  %2201 = and i32 %2199, 255
  %2202 = call i32 @llvm.ctpop.i32(i32 %2201)
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2205, i8* %2206, align 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2207, align 1
  %2208 = icmp eq i32 %2199, 0
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2209, i8* %2210, align 1
  %2211 = lshr i32 %2199, 31
  %2212 = trunc i32 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2212, i8* %2213, align 1
  %2214 = lshr i32 %2199, 31
  %2215 = xor i32 %2211, %2214
  %2216 = add i32 %2215, %2214
  %2217 = icmp eq i32 %2216, 2
  %2218 = zext i1 %2217 to i8
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2218, i8* %2219, align 1
  store %struct.Memory* %loadMem_428f09, %struct.Memory** %MEMORY
  %loadMem_428f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2222 to i64*
  %2223 = load i64, i64* %PC.i702
  %2224 = add i64 %2223, 70
  %2225 = load i64, i64* %PC.i702
  %2226 = add i64 %2225, 6
  %2227 = load i64, i64* %PC.i702
  %2228 = add i64 %2227, 6
  store i64 %2228, i64* %PC.i702
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2230 = load i8, i8* %2229, align 1
  %2231 = icmp ne i8 %2230, 0
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2233 = load i8, i8* %2232, align 1
  %2234 = icmp ne i8 %2233, 0
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2236 = load i8, i8* %2235, align 1
  %2237 = icmp ne i8 %2236, 0
  %2238 = xor i1 %2234, %2237
  %2239 = or i1 %2231, %2238
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %BRANCH_TAKEN, align 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2242 = select i1 %2239, i64 %2224, i64 %2226
  store i64 %2242, i64* %2241, align 8
  store %struct.Memory* %loadMem_428f10, %struct.Memory** %MEMORY
  %loadBr_428f10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428f10 = icmp eq i8 %loadBr_428f10, 1
  br i1 %cmpBr_428f10, label %block_.L_428f56, label %block_428f16

block_428f16:                                     ; preds = %block_.L_428f01
  %loadMem_428f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 1
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %2248 to i64*
  %2249 = load i64, i64* %PC.i700
  %2250 = add i64 %2249, 8
  store i64 %2250, i64* %PC.i700
  %2251 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2251, i64* %RAX.i701, align 8
  store %struct.Memory* %loadMem_428f16, %struct.Memory** %MEMORY
  %loadMem_428f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 5
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RAX.i698
  %2262 = add i64 %2261, 71792
  %2263 = load i64, i64* %PC.i697
  %2264 = add i64 %2263, 6
  store i64 %2264, i64* %PC.i697
  %2265 = inttoptr i64 %2262 to i32*
  %2266 = load i32, i32* %2265
  %2267 = zext i32 %2266 to i64
  store i64 %2267, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_428f1e, %struct.Memory** %MEMORY
  %loadMem_428f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 1
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %PC.i695
  %2275 = add i64 %2274, 8
  store i64 %2275, i64* %PC.i695
  %2276 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2276, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_428f24, %struct.Memory** %MEMORY
  %loadMem_428f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 5
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %ECX.i693 = bitcast %union.anon* %2282 to i32*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %2285 to i64*
  %2286 = load i32, i32* %ECX.i693
  %2287 = zext i32 %2286 to i64
  %2288 = load i64, i64* %RAX.i694
  %2289 = add i64 %2288, 2452
  %2290 = load i64, i64* %PC.i692
  %2291 = add i64 %2290, 6
  store i64 %2291, i64* %PC.i692
  %2292 = inttoptr i64 %2289 to i32*
  %2293 = load i32, i32* %2292
  %2294 = sub i32 %2286, %2293
  %2295 = icmp ult i32 %2286, %2293
  %2296 = zext i1 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2296, i8* %2297, align 1
  %2298 = and i32 %2294, 255
  %2299 = call i32 @llvm.ctpop.i32(i32 %2298)
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2302, i8* %2303, align 1
  %2304 = xor i32 %2293, %2286
  %2305 = xor i32 %2304, %2294
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2308, i8* %2309, align 1
  %2310 = icmp eq i32 %2294, 0
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2311, i8* %2312, align 1
  %2313 = lshr i32 %2294, 31
  %2314 = trunc i32 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2314, i8* %2315, align 1
  %2316 = lshr i32 %2286, 31
  %2317 = lshr i32 %2293, 31
  %2318 = xor i32 %2317, %2316
  %2319 = xor i32 %2313, %2316
  %2320 = add i32 %2319, %2318
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2322, i8* %2323, align 1
  store %struct.Memory* %loadMem_428f2c, %struct.Memory** %MEMORY
  %loadMem_428f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %PC.i691
  %2328 = add i64 %2327, 36
  %2329 = load i64, i64* %PC.i691
  %2330 = add i64 %2329, 6
  %2331 = load i64, i64* %PC.i691
  %2332 = add i64 %2331, 6
  store i64 %2332, i64* %PC.i691
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2334 = load i8, i8* %2333, align 1
  %2335 = icmp ne i8 %2334, 0
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2337 = load i8, i8* %2336, align 1
  %2338 = icmp ne i8 %2337, 0
  %2339 = xor i1 %2335, %2338
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %BRANCH_TAKEN, align 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2342 = select i1 %2339, i64 %2328, i64 %2330
  store i64 %2342, i64* %2341, align 8
  store %struct.Memory* %loadMem_428f32, %struct.Memory** %MEMORY
  %loadBr_428f32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428f32 = icmp eq i8 %loadBr_428f32, 1
  br i1 %cmpBr_428f32, label %block_.L_428f56, label %block_428f38

block_428f38:                                     ; preds = %block_428f16
  %loadMem_428f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 1
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %PC.i689
  %2350 = add i64 %2349, 8
  store i64 %2350, i64* %PC.i689
  %2351 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2351, i64* %RAX.i690, align 8
  store %struct.Memory* %loadMem_428f38, %struct.Memory** %MEMORY
  %loadMem_428f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 5
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RCX.i688 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RAX.i687
  %2362 = add i64 %2361, 2444
  %2363 = load i64, i64* %PC.i686
  %2364 = add i64 %2363, 6
  store i64 %2364, i64* %PC.i686
  %2365 = inttoptr i64 %2362 to i32*
  %2366 = load i32, i32* %2365
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RCX.i688, align 8
  store %struct.Memory* %loadMem_428f40, %struct.Memory** %MEMORY
  %loadMem_428f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 1
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %PC.i684
  %2375 = add i64 %2374, 8
  store i64 %2375, i64* %PC.i684
  %2376 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2376, i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_428f46, %struct.Memory** %MEMORY
  %loadMem_428f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 5
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %ECX.i682 = bitcast %union.anon* %2382 to i32*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 1
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RAX.i683
  %2387 = add i64 %2386, 40
  %2388 = load i32, i32* %ECX.i682
  %2389 = zext i32 %2388 to i64
  %2390 = load i64, i64* %PC.i681
  %2391 = add i64 %2390, 3
  store i64 %2391, i64* %PC.i681
  %2392 = inttoptr i64 %2387 to i32*
  store i32 %2388, i32* %2392
  store %struct.Memory* %loadMem_428f4e, %struct.Memory** %MEMORY
  %loadMem_428f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %PC.i680
  %2397 = add i64 %2396, 27
  %2398 = load i64, i64* %PC.i680
  %2399 = add i64 %2398, 5
  store i64 %2399, i64* %PC.i680
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2397, i64* %2400, align 8
  store %struct.Memory* %loadMem_428f51, %struct.Memory** %MEMORY
  br label %block_.L_428f6c

block_.L_428f56:                                  ; preds = %block_428f16, %block_.L_428f01
  %loadMem_428f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %2406 to i64*
  %2407 = load i64, i64* %PC.i678
  %2408 = add i64 %2407, 8
  store i64 %2408, i64* %PC.i678
  %2409 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2409, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_428f56, %struct.Memory** %MEMORY
  %loadMem_428f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 1
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 5
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %RAX.i676
  %2420 = add i64 %2419, 16
  %2421 = load i64, i64* %PC.i675
  %2422 = add i64 %2421, 3
  store i64 %2422, i64* %PC.i675
  %2423 = inttoptr i64 %2420 to i32*
  %2424 = load i32, i32* %2423
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_428f5e, %struct.Memory** %MEMORY
  %loadMem_428f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %PC.i673
  %2433 = add i64 %2432, 8
  store i64 %2433, i64* %PC.i673
  %2434 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2434, i64* %RAX.i674, align 8
  store %struct.Memory* %loadMem_428f61, %struct.Memory** %MEMORY
  %loadMem_428f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 5
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %ECX.i671 = bitcast %union.anon* %2440 to i32*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 1
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RAX.i672
  %2445 = add i64 %2444, 40
  %2446 = load i32, i32* %ECX.i671
  %2447 = zext i32 %2446 to i64
  %2448 = load i64, i64* %PC.i670
  %2449 = add i64 %2448, 3
  store i64 %2449, i64* %PC.i670
  %2450 = inttoptr i64 %2445 to i32*
  store i32 %2446, i32* %2450
  store %struct.Memory* %loadMem_428f69, %struct.Memory** %MEMORY
  br label %block_.L_428f6c

block_.L_428f6c:                                  ; preds = %block_.L_428f56, %block_428f38
  %loadMem_428f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 1
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %PC.i668
  %2458 = add i64 %2457, 8
  store i64 %2458, i64* %PC.i668
  %2459 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2459, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_428f6c, %struct.Memory** %MEMORY
  %loadMem_428f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %2465 to i64*
  %2466 = load i64, i64* %RAX.i667
  %2467 = add i64 %2466, 24
  %2468 = load i64, i64* %PC.i666
  %2469 = add i64 %2468, 4
  store i64 %2469, i64* %PC.i666
  %2470 = inttoptr i64 %2467 to i32*
  %2471 = load i32, i32* %2470
  %2472 = sub i32 %2471, 3
  %2473 = icmp ult i32 %2471, 3
  %2474 = zext i1 %2473 to i8
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2474, i8* %2475, align 1
  %2476 = and i32 %2472, 255
  %2477 = call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2480, i8* %2481, align 1
  %2482 = xor i32 %2471, 3
  %2483 = xor i32 %2482, %2472
  %2484 = lshr i32 %2483, 4
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2486, i8* %2487, align 1
  %2488 = icmp eq i32 %2472, 0
  %2489 = zext i1 %2488 to i8
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2489, i8* %2490, align 1
  %2491 = lshr i32 %2472, 31
  %2492 = trunc i32 %2491 to i8
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2492, i8* %2493, align 1
  %2494 = lshr i32 %2471, 31
  %2495 = xor i32 %2491, %2494
  %2496 = add i32 %2495, %2494
  %2497 = icmp eq i32 %2496, 2
  %2498 = zext i1 %2497 to i8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2498, i8* %2499, align 1
  store %struct.Memory* %loadMem_428f74, %struct.Memory** %MEMORY
  %loadMem_428f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %PC.i665
  %2504 = add i64 %2503, 56
  %2505 = load i64, i64* %PC.i665
  %2506 = add i64 %2505, 6
  %2507 = load i64, i64* %PC.i665
  %2508 = add i64 %2507, 6
  store i64 %2508, i64* %PC.i665
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2510 = load i8, i8* %2509, align 1
  %2511 = icmp eq i8 %2510, 0
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %BRANCH_TAKEN, align 1
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2514 = select i1 %2511, i64 %2504, i64 %2506
  store i64 %2514, i64* %2513, align 8
  store %struct.Memory* %loadMem_428f78, %struct.Memory** %MEMORY
  %loadBr_428f78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428f78 = icmp eq i8 %loadBr_428f78, 1
  br i1 %cmpBr_428f78, label %block_.L_428fb0, label %block_428f7e

block_428f7e:                                     ; preds = %block_.L_428f6c
  %loadMem_428f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 1
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %PC.i663
  %2522 = add i64 %2521, 8
  store i64 %2522, i64* %PC.i663
  %2523 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2523, i64* %RAX.i664, align 8
  store %struct.Memory* %loadMem_428f7e, %struct.Memory** %MEMORY
  %loadMem_428f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 1
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 5
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RCX.i662 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RAX.i661
  %2534 = add i64 %2533, 1276
  %2535 = load i64, i64* %PC.i660
  %2536 = add i64 %2535, 6
  store i64 %2536, i64* %PC.i660
  %2537 = inttoptr i64 %2534 to i32*
  %2538 = load i32, i32* %2537
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RCX.i662, align 8
  store %struct.Memory* %loadMem_428f86, %struct.Memory** %MEMORY
  %loadMem_428f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %PC.i658
  %2547 = add i64 %2546, 8
  store i64 %2547, i64* %PC.i658
  %2548 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2548, i64* %RAX.i659, align 8
  store %struct.Memory* %loadMem_428f8c, %struct.Memory** %MEMORY
  %loadMem_428f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 5
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %ECX.i656 = bitcast %union.anon* %2554 to i32*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RAX.i657
  %2559 = add i64 %2558, 40
  %2560 = load i32, i32* %ECX.i656
  %2561 = zext i32 %2560 to i64
  %2562 = load i64, i64* %PC.i655
  %2563 = add i64 %2562, 3
  store i64 %2563, i64* %PC.i655
  %2564 = inttoptr i64 %2559 to i32*
  store i32 %2560, i32* %2564
  store %struct.Memory* %loadMem_428f94, %struct.Memory** %MEMORY
  %loadMem_428f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 1
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %PC.i653
  %2572 = add i64 %2571, 8
  store i64 %2572, i64* %PC.i653
  %2573 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2573, i64* %RAX.i654, align 8
  store %struct.Memory* %loadMem_428f97, %struct.Memory** %MEMORY
  %loadMem_428f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 5
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %RAX.i651
  %2584 = add i64 %2583, 1280
  %2585 = load i64, i64* %PC.i650
  %2586 = add i64 %2585, 6
  store i64 %2586, i64* %PC.i650
  %2587 = inttoptr i64 %2584 to i32*
  %2588 = load i32, i32* %2587
  %2589 = zext i32 %2588 to i64
  store i64 %2589, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_428f9f, %struct.Memory** %MEMORY
  %loadMem_428fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 1
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %PC.i648
  %2597 = add i64 %2596, 8
  store i64 %2597, i64* %PC.i648
  %2598 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2598, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_428fa5, %struct.Memory** %MEMORY
  %loadMem_428fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 5
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %ECX.i646 = bitcast %union.anon* %2604 to i32*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 1
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %RAX.i647
  %2609 = add i64 %2608, 44
  %2610 = load i32, i32* %ECX.i646
  %2611 = zext i32 %2610 to i64
  %2612 = load i64, i64* %PC.i645
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC.i645
  %2614 = inttoptr i64 %2609 to i32*
  store i32 %2610, i32* %2614
  store %struct.Memory* %loadMem_428fad, %struct.Memory** %MEMORY
  br label %block_.L_428fb0

block_.L_428fb0:                                  ; preds = %block_428f7e, %block_.L_428f6c
  %loadMem_428fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %PC.i644
  %2619 = add i64 %2618, 5
  %2620 = load i64, i64* %PC.i644
  %2621 = add i64 %2620, 5
  store i64 %2621, i64* %PC.i644
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2619, i64* %2622, align 8
  store %struct.Memory* %loadMem_428fb0, %struct.Memory** %MEMORY
  br label %block_.L_428fb5

block_.L_428fb5:                                  ; preds = %block_.L_428fb0, %block_.L_428efc
  %loadMem_428fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %PC.i643
  %2627 = add i64 %2626, 5
  %2628 = load i64, i64* %PC.i643
  %2629 = add i64 %2628, 5
  store i64 %2629, i64* %PC.i643
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2627, i64* %2630, align 8
  store %struct.Memory* %loadMem_428fb5, %struct.Memory** %MEMORY
  br label %block_.L_428fba

block_.L_428fba:                                  ; preds = %block_.L_428fb5, %block_.L_428e6a
  %loadMem_428fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 1
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %2636 to i64*
  %2637 = load i64, i64* %PC.i641
  %2638 = add i64 %2637, 8
  store i64 %2638, i64* %PC.i641
  %2639 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2639, i64* %RAX.i642, align 8
  store %struct.Memory* %loadMem_428fba, %struct.Memory** %MEMORY
  %loadMem_428fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 1
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 5
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RCX.i640 = bitcast %union.anon* %2648 to i64*
  %2649 = load i64, i64* %RAX.i639
  %2650 = add i64 %2649, 88
  %2651 = load i64, i64* %PC.i638
  %2652 = add i64 %2651, 3
  store i64 %2652, i64* %PC.i638
  %2653 = inttoptr i64 %2650 to i32*
  %2654 = load i32, i32* %2653
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RCX.i640, align 8
  store %struct.Memory* %loadMem_428fc2, %struct.Memory** %MEMORY
  %loadMem_428fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 1
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %PC.i636
  %2663 = add i64 %2662, 8
  store i64 %2663, i64* %PC.i636
  %2664 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2664, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_428fc5, %struct.Memory** %MEMORY
  %loadMem_428fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 5
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %ECX.i634 = bitcast %union.anon* %2670 to i32*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 1
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RAX.i635
  %2675 = add i64 %2674, 92
  %2676 = load i32, i32* %ECX.i634
  %2677 = zext i32 %2676 to i64
  %2678 = load i64, i64* %PC.i633
  %2679 = add i64 %2678, 3
  store i64 %2679, i64* %PC.i633
  %2680 = inttoptr i64 %2675 to i32*
  store i32 %2676, i32* %2680
  store %struct.Memory* %loadMem_428fcd, %struct.Memory** %MEMORY
  %loadMem_428fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 1
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i631
  %2688 = add i64 %2687, 8
  store i64 %2688, i64* %PC.i631
  %2689 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2689, i64* %RAX.i632, align 8
  store %struct.Memory* %loadMem_428fd0, %struct.Memory** %MEMORY
  %loadMem_428fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 1
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %RAX.i630
  %2697 = add i64 %2696, 76
  %2698 = load i64, i64* %PC.i629
  %2699 = add i64 %2698, 4
  store i64 %2699, i64* %PC.i629
  %2700 = inttoptr i64 %2697 to i32*
  %2701 = load i32, i32* %2700
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2702, align 1
  %2703 = and i32 %2701, 255
  %2704 = call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2707, i8* %2708, align 1
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2709, align 1
  %2710 = icmp eq i32 %2701, 0
  %2711 = zext i1 %2710 to i8
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2711, i8* %2712, align 1
  %2713 = lshr i32 %2701, 31
  %2714 = trunc i32 %2713 to i8
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2714, i8* %2715, align 1
  %2716 = lshr i32 %2701, 31
  %2717 = xor i32 %2713, %2716
  %2718 = add i32 %2717, %2716
  %2719 = icmp eq i32 %2718, 2
  %2720 = zext i1 %2719 to i8
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2720, i8* %2721, align 1
  store %struct.Memory* %loadMem_428fd8, %struct.Memory** %MEMORY
  %loadMem_428fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %PC.i628
  %2726 = add i64 %2725, 94
  %2727 = load i64, i64* %PC.i628
  %2728 = add i64 %2727, 6
  %2729 = load i64, i64* %PC.i628
  %2730 = add i64 %2729, 6
  store i64 %2730, i64* %PC.i628
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2732 = load i8, i8* %2731, align 1
  %2733 = icmp ne i8 %2732, 0
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2735 = load i8, i8* %2734, align 1
  %2736 = icmp ne i8 %2735, 0
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2738 = load i8, i8* %2737, align 1
  %2739 = icmp ne i8 %2738, 0
  %2740 = xor i1 %2736, %2739
  %2741 = or i1 %2733, %2740
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %BRANCH_TAKEN, align 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2744 = select i1 %2741, i64 %2726, i64 %2728
  store i64 %2744, i64* %2743, align 8
  store %struct.Memory* %loadMem_428fdc, %struct.Memory** %MEMORY
  %loadBr_428fdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_428fdc = icmp eq i8 %loadBr_428fdc, 1
  br i1 %cmpBr_428fdc, label %block_.L_42903a, label %block_428fe2

block_428fe2:                                     ; preds = %block_.L_428fba
  %loadMem_428fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 1
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %PC.i626
  %2752 = add i64 %2751, 5
  store i64 %2752, i64* %PC.i626
  store i64 16, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_428fe2, %struct.Memory** %MEMORY
  %loadMem_428fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 5
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %2758 to i64*
  %2759 = load i64, i64* %PC.i624
  %2760 = add i64 %2759, 8
  store i64 %2760, i64* %PC.i624
  %2761 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2761, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_428fe7, %struct.Memory** %MEMORY
  %loadMem_428fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 5
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RCX.i622 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 7
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RDX.i623 = bitcast %union.anon* %2770 to i64*
  %2771 = load i64, i64* %RCX.i622
  %2772 = load i64, i64* %PC.i621
  %2773 = add i64 %2772, 2
  store i64 %2773, i64* %PC.i621
  %2774 = inttoptr i64 %2771 to i32*
  %2775 = load i32, i32* %2774
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %RDX.i623, align 8
  store %struct.Memory* %loadMem_428fef, %struct.Memory** %MEMORY
  %loadMem_428ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 7
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %RDX.i620
  %2784 = load i64, i64* %PC.i619
  %2785 = add i64 %2784, 7
  store i64 %2785, i64* %PC.i619
  %2786 = trunc i64 %2783 to i32
  %2787 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %2788 = sub i32 %2786, %2787
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RDX.i620, align 8
  %2790 = icmp ult i32 %2786, %2787
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2791, i8* %2792, align 1
  %2793 = and i32 %2788, 255
  %2794 = call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2797, i8* %2798, align 1
  %2799 = xor i32 %2787, %2786
  %2800 = xor i32 %2799, %2788
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2803, i8* %2804, align 1
  %2805 = icmp eq i32 %2788, 0
  %2806 = zext i1 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2806, i8* %2807, align 1
  %2808 = lshr i32 %2788, 31
  %2809 = trunc i32 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2809, i8* %2810, align 1
  %2811 = lshr i32 %2786, 31
  %2812 = lshr i32 %2787, 31
  %2813 = xor i32 %2812, %2811
  %2814 = xor i32 %2808, %2811
  %2815 = add i32 %2814, %2813
  %2816 = icmp eq i32 %2815, 2
  %2817 = zext i1 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2817, i8* %2818, align 1
  store %struct.Memory* %loadMem_428ff1, %struct.Memory** %MEMORY
  %loadMem_428ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 5
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %PC.i617
  %2826 = add i64 %2825, 8
  store i64 %2826, i64* %PC.i617
  %2827 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2827, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_428ff8, %struct.Memory** %MEMORY
  %loadMem_429000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 1
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %EAX.i615 = bitcast %union.anon* %2833 to i32*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 15
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RBP.i616
  %2838 = sub i64 %2837, 24
  %2839 = load i32, i32* %EAX.i615
  %2840 = zext i32 %2839 to i64
  %2841 = load i64, i64* %PC.i614
  %2842 = add i64 %2841, 3
  store i64 %2842, i64* %PC.i614
  %2843 = inttoptr i64 %2838 to i32*
  store i32 %2839, i32* %2843
  store %struct.Memory* %loadMem_429000, %struct.Memory** %MEMORY
  %loadMem_429003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 7
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %EDX.i612 = bitcast %union.anon* %2849 to i32*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 1
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %2852 to i64*
  %2853 = load i32, i32* %EDX.i612
  %2854 = zext i32 %2853 to i64
  %2855 = load i64, i64* %PC.i611
  %2856 = add i64 %2855, 2
  store i64 %2856, i64* %PC.i611
  %2857 = and i64 %2854, 4294967295
  store i64 %2857, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_429003, %struct.Memory** %MEMORY
  %loadMem_429005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2860 to i64*
  %2861 = load i64, i64* %PC.i610
  %2862 = add i64 %2861, 1
  store i64 %2862, i64* %PC.i610
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2865 = bitcast %union.anon* %2864 to i32*
  %2866 = load i32, i32* %2865, align 8
  %2867 = sext i32 %2866 to i64
  %2868 = lshr i64 %2867, 32
  store i64 %2868, i64* %2863, align 8
  store %struct.Memory* %loadMem_429005, %struct.Memory** %MEMORY
  %loadMem_429006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 5
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %2874 to i64*
  %2875 = load i64, i64* %RCX.i607
  %2876 = add i64 %2875, 76
  %2877 = load i64, i64* %PC.i606
  %2878 = add i64 %2877, 3
  store i64 %2878, i64* %PC.i606
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2880 = bitcast %union.anon* %2879 to i32*
  %2881 = load i32, i32* %2880, align 8
  %2882 = zext i32 %2881 to i64
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2884 = bitcast %union.anon* %2883 to i32*
  %2885 = load i32, i32* %2884, align 8
  %2886 = zext i32 %2885 to i64
  %2887 = inttoptr i64 %2876 to i32*
  %2888 = load i32, i32* %2887
  %2889 = sext i32 %2888 to i64
  %2890 = shl i64 %2886, 32
  %2891 = or i64 %2890, %2882
  %2892 = sdiv i64 %2891, %2889
  %2893 = shl i64 %2892, 32
  %2894 = ashr exact i64 %2893, 32
  %2895 = icmp eq i64 %2892, %2894
  br i1 %2895, label %2900, label %2896

; <label>:2896:                                   ; preds = %block_428fe2
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2898 = load i64, i64* %2897, align 8
  %2899 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2898, %struct.Memory* %loadMem_429006)
  br label %routine_idivl_0x4c__rcx_.exit

; <label>:2900:                                   ; preds = %block_428fe2
  %2901 = srem i64 %2891, %2889
  %2902 = getelementptr inbounds %union.anon, %union.anon* %2879, i64 0, i32 0
  %2903 = and i64 %2892, 4294967295
  store i64 %2903, i64* %2902, align 8
  %2904 = getelementptr inbounds %union.anon, %union.anon* %2883, i64 0, i32 0
  %2905 = and i64 %2901, 4294967295
  store i64 %2905, i64* %2904, align 8
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2906, align 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2907, align 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2908, align 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2909, align 1
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2910, align 1
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2911, align 1
  br label %routine_idivl_0x4c__rcx_.exit

routine_idivl_0x4c__rcx_.exit:                    ; preds = %2896, %2900
  %2912 = phi %struct.Memory* [ %2899, %2896 ], [ %loadMem_429006, %2900 ]
  store %struct.Memory* %2912, %struct.Memory** %MEMORY
  %loadMem_429009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 5
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %PC.i604
  %2920 = add i64 %2919, 8
  store i64 %2920, i64* %PC.i604
  %2921 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2921, i64* %RCX.i605, align 8
  store %struct.Memory* %loadMem_429009, %struct.Memory** %MEMORY
  %loadMem_429011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 5
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 9
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RSI.i603 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RCX.i602
  %2932 = add i64 %2931, 60
  %2933 = load i64, i64* %PC.i601
  %2934 = add i64 %2933, 3
  store i64 %2934, i64* %PC.i601
  %2935 = inttoptr i64 %2932 to i32*
  %2936 = load i32, i32* %2935
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RSI.i603, align 8
  store %struct.Memory* %loadMem_429011, %struct.Memory** %MEMORY
  %loadMem_429014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %EAX.i599 = bitcast %union.anon* %2943 to i32*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 15
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RBP.i600
  %2948 = sub i64 %2947, 28
  %2949 = load i32, i32* %EAX.i599
  %2950 = zext i32 %2949 to i64
  %2951 = load i64, i64* %PC.i598
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i598
  %2953 = inttoptr i64 %2948 to i32*
  store i32 %2949, i32* %2953
  store %struct.Memory* %loadMem_429014, %struct.Memory** %MEMORY
  %loadMem_429017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 9
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %ESI.i596 = bitcast %union.anon* %2959 to i32*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %2962 to i64*
  %2963 = load i32, i32* %ESI.i596
  %2964 = zext i32 %2963 to i64
  %2965 = load i64, i64* %PC.i595
  %2966 = add i64 %2965, 2
  store i64 %2966, i64* %PC.i595
  %2967 = and i64 %2964, 4294967295
  store i64 %2967, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_429017, %struct.Memory** %MEMORY
  %loadMem_429019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %PC.i594
  %2972 = add i64 %2971, 1
  store i64 %2972, i64* %PC.i594
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2975 = bitcast %union.anon* %2974 to i32*
  %2976 = load i32, i32* %2975, align 8
  %2977 = sext i32 %2976 to i64
  %2978 = lshr i64 %2977, 32
  store i64 %2978, i64* %2973, align 8
  store %struct.Memory* %loadMem_429019, %struct.Memory** %MEMORY
  %loadMem_42901a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 9
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RSI.i592 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 15
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %RBP.i593
  %2989 = sub i64 %2988, 24
  %2990 = load i64, i64* %PC.i591
  %2991 = add i64 %2990, 3
  store i64 %2991, i64* %PC.i591
  %2992 = inttoptr i64 %2989 to i32*
  %2993 = load i32, i32* %2992
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RSI.i592, align 8
  store %struct.Memory* %loadMem_42901a, %struct.Memory** %MEMORY
  %loadMem_42901d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 9
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %ESI.i588 = bitcast %union.anon* %3000 to i32*
  %3001 = load i32, i32* %ESI.i588
  %3002 = zext i32 %3001 to i64
  %3003 = load i64, i64* %PC.i587
  %3004 = add i64 %3003, 2
  store i64 %3004, i64* %PC.i587
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3006 = bitcast %union.anon* %3005 to i32*
  %3007 = load i32, i32* %3006, align 8
  %3008 = zext i32 %3007 to i64
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3010 = bitcast %union.anon* %3009 to i32*
  %3011 = load i32, i32* %3010, align 8
  %3012 = zext i32 %3011 to i64
  %3013 = shl i64 %3002, 32
  %3014 = ashr exact i64 %3013, 32
  %3015 = shl i64 %3012, 32
  %3016 = or i64 %3015, %3008
  %3017 = sdiv i64 %3016, %3014
  %3018 = shl i64 %3017, 32
  %3019 = ashr exact i64 %3018, 32
  %3020 = icmp eq i64 %3017, %3019
  br i1 %3020, label %3025, label %3021

; <label>:3021:                                   ; preds = %routine_idivl_0x4c__rcx_.exit
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3023 = load i64, i64* %3022, align 8
  %3024 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3023, %struct.Memory* %loadMem_42901d)
  br label %routine_idivl__esi.exit

; <label>:3025:                                   ; preds = %routine_idivl_0x4c__rcx_.exit
  %3026 = srem i64 %3016, %3014
  %3027 = getelementptr inbounds %union.anon, %union.anon* %3005, i64 0, i32 0
  %3028 = and i64 %3017, 4294967295
  store i64 %3028, i64* %3027, align 8
  %3029 = getelementptr inbounds %union.anon, %union.anon* %3009, i64 0, i32 0
  %3030 = and i64 %3026, 4294967295
  store i64 %3030, i64* %3029, align 8
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3031, align 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3032, align 1
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3033, align 1
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3034, align 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3035, align 1
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3036, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %3021, %3025
  %3037 = phi %struct.Memory* [ %3024, %3021 ], [ %loadMem_42901d, %3025 ]
  store %struct.Memory* %3037, %struct.Memory** %MEMORY
  %loadMem_42901f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 33
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 11
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RDI.i585 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 15
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3046 to i64*
  %3047 = load i64, i64* %RBP.i586
  %3048 = sub i64 %3047, 28
  %3049 = load i64, i64* %PC.i584
  %3050 = add i64 %3049, 3
  store i64 %3050, i64* %PC.i584
  %3051 = inttoptr i64 %3048 to i32*
  %3052 = load i32, i32* %3051
  %3053 = zext i32 %3052 to i64
  store i64 %3053, i64* %RDI.i585, align 8
  store %struct.Memory* %loadMem_42901f, %struct.Memory** %MEMORY
  %loadMem_429022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 1
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %3059 to i32*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 15
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RBP.i583
  %3064 = sub i64 %3063, 32
  %3065 = load i32, i32* %EAX.i582
  %3066 = zext i32 %3065 to i64
  %3067 = load i64, i64* %PC.i581
  %3068 = add i64 %3067, 3
  store i64 %3068, i64* %PC.i581
  %3069 = inttoptr i64 %3064 to i32*
  store i32 %3065, i32* %3069
  store %struct.Memory* %loadMem_429022, %struct.Memory** %MEMORY
  %loadMem_429025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 11
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %EDI.i579 = bitcast %union.anon* %3075 to i32*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 1
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %3078 to i64*
  %3079 = load i32, i32* %EDI.i579
  %3080 = zext i32 %3079 to i64
  %3081 = load i64, i64* %PC.i578
  %3082 = add i64 %3081, 2
  store i64 %3082, i64* %PC.i578
  %3083 = and i64 %3080, 4294967295
  store i64 %3083, i64* %RAX.i580, align 8
  store %struct.Memory* %loadMem_429025, %struct.Memory** %MEMORY
  %loadMem_429027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %PC.i577
  %3088 = add i64 %3087, 1
  store i64 %3088, i64* %PC.i577
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3091 = bitcast %union.anon* %3090 to i32*
  %3092 = load i32, i32* %3091, align 8
  %3093 = sext i32 %3092 to i64
  %3094 = lshr i64 %3093, 32
  store i64 %3094, i64* %3089, align 8
  store %struct.Memory* %loadMem_429027, %struct.Memory** %MEMORY
  %loadMem_429028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 17
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %R8D.i575 = bitcast %union.anon* %3100 to i32*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 15
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %3103 to i64*
  %3104 = bitcast i32* %R8D.i575 to i64*
  %3105 = load i64, i64* %RBP.i576
  %3106 = sub i64 %3105, 32
  %3107 = load i64, i64* %PC.i574
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %PC.i574
  %3109 = inttoptr i64 %3106 to i32*
  %3110 = load i32, i32* %3109
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %3104, align 8
  store %struct.Memory* %loadMem_429028, %struct.Memory** %MEMORY
  %loadMem_42902c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 17
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3117 to i32*
  %3118 = load i32, i32* %R8D.i
  %3119 = zext i32 %3118 to i64
  %3120 = load i64, i64* %PC.i571
  %3121 = add i64 %3120, 3
  store i64 %3121, i64* %PC.i571
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3123 = bitcast %union.anon* %3122 to i32*
  %3124 = load i32, i32* %3123, align 8
  %3125 = zext i32 %3124 to i64
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3127 = bitcast %union.anon* %3126 to i32*
  %3128 = load i32, i32* %3127, align 8
  %3129 = zext i32 %3128 to i64
  %3130 = shl i64 %3119, 32
  %3131 = ashr exact i64 %3130, 32
  %3132 = shl i64 %3129, 32
  %3133 = or i64 %3132, %3125
  %3134 = sdiv i64 %3133, %3131
  %3135 = shl i64 %3134, 32
  %3136 = ashr exact i64 %3135, 32
  %3137 = icmp eq i64 %3134, %3136
  br i1 %3137, label %3142, label %3138

; <label>:3138:                                   ; preds = %routine_idivl__esi.exit
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3140 = load i64, i64* %3139, align 8
  %3141 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3140, %struct.Memory* %loadMem_42902c)
  br label %routine_idivl__r8d.exit

; <label>:3142:                                   ; preds = %routine_idivl__esi.exit
  %3143 = srem i64 %3133, %3131
  %3144 = getelementptr inbounds %union.anon, %union.anon* %3122, i64 0, i32 0
  %3145 = and i64 %3134, 4294967295
  store i64 %3145, i64* %3144, align 8
  %3146 = getelementptr inbounds %union.anon, %union.anon* %3126, i64 0, i32 0
  %3147 = and i64 %3143, 4294967295
  store i64 %3147, i64* %3146, align 8
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3148, align 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3149, align 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3150, align 1
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3151, align 1
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3152, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3153, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %3138, %3142
  %3154 = phi %struct.Memory* [ %3141, %3138 ], [ %loadMem_42902c, %3142 ]
  store %struct.Memory* %3154, %struct.Memory** %MEMORY
  %loadMem_42902f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 5
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %PC.i569
  %3162 = add i64 %3161, 8
  store i64 %3162, i64* %PC.i569
  %3163 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3163, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_42902f, %struct.Memory** %MEMORY
  %loadMem_429037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 7
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %EDX.i567 = bitcast %union.anon* %3169 to i32*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 5
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RCX.i568
  %3174 = add i64 %3173, 88
  %3175 = load i32, i32* %EDX.i567
  %3176 = zext i32 %3175 to i64
  %3177 = load i64, i64* %PC.i566
  %3178 = add i64 %3177, 3
  store i64 %3178, i64* %PC.i566
  %3179 = inttoptr i64 %3174 to i32*
  store i32 %3175, i32* %3179
  store %struct.Memory* %loadMem_429037, %struct.Memory** %MEMORY
  br label %block_.L_42903a

block_.L_42903a:                                  ; preds = %routine_idivl__r8d.exit, %block_.L_428fba
  %loadMem_42903a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %PC.i565
  %3184 = add i64 %3183, 1264
  %3185 = load i64, i64* %PC.i565
  %3186 = add i64 %3185, 5
  store i64 %3186, i64* %PC.i565
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3184, i64* %3187, align 8
  store %struct.Memory* %loadMem_42903a, %struct.Memory** %MEMORY
  br label %block_.L_42952a

block_.L_42903f:                                  ; preds = %block_.L_428d51
  %loadMem_42903f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 1
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %PC.i563
  %3195 = add i64 %3194, 8
  store i64 %3195, i64* %PC.i563
  %3196 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3196, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_42903f, %struct.Memory** %MEMORY
  %loadMem_429047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 33
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 1
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 5
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %RAX.i561
  %3207 = add i64 %3206, 20
  %3208 = load i64, i64* %PC.i560
  %3209 = add i64 %3208, 3
  store i64 %3209, i64* %PC.i560
  %3210 = inttoptr i64 %3207 to i32*
  %3211 = load i32, i32* %3210
  %3212 = zext i32 %3211 to i64
  store i64 %3212, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_429047, %struct.Memory** %MEMORY
  %loadMem_42904a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 33
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 5
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %RCX.i559
  %3220 = load i64, i64* %PC.i558
  %3221 = add i64 %3220, 3
  store i64 %3221, i64* %PC.i558
  %3222 = trunc i64 %3219 to i32
  %3223 = add i32 1, %3222
  %3224 = zext i32 %3223 to i64
  store i64 %3224, i64* %RCX.i559, align 8
  %3225 = icmp ult i32 %3223, %3222
  %3226 = icmp ult i32 %3223, 1
  %3227 = or i1 %3225, %3226
  %3228 = zext i1 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3228, i8* %3229, align 1
  %3230 = and i32 %3223, 255
  %3231 = call i32 @llvm.ctpop.i32(i32 %3230)
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3234, i8* %3235, align 1
  %3236 = xor i64 1, %3219
  %3237 = trunc i64 %3236 to i32
  %3238 = xor i32 %3237, %3223
  %3239 = lshr i32 %3238, 4
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3241, i8* %3242, align 1
  %3243 = icmp eq i32 %3223, 0
  %3244 = zext i1 %3243 to i8
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3244, i8* %3245, align 1
  %3246 = lshr i32 %3223, 31
  %3247 = trunc i32 %3246 to i8
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3247, i8* %3248, align 1
  %3249 = lshr i32 %3222, 31
  %3250 = xor i32 %3246, %3249
  %3251 = add i32 %3250, %3246
  %3252 = icmp eq i32 %3251, 2
  %3253 = zext i1 %3252 to i8
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3253, i8* %3254, align 1
  store %struct.Memory* %loadMem_42904a, %struct.Memory** %MEMORY
  %loadMem_42904d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 1
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %PC.i556
  %3262 = add i64 %3261, 8
  store i64 %3262, i64* %PC.i556
  %3263 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3263, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_42904d, %struct.Memory** %MEMORY
  %loadMem_429055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 5
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %ECX.i554 = bitcast %union.anon* %3269 to i32*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 1
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RAX.i555
  %3274 = add i64 %3273, 71904
  %3275 = load i32, i32* %ECX.i554
  %3276 = zext i32 %3275 to i64
  %3277 = load i64, i64* %PC.i553
  %3278 = add i64 %3277, 6
  store i64 %3278, i64* %PC.i553
  %3279 = inttoptr i64 %3274 to i32*
  store i32 %3275, i32* %3279
  store %struct.Memory* %loadMem_429055, %struct.Memory** %MEMORY
  %loadMem_42905b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 33
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 5
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %PC.i551
  %3287 = add i64 %3286, 7
  store i64 %3287, i64* %PC.i551
  %3288 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %3289 = zext i32 %3288 to i64
  store i64 %3289, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_42905b, %struct.Memory** %MEMORY
  %loadMem_429062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 1
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3295 to i64*
  %3296 = load i64, i64* %PC.i549
  %3297 = add i64 %3296, 8
  store i64 %3297, i64* %PC.i549
  %3298 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3298, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_429062, %struct.Memory** %MEMORY
  %loadMem_42906a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 1
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 7
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RDX.i548 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %RAX.i547
  %3309 = load i64, i64* %PC.i546
  %3310 = add i64 %3309, 2
  store i64 %3310, i64* %PC.i546
  %3311 = inttoptr i64 %3308 to i32*
  %3312 = load i32, i32* %3311
  %3313 = zext i32 %3312 to i64
  store i64 %3313, i64* %RDX.i548, align 8
  store %struct.Memory* %loadMem_42906a, %struct.Memory** %MEMORY
  %loadMem_42906c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 7
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %3319 to i64*
  %3320 = load i64, i64* %RDX.i545
  %3321 = load i64, i64* %PC.i544
  %3322 = add i64 %3321, 7
  store i64 %3322, i64* %PC.i544
  %3323 = trunc i64 %3320 to i32
  %3324 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %3325 = sub i32 %3323, %3324
  %3326 = zext i32 %3325 to i64
  store i64 %3326, i64* %RDX.i545, align 8
  %3327 = icmp ult i32 %3323, %3324
  %3328 = zext i1 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3328, i8* %3329, align 1
  %3330 = and i32 %3325, 255
  %3331 = call i32 @llvm.ctpop.i32(i32 %3330)
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = xor i8 %3333, 1
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3334, i8* %3335, align 1
  %3336 = xor i32 %3324, %3323
  %3337 = xor i32 %3336, %3325
  %3338 = lshr i32 %3337, 4
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3340, i8* %3341, align 1
  %3342 = icmp eq i32 %3325, 0
  %3343 = zext i1 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3343, i8* %3344, align 1
  %3345 = lshr i32 %3325, 31
  %3346 = trunc i32 %3345 to i8
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3346, i8* %3347, align 1
  %3348 = lshr i32 %3323, 31
  %3349 = lshr i32 %3324, 31
  %3350 = xor i32 %3349, %3348
  %3351 = xor i32 %3345, %3348
  %3352 = add i32 %3351, %3350
  %3353 = icmp eq i32 %3352, 2
  %3354 = zext i1 %3353 to i8
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3354, i8* %3355, align 1
  store %struct.Memory* %loadMem_42906c, %struct.Memory** %MEMORY
  %loadMem_429073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 7
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RDX.i543
  %3363 = load i64, i64* %PC.i542
  %3364 = add i64 %3363, 3
  store i64 %3364, i64* %PC.i542
  %3365 = trunc i64 %3362 to i32
  %3366 = sub i32 %3365, 1
  %3367 = zext i32 %3366 to i64
  store i64 %3367, i64* %RDX.i543, align 8
  %3368 = icmp ult i32 %3365, 1
  %3369 = zext i1 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3369, i8* %3370, align 1
  %3371 = and i32 %3366, 255
  %3372 = call i32 @llvm.ctpop.i32(i32 %3371)
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  %3375 = xor i8 %3374, 1
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3375, i8* %3376, align 1
  %3377 = xor i64 1, %3362
  %3378 = trunc i64 %3377 to i32
  %3379 = xor i32 %3378, %3366
  %3380 = lshr i32 %3379, 4
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3382, i8* %3383, align 1
  %3384 = icmp eq i32 %3366, 0
  %3385 = zext i1 %3384 to i8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3385, i8* %3386, align 1
  %3387 = lshr i32 %3366, 31
  %3388 = trunc i32 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3388, i8* %3389, align 1
  %3390 = lshr i32 %3365, 31
  %3391 = xor i32 %3387, %3390
  %3392 = add i32 %3391, %3390
  %3393 = icmp eq i32 %3392, 2
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3394, i8* %3395, align 1
  store %struct.Memory* %loadMem_429073, %struct.Memory** %MEMORY
  %loadMem_429076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %PC.i540
  %3403 = add i64 %3402, 8
  store i64 %3403, i64* %PC.i540
  %3404 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3404, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_429076, %struct.Memory** %MEMORY
  %loadMem_42907e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 7
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RDX.i539
  %3415 = load i64, i64* %RAX.i538
  %3416 = add i64 %3415, 71904
  %3417 = load i64, i64* %PC.i537
  %3418 = add i64 %3417, 7
  store i64 %3418, i64* %PC.i537
  %3419 = inttoptr i64 %3416 to i32*
  %3420 = load i32, i32* %3419
  %3421 = shl i64 %3414, 32
  %3422 = ashr exact i64 %3421, 32
  %3423 = sext i32 %3420 to i64
  %3424 = mul i64 %3423, %3422
  %3425 = trunc i64 %3424 to i32
  %3426 = and i64 %3424, 4294967295
  store i64 %3426, i64* %RDX.i539, align 8
  %3427 = shl i64 %3424, 32
  %3428 = ashr exact i64 %3427, 32
  %3429 = icmp ne i64 %3428, %3424
  %3430 = zext i1 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3430, i8* %3431, align 1
  %3432 = and i32 %3425, 255
  %3433 = call i32 @llvm.ctpop.i32(i32 %3432)
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  %3436 = xor i8 %3435, 1
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3436, i8* %3437, align 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3438, align 1
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3439, align 1
  %3440 = lshr i32 %3425, 31
  %3441 = trunc i32 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3441, i8* %3442, align 1
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3430, i8* %3443, align 1
  store %struct.Memory* %loadMem_42907e, %struct.Memory** %MEMORY
  %loadMem_429085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 7
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %EDX.i535 = bitcast %union.anon* %3449 to i32*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 5
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %RCX.i536
  %3454 = load i32, i32* %EDX.i535
  %3455 = zext i32 %3454 to i64
  %3456 = load i64, i64* %PC.i534
  %3457 = add i64 %3456, 2
  store i64 %3457, i64* %PC.i534
  %3458 = trunc i64 %3453 to i32
  %3459 = add i32 %3454, %3458
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RCX.i536, align 8
  %3461 = icmp ult i32 %3459, %3458
  %3462 = icmp ult i32 %3459, %3454
  %3463 = or i1 %3461, %3462
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3464, i8* %3465, align 1
  %3466 = and i32 %3459, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = xor i64 %3455, %3453
  %3473 = trunc i64 %3472 to i32
  %3474 = xor i32 %3473, %3459
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3477, i8* %3478, align 1
  %3479 = icmp eq i32 %3459, 0
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3459, 31
  %3483 = trunc i32 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3483, i8* %3484, align 1
  %3485 = lshr i32 %3458, 31
  %3486 = lshr i32 %3454, 31
  %3487 = xor i32 %3482, %3485
  %3488 = xor i32 %3482, %3486
  %3489 = add i32 %3487, %3488
  %3490 = icmp eq i32 %3489, 2
  %3491 = zext i1 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3491, i8* %3492, align 1
  store %struct.Memory* %loadMem_429085, %struct.Memory** %MEMORY
  %loadMem_429087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 5
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %ECX.i532 = bitcast %union.anon* %3498 to i32*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 15
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3501 to i64*
  %3502 = load i64, i64* %RBP.i533
  %3503 = sub i64 %3502, 8
  %3504 = load i32, i32* %ECX.i532
  %3505 = zext i32 %3504 to i64
  %3506 = load i64, i64* %PC.i531
  %3507 = add i64 %3506, 3
  store i64 %3507, i64* %PC.i531
  %3508 = inttoptr i64 %3503 to i32*
  store i32 %3504, i32* %3508
  store %struct.Memory* %loadMem_429087, %struct.Memory** %MEMORY
  %loadMem_42908a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %PC.i529
  %3516 = add i64 %3515, 7
  store i64 %3516, i64* %PC.i529
  %3517 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_42908a, %struct.Memory** %MEMORY
  %loadMem_429091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 1
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %PC.i527
  %3526 = add i64 %3525, 8
  store i64 %3526, i64* %PC.i527
  %3527 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3527, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_429091, %struct.Memory** %MEMORY
  %loadMem_429099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 7
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RAX.i525
  %3538 = load i64, i64* %PC.i524
  %3539 = add i64 %3538, 2
  store i64 %3539, i64* %PC.i524
  %3540 = inttoptr i64 %3537 to i32*
  %3541 = load i32, i32* %3540
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_429099, %struct.Memory** %MEMORY
  %loadMem_42909b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 7
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RDX.i523 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RDX.i523
  %3550 = load i64, i64* %PC.i522
  %3551 = add i64 %3550, 7
  store i64 %3551, i64* %PC.i522
  %3552 = trunc i64 %3549 to i32
  %3553 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %3554 = sub i32 %3552, %3553
  %3555 = zext i32 %3554 to i64
  store i64 %3555, i64* %RDX.i523, align 8
  %3556 = icmp ult i32 %3552, %3553
  %3557 = zext i1 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3557, i8* %3558, align 1
  %3559 = and i32 %3554, 255
  %3560 = call i32 @llvm.ctpop.i32(i32 %3559)
  %3561 = trunc i32 %3560 to i8
  %3562 = and i8 %3561, 1
  %3563 = xor i8 %3562, 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3563, i8* %3564, align 1
  %3565 = xor i32 %3553, %3552
  %3566 = xor i32 %3565, %3554
  %3567 = lshr i32 %3566, 4
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3569, i8* %3570, align 1
  %3571 = icmp eq i32 %3554, 0
  %3572 = zext i1 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3572, i8* %3573, align 1
  %3574 = lshr i32 %3554, 31
  %3575 = trunc i32 %3574 to i8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3575, i8* %3576, align 1
  %3577 = lshr i32 %3552, 31
  %3578 = lshr i32 %3553, 31
  %3579 = xor i32 %3578, %3577
  %3580 = xor i32 %3574, %3577
  %3581 = add i32 %3580, %3579
  %3582 = icmp eq i32 %3581, 2
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3583, i8* %3584, align 1
  store %struct.Memory* %loadMem_42909b, %struct.Memory** %MEMORY
  %loadMem_4290a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %3590 to i64*
  %3591 = load i64, i64* %PC.i520
  %3592 = add i64 %3591, 8
  store i64 %3592, i64* %PC.i520
  %3593 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3593, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_4290a2, %struct.Memory** %MEMORY
  %loadMem_4290aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 1
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 7
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RDX.i519
  %3604 = load i64, i64* %RAX.i518
  %3605 = add i64 %3604, 71904
  %3606 = load i64, i64* %PC.i517
  %3607 = add i64 %3606, 7
  store i64 %3607, i64* %PC.i517
  %3608 = inttoptr i64 %3605 to i32*
  %3609 = load i32, i32* %3608
  %3610 = shl i64 %3603, 32
  %3611 = ashr exact i64 %3610, 32
  %3612 = sext i32 %3609 to i64
  %3613 = mul i64 %3612, %3611
  %3614 = trunc i64 %3613 to i32
  %3615 = and i64 %3613, 4294967295
  store i64 %3615, i64* %RDX.i519, align 8
  %3616 = shl i64 %3613, 32
  %3617 = ashr exact i64 %3616, 32
  %3618 = icmp ne i64 %3617, %3613
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3619, i8* %3620, align 1
  %3621 = and i32 %3614, 255
  %3622 = call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3625, i8* %3626, align 1
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3627, align 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3628, align 1
  %3629 = lshr i32 %3614, 31
  %3630 = trunc i32 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3630, i8* %3631, align 1
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3619, i8* %3632, align 1
  store %struct.Memory* %loadMem_4290aa, %struct.Memory** %MEMORY
  %loadMem_4290b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 7
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %EDX.i515 = bitcast %union.anon* %3638 to i32*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 5
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %RCX.i516
  %3643 = load i32, i32* %EDX.i515
  %3644 = zext i32 %3643 to i64
  %3645 = load i64, i64* %PC.i514
  %3646 = add i64 %3645, 2
  store i64 %3646, i64* %PC.i514
  %3647 = trunc i64 %3642 to i32
  %3648 = add i32 %3643, %3647
  %3649 = zext i32 %3648 to i64
  store i64 %3649, i64* %RCX.i516, align 8
  %3650 = icmp ult i32 %3648, %3647
  %3651 = icmp ult i32 %3648, %3643
  %3652 = or i1 %3650, %3651
  %3653 = zext i1 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3653, i8* %3654, align 1
  %3655 = and i32 %3648, 255
  %3656 = call i32 @llvm.ctpop.i32(i32 %3655)
  %3657 = trunc i32 %3656 to i8
  %3658 = and i8 %3657, 1
  %3659 = xor i8 %3658, 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3659, i8* %3660, align 1
  %3661 = xor i64 %3644, %3642
  %3662 = trunc i64 %3661 to i32
  %3663 = xor i32 %3662, %3648
  %3664 = lshr i32 %3663, 4
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3666, i8* %3667, align 1
  %3668 = icmp eq i32 %3648, 0
  %3669 = zext i1 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3669, i8* %3670, align 1
  %3671 = lshr i32 %3648, 31
  %3672 = trunc i32 %3671 to i8
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3672, i8* %3673, align 1
  %3674 = lshr i32 %3647, 31
  %3675 = lshr i32 %3643, 31
  %3676 = xor i32 %3671, %3674
  %3677 = xor i32 %3671, %3675
  %3678 = add i32 %3676, %3677
  %3679 = icmp eq i32 %3678, 2
  %3680 = zext i1 %3679 to i8
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3680, i8* %3681, align 1
  store %struct.Memory* %loadMem_4290b1, %struct.Memory** %MEMORY
  %loadMem_4290b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 5
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %ECX.i512 = bitcast %union.anon* %3687 to i32*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RBP.i513
  %3692 = sub i64 %3691, 12
  %3693 = load i32, i32* %ECX.i512
  %3694 = zext i32 %3693 to i64
  %3695 = load i64, i64* %PC.i511
  %3696 = add i64 %3695, 3
  store i64 %3696, i64* %PC.i511
  %3697 = inttoptr i64 %3692 to i32*
  store i32 %3693, i32* %3697
  store %struct.Memory* %loadMem_4290b3, %struct.Memory** %MEMORY
  %loadMem_4290b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 5
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 15
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %3706 to i64*
  %3707 = load i64, i64* %RBP.i510
  %3708 = sub i64 %3707, 8
  %3709 = load i64, i64* %PC.i508
  %3710 = add i64 %3709, 3
  store i64 %3710, i64* %PC.i508
  %3711 = inttoptr i64 %3708 to i32*
  %3712 = load i32, i32* %3711
  %3713 = zext i32 %3712 to i64
  store i64 %3713, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_4290b6, %struct.Memory** %MEMORY
  %loadMem_4290b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 1
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %3719 to i64*
  %3720 = load i64, i64* %PC.i506
  %3721 = add i64 %3720, 8
  store i64 %3721, i64* %PC.i506
  %3722 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*)
  store i64 %3722, i64* %RAX.i507, align 8
  store %struct.Memory* %loadMem_4290b9, %struct.Memory** %MEMORY
  %loadMem_4290c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 5
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %ECX.i504 = bitcast %union.anon* %3728 to i32*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 1
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RAX.i505
  %3733 = load i32, i32* %ECX.i504
  %3734 = zext i32 %3733 to i64
  %3735 = load i64, i64* %PC.i503
  %3736 = add i64 %3735, 2
  store i64 %3736, i64* %PC.i503
  %3737 = inttoptr i64 %3732 to i32*
  store i32 %3733, i32* %3737
  store %struct.Memory* %loadMem_4290c1, %struct.Memory** %MEMORY
  %loadMem_4290c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 15
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RBP.i502
  %3745 = sub i64 %3744, 4
  %3746 = load i64, i64* %PC.i501
  %3747 = add i64 %3746, 7
  store i64 %3747, i64* %PC.i501
  %3748 = inttoptr i64 %3745 to i32*
  store i32 1, i32* %3748
  store %struct.Memory* %loadMem_4290c3, %struct.Memory** %MEMORY
  br label %block_.L_4290ca

block_.L_4290ca:                                  ; preds = %block_4290e1, %block_.L_42903f
  %loadMem_4290ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 1
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i500
  %3759 = sub i64 %3758, 4
  %3760 = load i64, i64* %PC.i498
  %3761 = add i64 %3760, 3
  store i64 %3761, i64* %PC.i498
  %3762 = inttoptr i64 %3759 to i32*
  %3763 = load i32, i32* %3762
  %3764 = zext i32 %3763 to i64
  store i64 %3764, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_4290ca, %struct.Memory** %MEMORY
  %loadMem_4290cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 5
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %PC.i496
  %3772 = add i64 %3771, 8
  store i64 %3772, i64* %PC.i496
  %3773 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3773, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_4290cd, %struct.Memory** %MEMORY
  %loadMem_4290d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 1
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %3779 to i32*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 5
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %3782 to i64*
  %3783 = load i32, i32* %EAX.i494
  %3784 = zext i32 %3783 to i64
  %3785 = load i64, i64* %RCX.i495
  %3786 = add i64 %3785, 72376
  %3787 = load i64, i64* %PC.i493
  %3788 = add i64 %3787, 6
  store i64 %3788, i64* %PC.i493
  %3789 = inttoptr i64 %3786 to i32*
  %3790 = load i32, i32* %3789
  %3791 = sub i32 %3783, %3790
  %3792 = icmp ult i32 %3783, %3790
  %3793 = zext i1 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3793, i8* %3794, align 1
  %3795 = and i32 %3791, 255
  %3796 = call i32 @llvm.ctpop.i32(i32 %3795)
  %3797 = trunc i32 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = xor i8 %3798, 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3799, i8* %3800, align 1
  %3801 = xor i32 %3790, %3783
  %3802 = xor i32 %3801, %3791
  %3803 = lshr i32 %3802, 4
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3805, i8* %3806, align 1
  %3807 = icmp eq i32 %3791, 0
  %3808 = zext i1 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3808, i8* %3809, align 1
  %3810 = lshr i32 %3791, 31
  %3811 = trunc i32 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3811, i8* %3812, align 1
  %3813 = lshr i32 %3783, 31
  %3814 = lshr i32 %3790, 31
  %3815 = xor i32 %3814, %3813
  %3816 = xor i32 %3810, %3813
  %3817 = add i32 %3816, %3815
  %3818 = icmp eq i32 %3817, 2
  %3819 = zext i1 %3818 to i8
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3819, i8* %3820, align 1
  store %struct.Memory* %loadMem_4290d5, %struct.Memory** %MEMORY
  %loadMem_4290db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 33
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %PC.i492
  %3825 = add i64 %3824, 69
  %3826 = load i64, i64* %PC.i492
  %3827 = add i64 %3826, 6
  %3828 = load i64, i64* %PC.i492
  %3829 = add i64 %3828, 6
  store i64 %3829, i64* %PC.i492
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3831 = load i8, i8* %3830, align 1
  %3832 = icmp ne i8 %3831, 0
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3834 = load i8, i8* %3833, align 1
  %3835 = icmp ne i8 %3834, 0
  %3836 = xor i1 %3832, %3835
  %3837 = xor i1 %3836, true
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %BRANCH_TAKEN, align 1
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3840 = select i1 %3836, i64 %3827, i64 %3825
  store i64 %3840, i64* %3839, align 8
  store %struct.Memory* %loadMem_4290db, %struct.Memory** %MEMORY
  %loadBr_4290db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4290db = icmp eq i8 %loadBr_4290db, 1
  br i1 %cmpBr_4290db, label %block_.L_429120, label %block_4290e1

block_4290e1:                                     ; preds = %block_.L_4290ca
  %loadMem_4290e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 1
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %PC.i490
  %3848 = add i64 %3847, 8
  store i64 %3848, i64* %PC.i490
  %3849 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*)
  store i64 %3849, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4290e1, %struct.Memory** %MEMORY
  %loadMem_4290e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 5
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %3855 to i64*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 15
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3858 to i64*
  %3859 = load i64, i64* %RBP.i489
  %3860 = sub i64 %3859, 4
  %3861 = load i64, i64* %PC.i487
  %3862 = add i64 %3861, 3
  store i64 %3862, i64* %PC.i487
  %3863 = inttoptr i64 %3860 to i32*
  %3864 = load i32, i32* %3863
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_4290e9, %struct.Memory** %MEMORY
  %loadMem_4290ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 5
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %3871 to i64*
  %3872 = load i64, i64* %RCX.i486
  %3873 = load i64, i64* %PC.i485
  %3874 = add i64 %3873, 3
  store i64 %3874, i64* %PC.i485
  %3875 = trunc i64 %3872 to i32
  %3876 = sub i32 %3875, 1
  %3877 = zext i32 %3876 to i64
  store i64 %3877, i64* %RCX.i486, align 8
  %3878 = icmp ult i32 %3875, 1
  %3879 = zext i1 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3879, i8* %3880, align 1
  %3881 = and i32 %3876, 255
  %3882 = call i32 @llvm.ctpop.i32(i32 %3881)
  %3883 = trunc i32 %3882 to i8
  %3884 = and i8 %3883, 1
  %3885 = xor i8 %3884, 1
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3885, i8* %3886, align 1
  %3887 = xor i64 1, %3872
  %3888 = trunc i64 %3887 to i32
  %3889 = xor i32 %3888, %3876
  %3890 = lshr i32 %3889, 4
  %3891 = trunc i32 %3890 to i8
  %3892 = and i8 %3891, 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3892, i8* %3893, align 1
  %3894 = icmp eq i32 %3876, 0
  %3895 = zext i1 %3894 to i8
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3895, i8* %3896, align 1
  %3897 = lshr i32 %3876, 31
  %3898 = trunc i32 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3898, i8* %3899, align 1
  %3900 = lshr i32 %3875, 31
  %3901 = xor i32 %3897, %3900
  %3902 = add i32 %3901, %3900
  %3903 = icmp eq i32 %3902, 2
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3904, i8* %3905, align 1
  store %struct.Memory* %loadMem_4290ec, %struct.Memory** %MEMORY
  %loadMem_4290ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 5
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %ECX.i483 = bitcast %union.anon* %3911 to i32*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 7
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %3914 to i64*
  %3915 = load i32, i32* %ECX.i483
  %3916 = zext i32 %3915 to i64
  %3917 = load i64, i64* %PC.i482
  %3918 = add i64 %3917, 3
  store i64 %3918, i64* %PC.i482
  %3919 = shl i64 %3916, 32
  %3920 = ashr exact i64 %3919, 32
  store i64 %3920, i64* %RDX.i484, align 8
  store %struct.Memory* %loadMem_4290ef, %struct.Memory** %MEMORY
  %loadMem_4290f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 1
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 5
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 7
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %3932 to i64*
  %3933 = load i64, i64* %RAX.i479
  %3934 = load i64, i64* %RDX.i481
  %3935 = mul i64 %3934, 4
  %3936 = add i64 %3935, %3933
  %3937 = load i64, i64* %PC.i478
  %3938 = add i64 %3937, 3
  store i64 %3938, i64* %PC.i478
  %3939 = inttoptr i64 %3936 to i32*
  %3940 = load i32, i32* %3939
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_4290f2, %struct.Memory** %MEMORY
  %loadMem_4290f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 1
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %PC.i476
  %3949 = add i64 %3948, 8
  store i64 %3949, i64* %PC.i476
  %3950 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3950, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_4290f5, %struct.Memory** %MEMORY
  %loadMem_4290fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 1
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 5
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %3959 to i64*
  %3960 = load i64, i64* %RCX.i475
  %3961 = load i64, i64* %RAX.i474
  %3962 = add i64 %3961, 71904
  %3963 = load i64, i64* %PC.i473
  %3964 = add i64 %3963, 6
  store i64 %3964, i64* %PC.i473
  %3965 = trunc i64 %3960 to i32
  %3966 = inttoptr i64 %3962 to i32*
  %3967 = load i32, i32* %3966
  %3968 = sub i32 %3965, %3967
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RCX.i475, align 8
  %3970 = icmp ult i32 %3965, %3967
  %3971 = zext i1 %3970 to i8
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3971, i8* %3972, align 1
  %3973 = and i32 %3968, 255
  %3974 = call i32 @llvm.ctpop.i32(i32 %3973)
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3977, i8* %3978, align 1
  %3979 = xor i32 %3967, %3965
  %3980 = xor i32 %3979, %3968
  %3981 = lshr i32 %3980, 4
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3983, i8* %3984, align 1
  %3985 = icmp eq i32 %3968, 0
  %3986 = zext i1 %3985 to i8
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3986, i8* %3987, align 1
  %3988 = lshr i32 %3968, 31
  %3989 = trunc i32 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3989, i8* %3990, align 1
  %3991 = lshr i32 %3965, 31
  %3992 = lshr i32 %3967, 31
  %3993 = xor i32 %3992, %3991
  %3994 = xor i32 %3988, %3991
  %3995 = add i32 %3994, %3993
  %3996 = icmp eq i32 %3995, 2
  %3997 = zext i1 %3996 to i8
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3997, i8* %3998, align 1
  store %struct.Memory* %loadMem_4290fd, %struct.Memory** %MEMORY
  %loadMem_429103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 1
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %PC.i471
  %4006 = add i64 %4005, 8
  store i64 %4006, i64* %PC.i471
  %4007 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*)
  store i64 %4007, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_429103, %struct.Memory** %MEMORY
  %loadMem_42910b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 7
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 15
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RBP.i470
  %4018 = sub i64 %4017, 4
  %4019 = load i64, i64* %PC.i468
  %4020 = add i64 %4019, 4
  store i64 %4020, i64* %PC.i468
  %4021 = inttoptr i64 %4018 to i32*
  %4022 = load i32, i32* %4021
  %4023 = sext i32 %4022 to i64
  store i64 %4023, i64* %RDX.i469, align 8
  store %struct.Memory* %loadMem_42910b, %struct.Memory** %MEMORY
  %loadMem_42910f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 5
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %ECX.i465 = bitcast %union.anon* %4029 to i32*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 1
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 7
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %RAX.i466
  %4037 = load i64, i64* %RDX.i467
  %4038 = mul i64 %4037, 4
  %4039 = add i64 %4038, %4036
  %4040 = load i32, i32* %ECX.i465
  %4041 = zext i32 %4040 to i64
  %4042 = load i64, i64* %PC.i464
  %4043 = add i64 %4042, 3
  store i64 %4043, i64* %PC.i464
  %4044 = inttoptr i64 %4039 to i32*
  store i32 %4040, i32* %4044
  store %struct.Memory* %loadMem_42910f, %struct.Memory** %MEMORY
  %loadMem_429112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 1
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 15
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %RBP.i463
  %4055 = sub i64 %4054, 4
  %4056 = load i64, i64* %PC.i461
  %4057 = add i64 %4056, 3
  store i64 %4057, i64* %PC.i461
  %4058 = inttoptr i64 %4055 to i32*
  %4059 = load i32, i32* %4058
  %4060 = zext i32 %4059 to i64
  store i64 %4060, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_429112, %struct.Memory** %MEMORY
  %loadMem_429115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 1
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %RAX.i460
  %4068 = load i64, i64* %PC.i459
  %4069 = add i64 %4068, 3
  store i64 %4069, i64* %PC.i459
  %4070 = trunc i64 %4067 to i32
  %4071 = add i32 1, %4070
  %4072 = zext i32 %4071 to i64
  store i64 %4072, i64* %RAX.i460, align 8
  %4073 = icmp ult i32 %4071, %4070
  %4074 = icmp ult i32 %4071, 1
  %4075 = or i1 %4073, %4074
  %4076 = zext i1 %4075 to i8
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4076, i8* %4077, align 1
  %4078 = and i32 %4071, 255
  %4079 = call i32 @llvm.ctpop.i32(i32 %4078)
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  %4082 = xor i8 %4081, 1
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4082, i8* %4083, align 1
  %4084 = xor i64 1, %4067
  %4085 = trunc i64 %4084 to i32
  %4086 = xor i32 %4085, %4071
  %4087 = lshr i32 %4086, 4
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4089, i8* %4090, align 1
  %4091 = icmp eq i32 %4071, 0
  %4092 = zext i1 %4091 to i8
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4092, i8* %4093, align 1
  %4094 = lshr i32 %4071, 31
  %4095 = trunc i32 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4095, i8* %4096, align 1
  %4097 = lshr i32 %4070, 31
  %4098 = xor i32 %4094, %4097
  %4099 = add i32 %4098, %4094
  %4100 = icmp eq i32 %4099, 2
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4101, i8* %4102, align 1
  store %struct.Memory* %loadMem_429115, %struct.Memory** %MEMORY
  %loadMem_429118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 1
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %EAX.i457 = bitcast %union.anon* %4108 to i32*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 15
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RBP.i458
  %4113 = sub i64 %4112, 4
  %4114 = load i32, i32* %EAX.i457
  %4115 = zext i32 %4114 to i64
  %4116 = load i64, i64* %PC.i456
  %4117 = add i64 %4116, 3
  store i64 %4117, i64* %PC.i456
  %4118 = inttoptr i64 %4113 to i32*
  store i32 %4114, i32* %4118
  store %struct.Memory* %loadMem_429118, %struct.Memory** %MEMORY
  %loadMem_42911b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %PC.i455
  %4123 = add i64 %4122, -81
  %4124 = load i64, i64* %PC.i455
  %4125 = add i64 %4124, 5
  store i64 %4125, i64* %PC.i455
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4123, i64* %4126, align 8
  store %struct.Memory* %loadMem_42911b, %struct.Memory** %MEMORY
  br label %block_.L_4290ca

block_.L_429120:                                  ; preds = %block_.L_4290ca
  %loadMem_429120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 33
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4129 to i64*
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 1
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4132 to i64*
  %4133 = load i64, i64* %PC.i453
  %4134 = add i64 %4133, 8
  store i64 %4134, i64* %PC.i453
  %4135 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4135, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_429120, %struct.Memory** %MEMORY
  %loadMem_429128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 1
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RAX.i452
  %4143 = add i64 %4142, 2440
  %4144 = load i64, i64* %PC.i451
  %4145 = add i64 %4144, 7
  store i64 %4145, i64* %PC.i451
  %4146 = inttoptr i64 %4143 to i32*
  %4147 = load i32, i32* %4146
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4148, align 1
  %4149 = and i32 %4147, 255
  %4150 = call i32 @llvm.ctpop.i32(i32 %4149)
  %4151 = trunc i32 %4150 to i8
  %4152 = and i8 %4151, 1
  %4153 = xor i8 %4152, 1
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4153, i8* %4154, align 1
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4155, align 1
  %4156 = icmp eq i32 %4147, 0
  %4157 = zext i1 %4156 to i8
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4157, i8* %4158, align 1
  %4159 = lshr i32 %4147, 31
  %4160 = trunc i32 %4159 to i8
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4160, i8* %4161, align 1
  %4162 = lshr i32 %4147, 31
  %4163 = xor i32 %4159, %4162
  %4164 = add i32 %4163, %4162
  %4165 = icmp eq i32 %4164, 2
  %4166 = zext i1 %4165 to i8
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4166, i8* %4167, align 1
  store %struct.Memory* %loadMem_429128, %struct.Memory** %MEMORY
  %loadMem_42912f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4170 to i64*
  %4171 = load i64, i64* %PC.i450
  %4172 = add i64 %4171, 73
  %4173 = load i64, i64* %PC.i450
  %4174 = add i64 %4173, 6
  %4175 = load i64, i64* %PC.i450
  %4176 = add i64 %4175, 6
  store i64 %4176, i64* %PC.i450
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4178 = load i8, i8* %4177, align 1
  store i8 %4178, i8* %BRANCH_TAKEN, align 1
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4180 = icmp ne i8 %4178, 0
  %4181 = select i1 %4180, i64 %4172, i64 %4174
  store i64 %4181, i64* %4179, align 8
  store %struct.Memory* %loadMem_42912f, %struct.Memory** %MEMORY
  %loadBr_42912f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42912f = icmp eq i8 %loadBr_42912f, 1
  br i1 %cmpBr_42912f, label %block_.L_429178, label %block_429135

block_429135:                                     ; preds = %block_.L_429120
  %loadMem_429135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 33
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 1
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %PC.i448
  %4189 = add i64 %4188, 8
  store i64 %4189, i64* %PC.i448
  %4190 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4190, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_429135, %struct.Memory** %MEMORY
  %loadMem_42913d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 1
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 5
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RAX.i446
  %4201 = load i64, i64* %PC.i445
  %4202 = add i64 %4201, 2
  store i64 %4202, i64* %PC.i445
  %4203 = inttoptr i64 %4200 to i32*
  %4204 = load i32, i32* %4203
  %4205 = zext i32 %4204 to i64
  store i64 %4205, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_42913d, %struct.Memory** %MEMORY
  %loadMem_42913f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 5
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %4211 to i64*
  %4212 = load i64, i64* %RCX.i444
  %4213 = load i64, i64* %PC.i443
  %4214 = add i64 %4213, 3
  store i64 %4214, i64* %PC.i443
  %4215 = trunc i64 %4212 to i32
  %4216 = add i32 1, %4215
  %4217 = zext i32 %4216 to i64
  store i64 %4217, i64* %RCX.i444, align 8
  %4218 = icmp ult i32 %4216, %4215
  %4219 = icmp ult i32 %4216, 1
  %4220 = or i1 %4218, %4219
  %4221 = zext i1 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4221, i8* %4222, align 1
  %4223 = and i32 %4216, 255
  %4224 = call i32 @llvm.ctpop.i32(i32 %4223)
  %4225 = trunc i32 %4224 to i8
  %4226 = and i8 %4225, 1
  %4227 = xor i8 %4226, 1
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4227, i8* %4228, align 1
  %4229 = xor i64 1, %4212
  %4230 = trunc i64 %4229 to i32
  %4231 = xor i32 %4230, %4216
  %4232 = lshr i32 %4231, 4
  %4233 = trunc i32 %4232 to i8
  %4234 = and i8 %4233, 1
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4234, i8* %4235, align 1
  %4236 = icmp eq i32 %4216, 0
  %4237 = zext i1 %4236 to i8
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4237, i8* %4238, align 1
  %4239 = lshr i32 %4216, 31
  %4240 = trunc i32 %4239 to i8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4240, i8* %4241, align 1
  %4242 = lshr i32 %4215, 31
  %4243 = xor i32 %4239, %4242
  %4244 = add i32 %4243, %4239
  %4245 = icmp eq i32 %4244, 2
  %4246 = zext i1 %4245 to i8
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4246, i8* %4247, align 1
  store %struct.Memory* %loadMem_42913f, %struct.Memory** %MEMORY
  %loadMem_429142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 1
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %PC.i441
  %4255 = add i64 %4254, 8
  store i64 %4255, i64* %PC.i441
  %4256 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4256, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_429142, %struct.Memory** %MEMORY
  %loadMem_42914a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 5
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %ECX.i439 = bitcast %union.anon* %4262 to i32*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 1
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %4265 to i64*
  %4266 = load i32, i32* %ECX.i439
  %4267 = zext i32 %4266 to i64
  %4268 = load i64, i64* %RAX.i440
  %4269 = add i64 %4268, 8
  %4270 = load i64, i64* %PC.i438
  %4271 = add i64 %4270, 3
  store i64 %4271, i64* %PC.i438
  %4272 = inttoptr i64 %4269 to i32*
  %4273 = load i32, i32* %4272
  %4274 = sub i32 %4266, %4273
  %4275 = icmp ult i32 %4266, %4273
  %4276 = zext i1 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4276, i8* %4277, align 1
  %4278 = and i32 %4274, 255
  %4279 = call i32 @llvm.ctpop.i32(i32 %4278)
  %4280 = trunc i32 %4279 to i8
  %4281 = and i8 %4280, 1
  %4282 = xor i8 %4281, 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4282, i8* %4283, align 1
  %4284 = xor i32 %4273, %4266
  %4285 = xor i32 %4284, %4274
  %4286 = lshr i32 %4285, 4
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4288, i8* %4289, align 1
  %4290 = icmp eq i32 %4274, 0
  %4291 = zext i1 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4291, i8* %4292, align 1
  %4293 = lshr i32 %4274, 31
  %4294 = trunc i32 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4294, i8* %4295, align 1
  %4296 = lshr i32 %4266, 31
  %4297 = lshr i32 %4273, 31
  %4298 = xor i32 %4297, %4296
  %4299 = xor i32 %4293, %4296
  %4300 = add i32 %4299, %4298
  %4301 = icmp eq i32 %4300, 2
  %4302 = zext i1 %4301 to i8
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4302, i8* %4303, align 1
  store %struct.Memory* %loadMem_42914a, %struct.Memory** %MEMORY
  %loadMem_42914d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 33
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4306 to i64*
  %4307 = load i64, i64* %PC.i437
  %4308 = add i64 %4307, 43
  %4309 = load i64, i64* %PC.i437
  %4310 = add i64 %4309, 6
  %4311 = load i64, i64* %PC.i437
  %4312 = add i64 %4311, 6
  store i64 %4312, i64* %PC.i437
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4314 = load i8, i8* %4313, align 1
  %4315 = icmp eq i8 %4314, 0
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %BRANCH_TAKEN, align 1
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4318 = select i1 %4315, i64 %4308, i64 %4310
  store i64 %4318, i64* %4317, align 8
  store %struct.Memory* %loadMem_42914d, %struct.Memory** %MEMORY
  %loadBr_42914d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42914d = icmp eq i8 %loadBr_42914d, 1
  br i1 %cmpBr_42914d, label %block_.L_429178, label %block_429153

block_429153:                                     ; preds = %block_429135
  %loadMem_429153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 33
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 1
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %PC.i435
  %4326 = add i64 %4325, 8
  store i64 %4326, i64* %PC.i435
  %4327 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4327, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_429153, %struct.Memory** %MEMORY
  %loadMem_42915b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 1
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 5
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %4336 to i64*
  %4337 = load i64, i64* %RAX.i433
  %4338 = add i64 %4337, 2440
  %4339 = load i64, i64* %PC.i432
  %4340 = add i64 %4339, 6
  store i64 %4340, i64* %PC.i432
  %4341 = inttoptr i64 %4338 to i32*
  %4342 = load i32, i32* %4341
  %4343 = zext i32 %4342 to i64
  store i64 %4343, i64* %RCX.i434, align 8
  store %struct.Memory* %loadMem_42915b, %struct.Memory** %MEMORY
  %loadMem_429161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 5
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %ECX.i430 = bitcast %union.anon* %4349 to i32*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 15
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %4352 to i64*
  %4353 = load i64, i64* %RBP.i431
  %4354 = sub i64 %4353, 12
  %4355 = load i32, i32* %ECX.i430
  %4356 = zext i32 %4355 to i64
  %4357 = load i64, i64* %PC.i429
  %4358 = add i64 %4357, 3
  store i64 %4358, i64* %PC.i429
  %4359 = inttoptr i64 %4354 to i32*
  store i32 %4355, i32* %4359
  store %struct.Memory* %loadMem_429161, %struct.Memory** %MEMORY
  %loadMem_429164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 33
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 5
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 15
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RBP.i428
  %4370 = sub i64 %4369, 12
  %4371 = load i64, i64* %PC.i426
  %4372 = add i64 %4371, 3
  store i64 %4372, i64* %PC.i426
  %4373 = inttoptr i64 %4370 to i32*
  %4374 = load i32, i32* %4373
  %4375 = zext i32 %4374 to i64
  store i64 %4375, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_429164, %struct.Memory** %MEMORY
  %loadMem_429167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 33
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4378 to i64*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 5
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 15
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %4384 to i64*
  %4385 = load i64, i64* %RCX.i424
  %4386 = load i64, i64* %RBP.i425
  %4387 = sub i64 %4386, 8
  %4388 = load i64, i64* %PC.i423
  %4389 = add i64 %4388, 3
  store i64 %4389, i64* %PC.i423
  %4390 = trunc i64 %4385 to i32
  %4391 = inttoptr i64 %4387 to i32*
  %4392 = load i32, i32* %4391
  %4393 = sub i32 %4390, %4392
  %4394 = zext i32 %4393 to i64
  store i64 %4394, i64* %RCX.i424, align 8
  %4395 = icmp ult i32 %4390, %4392
  %4396 = zext i1 %4395 to i8
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4396, i8* %4397, align 1
  %4398 = and i32 %4393, 255
  %4399 = call i32 @llvm.ctpop.i32(i32 %4398)
  %4400 = trunc i32 %4399 to i8
  %4401 = and i8 %4400, 1
  %4402 = xor i8 %4401, 1
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4402, i8* %4403, align 1
  %4404 = xor i32 %4392, %4390
  %4405 = xor i32 %4404, %4393
  %4406 = lshr i32 %4405, 4
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4408, i8* %4409, align 1
  %4410 = icmp eq i32 %4393, 0
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4411, i8* %4412, align 1
  %4413 = lshr i32 %4393, 31
  %4414 = trunc i32 %4413 to i8
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4414, i8* %4415, align 1
  %4416 = lshr i32 %4390, 31
  %4417 = lshr i32 %4392, 31
  %4418 = xor i32 %4417, %4416
  %4419 = xor i32 %4413, %4416
  %4420 = add i32 %4419, %4418
  %4421 = icmp eq i32 %4420, 2
  %4422 = zext i1 %4421 to i8
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4422, i8* %4423, align 1
  store %struct.Memory* %loadMem_429167, %struct.Memory** %MEMORY
  %loadMem_42916a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 1
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %PC.i421
  %4431 = add i64 %4430, 8
  store i64 %4431, i64* %PC.i421
  %4432 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4432, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_42916a, %struct.Memory** %MEMORY
  %loadMem_429172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 5
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %ECX.i419 = bitcast %union.anon* %4438 to i32*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 1
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %RAX.i420
  %4443 = add i64 %4442, 71904
  %4444 = load i32, i32* %ECX.i419
  %4445 = zext i32 %4444 to i64
  %4446 = load i64, i64* %PC.i418
  %4447 = add i64 %4446, 6
  store i64 %4447, i64* %PC.i418
  %4448 = inttoptr i64 %4443 to i32*
  store i32 %4444, i32* %4448
  store %struct.Memory* %loadMem_429172, %struct.Memory** %MEMORY
  br label %block_.L_429178

block_.L_429178:                                  ; preds = %block_429153, %block_429135, %block_.L_429120
  %loadMem_429178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4452, i64 0, i64 0
  %YMM0.i417 = bitcast %union.VectorReg* %4453 to %"class.std::bitset"*
  %4454 = bitcast %"class.std::bitset"* %YMM0.i417 to i8*
  %4455 = load i64, i64* %PC.i416
  %4456 = add i64 %4455, ptrtoint (%G_0x886e0__rip__type* @G_0x886e0__rip_ to i64)
  %4457 = load i64, i64* %PC.i416
  %4458 = add i64 %4457, 8
  store i64 %4458, i64* %PC.i416
  %4459 = inttoptr i64 %4456 to double*
  %4460 = load double, double* %4459
  %4461 = bitcast i8* %4454 to double*
  store double %4460, double* %4461, align 1
  %4462 = getelementptr inbounds i8, i8* %4454, i64 8
  %4463 = bitcast i8* %4462 to double*
  store double 0.000000e+00, double* %4463, align 1
  store %struct.Memory* %loadMem_429178, %struct.Memory** %MEMORY
  %loadMem_429180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 1
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %PC.i414
  %4471 = add i64 %4470, 8
  store i64 %4471, i64* %PC.i414
  %4472 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4472, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_429180, %struct.Memory** %MEMORY
  %loadMem_429188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 1
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 5
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %RAX.i412
  %4483 = add i64 %4482, 20
  %4484 = load i64, i64* %PC.i411
  %4485 = add i64 %4484, 3
  store i64 %4485, i64* %PC.i411
  %4486 = inttoptr i64 %4483 to i32*
  %4487 = load i32, i32* %4486
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_429188, %struct.Memory** %MEMORY
  %loadMem_42918b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 5
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4494 to i64*
  %4495 = load i64, i64* %RCX.i410
  %4496 = load i64, i64* %PC.i409
  %4497 = add i64 %4496, 3
  store i64 %4497, i64* %PC.i409
  %4498 = trunc i64 %4495 to i32
  %4499 = add i32 1, %4498
  %4500 = zext i32 %4499 to i64
  store i64 %4500, i64* %RCX.i410, align 8
  %4501 = icmp ult i32 %4499, %4498
  %4502 = icmp ult i32 %4499, 1
  %4503 = or i1 %4501, %4502
  %4504 = zext i1 %4503 to i8
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4504, i8* %4505, align 1
  %4506 = and i32 %4499, 255
  %4507 = call i32 @llvm.ctpop.i32(i32 %4506)
  %4508 = trunc i32 %4507 to i8
  %4509 = and i8 %4508, 1
  %4510 = xor i8 %4509, 1
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4510, i8* %4511, align 1
  %4512 = xor i64 1, %4495
  %4513 = trunc i64 %4512 to i32
  %4514 = xor i32 %4513, %4499
  %4515 = lshr i32 %4514, 4
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4517, i8* %4518, align 1
  %4519 = icmp eq i32 %4499, 0
  %4520 = zext i1 %4519 to i8
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4520, i8* %4521, align 1
  %4522 = lshr i32 %4499, 31
  %4523 = trunc i32 %4522 to i8
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4523, i8* %4524, align 1
  %4525 = lshr i32 %4498, 31
  %4526 = xor i32 %4522, %4525
  %4527 = add i32 %4526, %4522
  %4528 = icmp eq i32 %4527, 2
  %4529 = zext i1 %4528 to i8
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4529, i8* %4530, align 1
  store %struct.Memory* %loadMem_42918b, %struct.Memory** %MEMORY
  %loadMem_42918e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 5
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %ECX.i407 = bitcast %union.anon* %4536 to i32*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4537, i64 0, i64 1
  %YMM1.i408 = bitcast %union.VectorReg* %4538 to %"class.std::bitset"*
  %4539 = bitcast %"class.std::bitset"* %YMM1.i408 to i8*
  %4540 = load i32, i32* %ECX.i407
  %4541 = zext i32 %4540 to i64
  %4542 = load i64, i64* %PC.i406
  %4543 = add i64 %4542, 4
  store i64 %4543, i64* %PC.i406
  %4544 = sitofp i32 %4540 to double
  %4545 = bitcast i8* %4539 to double*
  store double %4544, double* %4545, align 1
  store %struct.Memory* %loadMem_42918e, %struct.Memory** %MEMORY
  %loadMem_429192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 1
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %4551 to i64*
  %4552 = load i64, i64* %PC.i404
  %4553 = add i64 %4552, 8
  store i64 %4553, i64* %PC.i404
  %4554 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4554, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_429192, %struct.Memory** %MEMORY
  %loadMem_42919a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 1
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4560 to i64*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4561, i64 0, i64 2
  %YMM2.i403 = bitcast %union.VectorReg* %4562 to %"class.std::bitset"*
  %4563 = bitcast %"class.std::bitset"* %YMM2.i403 to i8*
  %4564 = load i64, i64* %RAX.i402
  %4565 = add i64 %4564, 1236
  %4566 = load i64, i64* %PC.i401
  %4567 = add i64 %4566, 8
  store i64 %4567, i64* %PC.i401
  %4568 = inttoptr i64 %4565 to i32*
  %4569 = load i32, i32* %4568
  %4570 = sitofp i32 %4569 to double
  %4571 = bitcast i8* %4563 to double*
  store double %4570, double* %4571, align 1
  store %struct.Memory* %loadMem_42919a, %struct.Memory** %MEMORY
  %loadMem_4291a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4576 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4575, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4576 to %"class.std::bitset"*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4577, i64 0, i64 0
  %XMM0.i400 = bitcast %union.VectorReg* %4578 to %union.vec128_t*
  %4579 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4580 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4581 = bitcast %union.vec128_t* %XMM0.i400 to i8*
  %4582 = load i64, i64* %PC.i399
  %4583 = add i64 %4582, 4
  store i64 %4583, i64* %PC.i399
  %4584 = bitcast i8* %4580 to double*
  %4585 = load double, double* %4584, align 1
  %4586 = getelementptr inbounds i8, i8* %4580, i64 8
  %4587 = bitcast i8* %4586 to i64*
  %4588 = load i64, i64* %4587, align 1
  %4589 = bitcast i8* %4581 to double*
  %4590 = load double, double* %4589, align 1
  %4591 = fadd double %4585, %4590
  %4592 = bitcast i8* %4579 to double*
  store double %4591, double* %4592, align 1
  %4593 = getelementptr inbounds i8, i8* %4579, i64 8
  %4594 = bitcast i8* %4593 to i64*
  store i64 %4588, i64* %4594, align 1
  store %struct.Memory* %loadMem_4291a2, %struct.Memory** %MEMORY
  %loadMem_4291a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4599 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4598, i64 0, i64 1
  %YMM1.i398 = bitcast %union.VectorReg* %4599 to %"class.std::bitset"*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4600, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4601 to %union.vec128_t*
  %4602 = bitcast %"class.std::bitset"* %YMM1.i398 to i8*
  %4603 = bitcast %"class.std::bitset"* %YMM1.i398 to i8*
  %4604 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4605 = load i64, i64* %PC.i397
  %4606 = add i64 %4605, 4
  store i64 %4606, i64* %PC.i397
  %4607 = bitcast i8* %4603 to double*
  %4608 = load double, double* %4607, align 1
  %4609 = getelementptr inbounds i8, i8* %4603, i64 8
  %4610 = bitcast i8* %4609 to i64*
  %4611 = load i64, i64* %4610, align 1
  %4612 = bitcast i8* %4604 to double*
  %4613 = load double, double* %4612, align 1
  %4614 = fdiv double %4608, %4613
  %4615 = bitcast i8* %4602 to double*
  store double %4614, double* %4615, align 1
  %4616 = getelementptr inbounds i8, i8* %4602, i64 8
  %4617 = bitcast i8* %4616 to i64*
  store i64 %4611, i64* %4617, align 1
  store %struct.Memory* %loadMem_4291a6, %struct.Memory** %MEMORY
  %loadMem_4291aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 33
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 1
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %PC.i395
  %4625 = add i64 %4624, 8
  store i64 %4625, i64* %PC.i395
  %4626 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4626, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_4291aa, %struct.Memory** %MEMORY
  %loadMem_4291b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 33
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 1
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4633, i64 0, i64 1
  %XMM1.i394 = bitcast %union.VectorReg* %4634 to %union.vec128_t*
  %4635 = load i64, i64* %RAX.i393
  %4636 = add i64 %4635, 71896
  %4637 = bitcast %union.vec128_t* %XMM1.i394 to i8*
  %4638 = load i64, i64* %PC.i392
  %4639 = add i64 %4638, 8
  store i64 %4639, i64* %PC.i392
  %4640 = bitcast i8* %4637 to double*
  %4641 = load double, double* %4640, align 1
  %4642 = inttoptr i64 %4636 to double*
  store double %4641, double* %4642
  store %struct.Memory* %loadMem_4291b2, %struct.Memory** %MEMORY
  %loadMem_4291ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 33
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4645 to i64*
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 1
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %4648 to i64*
  %4649 = load i64, i64* %PC.i390
  %4650 = add i64 %4649, 8
  store i64 %4650, i64* %PC.i390
  %4651 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4651, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_4291ba, %struct.Memory** %MEMORY
  %loadMem_4291c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 1
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %4657 to i64*
  %4658 = load i64, i64* %RAX.i389
  %4659 = add i64 %4658, 1320
  %4660 = load i64, i64* %PC.i388
  %4661 = add i64 %4660, 7
  store i64 %4661, i64* %PC.i388
  %4662 = inttoptr i64 %4659 to i32*
  %4663 = load i32, i32* %4662
  %4664 = sub i32 %4663, 3
  %4665 = icmp ult i32 %4663, 3
  %4666 = zext i1 %4665 to i8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4666, i8* %4667, align 1
  %4668 = and i32 %4664, 255
  %4669 = call i32 @llvm.ctpop.i32(i32 %4668)
  %4670 = trunc i32 %4669 to i8
  %4671 = and i8 %4670, 1
  %4672 = xor i8 %4671, 1
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4672, i8* %4673, align 1
  %4674 = xor i32 %4663, 3
  %4675 = xor i32 %4674, %4664
  %4676 = lshr i32 %4675, 4
  %4677 = trunc i32 %4676 to i8
  %4678 = and i8 %4677, 1
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4678, i8* %4679, align 1
  %4680 = icmp eq i32 %4664, 0
  %4681 = zext i1 %4680 to i8
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4681, i8* %4682, align 1
  %4683 = lshr i32 %4664, 31
  %4684 = trunc i32 %4683 to i8
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4684, i8* %4685, align 1
  %4686 = lshr i32 %4663, 31
  %4687 = xor i32 %4683, %4686
  %4688 = add i32 %4687, %4686
  %4689 = icmp eq i32 %4688, 2
  %4690 = zext i1 %4689 to i8
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4690, i8* %4691, align 1
  store %struct.Memory* %loadMem_4291c2, %struct.Memory** %MEMORY
  %loadMem_4291c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %PC.i387
  %4696 = add i64 %4695, 30
  %4697 = load i64, i64* %PC.i387
  %4698 = add i64 %4697, 6
  %4699 = load i64, i64* %PC.i387
  %4700 = add i64 %4699, 6
  store i64 %4700, i64* %PC.i387
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4702 = load i8, i8* %4701, align 1
  %4703 = icmp eq i8 %4702, 0
  %4704 = zext i1 %4703 to i8
  store i8 %4704, i8* %BRANCH_TAKEN, align 1
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4706 = select i1 %4703, i64 %4696, i64 %4698
  store i64 %4706, i64* %4705, align 8
  store %struct.Memory* %loadMem_4291c9, %struct.Memory** %MEMORY
  %loadBr_4291c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4291c9 = icmp eq i8 %loadBr_4291c9, 1
  br i1 %cmpBr_4291c9, label %block_.L_4291e7, label %block_4291cf

block_4291cf:                                     ; preds = %block_.L_429178
  %loadMem_4291cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4709 to i64*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4710, i64 0, i64 0
  %YMM0.i386 = bitcast %union.VectorReg* %4711 to %"class.std::bitset"*
  %4712 = bitcast %"class.std::bitset"* %YMM0.i386 to i8*
  %4713 = load i64, i64* %PC.i385
  %4714 = add i64 %4713, ptrtoint (%G_0x88689__rip__type* @G_0x88689__rip_ to i64)
  %4715 = load i64, i64* %PC.i385
  %4716 = add i64 %4715, 8
  store i64 %4716, i64* %PC.i385
  %4717 = inttoptr i64 %4714 to double*
  %4718 = load double, double* %4717
  %4719 = bitcast i8* %4712 to double*
  store double %4718, double* %4719, align 1
  %4720 = getelementptr inbounds i8, i8* %4712, i64 8
  %4721 = bitcast i8* %4720 to double*
  store double 0.000000e+00, double* %4721, align 1
  store %struct.Memory* %loadMem_4291cf, %struct.Memory** %MEMORY
  %loadMem_4291d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 1
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %4727 to i64*
  %4728 = load i64, i64* %PC.i383
  %4729 = add i64 %4728, 8
  store i64 %4729, i64* %PC.i383
  %4730 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4730, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_4291d7, %struct.Memory** %MEMORY
  %loadMem_4291df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 1
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4737, i64 0, i64 0
  %XMM0.i382 = bitcast %union.VectorReg* %4738 to %union.vec128_t*
  %4739 = load i64, i64* %RAX.i381
  %4740 = add i64 %4739, 71896
  %4741 = bitcast %union.vec128_t* %XMM0.i382 to i8*
  %4742 = load i64, i64* %PC.i380
  %4743 = add i64 %4742, 8
  store i64 %4743, i64* %PC.i380
  %4744 = bitcast i8* %4741 to double*
  %4745 = load double, double* %4744, align 1
  %4746 = inttoptr i64 %4740 to double*
  store double %4745, double* %4746
  store %struct.Memory* %loadMem_4291df, %struct.Memory** %MEMORY
  br label %block_.L_4291e7

block_.L_4291e7:                                  ; preds = %block_4291cf, %block_.L_429178
  %loadMem_4291e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 33
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 1
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4752 to i64*
  %4753 = load i64, i64* %PC.i378
  %4754 = add i64 %4753, 8
  store i64 %4754, i64* %PC.i378
  %4755 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4755, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_4291e7, %struct.Memory** %MEMORY
  %loadMem_4291ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 33
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 1
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %4761 to i64*
  %4762 = load i64, i64* %RAX.i377
  %4763 = add i64 %4762, 1320
  %4764 = load i64, i64* %PC.i376
  %4765 = add i64 %4764, 7
  store i64 %4765, i64* %PC.i376
  %4766 = inttoptr i64 %4763 to i32*
  %4767 = load i32, i32* %4766
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4768, align 1
  %4769 = and i32 %4767, 255
  %4770 = call i32 @llvm.ctpop.i32(i32 %4769)
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  %4773 = xor i8 %4772, 1
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4773, i8* %4774, align 1
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4775, align 1
  %4776 = icmp eq i32 %4767, 0
  %4777 = zext i1 %4776 to i8
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4777, i8* %4778, align 1
  %4779 = lshr i32 %4767, 31
  %4780 = trunc i32 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4780, i8* %4781, align 1
  %4782 = lshr i32 %4767, 31
  %4783 = xor i32 %4779, %4782
  %4784 = add i32 %4783, %4782
  %4785 = icmp eq i32 %4784, 2
  %4786 = zext i1 %4785 to i8
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4786, i8* %4787, align 1
  store %struct.Memory* %loadMem_4291ef, %struct.Memory** %MEMORY
  %loadMem_4291f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %PC.i375
  %4792 = add i64 %4791, 99
  %4793 = load i64, i64* %PC.i375
  %4794 = add i64 %4793, 6
  %4795 = load i64, i64* %PC.i375
  %4796 = add i64 %4795, 6
  store i64 %4796, i64* %PC.i375
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4798 = load i8, i8* %4797, align 1
  store i8 %4798, i8* %BRANCH_TAKEN, align 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4800 = icmp ne i8 %4798, 0
  %4801 = select i1 %4800, i64 %4792, i64 %4794
  store i64 %4801, i64* %4799, align 8
  store %struct.Memory* %loadMem_4291f6, %struct.Memory** %MEMORY
  %loadBr_4291f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4291f6 = icmp eq i8 %loadBr_4291f6, 1
  br i1 %cmpBr_4291f6, label %block_.L_429259, label %block_4291fc

block_4291fc:                                     ; preds = %block_.L_4291e7
  %loadMem_4291fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 1
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 15
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %4810 to i64*
  %4811 = load i64, i64* %RBP.i374
  %4812 = sub i64 %4811, 8
  %4813 = load i64, i64* %PC.i372
  %4814 = add i64 %4813, 3
  store i64 %4814, i64* %PC.i372
  %4815 = inttoptr i64 %4812 to i32*
  %4816 = load i32, i32* %4815
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_4291fc, %struct.Memory** %MEMORY
  %loadMem_4291ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 5
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %PC.i370
  %4825 = add i64 %4824, 8
  store i64 %4825, i64* %PC.i370
  %4826 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4826, i64* %RCX.i371, align 8
  store %struct.Memory* %loadMem_4291ff, %struct.Memory** %MEMORY
  %loadMem_429207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 33
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4829 to i64*
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 5
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4833, i64 0, i64 0
  %YMM0.i369 = bitcast %union.VectorReg* %4834 to %"class.std::bitset"*
  %4835 = bitcast %"class.std::bitset"* %YMM0.i369 to i8*
  %4836 = load i64, i64* %RCX.i368
  %4837 = add i64 %4836, 71896
  %4838 = load i64, i64* %PC.i367
  %4839 = add i64 %4838, 8
  store i64 %4839, i64* %PC.i367
  %4840 = inttoptr i64 %4837 to double*
  %4841 = load double, double* %4840
  %4842 = bitcast i8* %4835 to double*
  store double %4841, double* %4842, align 1
  %4843 = getelementptr inbounds i8, i8* %4835, i64 8
  %4844 = bitcast i8* %4843 to double*
  store double 0.000000e+00, double* %4844, align 1
  store %struct.Memory* %loadMem_429207, %struct.Memory** %MEMORY
  %loadMem_42920f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 5
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %PC.i365
  %4852 = add i64 %4851, 8
  store i64 %4852, i64* %PC.i365
  %4853 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %4853, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_42920f, %struct.Memory** %MEMORY
  %loadMem_429217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 33
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %4856 to i64*
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 7
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %4859 to i64*
  %4860 = load i64, i64* %PC.i363
  %4861 = add i64 %4860, 8
  store i64 %4861, i64* %PC.i363
  %4862 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4862, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_429217, %struct.Memory** %MEMORY
  %loadMem_42921f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 7
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RDX.i361 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 9
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RSI.i362 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RDX.i361
  %4873 = add i64 %4872, 71908
  %4874 = load i64, i64* %PC.i360
  %4875 = add i64 %4874, 6
  store i64 %4875, i64* %PC.i360
  %4876 = inttoptr i64 %4873 to i32*
  %4877 = load i32, i32* %4876
  %4878 = zext i32 %4877 to i64
  store i64 %4878, i64* %RSI.i362, align 8
  store %struct.Memory* %loadMem_42921f, %struct.Memory** %MEMORY
  %loadMem_429225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 33
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 9
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RSI.i359 = bitcast %union.anon* %4884 to i64*
  %4885 = load i64, i64* %RSI.i359
  %4886 = load i64, i64* %PC.i358
  %4887 = add i64 %4886, 3
  store i64 %4887, i64* %PC.i358
  %4888 = trunc i64 %4885 to i32
  %4889 = sub i32 %4888, 1
  %4890 = zext i32 %4889 to i64
  store i64 %4890, i64* %RSI.i359, align 8
  %4891 = icmp ult i32 %4888, 1
  %4892 = zext i1 %4891 to i8
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4892, i8* %4893, align 1
  %4894 = and i32 %4889, 255
  %4895 = call i32 @llvm.ctpop.i32(i32 %4894)
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = xor i8 %4897, 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4898, i8* %4899, align 1
  %4900 = xor i64 1, %4885
  %4901 = trunc i64 %4900 to i32
  %4902 = xor i32 %4901, %4889
  %4903 = lshr i32 %4902, 4
  %4904 = trunc i32 %4903 to i8
  %4905 = and i8 %4904, 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4905, i8* %4906, align 1
  %4907 = icmp eq i32 %4889, 0
  %4908 = zext i1 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4908, i8* %4909, align 1
  %4910 = lshr i32 %4889, 31
  %4911 = trunc i32 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4911, i8* %4912, align 1
  %4913 = lshr i32 %4888, 31
  %4914 = xor i32 %4910, %4913
  %4915 = add i32 %4914, %4913
  %4916 = icmp eq i32 %4915, 2
  %4917 = zext i1 %4916 to i8
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4917, i8* %4918, align 1
  store %struct.Memory* %loadMem_429225, %struct.Memory** %MEMORY
  %loadMem_429228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 9
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %ESI.i356 = bitcast %union.anon* %4924 to i32*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 7
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %4927 to i64*
  %4928 = load i32, i32* %ESI.i356
  %4929 = zext i32 %4928 to i64
  %4930 = load i64, i64* %PC.i355
  %4931 = add i64 %4930, 3
  store i64 %4931, i64* %PC.i355
  %4932 = shl i64 %4929, 32
  %4933 = ashr exact i64 %4932, 32
  store i64 %4933, i64* %RDX.i357, align 8
  store %struct.Memory* %loadMem_429228, %struct.Memory** %MEMORY
  %loadMem_42922b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 7
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %4939 to i64*
  %4940 = load i64, i64* %RDX.i354
  %4941 = load i64, i64* %PC.i353
  %4942 = add i64 %4941, 4
  store i64 %4942, i64* %PC.i353
  %4943 = sext i64 %4940 to i128
  %4944 = and i128 %4943, -18446744073709551616
  %4945 = zext i64 %4940 to i128
  %4946 = or i128 %4944, %4945
  %4947 = mul i128 24, %4946
  %4948 = trunc i128 %4947 to i64
  store i64 %4948, i64* %RDX.i354, align 8
  %4949 = sext i64 %4948 to i128
  %4950 = icmp ne i128 %4949, %4947
  %4951 = zext i1 %4950 to i8
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4951, i8* %4952, align 1
  %4953 = trunc i128 %4947 to i32
  %4954 = and i32 %4953, 255
  %4955 = call i32 @llvm.ctpop.i32(i32 %4954)
  %4956 = trunc i32 %4955 to i8
  %4957 = and i8 %4956, 1
  %4958 = xor i8 %4957, 1
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4958, i8* %4959, align 1
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4960, align 1
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4961, align 1
  %4962 = lshr i64 %4948, 63
  %4963 = trunc i64 %4962 to i8
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4963, i8* %4964, align 1
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4951, i8* %4965, align 1
  store %struct.Memory* %loadMem_42922b, %struct.Memory** %MEMORY
  %loadMem_42922f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 5
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 7
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RCX.i351
  %4976 = load i64, i64* %RDX.i352
  %4977 = load i64, i64* %PC.i350
  %4978 = add i64 %4977, 3
  store i64 %4978, i64* %PC.i350
  %4979 = add i64 %4976, %4975
  store i64 %4979, i64* %RCX.i351, align 8
  %4980 = icmp ult i64 %4979, %4975
  %4981 = icmp ult i64 %4979, %4976
  %4982 = or i1 %4980, %4981
  %4983 = zext i1 %4982 to i8
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4983, i8* %4984, align 1
  %4985 = trunc i64 %4979 to i32
  %4986 = and i32 %4985, 255
  %4987 = call i32 @llvm.ctpop.i32(i32 %4986)
  %4988 = trunc i32 %4987 to i8
  %4989 = and i8 %4988, 1
  %4990 = xor i8 %4989, 1
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4990, i8* %4991, align 1
  %4992 = xor i64 %4976, %4975
  %4993 = xor i64 %4992, %4979
  %4994 = lshr i64 %4993, 4
  %4995 = trunc i64 %4994 to i8
  %4996 = and i8 %4995, 1
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4996, i8* %4997, align 1
  %4998 = icmp eq i64 %4979, 0
  %4999 = zext i1 %4998 to i8
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4999, i8* %5000, align 1
  %5001 = lshr i64 %4979, 63
  %5002 = trunc i64 %5001 to i8
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5002, i8* %5003, align 1
  %5004 = lshr i64 %4975, 63
  %5005 = lshr i64 %4976, 63
  %5006 = xor i64 %5001, %5004
  %5007 = xor i64 %5001, %5005
  %5008 = add i64 %5006, %5007
  %5009 = icmp eq i64 %5008, 2
  %5010 = zext i1 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5010, i8* %5011, align 1
  store %struct.Memory* %loadMem_42922f, %struct.Memory** %MEMORY
  %loadMem_429232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 33
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 5
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 9
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RSI.i349 = bitcast %union.anon* %5020 to i64*
  %5021 = load i64, i64* %RCX.i348
  %5022 = add i64 %5021, 4
  %5023 = load i64, i64* %PC.i347
  %5024 = add i64 %5023, 3
  store i64 %5024, i64* %PC.i347
  %5025 = inttoptr i64 %5022 to i32*
  %5026 = load i32, i32* %5025
  %5027 = zext i32 %5026 to i64
  store i64 %5027, i64* %RSI.i349, align 8
  store %struct.Memory* %loadMem_429232, %struct.Memory** %MEMORY
  %loadMem_429235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 33
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 9
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %5033 to i64*
  %5034 = load i64, i64* %RSI.i346
  %5035 = load i64, i64* %PC.i345
  %5036 = add i64 %5035, 3
  store i64 %5036, i64* %PC.i345
  %5037 = trunc i64 %5034 to i32
  %5038 = add i32 1, %5037
  %5039 = zext i32 %5038 to i64
  store i64 %5039, i64* %RSI.i346, align 8
  %5040 = icmp ult i32 %5038, %5037
  %5041 = icmp ult i32 %5038, 1
  %5042 = or i1 %5040, %5041
  %5043 = zext i1 %5042 to i8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5043, i8* %5044, align 1
  %5045 = and i32 %5038, 255
  %5046 = call i32 @llvm.ctpop.i32(i32 %5045)
  %5047 = trunc i32 %5046 to i8
  %5048 = and i8 %5047, 1
  %5049 = xor i8 %5048, 1
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5049, i8* %5050, align 1
  %5051 = xor i64 1, %5034
  %5052 = trunc i64 %5051 to i32
  %5053 = xor i32 %5052, %5038
  %5054 = lshr i32 %5053, 4
  %5055 = trunc i32 %5054 to i8
  %5056 = and i8 %5055, 1
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5056, i8* %5057, align 1
  %5058 = icmp eq i32 %5038, 0
  %5059 = zext i1 %5058 to i8
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5059, i8* %5060, align 1
  %5061 = lshr i32 %5038, 31
  %5062 = trunc i32 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5062, i8* %5063, align 1
  %5064 = lshr i32 %5037, 31
  %5065 = xor i32 %5061, %5064
  %5066 = add i32 %5065, %5061
  %5067 = icmp eq i32 %5066, 2
  %5068 = zext i1 %5067 to i8
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5068, i8* %5069, align 1
  store %struct.Memory* %loadMem_429235, %struct.Memory** %MEMORY
  %loadMem_429238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 9
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %ESI.i343 = bitcast %union.anon* %5075 to i32*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5076, i64 0, i64 1
  %YMM1.i344 = bitcast %union.VectorReg* %5077 to %"class.std::bitset"*
  %5078 = bitcast %"class.std::bitset"* %YMM1.i344 to i8*
  %5079 = load i32, i32* %ESI.i343
  %5080 = zext i32 %5079 to i64
  %5081 = load i64, i64* %PC.i342
  %5082 = add i64 %5081, 4
  store i64 %5082, i64* %PC.i342
  %5083 = sitofp i32 %5079 to double
  %5084 = bitcast i8* %5078 to double*
  store double %5083, double* %5084, align 1
  store %struct.Memory* %loadMem_429238, %struct.Memory** %MEMORY
  %loadMem_42923c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 33
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5087 to i64*
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5088, i64 0, i64 0
  %YMM0.i340 = bitcast %union.VectorReg* %5089 to %"class.std::bitset"*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5090, i64 0, i64 1
  %XMM1.i341 = bitcast %union.VectorReg* %5091 to %union.vec128_t*
  %5092 = bitcast %"class.std::bitset"* %YMM0.i340 to i8*
  %5093 = bitcast %"class.std::bitset"* %YMM0.i340 to i8*
  %5094 = bitcast %union.vec128_t* %XMM1.i341 to i8*
  %5095 = load i64, i64* %PC.i339
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %PC.i339
  %5097 = bitcast i8* %5093 to double*
  %5098 = load double, double* %5097, align 1
  %5099 = getelementptr inbounds i8, i8* %5093, i64 8
  %5100 = bitcast i8* %5099 to i64*
  %5101 = load i64, i64* %5100, align 1
  %5102 = bitcast i8* %5094 to double*
  %5103 = load double, double* %5102, align 1
  %5104 = fmul double %5098, %5103
  %5105 = bitcast i8* %5092 to double*
  store double %5104, double* %5105, align 1
  %5106 = getelementptr inbounds i8, i8* %5092, i64 8
  %5107 = bitcast i8* %5106 to i64*
  store i64 %5101, i64* %5107, align 1
  store %struct.Memory* %loadMem_42923c, %struct.Memory** %MEMORY
  %loadMem_429240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 33
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5110 to i64*
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 9
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %RSI.i337 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5114, i64 0, i64 0
  %XMM0.i338 = bitcast %union.VectorReg* %5115 to %union.vec128_t*
  %5116 = bitcast %union.vec128_t* %XMM0.i338 to i8*
  %5117 = load i64, i64* %PC.i336
  %5118 = add i64 %5117, 4
  store i64 %5118, i64* %PC.i336
  %5119 = bitcast i8* %5116 to double*
  %5120 = load double, double* %5119, align 1
  %5121 = call double @llvm.trunc.f64(double %5120)
  %5122 = call double @llvm.fabs.f64(double %5121)
  %5123 = fcmp ogt double %5122, 0x41DFFFFFFFC00000
  %5124 = fptosi double %5121 to i32
  %5125 = zext i32 %5124 to i64
  %5126 = select i1 %5123, i64 2147483648, i64 %5125
  store i64 %5126, i64* %RSI.i337, align 8
  store %struct.Memory* %loadMem_429240, %struct.Memory** %MEMORY
  %loadMem_429244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 9
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5132 to i32*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 1
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %RAX.i335
  %5137 = load i32, i32* %ESI.i
  %5138 = zext i32 %5137 to i64
  %5139 = load i64, i64* %PC.i334
  %5140 = add i64 %5139, 2
  store i64 %5140, i64* %PC.i334
  %5141 = trunc i64 %5136 to i32
  %5142 = add i32 %5137, %5141
  %5143 = zext i32 %5142 to i64
  store i64 %5143, i64* %RAX.i335, align 8
  %5144 = icmp ult i32 %5142, %5141
  %5145 = icmp ult i32 %5142, %5137
  %5146 = or i1 %5144, %5145
  %5147 = zext i1 %5146 to i8
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5147, i8* %5148, align 1
  %5149 = and i32 %5142, 255
  %5150 = call i32 @llvm.ctpop.i32(i32 %5149)
  %5151 = trunc i32 %5150 to i8
  %5152 = and i8 %5151, 1
  %5153 = xor i8 %5152, 1
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5153, i8* %5154, align 1
  %5155 = xor i64 %5138, %5136
  %5156 = trunc i64 %5155 to i32
  %5157 = xor i32 %5156, %5142
  %5158 = lshr i32 %5157, 4
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5160, i8* %5161, align 1
  %5162 = icmp eq i32 %5142, 0
  %5163 = zext i1 %5162 to i8
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5163, i8* %5164, align 1
  %5165 = lshr i32 %5142, 31
  %5166 = trunc i32 %5165 to i8
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5166, i8* %5167, align 1
  %5168 = lshr i32 %5141, 31
  %5169 = lshr i32 %5137, 31
  %5170 = xor i32 %5165, %5168
  %5171 = xor i32 %5165, %5169
  %5172 = add i32 %5170, %5171
  %5173 = icmp eq i32 %5172, 2
  %5174 = zext i1 %5173 to i8
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5174, i8* %5175, align 1
  store %struct.Memory* %loadMem_429244, %struct.Memory** %MEMORY
  %loadMem_429246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 33
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 5
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %5181 to i64*
  %5182 = load i64, i64* %PC.i332
  %5183 = add i64 %5182, 8
  store i64 %5183, i64* %PC.i332
  %5184 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5184, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_429246, %struct.Memory** %MEMORY
  %loadMem_42924e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 1
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %5190 to i32*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 5
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5193 to i64*
  %5194 = load i64, i64* %RCX.i331
  %5195 = add i64 %5194, 71792
  %5196 = load i32, i32* %EAX.i330
  %5197 = zext i32 %5196 to i64
  %5198 = load i64, i64* %PC.i329
  %5199 = add i64 %5198, 6
  store i64 %5199, i64* %PC.i329
  %5200 = inttoptr i64 %5195 to i32*
  store i32 %5196, i32* %5200
  store %struct.Memory* %loadMem_42924e, %struct.Memory** %MEMORY
  %loadMem_429254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5203 to i64*
  %5204 = load i64, i64* %PC.i328
  %5205 = add i64 %5204, 64
  %5206 = load i64, i64* %PC.i328
  %5207 = add i64 %5206, 5
  store i64 %5207, i64* %PC.i328
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5205, i64* %5208, align 8
  store %struct.Memory* %loadMem_429254, %struct.Memory** %MEMORY
  br label %block_.L_429294

block_.L_429259:                                  ; preds = %block_.L_4291e7
  %loadMem_429259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 1
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 15
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %5217 to i64*
  %5218 = load i64, i64* %RBP.i327
  %5219 = sub i64 %5218, 8
  %5220 = load i64, i64* %PC.i325
  %5221 = add i64 %5220, 3
  store i64 %5221, i64* %PC.i325
  %5222 = inttoptr i64 %5219 to i32*
  %5223 = load i32, i32* %5222
  %5224 = zext i32 %5223 to i64
  store i64 %5224, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_429259, %struct.Memory** %MEMORY
  %loadMem_42925c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 33
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 5
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %5230 to i64*
  %5231 = load i64, i64* %PC.i323
  %5232 = add i64 %5231, 8
  store i64 %5232, i64* %PC.i323
  %5233 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5233, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_42925c, %struct.Memory** %MEMORY
  %loadMem_429264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 33
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5236 to i64*
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 5
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5240, i64 0, i64 0
  %YMM0.i322 = bitcast %union.VectorReg* %5241 to %"class.std::bitset"*
  %5242 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %5243 = load i64, i64* %RCX.i321
  %5244 = add i64 %5243, 71896
  %5245 = load i64, i64* %PC.i320
  %5246 = add i64 %5245, 8
  store i64 %5246, i64* %PC.i320
  %5247 = inttoptr i64 %5244 to double*
  %5248 = load double, double* %5247
  %5249 = bitcast i8* %5242 to double*
  store double %5248, double* %5249, align 1
  %5250 = getelementptr inbounds i8, i8* %5242, i64 8
  %5251 = bitcast i8* %5250 to double*
  store double 0.000000e+00, double* %5251, align 1
  store %struct.Memory* %loadMem_429264, %struct.Memory** %MEMORY
  %loadMem_42926c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 33
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 5
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %5257 to i64*
  %5258 = load i64, i64* %PC.i318
  %5259 = add i64 %5258, 8
  store i64 %5259, i64* %PC.i318
  %5260 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5260, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_42926c, %struct.Memory** %MEMORY
  %loadMem_429274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 33
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5263 to i64*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 5
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5267, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5268 to %"class.std::bitset"*
  %5269 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5270 = load i64, i64* %RCX.i317
  %5271 = add i64 %5270, 71908
  %5272 = load i64, i64* %PC.i316
  %5273 = add i64 %5272, 8
  store i64 %5273, i64* %PC.i316
  %5274 = inttoptr i64 %5271 to i32*
  %5275 = load i32, i32* %5274
  %5276 = sitofp i32 %5275 to double
  %5277 = bitcast i8* %5269 to double*
  store double %5276, double* %5277, align 1
  store %struct.Memory* %loadMem_429274, %struct.Memory** %MEMORY
  %loadMem_42927c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 33
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5280 to i64*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5281, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5282 to %"class.std::bitset"*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5283, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5284 to %union.vec128_t*
  %5285 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5286 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5287 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5288 = load i64, i64* %PC.i315
  %5289 = add i64 %5288, 4
  store i64 %5289, i64* %PC.i315
  %5290 = bitcast i8* %5286 to double*
  %5291 = load double, double* %5290, align 1
  %5292 = getelementptr inbounds i8, i8* %5286, i64 8
  %5293 = bitcast i8* %5292 to i64*
  %5294 = load i64, i64* %5293, align 1
  %5295 = bitcast i8* %5287 to double*
  %5296 = load double, double* %5295, align 1
  %5297 = fmul double %5291, %5296
  %5298 = bitcast i8* %5285 to double*
  store double %5297, double* %5298, align 1
  %5299 = getelementptr inbounds i8, i8* %5285, i64 8
  %5300 = bitcast i8* %5299 to i64*
  store i64 %5294, i64* %5300, align 1
  store %struct.Memory* %loadMem_42927c, %struct.Memory** %MEMORY
  %loadMem_429280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 33
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 7
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5307, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5308 to %union.vec128_t*
  %5309 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5310 = load i64, i64* %PC.i313
  %5311 = add i64 %5310, 4
  store i64 %5311, i64* %PC.i313
  %5312 = bitcast i8* %5309 to double*
  %5313 = load double, double* %5312, align 1
  %5314 = call double @llvm.trunc.f64(double %5313)
  %5315 = call double @llvm.fabs.f64(double %5314)
  %5316 = fcmp ogt double %5315, 0x41DFFFFFFFC00000
  %5317 = fptosi double %5314 to i32
  %5318 = zext i32 %5317 to i64
  %5319 = select i1 %5316, i64 2147483648, i64 %5318
  store i64 %5319, i64* %RDX.i314, align 8
  store %struct.Memory* %loadMem_429280, %struct.Memory** %MEMORY
  %loadMem_429284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 7
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %EDX.i311 = bitcast %union.anon* %5325 to i32*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 1
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RAX.i312
  %5330 = load i32, i32* %EDX.i311
  %5331 = zext i32 %5330 to i64
  %5332 = load i64, i64* %PC.i310
  %5333 = add i64 %5332, 2
  store i64 %5333, i64* %PC.i310
  %5334 = trunc i64 %5329 to i32
  %5335 = add i32 %5330, %5334
  %5336 = zext i32 %5335 to i64
  store i64 %5336, i64* %RAX.i312, align 8
  %5337 = icmp ult i32 %5335, %5334
  %5338 = icmp ult i32 %5335, %5330
  %5339 = or i1 %5337, %5338
  %5340 = zext i1 %5339 to i8
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5340, i8* %5341, align 1
  %5342 = and i32 %5335, 255
  %5343 = call i32 @llvm.ctpop.i32(i32 %5342)
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  %5346 = xor i8 %5345, 1
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5346, i8* %5347, align 1
  %5348 = xor i64 %5331, %5329
  %5349 = trunc i64 %5348 to i32
  %5350 = xor i32 %5349, %5335
  %5351 = lshr i32 %5350, 4
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5353, i8* %5354, align 1
  %5355 = icmp eq i32 %5335, 0
  %5356 = zext i1 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5356, i8* %5357, align 1
  %5358 = lshr i32 %5335, 31
  %5359 = trunc i32 %5358 to i8
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5359, i8* %5360, align 1
  %5361 = lshr i32 %5334, 31
  %5362 = lshr i32 %5330, 31
  %5363 = xor i32 %5358, %5361
  %5364 = xor i32 %5358, %5362
  %5365 = add i32 %5363, %5364
  %5366 = icmp eq i32 %5365, 2
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5367, i8* %5368, align 1
  store %struct.Memory* %loadMem_429284, %struct.Memory** %MEMORY
  %loadMem_429286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5371 to i64*
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 5
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %5374 to i64*
  %5375 = load i64, i64* %PC.i308
  %5376 = add i64 %5375, 8
  store i64 %5376, i64* %PC.i308
  %5377 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5377, i64* %RCX.i309, align 8
  store %struct.Memory* %loadMem_429286, %struct.Memory** %MEMORY
  %loadMem_42928e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %5383 to i32*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 5
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RCX.i307
  %5388 = add i64 %5387, 71792
  %5389 = load i32, i32* %EAX.i306
  %5390 = zext i32 %5389 to i64
  %5391 = load i64, i64* %PC.i305
  %5392 = add i64 %5391, 6
  store i64 %5392, i64* %PC.i305
  %5393 = inttoptr i64 %5388 to i32*
  store i32 %5389, i32* %5393
  store %struct.Memory* %loadMem_42928e, %struct.Memory** %MEMORY
  br label %block_.L_429294

block_.L_429294:                                  ; preds = %block_.L_429259, %block_4291fc
  %loadMem_429294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 33
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 1
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %5399 to i64*
  %5400 = load i64, i64* %PC.i303
  %5401 = add i64 %5400, 8
  store i64 %5401, i64* %PC.i303
  %5402 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5402, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_429294, %struct.Memory** %MEMORY
  %loadMem_42929c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 1
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %5408 to i64*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 5
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %5411 to i64*
  %5412 = load i64, i64* %RAX.i301
  %5413 = add i64 %5412, 71792
  %5414 = load i64, i64* %PC.i300
  %5415 = add i64 %5414, 6
  store i64 %5415, i64* %PC.i300
  %5416 = inttoptr i64 %5413 to i32*
  %5417 = load i32, i32* %5416
  %5418 = zext i32 %5417 to i64
  store i64 %5418, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_42929c, %struct.Memory** %MEMORY
  %loadMem_4292a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 33
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5421 to i64*
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 5
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %ECX.i298 = bitcast %union.anon* %5424 to i32*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 15
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5427 to i64*
  %5428 = load i32, i32* %ECX.i298
  %5429 = zext i32 %5428 to i64
  %5430 = load i64, i64* %RBP.i299
  %5431 = sub i64 %5430, 12
  %5432 = load i64, i64* %PC.i297
  %5433 = add i64 %5432, 3
  store i64 %5433, i64* %PC.i297
  %5434 = inttoptr i64 %5431 to i32*
  %5435 = load i32, i32* %5434
  %5436 = sub i32 %5428, %5435
  %5437 = icmp ult i32 %5428, %5435
  %5438 = zext i1 %5437 to i8
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5438, i8* %5439, align 1
  %5440 = and i32 %5436, 255
  %5441 = call i32 @llvm.ctpop.i32(i32 %5440)
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  %5444 = xor i8 %5443, 1
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5444, i8* %5445, align 1
  %5446 = xor i32 %5435, %5428
  %5447 = xor i32 %5446, %5436
  %5448 = lshr i32 %5447, 4
  %5449 = trunc i32 %5448 to i8
  %5450 = and i8 %5449, 1
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5450, i8* %5451, align 1
  %5452 = icmp eq i32 %5436, 0
  %5453 = zext i1 %5452 to i8
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5453, i8* %5454, align 1
  %5455 = lshr i32 %5436, 31
  %5456 = trunc i32 %5455 to i8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5456, i8* %5457, align 1
  %5458 = lshr i32 %5428, 31
  %5459 = lshr i32 %5435, 31
  %5460 = xor i32 %5459, %5458
  %5461 = xor i32 %5455, %5458
  %5462 = add i32 %5461, %5460
  %5463 = icmp eq i32 %5462, 2
  %5464 = zext i1 %5463 to i8
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5464, i8* %5465, align 1
  store %struct.Memory* %loadMem_4292a2, %struct.Memory** %MEMORY
  %loadMem_4292a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %PC.i296
  %5470 = add i64 %5469, 26
  %5471 = load i64, i64* %PC.i296
  %5472 = add i64 %5471, 6
  %5473 = load i64, i64* %PC.i296
  %5474 = add i64 %5473, 6
  store i64 %5474, i64* %PC.i296
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5476 = load i8, i8* %5475, align 1
  %5477 = icmp ne i8 %5476, 0
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5479 = load i8, i8* %5478, align 1
  %5480 = icmp ne i8 %5479, 0
  %5481 = xor i1 %5477, %5480
  %5482 = zext i1 %5481 to i8
  store i8 %5482, i8* %BRANCH_TAKEN, align 1
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5484 = select i1 %5481, i64 %5470, i64 %5472
  store i64 %5484, i64* %5483, align 8
  store %struct.Memory* %loadMem_4292a5, %struct.Memory** %MEMORY
  %loadBr_4292a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4292a5 = icmp eq i8 %loadBr_4292a5, 1
  br i1 %cmpBr_4292a5, label %block_.L_4292bf, label %block_4292ab

block_4292ab:                                     ; preds = %block_.L_429294
  %loadMem_4292ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 1
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 15
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %5493 to i64*
  %5494 = load i64, i64* %RBP.i295
  %5495 = sub i64 %5494, 12
  %5496 = load i64, i64* %PC.i293
  %5497 = add i64 %5496, 3
  store i64 %5497, i64* %PC.i293
  %5498 = inttoptr i64 %5495 to i32*
  %5499 = load i32, i32* %5498
  %5500 = zext i32 %5499 to i64
  store i64 %5500, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_4292ab, %struct.Memory** %MEMORY
  %loadMem_4292ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 33
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5503 to i64*
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 1
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %5506 to i64*
  %5507 = load i64, i64* %RAX.i292
  %5508 = load i64, i64* %PC.i291
  %5509 = add i64 %5508, 3
  store i64 %5509, i64* %PC.i291
  %5510 = trunc i64 %5507 to i32
  %5511 = sub i32 %5510, 1
  %5512 = zext i32 %5511 to i64
  store i64 %5512, i64* %RAX.i292, align 8
  %5513 = icmp ult i32 %5510, 1
  %5514 = zext i1 %5513 to i8
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5514, i8* %5515, align 1
  %5516 = and i32 %5511, 255
  %5517 = call i32 @llvm.ctpop.i32(i32 %5516)
  %5518 = trunc i32 %5517 to i8
  %5519 = and i8 %5518, 1
  %5520 = xor i8 %5519, 1
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5520, i8* %5521, align 1
  %5522 = xor i64 1, %5507
  %5523 = trunc i64 %5522 to i32
  %5524 = xor i32 %5523, %5511
  %5525 = lshr i32 %5524, 4
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5527, i8* %5528, align 1
  %5529 = icmp eq i32 %5511, 0
  %5530 = zext i1 %5529 to i8
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5530, i8* %5531, align 1
  %5532 = lshr i32 %5511, 31
  %5533 = trunc i32 %5532 to i8
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5533, i8* %5534, align 1
  %5535 = lshr i32 %5510, 31
  %5536 = xor i32 %5532, %5535
  %5537 = add i32 %5536, %5535
  %5538 = icmp eq i32 %5537, 2
  %5539 = zext i1 %5538 to i8
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5539, i8* %5540, align 1
  store %struct.Memory* %loadMem_4292ae, %struct.Memory** %MEMORY
  %loadMem_4292b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 5
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %PC.i289
  %5548 = add i64 %5547, 8
  store i64 %5548, i64* %PC.i289
  %5549 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5549, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_4292b1, %struct.Memory** %MEMORY
  %loadMem_4292b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 33
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5552 to i64*
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 1
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %5555 to i32*
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 5
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %5558 to i64*
  %5559 = load i64, i64* %RCX.i288
  %5560 = add i64 %5559, 71792
  %5561 = load i32, i32* %EAX.i287
  %5562 = zext i32 %5561 to i64
  %5563 = load i64, i64* %PC.i286
  %5564 = add i64 %5563, 6
  store i64 %5564, i64* %PC.i286
  %5565 = inttoptr i64 %5560 to i32*
  store i32 %5561, i32* %5565
  store %struct.Memory* %loadMem_4292b9, %struct.Memory** %MEMORY
  br label %block_.L_4292bf

block_.L_4292bf:                                  ; preds = %block_4292ab, %block_.L_429294
  %loadMem_4292bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 1
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %5571 to i64*
  %5572 = load i64, i64* %PC.i284
  %5573 = add i64 %5572, 8
  store i64 %5573, i64* %PC.i284
  %5574 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5574, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_4292bf, %struct.Memory** %MEMORY
  %loadMem_4292c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 33
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5577 to i64*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 1
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %5580 to i64*
  %5581 = load i64, i64* %RAX.i283
  %5582 = add i64 %5581, 3236
  %5583 = load i64, i64* %PC.i282
  %5584 = add i64 %5583, 7
  store i64 %5584, i64* %PC.i282
  %5585 = inttoptr i64 %5582 to i32*
  %5586 = load i32, i32* %5585
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5587, align 1
  %5588 = and i32 %5586, 255
  %5589 = call i32 @llvm.ctpop.i32(i32 %5588)
  %5590 = trunc i32 %5589 to i8
  %5591 = and i8 %5590, 1
  %5592 = xor i8 %5591, 1
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5592, i8* %5593, align 1
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5594, align 1
  %5595 = icmp eq i32 %5586, 0
  %5596 = zext i1 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5596, i8* %5597, align 1
  %5598 = lshr i32 %5586, 31
  %5599 = trunc i32 %5598 to i8
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5599, i8* %5600, align 1
  %5601 = lshr i32 %5586, 31
  %5602 = xor i32 %5598, %5601
  %5603 = add i32 %5602, %5601
  %5604 = icmp eq i32 %5603, 2
  %5605 = zext i1 %5604 to i8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5605, i8* %5606, align 1
  store %struct.Memory* %loadMem_4292c7, %struct.Memory** %MEMORY
  %loadMem_4292ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5609 to i64*
  %5610 = load i64, i64* %PC.i281
  %5611 = add i64 %5610, 524
  %5612 = load i64, i64* %PC.i281
  %5613 = add i64 %5612, 6
  %5614 = load i64, i64* %PC.i281
  %5615 = add i64 %5614, 6
  store i64 %5615, i64* %PC.i281
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5617 = load i8, i8* %5616, align 1
  %5618 = icmp eq i8 %5617, 0
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %BRANCH_TAKEN, align 1
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5621 = select i1 %5618, i64 %5611, i64 %5613
  store i64 %5621, i64* %5620, align 8
  store %struct.Memory* %loadMem_4292ce, %struct.Memory** %MEMORY
  %loadBr_4292ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4292ce = icmp eq i8 %loadBr_4292ce, 1
  br i1 %cmpBr_4292ce, label %block_.L_4294da, label %block_4292d4

block_4292d4:                                     ; preds = %block_.L_4292bf
  %loadMem_4292d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 33
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5624 to i64*
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 1
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %PC.i279
  %5629 = add i64 %5628, 8
  store i64 %5629, i64* %PC.i279
  %5630 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5630, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_4292d4, %struct.Memory** %MEMORY
  %loadMem_4292dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5632 = getelementptr inbounds %struct.GPR, %struct.GPR* %5631, i32 0, i32 33
  %5633 = getelementptr inbounds %struct.Reg, %struct.Reg* %5632, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5633 to i64*
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5635 = getelementptr inbounds %struct.GPR, %struct.GPR* %5634, i32 0, i32 1
  %5636 = getelementptr inbounds %struct.Reg, %struct.Reg* %5635, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %5636 to i64*
  %5637 = load i64, i64* %RAX.i278
  %5638 = add i64 %5637, 1320
  %5639 = load i64, i64* %PC.i277
  %5640 = add i64 %5639, 7
  store i64 %5640, i64* %PC.i277
  %5641 = inttoptr i64 %5638 to i32*
  %5642 = load i32, i32* %5641
  %5643 = sub i32 %5642, 3
  %5644 = icmp ult i32 %5642, 3
  %5645 = zext i1 %5644 to i8
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5645, i8* %5646, align 1
  %5647 = and i32 %5643, 255
  %5648 = call i32 @llvm.ctpop.i32(i32 %5647)
  %5649 = trunc i32 %5648 to i8
  %5650 = and i8 %5649, 1
  %5651 = xor i8 %5650, 1
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5651, i8* %5652, align 1
  %5653 = xor i32 %5642, 3
  %5654 = xor i32 %5653, %5643
  %5655 = lshr i32 %5654, 4
  %5656 = trunc i32 %5655 to i8
  %5657 = and i8 %5656, 1
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5657, i8* %5658, align 1
  %5659 = icmp eq i32 %5643, 0
  %5660 = zext i1 %5659 to i8
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5660, i8* %5661, align 1
  %5662 = lshr i32 %5643, 31
  %5663 = trunc i32 %5662 to i8
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5663, i8* %5664, align 1
  %5665 = lshr i32 %5642, 31
  %5666 = xor i32 %5662, %5665
  %5667 = add i32 %5666, %5665
  %5668 = icmp eq i32 %5667, 2
  %5669 = zext i1 %5668 to i8
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5669, i8* %5670, align 1
  store %struct.Memory* %loadMem_4292dc, %struct.Memory** %MEMORY
  %loadMem_4292e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5673 to i64*
  %5674 = load i64, i64* %PC.i276
  %5675 = add i64 %5674, 503
  %5676 = load i64, i64* %PC.i276
  %5677 = add i64 %5676, 6
  %5678 = load i64, i64* %PC.i276
  %5679 = add i64 %5678, 6
  store i64 %5679, i64* %PC.i276
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5681 = load i8, i8* %5680, align 1
  store i8 %5681, i8* %BRANCH_TAKEN, align 1
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5683 = icmp ne i8 %5681, 0
  %5684 = select i1 %5683, i64 %5675, i64 %5677
  store i64 %5684, i64* %5682, align 8
  store %struct.Memory* %loadMem_4292e3, %struct.Memory** %MEMORY
  %loadBr_4292e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4292e3 = icmp eq i8 %loadBr_4292e3, 1
  br i1 %cmpBr_4292e3, label %block_.L_4294da, label %block_4292e9

block_4292e9:                                     ; preds = %block_4292d4
  %loadMem_4292e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 33
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 1
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5690 to i64*
  %5691 = load i64, i64* %PC.i274
  %5692 = add i64 %5691, 8
  store i64 %5692, i64* %PC.i274
  %5693 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5693, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_4292e9, %struct.Memory** %MEMORY
  %loadMem_4292f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 33
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5696 to i64*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 1
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5699 to i64*
  %5700 = load i64, i64* %RAX.i273
  %5701 = add i64 %5700, 2452
  %5702 = load i64, i64* %PC.i272
  %5703 = add i64 %5702, 7
  store i64 %5703, i64* %PC.i272
  %5704 = inttoptr i64 %5701 to i32*
  %5705 = load i32, i32* %5704
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5706, align 1
  %5707 = and i32 %5705, 255
  %5708 = call i32 @llvm.ctpop.i32(i32 %5707)
  %5709 = trunc i32 %5708 to i8
  %5710 = and i8 %5709, 1
  %5711 = xor i8 %5710, 1
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5711, i8* %5712, align 1
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5713, align 1
  %5714 = icmp eq i32 %5705, 0
  %5715 = zext i1 %5714 to i8
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5715, i8* %5716, align 1
  %5717 = lshr i32 %5705, 31
  %5718 = trunc i32 %5717 to i8
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5718, i8* %5719, align 1
  %5720 = lshr i32 %5705, 31
  %5721 = xor i32 %5717, %5720
  %5722 = add i32 %5721, %5720
  %5723 = icmp eq i32 %5722, 2
  %5724 = zext i1 %5723 to i8
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5724, i8* %5725, align 1
  store %struct.Memory* %loadMem_4292f1, %struct.Memory** %MEMORY
  %loadMem_4292f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 33
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %PC.i271
  %5730 = add i64 %5729, 70
  %5731 = load i64, i64* %PC.i271
  %5732 = add i64 %5731, 6
  %5733 = load i64, i64* %PC.i271
  %5734 = add i64 %5733, 6
  store i64 %5734, i64* %PC.i271
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5736 = load i8, i8* %5735, align 1
  %5737 = icmp ne i8 %5736, 0
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5739 = load i8, i8* %5738, align 1
  %5740 = icmp ne i8 %5739, 0
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5742 = load i8, i8* %5741, align 1
  %5743 = icmp ne i8 %5742, 0
  %5744 = xor i1 %5740, %5743
  %5745 = or i1 %5737, %5744
  %5746 = zext i1 %5745 to i8
  store i8 %5746, i8* %BRANCH_TAKEN, align 1
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5748 = select i1 %5745, i64 %5730, i64 %5732
  store i64 %5748, i64* %5747, align 8
  store %struct.Memory* %loadMem_4292f8, %struct.Memory** %MEMORY
  %loadBr_4292f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4292f8 = icmp eq i8 %loadBr_4292f8, 1
  br i1 %cmpBr_4292f8, label %block_.L_42933e, label %block_4292fe

block_4292fe:                                     ; preds = %block_4292e9
  %loadMem_4292fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5751 to i64*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 1
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %5754 to i64*
  %5755 = load i64, i64* %PC.i269
  %5756 = add i64 %5755, 8
  store i64 %5756, i64* %PC.i269
  %5757 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5757, i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_4292fe, %struct.Memory** %MEMORY
  %loadMem_429306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 1
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 5
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5766 to i64*
  %5767 = load i64, i64* %RAX.i267
  %5768 = add i64 %5767, 71792
  %5769 = load i64, i64* %PC.i266
  %5770 = add i64 %5769, 6
  store i64 %5770, i64* %PC.i266
  %5771 = inttoptr i64 %5768 to i32*
  %5772 = load i32, i32* %5771
  %5773 = zext i32 %5772 to i64
  store i64 %5773, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_429306, %struct.Memory** %MEMORY
  %loadMem_42930c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 33
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5776 to i64*
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 1
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %5779 to i64*
  %5780 = load i64, i64* %PC.i264
  %5781 = add i64 %5780, 8
  store i64 %5781, i64* %PC.i264
  %5782 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5782, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_42930c, %struct.Memory** %MEMORY
  %loadMem_429314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 5
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %ECX.i262 = bitcast %union.anon* %5788 to i32*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 1
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %5791 to i64*
  %5792 = load i32, i32* %ECX.i262
  %5793 = zext i32 %5792 to i64
  %5794 = load i64, i64* %RAX.i263
  %5795 = add i64 %5794, 2452
  %5796 = load i64, i64* %PC.i261
  %5797 = add i64 %5796, 6
  store i64 %5797, i64* %PC.i261
  %5798 = inttoptr i64 %5795 to i32*
  %5799 = load i32, i32* %5798
  %5800 = sub i32 %5792, %5799
  %5801 = icmp ult i32 %5792, %5799
  %5802 = zext i1 %5801 to i8
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5802, i8* %5803, align 1
  %5804 = and i32 %5800, 255
  %5805 = call i32 @llvm.ctpop.i32(i32 %5804)
  %5806 = trunc i32 %5805 to i8
  %5807 = and i8 %5806, 1
  %5808 = xor i8 %5807, 1
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5808, i8* %5809, align 1
  %5810 = xor i32 %5799, %5792
  %5811 = xor i32 %5810, %5800
  %5812 = lshr i32 %5811, 4
  %5813 = trunc i32 %5812 to i8
  %5814 = and i8 %5813, 1
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5814, i8* %5815, align 1
  %5816 = icmp eq i32 %5800, 0
  %5817 = zext i1 %5816 to i8
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5817, i8* %5818, align 1
  %5819 = lshr i32 %5800, 31
  %5820 = trunc i32 %5819 to i8
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5820, i8* %5821, align 1
  %5822 = lshr i32 %5792, 31
  %5823 = lshr i32 %5799, 31
  %5824 = xor i32 %5823, %5822
  %5825 = xor i32 %5819, %5822
  %5826 = add i32 %5825, %5824
  %5827 = icmp eq i32 %5826, 2
  %5828 = zext i1 %5827 to i8
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5828, i8* %5829, align 1
  store %struct.Memory* %loadMem_429314, %struct.Memory** %MEMORY
  %loadMem_42931a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 33
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5832 to i64*
  %5833 = load i64, i64* %PC.i260
  %5834 = add i64 %5833, 36
  %5835 = load i64, i64* %PC.i260
  %5836 = add i64 %5835, 6
  %5837 = load i64, i64* %PC.i260
  %5838 = add i64 %5837, 6
  store i64 %5838, i64* %PC.i260
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5840 = load i8, i8* %5839, align 1
  %5841 = icmp ne i8 %5840, 0
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5843 = load i8, i8* %5842, align 1
  %5844 = icmp ne i8 %5843, 0
  %5845 = xor i1 %5841, %5844
  %5846 = zext i1 %5845 to i8
  store i8 %5846, i8* %BRANCH_TAKEN, align 1
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5848 = select i1 %5845, i64 %5834, i64 %5836
  store i64 %5848, i64* %5847, align 8
  store %struct.Memory* %loadMem_42931a, %struct.Memory** %MEMORY
  %loadBr_42931a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42931a = icmp eq i8 %loadBr_42931a, 1
  br i1 %cmpBr_42931a, label %block_.L_42933e, label %block_429320

block_429320:                                     ; preds = %block_4292fe
  %loadMem_429320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 33
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 1
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5854 to i64*
  %5855 = load i64, i64* %PC.i258
  %5856 = add i64 %5855, 8
  store i64 %5856, i64* %PC.i258
  %5857 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5857, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_429320, %struct.Memory** %MEMORY
  %loadMem_429328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 33
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5860 to i64*
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 1
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %5863 to i64*
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5865 = getelementptr inbounds %struct.GPR, %struct.GPR* %5864, i32 0, i32 5
  %5866 = getelementptr inbounds %struct.Reg, %struct.Reg* %5865, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %5866 to i64*
  %5867 = load i64, i64* %RAX.i256
  %5868 = add i64 %5867, 2448
  %5869 = load i64, i64* %PC.i255
  %5870 = add i64 %5869, 6
  store i64 %5870, i64* %PC.i255
  %5871 = inttoptr i64 %5868 to i32*
  %5872 = load i32, i32* %5871
  %5873 = zext i32 %5872 to i64
  store i64 %5873, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_429328, %struct.Memory** %MEMORY
  %loadMem_42932e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 1
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %PC.i253
  %5881 = add i64 %5880, 8
  store i64 %5881, i64* %PC.i253
  %5882 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5882, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_42932e, %struct.Memory** %MEMORY
  %loadMem_429336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 5
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %5888 to i32*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 1
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %5891 to i64*
  %5892 = load i64, i64* %RAX.i252
  %5893 = add i64 %5892, 40
  %5894 = load i32, i32* %ECX.i251
  %5895 = zext i32 %5894 to i64
  %5896 = load i64, i64* %PC.i250
  %5897 = add i64 %5896, 3
  store i64 %5897, i64* %PC.i250
  %5898 = inttoptr i64 %5893 to i32*
  store i32 %5894, i32* %5898
  store %struct.Memory* %loadMem_429336, %struct.Memory** %MEMORY
  %loadMem_429339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 33
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5901 to i64*
  %5902 = load i64, i64* %PC.i249
  %5903 = add i64 %5902, 30
  %5904 = load i64, i64* %PC.i249
  %5905 = add i64 %5904, 5
  store i64 %5905, i64* %PC.i249
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5903, i64* %5906, align 8
  store %struct.Memory* %loadMem_429339, %struct.Memory** %MEMORY
  br label %block_.L_429357

block_.L_42933e:                                  ; preds = %block_4292fe, %block_4292e9
  %loadMem_42933e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 33
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 1
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %PC.i247
  %5914 = add i64 %5913, 8
  store i64 %5914, i64* %PC.i247
  %5915 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5915, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_42933e, %struct.Memory** %MEMORY
  %loadMem_429346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 33
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5918 to i64*
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5920 = getelementptr inbounds %struct.GPR, %struct.GPR* %5919, i32 0, i32 1
  %5921 = getelementptr inbounds %struct.Reg, %struct.Reg* %5920, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %5921 to i64*
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5923 = getelementptr inbounds %struct.GPR, %struct.GPR* %5922, i32 0, i32 5
  %5924 = getelementptr inbounds %struct.Reg, %struct.Reg* %5923, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %5924 to i64*
  %5925 = load i64, i64* %RAX.i245
  %5926 = add i64 %5925, 1240
  %5927 = load i64, i64* %PC.i244
  %5928 = add i64 %5927, 6
  store i64 %5928, i64* %PC.i244
  %5929 = inttoptr i64 %5926 to i32*
  %5930 = load i32, i32* %5929
  %5931 = zext i32 %5930 to i64
  store i64 %5931, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_429346, %struct.Memory** %MEMORY
  %loadMem_42934c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 1
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %5937 to i64*
  %5938 = load i64, i64* %PC.i242
  %5939 = add i64 %5938, 8
  store i64 %5939, i64* %PC.i242
  %5940 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5940, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_42934c, %struct.Memory** %MEMORY
  %loadMem_429354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5943 to i64*
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 5
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %ECX.i240 = bitcast %union.anon* %5946 to i32*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 1
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %RAX.i241
  %5951 = add i64 %5950, 40
  %5952 = load i32, i32* %ECX.i240
  %5953 = zext i32 %5952 to i64
  %5954 = load i64, i64* %PC.i239
  %5955 = add i64 %5954, 3
  store i64 %5955, i64* %PC.i239
  %5956 = inttoptr i64 %5951 to i32*
  store i32 %5952, i32* %5956
  store %struct.Memory* %loadMem_429354, %struct.Memory** %MEMORY
  br label %block_.L_429357

block_.L_429357:                                  ; preds = %block_.L_42933e, %block_429320
  %loadMem_429357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 33
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5959 to i64*
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 1
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5962 to i64*
  %5963 = load i64, i64* %PC.i237
  %5964 = add i64 %5963, 8
  store i64 %5964, i64* %PC.i237
  %5965 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5965, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_429357, %struct.Memory** %MEMORY
  %loadMem_42935f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 33
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5968 to i64*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 1
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RAX.i236
  %5973 = add i64 %5972, 72496
  %5974 = load i64, i64* %PC.i235
  %5975 = add i64 %5974, 7
  store i64 %5975, i64* %PC.i235
  %5976 = inttoptr i64 %5973 to i32*
  %5977 = load i32, i32* %5976
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5978, align 1
  %5979 = and i32 %5977, 255
  %5980 = call i32 @llvm.ctpop.i32(i32 %5979)
  %5981 = trunc i32 %5980 to i8
  %5982 = and i8 %5981, 1
  %5983 = xor i8 %5982, 1
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5983, i8* %5984, align 1
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5985, align 1
  %5986 = icmp eq i32 %5977, 0
  %5987 = zext i1 %5986 to i8
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5987, i8* %5988, align 1
  %5989 = lshr i32 %5977, 31
  %5990 = trunc i32 %5989 to i8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5990, i8* %5991, align 1
  %5992 = lshr i32 %5977, 31
  %5993 = xor i32 %5989, %5992
  %5994 = add i32 %5993, %5992
  %5995 = icmp eq i32 %5994, 2
  %5996 = zext i1 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5996, i8* %5997, align 1
  store %struct.Memory* %loadMem_42935f, %struct.Memory** %MEMORY
  %loadMem_429366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 33
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6000 to i64*
  %6001 = load i64, i64* %PC.i234
  %6002 = add i64 %6001, 367
  %6003 = load i64, i64* %PC.i234
  %6004 = add i64 %6003, 6
  %6005 = load i64, i64* %PC.i234
  %6006 = add i64 %6005, 6
  store i64 %6006, i64* %PC.i234
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6008 = load i8, i8* %6007, align 1
  store i8 %6008, i8* %BRANCH_TAKEN, align 1
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6010 = icmp ne i8 %6008, 0
  %6011 = select i1 %6010, i64 %6002, i64 %6004
  store i64 %6011, i64* %6009, align 8
  store %struct.Memory* %loadMem_429366, %struct.Memory** %MEMORY
  %loadBr_429366 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429366 = icmp eq i8 %loadBr_429366, 1
  br i1 %cmpBr_429366, label %block_.L_4294d5, label %block_42936c

block_42936c:                                     ; preds = %block_.L_429357
  %loadMem_42936c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 33
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 1
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %6017 to i64*
  %6018 = load i64, i64* %PC.i232
  %6019 = add i64 %6018, 8
  store i64 %6019, i64* %PC.i232
  %6020 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6020, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_42936c, %struct.Memory** %MEMORY
  %loadMem_429374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 33
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6023 to i64*
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 1
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6026 to i64*
  %6027 = load i64, i64* %RAX.i231
  %6028 = add i64 %6027, 2452
  %6029 = load i64, i64* %PC.i230
  %6030 = add i64 %6029, 7
  store i64 %6030, i64* %PC.i230
  %6031 = inttoptr i64 %6028 to i32*
  %6032 = load i32, i32* %6031
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6033, align 1
  %6034 = and i32 %6032, 255
  %6035 = call i32 @llvm.ctpop.i32(i32 %6034)
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  %6038 = xor i8 %6037, 1
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6038, i8* %6039, align 1
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6040, align 1
  %6041 = icmp eq i32 %6032, 0
  %6042 = zext i1 %6041 to i8
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6042, i8* %6043, align 1
  %6044 = lshr i32 %6032, 31
  %6045 = trunc i32 %6044 to i8
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6045, i8* %6046, align 1
  %6047 = lshr i32 %6032, 31
  %6048 = xor i32 %6044, %6047
  %6049 = add i32 %6048, %6047
  %6050 = icmp eq i32 %6049, 2
  %6051 = zext i1 %6050 to i8
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6051, i8* %6052, align 1
  store %struct.Memory* %loadMem_429374, %struct.Memory** %MEMORY
  %loadMem_42937b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 33
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %PC.i229
  %6057 = add i64 %6056, 193
  %6058 = load i64, i64* %PC.i229
  %6059 = add i64 %6058, 6
  %6060 = load i64, i64* %PC.i229
  %6061 = add i64 %6060, 6
  store i64 %6061, i64* %PC.i229
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6063 = load i8, i8* %6062, align 1
  %6064 = icmp ne i8 %6063, 0
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6066 = load i8, i8* %6065, align 1
  %6067 = icmp ne i8 %6066, 0
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6069 = load i8, i8* %6068, align 1
  %6070 = icmp ne i8 %6069, 0
  %6071 = xor i1 %6067, %6070
  %6072 = or i1 %6064, %6071
  %6073 = zext i1 %6072 to i8
  store i8 %6073, i8* %BRANCH_TAKEN, align 1
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6075 = select i1 %6072, i64 %6057, i64 %6059
  store i64 %6075, i64* %6074, align 8
  store %struct.Memory* %loadMem_42937b, %struct.Memory** %MEMORY
  %loadBr_42937b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42937b = icmp eq i8 %loadBr_42937b, 1
  br i1 %cmpBr_42937b, label %block_.L_42943c, label %block_429381

block_429381:                                     ; preds = %block_42936c
  %loadMem_429381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 33
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6078 to i64*
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6080 = getelementptr inbounds %struct.GPR, %struct.GPR* %6079, i32 0, i32 1
  %6081 = getelementptr inbounds %struct.Reg, %struct.Reg* %6080, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %6081 to i64*
  %6082 = load i64, i64* %PC.i227
  %6083 = add i64 %6082, 8
  store i64 %6083, i64* %PC.i227
  %6084 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6084, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_429381, %struct.Memory** %MEMORY
  %loadMem_429389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 33
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 1
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6090 to i64*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 5
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %RAX.i225
  %6095 = add i64 %6094, 71792
  %6096 = load i64, i64* %PC.i224
  %6097 = add i64 %6096, 6
  store i64 %6097, i64* %PC.i224
  %6098 = inttoptr i64 %6095 to i32*
  %6099 = load i32, i32* %6098
  %6100 = zext i32 %6099 to i64
  store i64 %6100, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_429389, %struct.Memory** %MEMORY
  %loadMem_42938f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 33
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6103 to i64*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 1
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %PC.i222
  %6108 = add i64 %6107, 8
  store i64 %6108, i64* %PC.i222
  %6109 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6109, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_42938f, %struct.Memory** %MEMORY
  %loadMem_429397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 33
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 5
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %ECX.i220 = bitcast %union.anon* %6115 to i32*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 1
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %6118 to i64*
  %6119 = load i32, i32* %ECX.i220
  %6120 = zext i32 %6119 to i64
  %6121 = load i64, i64* %RAX.i221
  %6122 = add i64 %6121, 2452
  %6123 = load i64, i64* %PC.i219
  %6124 = add i64 %6123, 6
  store i64 %6124, i64* %PC.i219
  %6125 = inttoptr i64 %6122 to i32*
  %6126 = load i32, i32* %6125
  %6127 = sub i32 %6119, %6126
  %6128 = icmp ult i32 %6119, %6126
  %6129 = zext i1 %6128 to i8
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6129, i8* %6130, align 1
  %6131 = and i32 %6127, 255
  %6132 = call i32 @llvm.ctpop.i32(i32 %6131)
  %6133 = trunc i32 %6132 to i8
  %6134 = and i8 %6133, 1
  %6135 = xor i8 %6134, 1
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6135, i8* %6136, align 1
  %6137 = xor i32 %6126, %6119
  %6138 = xor i32 %6137, %6127
  %6139 = lshr i32 %6138, 4
  %6140 = trunc i32 %6139 to i8
  %6141 = and i8 %6140, 1
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6141, i8* %6142, align 1
  %6143 = icmp eq i32 %6127, 0
  %6144 = zext i1 %6143 to i8
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6144, i8* %6145, align 1
  %6146 = lshr i32 %6127, 31
  %6147 = trunc i32 %6146 to i8
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6147, i8* %6148, align 1
  %6149 = lshr i32 %6119, 31
  %6150 = lshr i32 %6126, 31
  %6151 = xor i32 %6150, %6149
  %6152 = xor i32 %6146, %6149
  %6153 = add i32 %6152, %6151
  %6154 = icmp eq i32 %6153, 2
  %6155 = zext i1 %6154 to i8
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6155, i8* %6156, align 1
  store %struct.Memory* %loadMem_429397, %struct.Memory** %MEMORY
  %loadMem_42939d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 33
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6159 to i64*
  %6160 = load i64, i64* %PC.i218
  %6161 = add i64 %6160, 159
  %6162 = load i64, i64* %PC.i218
  %6163 = add i64 %6162, 6
  %6164 = load i64, i64* %PC.i218
  %6165 = add i64 %6164, 6
  store i64 %6165, i64* %PC.i218
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6167 = load i8, i8* %6166, align 1
  %6168 = icmp ne i8 %6167, 0
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6170 = load i8, i8* %6169, align 1
  %6171 = icmp ne i8 %6170, 0
  %6172 = xor i1 %6168, %6171
  %6173 = zext i1 %6172 to i8
  store i8 %6173, i8* %BRANCH_TAKEN, align 1
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6175 = select i1 %6172, i64 %6161, i64 %6163
  store i64 %6175, i64* %6174, align 8
  store %struct.Memory* %loadMem_42939d, %struct.Memory** %MEMORY
  %loadBr_42939d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42939d = icmp eq i8 %loadBr_42939d, 1
  br i1 %cmpBr_42939d, label %block_.L_42943c, label %block_4293a3

block_4293a3:                                     ; preds = %block_429381
  %loadMem_4293a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 33
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 1
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %6181 to i64*
  %6182 = load i64, i64* %PC.i216
  %6183 = add i64 %6182, 8
  store i64 %6183, i64* %PC.i216
  %6184 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6184, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_4293a3, %struct.Memory** %MEMORY
  %loadMem_4293ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 33
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 1
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 5
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %6193 to i64*
  %6194 = load i64, i64* %RAX.i214
  %6195 = add i64 %6194, 2448
  %6196 = load i64, i64* %PC.i213
  %6197 = add i64 %6196, 6
  store i64 %6197, i64* %PC.i213
  %6198 = inttoptr i64 %6195 to i32*
  %6199 = load i32, i32* %6198
  %6200 = zext i32 %6199 to i64
  store i64 %6200, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_4293ab, %struct.Memory** %MEMORY
  %loadMem_4293b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 33
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6203 to i64*
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6205 = getelementptr inbounds %struct.GPR, %struct.GPR* %6204, i32 0, i32 1
  %6206 = getelementptr inbounds %struct.Reg, %struct.Reg* %6205, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %6206 to i64*
  %6207 = load i64, i64* %PC.i211
  %6208 = add i64 %6207, 8
  store i64 %6208, i64* %PC.i211
  %6209 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6209, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_4293b1, %struct.Memory** %MEMORY
  %loadMem_4293b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 33
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6212 to i64*
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 1
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %6215 to i64*
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6217 = getelementptr inbounds %struct.GPR, %struct.GPR* %6216, i32 0, i32 5
  %6218 = getelementptr inbounds %struct.Reg, %struct.Reg* %6217, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %6218 to i64*
  %6219 = load i64, i64* %RCX.i210
  %6220 = load i64, i64* %RAX.i209
  %6221 = add i64 %6220, 2460
  %6222 = load i64, i64* %PC.i208
  %6223 = add i64 %6222, 6
  store i64 %6223, i64* %PC.i208
  %6224 = trunc i64 %6219 to i32
  %6225 = inttoptr i64 %6221 to i32*
  %6226 = load i32, i32* %6225
  %6227 = add i32 %6226, %6224
  %6228 = zext i32 %6227 to i64
  store i64 %6228, i64* %RCX.i210, align 8
  %6229 = icmp ult i32 %6227, %6224
  %6230 = icmp ult i32 %6227, %6226
  %6231 = or i1 %6229, %6230
  %6232 = zext i1 %6231 to i8
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6232, i8* %6233, align 1
  %6234 = and i32 %6227, 255
  %6235 = call i32 @llvm.ctpop.i32(i32 %6234)
  %6236 = trunc i32 %6235 to i8
  %6237 = and i8 %6236, 1
  %6238 = xor i8 %6237, 1
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6238, i8* %6239, align 1
  %6240 = xor i32 %6226, %6224
  %6241 = xor i32 %6240, %6227
  %6242 = lshr i32 %6241, 4
  %6243 = trunc i32 %6242 to i8
  %6244 = and i8 %6243, 1
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6244, i8* %6245, align 1
  %6246 = icmp eq i32 %6227, 0
  %6247 = zext i1 %6246 to i8
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6247, i8* %6248, align 1
  %6249 = lshr i32 %6227, 31
  %6250 = trunc i32 %6249 to i8
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6250, i8* %6251, align 1
  %6252 = lshr i32 %6224, 31
  %6253 = lshr i32 %6226, 31
  %6254 = xor i32 %6249, %6252
  %6255 = xor i32 %6249, %6253
  %6256 = add i32 %6254, %6255
  %6257 = icmp eq i32 %6256, 2
  %6258 = zext i1 %6257 to i8
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6258, i8* %6259, align 1
  store %struct.Memory* %loadMem_4293b9, %struct.Memory** %MEMORY
  %loadMem_4293bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 33
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6262 to i64*
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 5
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %ECX.i207 = bitcast %union.anon* %6265 to i32*
  %6266 = load i32, i32* %ECX.i207
  %6267 = zext i32 %6266 to i64
  %6268 = load i64, i64* %PC.i206
  %6269 = add i64 %6268, 3
  store i64 %6269, i64* %PC.i206
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6270, align 1
  %6271 = and i32 %6266, 255
  %6272 = call i32 @llvm.ctpop.i32(i32 %6271)
  %6273 = trunc i32 %6272 to i8
  %6274 = and i8 %6273, 1
  %6275 = xor i8 %6274, 1
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6275, i8* %6276, align 1
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6277, align 1
  %6278 = icmp eq i32 %6266, 0
  %6279 = zext i1 %6278 to i8
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6279, i8* %6280, align 1
  %6281 = lshr i32 %6266, 31
  %6282 = trunc i32 %6281 to i8
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6282, i8* %6283, align 1
  %6284 = lshr i32 %6266, 31
  %6285 = xor i32 %6281, %6284
  %6286 = add i32 %6285, %6284
  %6287 = icmp eq i32 %6286, 2
  %6288 = zext i1 %6287 to i8
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6288, i8* %6289, align 1
  store %struct.Memory* %loadMem_4293bf, %struct.Memory** %MEMORY
  %loadMem_4293c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 33
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6292 to i64*
  %6293 = load i64, i64* %PC.i205
  %6294 = add i64 %6293, 16
  %6295 = load i64, i64* %PC.i205
  %6296 = add i64 %6295, 6
  %6297 = load i64, i64* %PC.i205
  %6298 = add i64 %6297, 6
  store i64 %6298, i64* %PC.i205
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6300 = load i8, i8* %6299, align 1
  %6301 = icmp ne i8 %6300, 0
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6303 = load i8, i8* %6302, align 1
  %6304 = icmp ne i8 %6303, 0
  %6305 = xor i1 %6301, %6304
  %6306 = xor i1 %6305, true
  %6307 = zext i1 %6306 to i8
  store i8 %6307, i8* %BRANCH_TAKEN, align 1
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6309 = select i1 %6305, i64 %6296, i64 %6294
  store i64 %6309, i64* %6308, align 8
  store %struct.Memory* %loadMem_4293c2, %struct.Memory** %MEMORY
  %loadBr_4293c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4293c2 = icmp eq i8 %loadBr_4293c2, 1
  br i1 %cmpBr_4293c2, label %block_.L_4293d2, label %block_4293c8

block_4293c8:                                     ; preds = %block_4293a3
  %loadMem_4293c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 1
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %6315 to i32*
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6317 = getelementptr inbounds %struct.GPR, %struct.GPR* %6316, i32 0, i32 1
  %6318 = getelementptr inbounds %struct.Reg, %struct.Reg* %6317, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %6318 to i64*
  %6319 = load i64, i64* %RAX.i204
  %6320 = load i32, i32* %EAX.i203
  %6321 = zext i32 %6320 to i64
  %6322 = load i64, i64* %PC.i202
  %6323 = add i64 %6322, 2
  store i64 %6323, i64* %PC.i202
  %6324 = xor i64 %6321, %6319
  %6325 = trunc i64 %6324 to i32
  %6326 = and i64 %6324, 4294967295
  store i64 %6326, i64* %RAX.i204, align 8
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6327, align 1
  %6328 = and i32 %6325, 255
  %6329 = call i32 @llvm.ctpop.i32(i32 %6328)
  %6330 = trunc i32 %6329 to i8
  %6331 = and i8 %6330, 1
  %6332 = xor i8 %6331, 1
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6332, i8* %6333, align 1
  %6334 = icmp eq i32 %6325, 0
  %6335 = zext i1 %6334 to i8
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6335, i8* %6336, align 1
  %6337 = lshr i32 %6325, 31
  %6338 = trunc i32 %6337 to i8
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6338, i8* %6339, align 1
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6340, align 1
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6341, align 1
  store %struct.Memory* %loadMem_4293c8, %struct.Memory** %MEMORY
  %loadMem_4293ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6343 = getelementptr inbounds %struct.GPR, %struct.GPR* %6342, i32 0, i32 33
  %6344 = getelementptr inbounds %struct.Reg, %struct.Reg* %6343, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6344 to i64*
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 1
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %6347 to i32*
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 15
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %6350 to i64*
  %6351 = load i64, i64* %RBP.i201
  %6352 = sub i64 %6351, 36
  %6353 = load i32, i32* %EAX.i200
  %6354 = zext i32 %6353 to i64
  %6355 = load i64, i64* %PC.i199
  %6356 = add i64 %6355, 3
  store i64 %6356, i64* %PC.i199
  %6357 = inttoptr i64 %6352 to i32*
  store i32 %6353, i32* %6357
  store %struct.Memory* %loadMem_4293ca, %struct.Memory** %MEMORY
  %loadMem_4293cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 33
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6360 to i64*
  %6361 = load i64, i64* %PC.i198
  %6362 = add i64 %6361, 92
  %6363 = load i64, i64* %PC.i198
  %6364 = add i64 %6363, 5
  store i64 %6364, i64* %PC.i198
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6362, i64* %6365, align 8
  store %struct.Memory* %loadMem_4293cd, %struct.Memory** %MEMORY
  br label %block_.L_429429

block_.L_4293d2:                                  ; preds = %block_4293a3
  %loadMem_4293d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 33
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6368 to i64*
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6370 = getelementptr inbounds %struct.GPR, %struct.GPR* %6369, i32 0, i32 1
  %6371 = getelementptr inbounds %struct.Reg, %struct.Reg* %6370, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6371 to i64*
  %6372 = load i64, i64* %PC.i196
  %6373 = add i64 %6372, 8
  store i64 %6373, i64* %PC.i196
  %6374 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6374, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_4293d2, %struct.Memory** %MEMORY
  %loadMem_4293da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 33
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6377 to i64*
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 1
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %6380 to i64*
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 5
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %6383 to i64*
  %6384 = load i64, i64* %RAX.i194
  %6385 = add i64 %6384, 2448
  %6386 = load i64, i64* %PC.i193
  %6387 = add i64 %6386, 6
  store i64 %6387, i64* %PC.i193
  %6388 = inttoptr i64 %6385 to i32*
  %6389 = load i32, i32* %6388
  %6390 = zext i32 %6389 to i64
  store i64 %6390, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_4293da, %struct.Memory** %MEMORY
  %loadMem_4293e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6392 = getelementptr inbounds %struct.GPR, %struct.GPR* %6391, i32 0, i32 33
  %6393 = getelementptr inbounds %struct.Reg, %struct.Reg* %6392, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6393 to i64*
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6395 = getelementptr inbounds %struct.GPR, %struct.GPR* %6394, i32 0, i32 1
  %6396 = getelementptr inbounds %struct.Reg, %struct.Reg* %6395, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %6396 to i64*
  %6397 = load i64, i64* %PC.i191
  %6398 = add i64 %6397, 8
  store i64 %6398, i64* %PC.i191
  %6399 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6399, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_4293e0, %struct.Memory** %MEMORY
  %loadMem_4293e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 33
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6402 to i64*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 1
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %6405 to i64*
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 5
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %6408 to i64*
  %6409 = load i64, i64* %RCX.i190
  %6410 = load i64, i64* %RAX.i189
  %6411 = add i64 %6410, 2460
  %6412 = load i64, i64* %PC.i188
  %6413 = add i64 %6412, 6
  store i64 %6413, i64* %PC.i188
  %6414 = trunc i64 %6409 to i32
  %6415 = inttoptr i64 %6411 to i32*
  %6416 = load i32, i32* %6415
  %6417 = add i32 %6416, %6414
  %6418 = zext i32 %6417 to i64
  store i64 %6418, i64* %RCX.i190, align 8
  %6419 = icmp ult i32 %6417, %6414
  %6420 = icmp ult i32 %6417, %6416
  %6421 = or i1 %6419, %6420
  %6422 = zext i1 %6421 to i8
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6422, i8* %6423, align 1
  %6424 = and i32 %6417, 255
  %6425 = call i32 @llvm.ctpop.i32(i32 %6424)
  %6426 = trunc i32 %6425 to i8
  %6427 = and i8 %6426, 1
  %6428 = xor i8 %6427, 1
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6428, i8* %6429, align 1
  %6430 = xor i32 %6416, %6414
  %6431 = xor i32 %6430, %6417
  %6432 = lshr i32 %6431, 4
  %6433 = trunc i32 %6432 to i8
  %6434 = and i8 %6433, 1
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6434, i8* %6435, align 1
  %6436 = icmp eq i32 %6417, 0
  %6437 = zext i1 %6436 to i8
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6437, i8* %6438, align 1
  %6439 = lshr i32 %6417, 31
  %6440 = trunc i32 %6439 to i8
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6440, i8* %6441, align 1
  %6442 = lshr i32 %6414, 31
  %6443 = lshr i32 %6416, 31
  %6444 = xor i32 %6439, %6442
  %6445 = xor i32 %6439, %6443
  %6446 = add i32 %6444, %6445
  %6447 = icmp eq i32 %6446, 2
  %6448 = zext i1 %6447 to i8
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6448, i8* %6449, align 1
  store %struct.Memory* %loadMem_4293e8, %struct.Memory** %MEMORY
  %loadMem_4293ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6451 = getelementptr inbounds %struct.GPR, %struct.GPR* %6450, i32 0, i32 33
  %6452 = getelementptr inbounds %struct.Reg, %struct.Reg* %6451, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6452 to i64*
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 5
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %ECX.i187 = bitcast %union.anon* %6455 to i32*
  %6456 = load i32, i32* %ECX.i187
  %6457 = zext i32 %6456 to i64
  %6458 = load i64, i64* %PC.i186
  %6459 = add i64 %6458, 3
  store i64 %6459, i64* %PC.i186
  %6460 = sub i32 %6456, 51
  %6461 = icmp ult i32 %6456, 51
  %6462 = zext i1 %6461 to i8
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6462, i8* %6463, align 1
  %6464 = and i32 %6460, 255
  %6465 = call i32 @llvm.ctpop.i32(i32 %6464)
  %6466 = trunc i32 %6465 to i8
  %6467 = and i8 %6466, 1
  %6468 = xor i8 %6467, 1
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6468, i8* %6469, align 1
  %6470 = xor i64 51, %6457
  %6471 = trunc i64 %6470 to i32
  %6472 = xor i32 %6471, %6460
  %6473 = lshr i32 %6472, 4
  %6474 = trunc i32 %6473 to i8
  %6475 = and i8 %6474, 1
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6475, i8* %6476, align 1
  %6477 = icmp eq i32 %6460, 0
  %6478 = zext i1 %6477 to i8
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6478, i8* %6479, align 1
  %6480 = lshr i32 %6460, 31
  %6481 = trunc i32 %6480 to i8
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6481, i8* %6482, align 1
  %6483 = lshr i32 %6456, 31
  %6484 = xor i32 %6480, %6483
  %6485 = add i32 %6484, %6483
  %6486 = icmp eq i32 %6485, 2
  %6487 = zext i1 %6486 to i8
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6487, i8* %6488, align 1
  store %struct.Memory* %loadMem_4293ee, %struct.Memory** %MEMORY
  %loadMem_4293f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 33
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6491 to i64*
  %6492 = load i64, i64* %PC.i185
  %6493 = add i64 %6492, 19
  %6494 = load i64, i64* %PC.i185
  %6495 = add i64 %6494, 6
  %6496 = load i64, i64* %PC.i185
  %6497 = add i64 %6496, 6
  store i64 %6497, i64* %PC.i185
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6499 = load i8, i8* %6498, align 1
  %6500 = icmp ne i8 %6499, 0
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6502 = load i8, i8* %6501, align 1
  %6503 = icmp ne i8 %6502, 0
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6505 = load i8, i8* %6504, align 1
  %6506 = icmp ne i8 %6505, 0
  %6507 = xor i1 %6503, %6506
  %6508 = or i1 %6500, %6507
  %6509 = zext i1 %6508 to i8
  store i8 %6509, i8* %BRANCH_TAKEN, align 1
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6511 = select i1 %6508, i64 %6493, i64 %6495
  store i64 %6511, i64* %6510, align 8
  store %struct.Memory* %loadMem_4293f1, %struct.Memory** %MEMORY
  %loadBr_4293f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4293f1 = icmp eq i8 %loadBr_4293f1, 1
  br i1 %cmpBr_4293f1, label %block_.L_429404, label %block_4293f7

block_4293f7:                                     ; preds = %block_.L_4293d2
  %loadMem_4293f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 33
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6514 to i64*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 1
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %PC.i183
  %6519 = add i64 %6518, 5
  store i64 %6519, i64* %PC.i183
  store i64 51, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_4293f7, %struct.Memory** %MEMORY
  %loadMem_4293fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 33
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6522 to i64*
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6524 = getelementptr inbounds %struct.GPR, %struct.GPR* %6523, i32 0, i32 1
  %6525 = getelementptr inbounds %struct.Reg, %struct.Reg* %6524, i32 0, i32 0
  %EAX.i181 = bitcast %union.anon* %6525 to i32*
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 15
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6528 to i64*
  %6529 = load i64, i64* %RBP.i182
  %6530 = sub i64 %6529, 40
  %6531 = load i32, i32* %EAX.i181
  %6532 = zext i32 %6531 to i64
  %6533 = load i64, i64* %PC.i180
  %6534 = add i64 %6533, 3
  store i64 %6534, i64* %PC.i180
  %6535 = inttoptr i64 %6530 to i32*
  store i32 %6531, i32* %6535
  store %struct.Memory* %loadMem_4293fc, %struct.Memory** %MEMORY
  %loadMem_4293ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6537 = getelementptr inbounds %struct.GPR, %struct.GPR* %6536, i32 0, i32 33
  %6538 = getelementptr inbounds %struct.Reg, %struct.Reg* %6537, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6538 to i64*
  %6539 = load i64, i64* %PC.i179
  %6540 = add i64 %6539, 36
  %6541 = load i64, i64* %PC.i179
  %6542 = add i64 %6541, 5
  store i64 %6542, i64* %PC.i179
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6540, i64* %6543, align 8
  store %struct.Memory* %loadMem_4293ff, %struct.Memory** %MEMORY
  br label %block_.L_429423

block_.L_429404:                                  ; preds = %block_.L_4293d2
  %loadMem_429404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 33
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6546 to i64*
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6548 = getelementptr inbounds %struct.GPR, %struct.GPR* %6547, i32 0, i32 1
  %6549 = getelementptr inbounds %struct.Reg, %struct.Reg* %6548, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %6549 to i64*
  %6550 = load i64, i64* %PC.i177
  %6551 = add i64 %6550, 8
  store i64 %6551, i64* %PC.i177
  %6552 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6552, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_429404, %struct.Memory** %MEMORY
  %loadMem_42940c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 33
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6555 to i64*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 1
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %6558 to i64*
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6560 = getelementptr inbounds %struct.GPR, %struct.GPR* %6559, i32 0, i32 5
  %6561 = getelementptr inbounds %struct.Reg, %struct.Reg* %6560, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %6561 to i64*
  %6562 = load i64, i64* %RAX.i175
  %6563 = add i64 %6562, 2448
  %6564 = load i64, i64* %PC.i174
  %6565 = add i64 %6564, 6
  store i64 %6565, i64* %PC.i174
  %6566 = inttoptr i64 %6563 to i32*
  %6567 = load i32, i32* %6566
  %6568 = zext i32 %6567 to i64
  store i64 %6568, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_42940c, %struct.Memory** %MEMORY
  %loadMem_429412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 33
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 1
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %6574 to i64*
  %6575 = load i64, i64* %PC.i172
  %6576 = add i64 %6575, 8
  store i64 %6576, i64* %PC.i172
  %6577 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6577, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_429412, %struct.Memory** %MEMORY
  %loadMem_42941a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6579 = getelementptr inbounds %struct.GPR, %struct.GPR* %6578, i32 0, i32 33
  %6580 = getelementptr inbounds %struct.Reg, %struct.Reg* %6579, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6580 to i64*
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6582 = getelementptr inbounds %struct.GPR, %struct.GPR* %6581, i32 0, i32 1
  %6583 = getelementptr inbounds %struct.Reg, %struct.Reg* %6582, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %6583 to i64*
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 5
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %6586 to i64*
  %6587 = load i64, i64* %RCX.i171
  %6588 = load i64, i64* %RAX.i170
  %6589 = add i64 %6588, 2460
  %6590 = load i64, i64* %PC.i169
  %6591 = add i64 %6590, 6
  store i64 %6591, i64* %PC.i169
  %6592 = trunc i64 %6587 to i32
  %6593 = inttoptr i64 %6589 to i32*
  %6594 = load i32, i32* %6593
  %6595 = add i32 %6594, %6592
  %6596 = zext i32 %6595 to i64
  store i64 %6596, i64* %RCX.i171, align 8
  %6597 = icmp ult i32 %6595, %6592
  %6598 = icmp ult i32 %6595, %6594
  %6599 = or i1 %6597, %6598
  %6600 = zext i1 %6599 to i8
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6600, i8* %6601, align 1
  %6602 = and i32 %6595, 255
  %6603 = call i32 @llvm.ctpop.i32(i32 %6602)
  %6604 = trunc i32 %6603 to i8
  %6605 = and i8 %6604, 1
  %6606 = xor i8 %6605, 1
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6606, i8* %6607, align 1
  %6608 = xor i32 %6594, %6592
  %6609 = xor i32 %6608, %6595
  %6610 = lshr i32 %6609, 4
  %6611 = trunc i32 %6610 to i8
  %6612 = and i8 %6611, 1
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6612, i8* %6613, align 1
  %6614 = icmp eq i32 %6595, 0
  %6615 = zext i1 %6614 to i8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6615, i8* %6616, align 1
  %6617 = lshr i32 %6595, 31
  %6618 = trunc i32 %6617 to i8
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6618, i8* %6619, align 1
  %6620 = lshr i32 %6592, 31
  %6621 = lshr i32 %6594, 31
  %6622 = xor i32 %6617, %6620
  %6623 = xor i32 %6617, %6621
  %6624 = add i32 %6622, %6623
  %6625 = icmp eq i32 %6624, 2
  %6626 = zext i1 %6625 to i8
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6626, i8* %6627, align 1
  store %struct.Memory* %loadMem_42941a, %struct.Memory** %MEMORY
  %loadMem_429420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 33
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6630 to i64*
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 5
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %ECX.i167 = bitcast %union.anon* %6633 to i32*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 15
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %RBP.i168
  %6638 = sub i64 %6637, 40
  %6639 = load i32, i32* %ECX.i167
  %6640 = zext i32 %6639 to i64
  %6641 = load i64, i64* %PC.i166
  %6642 = add i64 %6641, 3
  store i64 %6642, i64* %PC.i166
  %6643 = inttoptr i64 %6638 to i32*
  store i32 %6639, i32* %6643
  store %struct.Memory* %loadMem_429420, %struct.Memory** %MEMORY
  br label %block_.L_429423

block_.L_429423:                                  ; preds = %block_.L_429404, %block_4293f7
  %loadMem_429423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 33
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 1
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %6649 to i64*
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 15
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %6652 to i64*
  %6653 = load i64, i64* %RBP.i165
  %6654 = sub i64 %6653, 40
  %6655 = load i64, i64* %PC.i163
  %6656 = add i64 %6655, 3
  store i64 %6656, i64* %PC.i163
  %6657 = inttoptr i64 %6654 to i32*
  %6658 = load i32, i32* %6657
  %6659 = zext i32 %6658 to i64
  store i64 %6659, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_429423, %struct.Memory** %MEMORY
  %loadMem_429426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6661 = getelementptr inbounds %struct.GPR, %struct.GPR* %6660, i32 0, i32 33
  %6662 = getelementptr inbounds %struct.Reg, %struct.Reg* %6661, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6662 to i64*
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 1
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %6665 to i32*
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 15
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %RBP.i162
  %6670 = sub i64 %6669, 36
  %6671 = load i32, i32* %EAX.i161
  %6672 = zext i32 %6671 to i64
  %6673 = load i64, i64* %PC.i160
  %6674 = add i64 %6673, 3
  store i64 %6674, i64* %PC.i160
  %6675 = inttoptr i64 %6670 to i32*
  store i32 %6671, i32* %6675
  store %struct.Memory* %loadMem_429426, %struct.Memory** %MEMORY
  br label %block_.L_429429

block_.L_429429:                                  ; preds = %block_.L_429423, %block_4293c8
  %loadMem_429429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 33
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6678 to i64*
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6680 = getelementptr inbounds %struct.GPR, %struct.GPR* %6679, i32 0, i32 1
  %6681 = getelementptr inbounds %struct.Reg, %struct.Reg* %6680, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %6681 to i64*
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6683 = getelementptr inbounds %struct.GPR, %struct.GPR* %6682, i32 0, i32 15
  %6684 = getelementptr inbounds %struct.Reg, %struct.Reg* %6683, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6684 to i64*
  %6685 = load i64, i64* %RBP.i159
  %6686 = sub i64 %6685, 36
  %6687 = load i64, i64* %PC.i157
  %6688 = add i64 %6687, 3
  store i64 %6688, i64* %PC.i157
  %6689 = inttoptr i64 %6686 to i32*
  %6690 = load i32, i32* %6689
  %6691 = zext i32 %6690 to i64
  store i64 %6691, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_429429, %struct.Memory** %MEMORY
  %loadMem_42942c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 33
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6694 to i64*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 5
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %6697 to i64*
  %6698 = load i64, i64* %PC.i155
  %6699 = add i64 %6698, 8
  store i64 %6699, i64* %PC.i155
  %6700 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6700, i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_42942c, %struct.Memory** %MEMORY
  %loadMem_429434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 33
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6703 to i64*
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 1
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %6706 to i32*
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6708 = getelementptr inbounds %struct.GPR, %struct.GPR* %6707, i32 0, i32 5
  %6709 = getelementptr inbounds %struct.Reg, %struct.Reg* %6708, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %6709 to i64*
  %6710 = load i64, i64* %RCX.i154
  %6711 = add i64 %6710, 40
  %6712 = load i32, i32* %EAX.i153
  %6713 = zext i32 %6712 to i64
  %6714 = load i64, i64* %PC.i152
  %6715 = add i64 %6714, 3
  store i64 %6715, i64* %PC.i152
  %6716 = inttoptr i64 %6711 to i32*
  store i32 %6712, i32* %6716
  store %struct.Memory* %loadMem_429434, %struct.Memory** %MEMORY
  %loadMem_429437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6718 = getelementptr inbounds %struct.GPR, %struct.GPR* %6717, i32 0, i32 33
  %6719 = getelementptr inbounds %struct.Reg, %struct.Reg* %6718, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6719 to i64*
  %6720 = load i64, i64* %PC.i151
  %6721 = add i64 %6720, 153
  %6722 = load i64, i64* %PC.i151
  %6723 = add i64 %6722, 5
  store i64 %6723, i64* %PC.i151
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6721, i64* %6724, align 8
  store %struct.Memory* %loadMem_429437, %struct.Memory** %MEMORY
  br label %block_.L_4294d0

block_.L_42943c:                                  ; preds = %block_429381, %block_42936c
  %loadMem_42943c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 33
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6727 to i64*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 1
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %6730 to i64*
  %6731 = load i64, i64* %PC.i149
  %6732 = add i64 %6731, 8
  store i64 %6732, i64* %PC.i149
  %6733 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6733, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_42943c, %struct.Memory** %MEMORY
  %loadMem_429444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6735 = getelementptr inbounds %struct.GPR, %struct.GPR* %6734, i32 0, i32 33
  %6736 = getelementptr inbounds %struct.Reg, %struct.Reg* %6735, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6736 to i64*
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 1
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %6739 to i64*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 5
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %6742 to i64*
  %6743 = load i64, i64* %RAX.i147
  %6744 = add i64 %6743, 1240
  %6745 = load i64, i64* %PC.i146
  %6746 = add i64 %6745, 6
  store i64 %6746, i64* %PC.i146
  %6747 = inttoptr i64 %6744 to i32*
  %6748 = load i32, i32* %6747
  %6749 = zext i32 %6748 to i64
  store i64 %6749, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_429444, %struct.Memory** %MEMORY
  %loadMem_42944a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 33
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6752 to i64*
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6754 = getelementptr inbounds %struct.GPR, %struct.GPR* %6753, i32 0, i32 1
  %6755 = getelementptr inbounds %struct.Reg, %struct.Reg* %6754, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %6755 to i64*
  %6756 = load i64, i64* %PC.i144
  %6757 = add i64 %6756, 8
  store i64 %6757, i64* %PC.i144
  %6758 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6758, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_42944a, %struct.Memory** %MEMORY
  %loadMem_429452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6760 = getelementptr inbounds %struct.GPR, %struct.GPR* %6759, i32 0, i32 33
  %6761 = getelementptr inbounds %struct.Reg, %struct.Reg* %6760, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6761 to i64*
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6763 = getelementptr inbounds %struct.GPR, %struct.GPR* %6762, i32 0, i32 1
  %6764 = getelementptr inbounds %struct.Reg, %struct.Reg* %6763, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %6764 to i64*
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6766 = getelementptr inbounds %struct.GPR, %struct.GPR* %6765, i32 0, i32 5
  %6767 = getelementptr inbounds %struct.Reg, %struct.Reg* %6766, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %6767 to i64*
  %6768 = load i64, i64* %RCX.i143
  %6769 = load i64, i64* %RAX.i142
  %6770 = add i64 %6769, 1244
  %6771 = load i64, i64* %PC.i141
  %6772 = add i64 %6771, 6
  store i64 %6772, i64* %PC.i141
  %6773 = trunc i64 %6768 to i32
  %6774 = inttoptr i64 %6770 to i32*
  %6775 = load i32, i32* %6774
  %6776 = add i32 %6775, %6773
  %6777 = zext i32 %6776 to i64
  store i64 %6777, i64* %RCX.i143, align 8
  %6778 = icmp ult i32 %6776, %6773
  %6779 = icmp ult i32 %6776, %6775
  %6780 = or i1 %6778, %6779
  %6781 = zext i1 %6780 to i8
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6781, i8* %6782, align 1
  %6783 = and i32 %6776, 255
  %6784 = call i32 @llvm.ctpop.i32(i32 %6783)
  %6785 = trunc i32 %6784 to i8
  %6786 = and i8 %6785, 1
  %6787 = xor i8 %6786, 1
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6787, i8* %6788, align 1
  %6789 = xor i32 %6775, %6773
  %6790 = xor i32 %6789, %6776
  %6791 = lshr i32 %6790, 4
  %6792 = trunc i32 %6791 to i8
  %6793 = and i8 %6792, 1
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6793, i8* %6794, align 1
  %6795 = icmp eq i32 %6776, 0
  %6796 = zext i1 %6795 to i8
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6796, i8* %6797, align 1
  %6798 = lshr i32 %6776, 31
  %6799 = trunc i32 %6798 to i8
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6799, i8* %6800, align 1
  %6801 = lshr i32 %6773, 31
  %6802 = lshr i32 %6775, 31
  %6803 = xor i32 %6798, %6801
  %6804 = xor i32 %6798, %6802
  %6805 = add i32 %6803, %6804
  %6806 = icmp eq i32 %6805, 2
  %6807 = zext i1 %6806 to i8
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6807, i8* %6808, align 1
  store %struct.Memory* %loadMem_429452, %struct.Memory** %MEMORY
  %loadMem_429458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 33
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 5
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %ECX.i140 = bitcast %union.anon* %6814 to i32*
  %6815 = load i32, i32* %ECX.i140
  %6816 = zext i32 %6815 to i64
  %6817 = load i64, i64* %PC.i139
  %6818 = add i64 %6817, 3
  store i64 %6818, i64* %PC.i139
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6819, align 1
  %6820 = and i32 %6815, 255
  %6821 = call i32 @llvm.ctpop.i32(i32 %6820)
  %6822 = trunc i32 %6821 to i8
  %6823 = and i8 %6822, 1
  %6824 = xor i8 %6823, 1
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6824, i8* %6825, align 1
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6826, align 1
  %6827 = icmp eq i32 %6815, 0
  %6828 = zext i1 %6827 to i8
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6828, i8* %6829, align 1
  %6830 = lshr i32 %6815, 31
  %6831 = trunc i32 %6830 to i8
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6831, i8* %6832, align 1
  %6833 = lshr i32 %6815, 31
  %6834 = xor i32 %6830, %6833
  %6835 = add i32 %6834, %6833
  %6836 = icmp eq i32 %6835, 2
  %6837 = zext i1 %6836 to i8
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6837, i8* %6838, align 1
  store %struct.Memory* %loadMem_429458, %struct.Memory** %MEMORY
  %loadMem_42945b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6840 = getelementptr inbounds %struct.GPR, %struct.GPR* %6839, i32 0, i32 33
  %6841 = getelementptr inbounds %struct.Reg, %struct.Reg* %6840, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6841 to i64*
  %6842 = load i64, i64* %PC.i138
  %6843 = add i64 %6842, 16
  %6844 = load i64, i64* %PC.i138
  %6845 = add i64 %6844, 6
  %6846 = load i64, i64* %PC.i138
  %6847 = add i64 %6846, 6
  store i64 %6847, i64* %PC.i138
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6849 = load i8, i8* %6848, align 1
  %6850 = icmp ne i8 %6849, 0
  %6851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6852 = load i8, i8* %6851, align 1
  %6853 = icmp ne i8 %6852, 0
  %6854 = xor i1 %6850, %6853
  %6855 = xor i1 %6854, true
  %6856 = zext i1 %6855 to i8
  store i8 %6856, i8* %BRANCH_TAKEN, align 1
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6858 = select i1 %6854, i64 %6845, i64 %6843
  store i64 %6858, i64* %6857, align 8
  store %struct.Memory* %loadMem_42945b, %struct.Memory** %MEMORY
  %loadBr_42945b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42945b = icmp eq i8 %loadBr_42945b, 1
  br i1 %cmpBr_42945b, label %block_.L_42946b, label %block_429461

block_429461:                                     ; preds = %block_.L_42943c
  %loadMem_429461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 33
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 1
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %6864 to i32*
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 1
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %6867 to i64*
  %6868 = load i64, i64* %RAX.i137
  %6869 = load i32, i32* %EAX.i136
  %6870 = zext i32 %6869 to i64
  %6871 = load i64, i64* %PC.i135
  %6872 = add i64 %6871, 2
  store i64 %6872, i64* %PC.i135
  %6873 = xor i64 %6870, %6868
  %6874 = trunc i64 %6873 to i32
  %6875 = and i64 %6873, 4294967295
  store i64 %6875, i64* %RAX.i137, align 8
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6876, align 1
  %6877 = and i32 %6874, 255
  %6878 = call i32 @llvm.ctpop.i32(i32 %6877)
  %6879 = trunc i32 %6878 to i8
  %6880 = and i8 %6879, 1
  %6881 = xor i8 %6880, 1
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6881, i8* %6882, align 1
  %6883 = icmp eq i32 %6874, 0
  %6884 = zext i1 %6883 to i8
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6884, i8* %6885, align 1
  %6886 = lshr i32 %6874, 31
  %6887 = trunc i32 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6887, i8* %6888, align 1
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6889, align 1
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6890, align 1
  store %struct.Memory* %loadMem_429461, %struct.Memory** %MEMORY
  %loadMem_429463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 33
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6893 to i64*
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 1
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %EAX.i133 = bitcast %union.anon* %6896 to i32*
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 15
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6899 to i64*
  %6900 = load i64, i64* %RBP.i134
  %6901 = sub i64 %6900, 44
  %6902 = load i32, i32* %EAX.i133
  %6903 = zext i32 %6902 to i64
  %6904 = load i64, i64* %PC.i132
  %6905 = add i64 %6904, 3
  store i64 %6905, i64* %PC.i132
  %6906 = inttoptr i64 %6901 to i32*
  store i32 %6902, i32* %6906
  store %struct.Memory* %loadMem_429463, %struct.Memory** %MEMORY
  %loadMem_429466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 33
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6909 to i64*
  %6910 = load i64, i64* %PC.i131
  %6911 = add i64 %6910, 92
  %6912 = load i64, i64* %PC.i131
  %6913 = add i64 %6912, 5
  store i64 %6913, i64* %PC.i131
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6911, i64* %6914, align 8
  store %struct.Memory* %loadMem_429466, %struct.Memory** %MEMORY
  br label %block_.L_4294c2

block_.L_42946b:                                  ; preds = %block_.L_42943c
  %loadMem_42946b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 33
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6917 to i64*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 1
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %6920 to i64*
  %6921 = load i64, i64* %PC.i129
  %6922 = add i64 %6921, 8
  store i64 %6922, i64* %PC.i129
  %6923 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6923, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_42946b, %struct.Memory** %MEMORY
  %loadMem_429473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 33
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6926 to i64*
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 1
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %6929 to i64*
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6931 = getelementptr inbounds %struct.GPR, %struct.GPR* %6930, i32 0, i32 5
  %6932 = getelementptr inbounds %struct.Reg, %struct.Reg* %6931, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %6932 to i64*
  %6933 = load i64, i64* %RAX.i127
  %6934 = add i64 %6933, 1240
  %6935 = load i64, i64* %PC.i126
  %6936 = add i64 %6935, 6
  store i64 %6936, i64* %PC.i126
  %6937 = inttoptr i64 %6934 to i32*
  %6938 = load i32, i32* %6937
  %6939 = zext i32 %6938 to i64
  store i64 %6939, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_429473, %struct.Memory** %MEMORY
  %loadMem_429479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 33
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6942 to i64*
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6944 = getelementptr inbounds %struct.GPR, %struct.GPR* %6943, i32 0, i32 1
  %6945 = getelementptr inbounds %struct.Reg, %struct.Reg* %6944, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %6945 to i64*
  %6946 = load i64, i64* %PC.i124
  %6947 = add i64 %6946, 8
  store i64 %6947, i64* %PC.i124
  %6948 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %6948, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_429479, %struct.Memory** %MEMORY
  %loadMem_429481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 33
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 1
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %6954 to i64*
  %6955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6956 = getelementptr inbounds %struct.GPR, %struct.GPR* %6955, i32 0, i32 5
  %6957 = getelementptr inbounds %struct.Reg, %struct.Reg* %6956, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %6957 to i64*
  %6958 = load i64, i64* %RCX.i123
  %6959 = load i64, i64* %RAX.i122
  %6960 = add i64 %6959, 1244
  %6961 = load i64, i64* %PC.i121
  %6962 = add i64 %6961, 6
  store i64 %6962, i64* %PC.i121
  %6963 = trunc i64 %6958 to i32
  %6964 = inttoptr i64 %6960 to i32*
  %6965 = load i32, i32* %6964
  %6966 = add i32 %6965, %6963
  %6967 = zext i32 %6966 to i64
  store i64 %6967, i64* %RCX.i123, align 8
  %6968 = icmp ult i32 %6966, %6963
  %6969 = icmp ult i32 %6966, %6965
  %6970 = or i1 %6968, %6969
  %6971 = zext i1 %6970 to i8
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6971, i8* %6972, align 1
  %6973 = and i32 %6966, 255
  %6974 = call i32 @llvm.ctpop.i32(i32 %6973)
  %6975 = trunc i32 %6974 to i8
  %6976 = and i8 %6975, 1
  %6977 = xor i8 %6976, 1
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6977, i8* %6978, align 1
  %6979 = xor i32 %6965, %6963
  %6980 = xor i32 %6979, %6966
  %6981 = lshr i32 %6980, 4
  %6982 = trunc i32 %6981 to i8
  %6983 = and i8 %6982, 1
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6983, i8* %6984, align 1
  %6985 = icmp eq i32 %6966, 0
  %6986 = zext i1 %6985 to i8
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6986, i8* %6987, align 1
  %6988 = lshr i32 %6966, 31
  %6989 = trunc i32 %6988 to i8
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6989, i8* %6990, align 1
  %6991 = lshr i32 %6963, 31
  %6992 = lshr i32 %6965, 31
  %6993 = xor i32 %6988, %6991
  %6994 = xor i32 %6988, %6992
  %6995 = add i32 %6993, %6994
  %6996 = icmp eq i32 %6995, 2
  %6997 = zext i1 %6996 to i8
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6997, i8* %6998, align 1
  store %struct.Memory* %loadMem_429481, %struct.Memory** %MEMORY
  %loadMem_429487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 33
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7001 to i64*
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 5
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %ECX.i120 = bitcast %union.anon* %7004 to i32*
  %7005 = load i32, i32* %ECX.i120
  %7006 = zext i32 %7005 to i64
  %7007 = load i64, i64* %PC.i119
  %7008 = add i64 %7007, 3
  store i64 %7008, i64* %PC.i119
  %7009 = sub i32 %7005, 51
  %7010 = icmp ult i32 %7005, 51
  %7011 = zext i1 %7010 to i8
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7011, i8* %7012, align 1
  %7013 = and i32 %7009, 255
  %7014 = call i32 @llvm.ctpop.i32(i32 %7013)
  %7015 = trunc i32 %7014 to i8
  %7016 = and i8 %7015, 1
  %7017 = xor i8 %7016, 1
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7017, i8* %7018, align 1
  %7019 = xor i64 51, %7006
  %7020 = trunc i64 %7019 to i32
  %7021 = xor i32 %7020, %7009
  %7022 = lshr i32 %7021, 4
  %7023 = trunc i32 %7022 to i8
  %7024 = and i8 %7023, 1
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7024, i8* %7025, align 1
  %7026 = icmp eq i32 %7009, 0
  %7027 = zext i1 %7026 to i8
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7027, i8* %7028, align 1
  %7029 = lshr i32 %7009, 31
  %7030 = trunc i32 %7029 to i8
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7030, i8* %7031, align 1
  %7032 = lshr i32 %7005, 31
  %7033 = xor i32 %7029, %7032
  %7034 = add i32 %7033, %7032
  %7035 = icmp eq i32 %7034, 2
  %7036 = zext i1 %7035 to i8
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7036, i8* %7037, align 1
  store %struct.Memory* %loadMem_429487, %struct.Memory** %MEMORY
  %loadMem_42948a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 33
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7040 to i64*
  %7041 = load i64, i64* %PC.i118
  %7042 = add i64 %7041, 19
  %7043 = load i64, i64* %PC.i118
  %7044 = add i64 %7043, 6
  %7045 = load i64, i64* %PC.i118
  %7046 = add i64 %7045, 6
  store i64 %7046, i64* %PC.i118
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7048 = load i8, i8* %7047, align 1
  %7049 = icmp ne i8 %7048, 0
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7051 = load i8, i8* %7050, align 1
  %7052 = icmp ne i8 %7051, 0
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7054 = load i8, i8* %7053, align 1
  %7055 = icmp ne i8 %7054, 0
  %7056 = xor i1 %7052, %7055
  %7057 = or i1 %7049, %7056
  %7058 = zext i1 %7057 to i8
  store i8 %7058, i8* %BRANCH_TAKEN, align 1
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7060 = select i1 %7057, i64 %7042, i64 %7044
  store i64 %7060, i64* %7059, align 8
  store %struct.Memory* %loadMem_42948a, %struct.Memory** %MEMORY
  %loadBr_42948a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42948a = icmp eq i8 %loadBr_42948a, 1
  br i1 %cmpBr_42948a, label %block_.L_42949d, label %block_429490

block_429490:                                     ; preds = %block_.L_42946b
  %loadMem_429490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 33
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7063 to i64*
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 1
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %7066 to i64*
  %7067 = load i64, i64* %PC.i116
  %7068 = add i64 %7067, 5
  store i64 %7068, i64* %PC.i116
  store i64 51, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_429490, %struct.Memory** %MEMORY
  %loadMem_429495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 33
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7071 to i64*
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 1
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %EAX.i114 = bitcast %union.anon* %7074 to i32*
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 15
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %7077 to i64*
  %7078 = load i64, i64* %RBP.i115
  %7079 = sub i64 %7078, 48
  %7080 = load i32, i32* %EAX.i114
  %7081 = zext i32 %7080 to i64
  %7082 = load i64, i64* %PC.i113
  %7083 = add i64 %7082, 3
  store i64 %7083, i64* %PC.i113
  %7084 = inttoptr i64 %7079 to i32*
  store i32 %7080, i32* %7084
  store %struct.Memory* %loadMem_429495, %struct.Memory** %MEMORY
  %loadMem_429498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7086 = getelementptr inbounds %struct.GPR, %struct.GPR* %7085, i32 0, i32 33
  %7087 = getelementptr inbounds %struct.Reg, %struct.Reg* %7086, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7087 to i64*
  %7088 = load i64, i64* %PC.i112
  %7089 = add i64 %7088, 36
  %7090 = load i64, i64* %PC.i112
  %7091 = add i64 %7090, 5
  store i64 %7091, i64* %PC.i112
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7089, i64* %7092, align 8
  store %struct.Memory* %loadMem_429498, %struct.Memory** %MEMORY
  br label %block_.L_4294bc

block_.L_42949d:                                  ; preds = %block_.L_42946b
  %loadMem_42949d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 33
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7095 to i64*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 1
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7098 to i64*
  %7099 = load i64, i64* %PC.i110
  %7100 = add i64 %7099, 8
  store i64 %7100, i64* %PC.i110
  %7101 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7101, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_42949d, %struct.Memory** %MEMORY
  %loadMem_4294a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7103 = getelementptr inbounds %struct.GPR, %struct.GPR* %7102, i32 0, i32 33
  %7104 = getelementptr inbounds %struct.Reg, %struct.Reg* %7103, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7104 to i64*
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 1
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 5
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %7110 to i64*
  %7111 = load i64, i64* %RAX.i108
  %7112 = add i64 %7111, 1240
  %7113 = load i64, i64* %PC.i107
  %7114 = add i64 %7113, 6
  store i64 %7114, i64* %PC.i107
  %7115 = inttoptr i64 %7112 to i32*
  %7116 = load i32, i32* %7115
  %7117 = zext i32 %7116 to i64
  store i64 %7117, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_4294a5, %struct.Memory** %MEMORY
  %loadMem_4294ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 33
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7120 to i64*
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 1
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %7123 to i64*
  %7124 = load i64, i64* %PC.i105
  %7125 = add i64 %7124, 8
  store i64 %7125, i64* %PC.i105
  %7126 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7126, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_4294ab, %struct.Memory** %MEMORY
  %loadMem_4294b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 33
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7129 to i64*
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 1
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %7132 to i64*
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 5
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %7135 to i64*
  %7136 = load i64, i64* %RCX.i104
  %7137 = load i64, i64* %RAX.i103
  %7138 = add i64 %7137, 1244
  %7139 = load i64, i64* %PC.i102
  %7140 = add i64 %7139, 6
  store i64 %7140, i64* %PC.i102
  %7141 = trunc i64 %7136 to i32
  %7142 = inttoptr i64 %7138 to i32*
  %7143 = load i32, i32* %7142
  %7144 = add i32 %7143, %7141
  %7145 = zext i32 %7144 to i64
  store i64 %7145, i64* %RCX.i104, align 8
  %7146 = icmp ult i32 %7144, %7141
  %7147 = icmp ult i32 %7144, %7143
  %7148 = or i1 %7146, %7147
  %7149 = zext i1 %7148 to i8
  %7150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7149, i8* %7150, align 1
  %7151 = and i32 %7144, 255
  %7152 = call i32 @llvm.ctpop.i32(i32 %7151)
  %7153 = trunc i32 %7152 to i8
  %7154 = and i8 %7153, 1
  %7155 = xor i8 %7154, 1
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7155, i8* %7156, align 1
  %7157 = xor i32 %7143, %7141
  %7158 = xor i32 %7157, %7144
  %7159 = lshr i32 %7158, 4
  %7160 = trunc i32 %7159 to i8
  %7161 = and i8 %7160, 1
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7161, i8* %7162, align 1
  %7163 = icmp eq i32 %7144, 0
  %7164 = zext i1 %7163 to i8
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7164, i8* %7165, align 1
  %7166 = lshr i32 %7144, 31
  %7167 = trunc i32 %7166 to i8
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7167, i8* %7168, align 1
  %7169 = lshr i32 %7141, 31
  %7170 = lshr i32 %7143, 31
  %7171 = xor i32 %7166, %7169
  %7172 = xor i32 %7166, %7170
  %7173 = add i32 %7171, %7172
  %7174 = icmp eq i32 %7173, 2
  %7175 = zext i1 %7174 to i8
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7175, i8* %7176, align 1
  store %struct.Memory* %loadMem_4294b3, %struct.Memory** %MEMORY
  %loadMem_4294b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 33
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %7179 to i64*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 5
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %ECX.i100 = bitcast %union.anon* %7182 to i32*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 15
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %7185 to i64*
  %7186 = load i64, i64* %RBP.i101
  %7187 = sub i64 %7186, 48
  %7188 = load i32, i32* %ECX.i100
  %7189 = zext i32 %7188 to i64
  %7190 = load i64, i64* %PC.i99
  %7191 = add i64 %7190, 3
  store i64 %7191, i64* %PC.i99
  %7192 = inttoptr i64 %7187 to i32*
  store i32 %7188, i32* %7192
  store %struct.Memory* %loadMem_4294b9, %struct.Memory** %MEMORY
  br label %block_.L_4294bc

block_.L_4294bc:                                  ; preds = %block_.L_42949d, %block_429490
  %loadMem_4294bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7194 = getelementptr inbounds %struct.GPR, %struct.GPR* %7193, i32 0, i32 33
  %7195 = getelementptr inbounds %struct.Reg, %struct.Reg* %7194, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7195 to i64*
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 1
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 15
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %7201 to i64*
  %7202 = load i64, i64* %RBP.i98
  %7203 = sub i64 %7202, 48
  %7204 = load i64, i64* %PC.i96
  %7205 = add i64 %7204, 3
  store i64 %7205, i64* %PC.i96
  %7206 = inttoptr i64 %7203 to i32*
  %7207 = load i32, i32* %7206
  %7208 = zext i32 %7207 to i64
  store i64 %7208, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_4294bc, %struct.Memory** %MEMORY
  %loadMem_4294bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 33
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7211 to i64*
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 1
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %7214 to i32*
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 15
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %7217 to i64*
  %7218 = load i64, i64* %RBP.i95
  %7219 = sub i64 %7218, 44
  %7220 = load i32, i32* %EAX.i94
  %7221 = zext i32 %7220 to i64
  %7222 = load i64, i64* %PC.i93
  %7223 = add i64 %7222, 3
  store i64 %7223, i64* %PC.i93
  %7224 = inttoptr i64 %7219 to i32*
  store i32 %7220, i32* %7224
  store %struct.Memory* %loadMem_4294bf, %struct.Memory** %MEMORY
  br label %block_.L_4294c2

block_.L_4294c2:                                  ; preds = %block_.L_4294bc, %block_429461
  %loadMem_4294c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7226 = getelementptr inbounds %struct.GPR, %struct.GPR* %7225, i32 0, i32 33
  %7227 = getelementptr inbounds %struct.Reg, %struct.Reg* %7226, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7227 to i64*
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7229 = getelementptr inbounds %struct.GPR, %struct.GPR* %7228, i32 0, i32 1
  %7230 = getelementptr inbounds %struct.Reg, %struct.Reg* %7229, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %7230 to i64*
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7232 = getelementptr inbounds %struct.GPR, %struct.GPR* %7231, i32 0, i32 15
  %7233 = getelementptr inbounds %struct.Reg, %struct.Reg* %7232, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %7233 to i64*
  %7234 = load i64, i64* %RBP.i92
  %7235 = sub i64 %7234, 44
  %7236 = load i64, i64* %PC.i90
  %7237 = add i64 %7236, 3
  store i64 %7237, i64* %PC.i90
  %7238 = inttoptr i64 %7235 to i32*
  %7239 = load i32, i32* %7238
  %7240 = zext i32 %7239 to i64
  store i64 %7240, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_4294c2, %struct.Memory** %MEMORY
  %loadMem_4294c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7242 = getelementptr inbounds %struct.GPR, %struct.GPR* %7241, i32 0, i32 33
  %7243 = getelementptr inbounds %struct.Reg, %struct.Reg* %7242, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7243 to i64*
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7245 = getelementptr inbounds %struct.GPR, %struct.GPR* %7244, i32 0, i32 5
  %7246 = getelementptr inbounds %struct.Reg, %struct.Reg* %7245, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %7246 to i64*
  %7247 = load i64, i64* %PC.i88
  %7248 = add i64 %7247, 8
  store i64 %7248, i64* %PC.i88
  %7249 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7249, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_4294c5, %struct.Memory** %MEMORY
  %loadMem_4294cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 33
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7252 to i64*
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7254 = getelementptr inbounds %struct.GPR, %struct.GPR* %7253, i32 0, i32 1
  %7255 = getelementptr inbounds %struct.Reg, %struct.Reg* %7254, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %7255 to i32*
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 5
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %7258 to i64*
  %7259 = load i64, i64* %RCX.i87
  %7260 = add i64 %7259, 40
  %7261 = load i32, i32* %EAX.i86
  %7262 = zext i32 %7261 to i64
  %7263 = load i64, i64* %PC.i85
  %7264 = add i64 %7263, 3
  store i64 %7264, i64* %PC.i85
  %7265 = inttoptr i64 %7260 to i32*
  store i32 %7261, i32* %7265
  store %struct.Memory* %loadMem_4294cd, %struct.Memory** %MEMORY
  br label %block_.L_4294d0

block_.L_4294d0:                                  ; preds = %block_.L_4294c2, %block_.L_429429
  %loadMem_4294d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 33
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7268 to i64*
  %7269 = load i64, i64* %PC.i84
  %7270 = add i64 %7269, 5
  %7271 = load i64, i64* %PC.i84
  %7272 = add i64 %7271, 5
  store i64 %7272, i64* %PC.i84
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7270, i64* %7273, align 8
  store %struct.Memory* %loadMem_4294d0, %struct.Memory** %MEMORY
  br label %block_.L_4294d5

block_.L_4294d5:                                  ; preds = %block_.L_4294d0, %block_.L_429357
  %loadMem_4294d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7275 = getelementptr inbounds %struct.GPR, %struct.GPR* %7274, i32 0, i32 33
  %7276 = getelementptr inbounds %struct.Reg, %struct.Reg* %7275, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7276 to i64*
  %7277 = load i64, i64* %PC.i83
  %7278 = add i64 %7277, 80
  %7279 = load i64, i64* %PC.i83
  %7280 = add i64 %7279, 5
  store i64 %7280, i64* %PC.i83
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7278, i64* %7281, align 8
  store %struct.Memory* %loadMem_4294d5, %struct.Memory** %MEMORY
  br label %block_.L_429525

block_.L_4294da:                                  ; preds = %block_4292d4, %block_.L_4292bf
  %loadMem_4294da = load %struct.Memory*, %struct.Memory** %MEMORY
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 33
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7284 to i64*
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7286 = getelementptr inbounds %struct.GPR, %struct.GPR* %7285, i32 0, i32 1
  %7287 = getelementptr inbounds %struct.Reg, %struct.Reg* %7286, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %7287 to i64*
  %7288 = load i64, i64* %PC.i81
  %7289 = add i64 %7288, 8
  store i64 %7289, i64* %PC.i81
  %7290 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7290, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_4294da, %struct.Memory** %MEMORY
  %loadMem_4294e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7292 = getelementptr inbounds %struct.GPR, %struct.GPR* %7291, i32 0, i32 33
  %7293 = getelementptr inbounds %struct.Reg, %struct.Reg* %7292, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7293 to i64*
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 1
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %7296 to i64*
  %7297 = load i64, i64* %RAX.i80
  %7298 = add i64 %7297, 1320
  %7299 = load i64, i64* %PC.i79
  %7300 = add i64 %7299, 7
  store i64 %7300, i64* %PC.i79
  %7301 = inttoptr i64 %7298 to i32*
  %7302 = load i32, i32* %7301
  %7303 = sub i32 %7302, 3
  %7304 = icmp ult i32 %7302, 3
  %7305 = zext i1 %7304 to i8
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7305, i8* %7306, align 1
  %7307 = and i32 %7303, 255
  %7308 = call i32 @llvm.ctpop.i32(i32 %7307)
  %7309 = trunc i32 %7308 to i8
  %7310 = and i8 %7309, 1
  %7311 = xor i8 %7310, 1
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7311, i8* %7312, align 1
  %7313 = xor i32 %7302, 3
  %7314 = xor i32 %7313, %7303
  %7315 = lshr i32 %7314, 4
  %7316 = trunc i32 %7315 to i8
  %7317 = and i8 %7316, 1
  %7318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7317, i8* %7318, align 1
  %7319 = icmp eq i32 %7303, 0
  %7320 = zext i1 %7319 to i8
  %7321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7320, i8* %7321, align 1
  %7322 = lshr i32 %7303, 31
  %7323 = trunc i32 %7322 to i8
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7323, i8* %7324, align 1
  %7325 = lshr i32 %7302, 31
  %7326 = xor i32 %7322, %7325
  %7327 = add i32 %7326, %7325
  %7328 = icmp eq i32 %7327, 2
  %7329 = zext i1 %7328 to i8
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7329, i8* %7330, align 1
  store %struct.Memory* %loadMem_4294e2, %struct.Memory** %MEMORY
  %loadMem_4294e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7332 = getelementptr inbounds %struct.GPR, %struct.GPR* %7331, i32 0, i32 33
  %7333 = getelementptr inbounds %struct.Reg, %struct.Reg* %7332, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7333 to i64*
  %7334 = load i64, i64* %PC.i78
  %7335 = add i64 %7334, 55
  %7336 = load i64, i64* %PC.i78
  %7337 = add i64 %7336, 6
  %7338 = load i64, i64* %PC.i78
  %7339 = add i64 %7338, 6
  store i64 %7339, i64* %PC.i78
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7341 = load i8, i8* %7340, align 1
  %7342 = icmp eq i8 %7341, 0
  %7343 = zext i1 %7342 to i8
  store i8 %7343, i8* %BRANCH_TAKEN, align 1
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7345 = select i1 %7342, i64 %7335, i64 %7337
  store i64 %7345, i64* %7344, align 8
  store %struct.Memory* %loadMem_4294e9, %struct.Memory** %MEMORY
  %loadBr_4294e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4294e9 = icmp eq i8 %loadBr_4294e9, 1
  br i1 %cmpBr_4294e9, label %block_.L_429520, label %block_4294ef

block_4294ef:                                     ; preds = %block_.L_4294da
  %loadMem_4294ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 1
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %7351 to i64*
  %7352 = load i64, i64* %PC.i76
  %7353 = add i64 %7352, 8
  store i64 %7353, i64* %PC.i76
  %7354 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7354, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_4294ef, %struct.Memory** %MEMORY
  %loadMem_4294f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 33
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7357 to i64*
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 5
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %7360 to i64*
  %7361 = load i64, i64* %PC.i74
  %7362 = add i64 %7361, 8
  store i64 %7362, i64* %PC.i74
  %7363 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7363, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_4294f7, %struct.Memory** %MEMORY
  %loadMem_4294ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 33
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7366 to i64*
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 5
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %7369 to i64*
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 7
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %7372 to i64*
  %7373 = load i64, i64* %RCX.i72
  %7374 = add i64 %7373, 71908
  %7375 = load i64, i64* %PC.i71
  %7376 = add i64 %7375, 6
  store i64 %7376, i64* %PC.i71
  %7377 = inttoptr i64 %7374 to i32*
  %7378 = load i32, i32* %7377
  %7379 = zext i32 %7378 to i64
  store i64 %7379, i64* %RDX.i73, align 8
  store %struct.Memory* %loadMem_4294ff, %struct.Memory** %MEMORY
  %loadMem_429505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7381 = getelementptr inbounds %struct.GPR, %struct.GPR* %7380, i32 0, i32 33
  %7382 = getelementptr inbounds %struct.Reg, %struct.Reg* %7381, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7382 to i64*
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 7
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %7385 to i64*
  %7386 = load i64, i64* %RDX.i70
  %7387 = load i64, i64* %PC.i69
  %7388 = add i64 %7387, 3
  store i64 %7388, i64* %PC.i69
  %7389 = trunc i64 %7386 to i32
  %7390 = sub i32 %7389, 1
  %7391 = zext i32 %7390 to i64
  store i64 %7391, i64* %RDX.i70, align 8
  %7392 = icmp ult i32 %7389, 1
  %7393 = zext i1 %7392 to i8
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7393, i8* %7394, align 1
  %7395 = and i32 %7390, 255
  %7396 = call i32 @llvm.ctpop.i32(i32 %7395)
  %7397 = trunc i32 %7396 to i8
  %7398 = and i8 %7397, 1
  %7399 = xor i8 %7398, 1
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7399, i8* %7400, align 1
  %7401 = xor i64 1, %7386
  %7402 = trunc i64 %7401 to i32
  %7403 = xor i32 %7402, %7390
  %7404 = lshr i32 %7403, 4
  %7405 = trunc i32 %7404 to i8
  %7406 = and i8 %7405, 1
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7406, i8* %7407, align 1
  %7408 = icmp eq i32 %7390, 0
  %7409 = zext i1 %7408 to i8
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7409, i8* %7410, align 1
  %7411 = lshr i32 %7390, 31
  %7412 = trunc i32 %7411 to i8
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7412, i8* %7413, align 1
  %7414 = lshr i32 %7389, 31
  %7415 = xor i32 %7411, %7414
  %7416 = add i32 %7415, %7414
  %7417 = icmp eq i32 %7416, 2
  %7418 = zext i1 %7417 to i8
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7418, i8* %7419, align 1
  store %struct.Memory* %loadMem_429505, %struct.Memory** %MEMORY
  %loadMem_429508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7421 = getelementptr inbounds %struct.GPR, %struct.GPR* %7420, i32 0, i32 33
  %7422 = getelementptr inbounds %struct.Reg, %struct.Reg* %7421, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7422 to i64*
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7424 = getelementptr inbounds %struct.GPR, %struct.GPR* %7423, i32 0, i32 7
  %7425 = getelementptr inbounds %struct.Reg, %struct.Reg* %7424, i32 0, i32 0
  %EDX.i67 = bitcast %union.anon* %7425 to i32*
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 5
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %7428 to i64*
  %7429 = load i32, i32* %EDX.i67
  %7430 = zext i32 %7429 to i64
  %7431 = load i64, i64* %PC.i66
  %7432 = add i64 %7431, 3
  store i64 %7432, i64* %PC.i66
  %7433 = shl i64 %7430, 32
  %7434 = ashr exact i64 %7433, 32
  store i64 %7434, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_429508, %struct.Memory** %MEMORY
  %loadMem_42950b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 33
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7437 to i64*
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 5
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %RCX.i65
  %7442 = load i64, i64* %PC.i64
  %7443 = add i64 %7442, 4
  store i64 %7443, i64* %PC.i64
  %7444 = sext i64 %7441 to i128
  %7445 = and i128 %7444, -18446744073709551616
  %7446 = zext i64 %7441 to i128
  %7447 = or i128 %7445, %7446
  %7448 = mul i128 24, %7447
  %7449 = trunc i128 %7448 to i64
  store i64 %7449, i64* %RCX.i65, align 8
  %7450 = sext i64 %7449 to i128
  %7451 = icmp ne i128 %7450, %7448
  %7452 = zext i1 %7451 to i8
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7452, i8* %7453, align 1
  %7454 = trunc i128 %7448 to i32
  %7455 = and i32 %7454, 255
  %7456 = call i32 @llvm.ctpop.i32(i32 %7455)
  %7457 = trunc i32 %7456 to i8
  %7458 = and i8 %7457, 1
  %7459 = xor i8 %7458, 1
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7459, i8* %7460, align 1
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7461, align 1
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7462, align 1
  %7463 = lshr i64 %7449, 63
  %7464 = trunc i64 %7463 to i8
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7464, i8* %7465, align 1
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7452, i8* %7466, align 1
  store %struct.Memory* %loadMem_42950b, %struct.Memory** %MEMORY
  %loadMem_42950f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7468 = getelementptr inbounds %struct.GPR, %struct.GPR* %7467, i32 0, i32 33
  %7469 = getelementptr inbounds %struct.Reg, %struct.Reg* %7468, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7469 to i64*
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7471 = getelementptr inbounds %struct.GPR, %struct.GPR* %7470, i32 0, i32 1
  %7472 = getelementptr inbounds %struct.Reg, %struct.Reg* %7471, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %7472 to i64*
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7474 = getelementptr inbounds %struct.GPR, %struct.GPR* %7473, i32 0, i32 5
  %7475 = getelementptr inbounds %struct.Reg, %struct.Reg* %7474, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %7475 to i64*
  %7476 = load i64, i64* %RAX.i62
  %7477 = load i64, i64* %RCX.i63
  %7478 = load i64, i64* %PC.i61
  %7479 = add i64 %7478, 3
  store i64 %7479, i64* %PC.i61
  %7480 = add i64 %7477, %7476
  store i64 %7480, i64* %RAX.i62, align 8
  %7481 = icmp ult i64 %7480, %7476
  %7482 = icmp ult i64 %7480, %7477
  %7483 = or i1 %7481, %7482
  %7484 = zext i1 %7483 to i8
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7484, i8* %7485, align 1
  %7486 = trunc i64 %7480 to i32
  %7487 = and i32 %7486, 255
  %7488 = call i32 @llvm.ctpop.i32(i32 %7487)
  %7489 = trunc i32 %7488 to i8
  %7490 = and i8 %7489, 1
  %7491 = xor i8 %7490, 1
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7491, i8* %7492, align 1
  %7493 = xor i64 %7477, %7476
  %7494 = xor i64 %7493, %7480
  %7495 = lshr i64 %7494, 4
  %7496 = trunc i64 %7495 to i8
  %7497 = and i8 %7496, 1
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7497, i8* %7498, align 1
  %7499 = icmp eq i64 %7480, 0
  %7500 = zext i1 %7499 to i8
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7500, i8* %7501, align 1
  %7502 = lshr i64 %7480, 63
  %7503 = trunc i64 %7502 to i8
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7503, i8* %7504, align 1
  %7505 = lshr i64 %7476, 63
  %7506 = lshr i64 %7477, 63
  %7507 = xor i64 %7502, %7505
  %7508 = xor i64 %7502, %7506
  %7509 = add i64 %7507, %7508
  %7510 = icmp eq i64 %7509, 2
  %7511 = zext i1 %7510 to i8
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7511, i8* %7512, align 1
  store %struct.Memory* %loadMem_42950f, %struct.Memory** %MEMORY
  %loadMem_429512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7515 to i64*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 1
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %7518 to i64*
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7520 = getelementptr inbounds %struct.GPR, %struct.GPR* %7519, i32 0, i32 7
  %7521 = getelementptr inbounds %struct.Reg, %struct.Reg* %7520, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %7521 to i64*
  %7522 = load i64, i64* %RAX.i59
  %7523 = add i64 %7522, 12
  %7524 = load i64, i64* %PC.i58
  %7525 = add i64 %7524, 3
  store i64 %7525, i64* %PC.i58
  %7526 = inttoptr i64 %7523 to i32*
  %7527 = load i32, i32* %7526
  %7528 = zext i32 %7527 to i64
  store i64 %7528, i64* %RDX.i60, align 8
  store %struct.Memory* %loadMem_429512, %struct.Memory** %MEMORY
  %loadMem_429515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 33
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7531 to i64*
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7533 = getelementptr inbounds %struct.GPR, %struct.GPR* %7532, i32 0, i32 1
  %7534 = getelementptr inbounds %struct.Reg, %struct.Reg* %7533, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %7534 to i64*
  %7535 = load i64, i64* %PC.i56
  %7536 = add i64 %7535, 8
  store i64 %7536, i64* %PC.i56
  %7537 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7537, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_429515, %struct.Memory** %MEMORY
  %loadMem_42951d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7539 = getelementptr inbounds %struct.GPR, %struct.GPR* %7538, i32 0, i32 33
  %7540 = getelementptr inbounds %struct.Reg, %struct.Reg* %7539, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7540 to i64*
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7542 = getelementptr inbounds %struct.GPR, %struct.GPR* %7541, i32 0, i32 7
  %7543 = getelementptr inbounds %struct.Reg, %struct.Reg* %7542, i32 0, i32 0
  %EDX.i54 = bitcast %union.anon* %7543 to i32*
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7545 = getelementptr inbounds %struct.GPR, %struct.GPR* %7544, i32 0, i32 1
  %7546 = getelementptr inbounds %struct.Reg, %struct.Reg* %7545, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %7546 to i64*
  %7547 = load i64, i64* %RAX.i55
  %7548 = add i64 %7547, 40
  %7549 = load i32, i32* %EDX.i54
  %7550 = zext i32 %7549 to i64
  %7551 = load i64, i64* %PC.i53
  %7552 = add i64 %7551, 3
  store i64 %7552, i64* %PC.i53
  %7553 = inttoptr i64 %7548 to i32*
  store i32 %7549, i32* %7553
  store %struct.Memory* %loadMem_42951d, %struct.Memory** %MEMORY
  br label %block_.L_429520

block_.L_429520:                                  ; preds = %block_4294ef, %block_.L_4294da
  %loadMem_429520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 33
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7556 to i64*
  %7557 = load i64, i64* %PC.i52
  %7558 = add i64 %7557, 5
  %7559 = load i64, i64* %PC.i52
  %7560 = add i64 %7559, 5
  store i64 %7560, i64* %PC.i52
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7558, i64* %7561, align 8
  store %struct.Memory* %loadMem_429520, %struct.Memory** %MEMORY
  br label %block_.L_429525

block_.L_429525:                                  ; preds = %block_.L_429520, %block_.L_4294d5
  %loadMem_429525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 33
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7564 to i64*
  %7565 = load i64, i64* %PC.i51
  %7566 = add i64 %7565, 5
  %7567 = load i64, i64* %PC.i51
  %7568 = add i64 %7567, 5
  store i64 %7568, i64* %PC.i51
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7566, i64* %7569, align 8
  store %struct.Memory* %loadMem_429525, %struct.Memory** %MEMORY
  br label %block_.L_42952a

block_.L_42952a:                                  ; preds = %block_.L_429525, %block_.L_42903a
  %loadMem_42952a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 33
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7572 to i64*
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 1
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %7575 to i64*
  %7576 = load i64, i64* %PC.i49
  %7577 = add i64 %7576, 8
  store i64 %7577, i64* %PC.i49
  %7578 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7578, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_42952a, %struct.Memory** %MEMORY
  %loadMem_429532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 33
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7581 to i64*
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 1
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %7584 to i64*
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7586 = getelementptr inbounds %struct.GPR, %struct.GPR* %7585, i32 0, i32 11
  %7587 = getelementptr inbounds %struct.Reg, %struct.Reg* %7586, i32 0, i32 0
  %RDI.i48 = bitcast %union.anon* %7587 to i64*
  %7588 = load i64, i64* %RAX.i47
  %7589 = add i64 %7588, 72384
  %7590 = load i64, i64* %PC.i46
  %7591 = add i64 %7590, 6
  store i64 %7591, i64* %PC.i46
  %7592 = inttoptr i64 %7589 to i32*
  %7593 = load i32, i32* %7592
  %7594 = zext i32 %7593 to i64
  store i64 %7594, i64* %RDI.i48, align 8
  store %struct.Memory* %loadMem_429532, %struct.Memory** %MEMORY
  %loadMem1_429538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7596 = getelementptr inbounds %struct.GPR, %struct.GPR* %7595, i32 0, i32 33
  %7597 = getelementptr inbounds %struct.Reg, %struct.Reg* %7596, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7597 to i64*
  %7598 = load i64, i64* %PC.i45
  %7599 = add i64 %7598, 488904
  %7600 = load i64, i64* %PC.i45
  %7601 = add i64 %7600, 5
  %7602 = load i64, i64* %PC.i45
  %7603 = add i64 %7602, 5
  store i64 %7603, i64* %PC.i45
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7605 = load i64, i64* %7604, align 8
  %7606 = add i64 %7605, -8
  %7607 = inttoptr i64 %7606 to i64*
  store i64 %7601, i64* %7607
  store i64 %7606, i64* %7604, align 8
  %7608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7599, i64* %7608, align 8
  store %struct.Memory* %loadMem1_429538, %struct.Memory** %MEMORY
  %loadMem2_429538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_429538 = load i64, i64* %3
  %call2_429538 = call %struct.Memory* @sub_4a0b00.UpdateSubseqInfo(%struct.State* %0, i64 %loadPC_429538, %struct.Memory* %loadMem2_429538)
  store %struct.Memory* %call2_429538, %struct.Memory** %MEMORY
  %loadMem_42953d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 33
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7611 to i64*
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 11
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %EDI.i44 = bitcast %union.anon* %7614 to i32*
  %7615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7616 = getelementptr inbounds %struct.GPR, %struct.GPR* %7615, i32 0, i32 11
  %7617 = getelementptr inbounds %struct.Reg, %struct.Reg* %7616, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7617 to i64*
  %7618 = load i64, i64* %RDI.i
  %7619 = load i32, i32* %EDI.i44
  %7620 = zext i32 %7619 to i64
  %7621 = load i64, i64* %PC.i43
  %7622 = add i64 %7621, 2
  store i64 %7622, i64* %PC.i43
  %7623 = xor i64 %7620, %7618
  %7624 = trunc i64 %7623 to i32
  %7625 = and i64 %7623, 4294967295
  store i64 %7625, i64* %RDI.i, align 8
  %7626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7626, align 1
  %7627 = and i32 %7624, 255
  %7628 = call i32 @llvm.ctpop.i32(i32 %7627)
  %7629 = trunc i32 %7628 to i8
  %7630 = and i8 %7629, 1
  %7631 = xor i8 %7630, 1
  %7632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7631, i8* %7632, align 1
  %7633 = icmp eq i32 %7624, 0
  %7634 = zext i1 %7633 to i8
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7634, i8* %7635, align 1
  %7636 = lshr i32 %7624, 31
  %7637 = trunc i32 %7636 to i8
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7637, i8* %7638, align 1
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7639, align 1
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7640, align 1
  store %struct.Memory* %loadMem_42953d, %struct.Memory** %MEMORY
  %loadMem_42953f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7642 = getelementptr inbounds %struct.GPR, %struct.GPR* %7641, i32 0, i32 33
  %7643 = getelementptr inbounds %struct.Reg, %struct.Reg* %7642, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7643 to i64*
  %7644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7645 = getelementptr inbounds %struct.GPR, %struct.GPR* %7644, i32 0, i32 5
  %7646 = getelementptr inbounds %struct.Reg, %struct.Reg* %7645, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %7646 to i64*
  %7647 = load i64, i64* %PC.i41
  %7648 = add i64 %7647, 5
  store i64 %7648, i64* %PC.i41
  store i64 4294967295, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_42953f, %struct.Memory** %MEMORY
  %loadMem_429544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 33
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7651 to i64*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 11
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7654 to i32*
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 15
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %7657 to i64*
  %7658 = load i64, i64* %RBP.i40
  %7659 = sub i64 %7658, 52
  %7660 = load i32, i32* %EDI.i
  %7661 = zext i32 %7660 to i64
  %7662 = load i64, i64* %PC.i39
  %7663 = add i64 %7662, 3
  store i64 %7663, i64* %PC.i39
  %7664 = inttoptr i64 %7659 to i32*
  store i32 %7660, i32* %7664
  store %struct.Memory* %loadMem_429544, %struct.Memory** %MEMORY
  %loadMem_429547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7666 = getelementptr inbounds %struct.GPR, %struct.GPR* %7665, i32 0, i32 33
  %7667 = getelementptr inbounds %struct.Reg, %struct.Reg* %7666, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7667 to i64*
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 9
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7670 to i64*
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7672 = getelementptr inbounds %struct.GPR, %struct.GPR* %7671, i32 0, i32 15
  %7673 = getelementptr inbounds %struct.Reg, %struct.Reg* %7672, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %7673 to i64*
  %7674 = load i64, i64* %RBP.i38
  %7675 = sub i64 %7674, 52
  %7676 = load i64, i64* %PC.i37
  %7677 = add i64 %7676, 3
  store i64 %7677, i64* %PC.i37
  %7678 = inttoptr i64 %7675 to i32*
  %7679 = load i32, i32* %7678
  %7680 = zext i32 %7679 to i64
  store i64 %7680, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_429547, %struct.Memory** %MEMORY
  %loadMem_42954a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7682 = getelementptr inbounds %struct.GPR, %struct.GPR* %7681, i32 0, i32 33
  %7683 = getelementptr inbounds %struct.Reg, %struct.Reg* %7682, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7683 to i64*
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 7
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %RDX.i35 = bitcast %union.anon* %7686 to i64*
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7688 = getelementptr inbounds %struct.GPR, %struct.GPR* %7687, i32 0, i32 15
  %7689 = getelementptr inbounds %struct.Reg, %struct.Reg* %7688, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %7689 to i64*
  %7690 = load i64, i64* %RBP.i36
  %7691 = sub i64 %7690, 52
  %7692 = load i64, i64* %PC.i34
  %7693 = add i64 %7692, 3
  store i64 %7693, i64* %PC.i34
  %7694 = inttoptr i64 %7691 to i32*
  %7695 = load i32, i32* %7694
  %7696 = zext i32 %7695 to i64
  store i64 %7696, i64* %RDX.i35, align 8
  store %struct.Memory* %loadMem_42954a, %struct.Memory** %MEMORY
  %loadMem1_42954d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7698 = getelementptr inbounds %struct.GPR, %struct.GPR* %7697, i32 0, i32 33
  %7699 = getelementptr inbounds %struct.Reg, %struct.Reg* %7698, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7699 to i64*
  %7700 = load i64, i64* %PC.i33
  %7701 = add i64 %7700, 491331
  %7702 = load i64, i64* %PC.i33
  %7703 = add i64 %7702, 5
  %7704 = load i64, i64* %PC.i33
  %7705 = add i64 %7704, 5
  store i64 %7705, i64* %PC.i33
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7707 = load i64, i64* %7706, align 8
  %7708 = add i64 %7707, -8
  %7709 = inttoptr i64 %7708 to i64*
  store i64 %7703, i64* %7709
  store i64 %7708, i64* %7706, align 8
  %7710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7701, i64* %7710, align 8
  store %struct.Memory* %loadMem1_42954d, %struct.Memory** %MEMORY
  %loadMem2_42954d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42954d = load i64, i64* %3
  %call2_42954d = call %struct.Memory* @sub_4a1490.UpdateSceneInformation(%struct.State* %0, i64 %loadPC_42954d, %struct.Memory* %loadMem2_42954d)
  store %struct.Memory* %call2_42954d, %struct.Memory** %MEMORY
  %loadMem_429552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 33
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7713 to i64*
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7715 = getelementptr inbounds %struct.GPR, %struct.GPR* %7714, i32 0, i32 5
  %7716 = getelementptr inbounds %struct.Reg, %struct.Reg* %7715, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7716 to i64*
  %7717 = load i64, i64* %PC.i32
  %7718 = add i64 %7717, 5
  store i64 %7718, i64* %PC.i32
  store i64 256, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_429552, %struct.Memory** %MEMORY
  %loadMem_429557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7720 = getelementptr inbounds %struct.GPR, %struct.GPR* %7719, i32 0, i32 33
  %7721 = getelementptr inbounds %struct.Reg, %struct.Reg* %7720, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7721 to i64*
  %7722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7723 = getelementptr inbounds %struct.GPR, %struct.GPR* %7722, i32 0, i32 1
  %7724 = getelementptr inbounds %struct.Reg, %struct.Reg* %7723, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %7724 to i64*
  %7725 = load i64, i64* %PC.i30
  %7726 = add i64 %7725, 8
  store i64 %7726, i64* %PC.i30
  %7727 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7727, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_429557, %struct.Memory** %MEMORY
  %loadMem_42955f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7729 = getelementptr inbounds %struct.GPR, %struct.GPR* %7728, i32 0, i32 33
  %7730 = getelementptr inbounds %struct.Reg, %struct.Reg* %7729, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7730 to i64*
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7732 = getelementptr inbounds %struct.GPR, %struct.GPR* %7731, i32 0, i32 1
  %7733 = getelementptr inbounds %struct.Reg, %struct.Reg* %7732, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7733 to i64*
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7735 = getelementptr inbounds %struct.GPR, %struct.GPR* %7734, i32 0, i32 7
  %7736 = getelementptr inbounds %struct.Reg, %struct.Reg* %7735, i32 0, i32 0
  %RDX.i29 = bitcast %union.anon* %7736 to i64*
  %7737 = load i64, i64* %RAX.i28
  %7738 = add i64 %7737, 52
  %7739 = load i64, i64* %PC.i27
  %7740 = add i64 %7739, 3
  store i64 %7740, i64* %PC.i27
  %7741 = inttoptr i64 %7738 to i32*
  %7742 = load i32, i32* %7741
  %7743 = zext i32 %7742 to i64
  store i64 %7743, i64* %RDX.i29, align 8
  store %struct.Memory* %loadMem_42955f, %struct.Memory** %MEMORY
  %loadMem_429562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7745 = getelementptr inbounds %struct.GPR, %struct.GPR* %7744, i32 0, i32 33
  %7746 = getelementptr inbounds %struct.Reg, %struct.Reg* %7745, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7746 to i64*
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7748 = getelementptr inbounds %struct.GPR, %struct.GPR* %7747, i32 0, i32 1
  %7749 = getelementptr inbounds %struct.Reg, %struct.Reg* %7748, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %7749 to i64*
  %7750 = load i64, i64* %PC.i25
  %7751 = add i64 %7750, 8
  store i64 %7751, i64* %PC.i25
  %7752 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7752, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_429562, %struct.Memory** %MEMORY
  %loadMem_42956a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7754 = getelementptr inbounds %struct.GPR, %struct.GPR* %7753, i32 0, i32 33
  %7755 = getelementptr inbounds %struct.Reg, %struct.Reg* %7754, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7755 to i64*
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7757 = getelementptr inbounds %struct.GPR, %struct.GPR* %7756, i32 0, i32 1
  %7758 = getelementptr inbounds %struct.Reg, %struct.Reg* %7757, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %7758 to i64*
  %7759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7760 = getelementptr inbounds %struct.GPR, %struct.GPR* %7759, i32 0, i32 7
  %7761 = getelementptr inbounds %struct.Reg, %struct.Reg* %7760, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7761 to i64*
  %7762 = load i64, i64* %RDX.i
  %7763 = load i64, i64* %RAX.i24
  %7764 = add i64 %7763, 60
  %7765 = load i64, i64* %PC.i23
  %7766 = add i64 %7765, 4
  store i64 %7766, i64* %PC.i23
  %7767 = inttoptr i64 %7764 to i32*
  %7768 = load i32, i32* %7767
  %7769 = shl i64 %7762, 32
  %7770 = ashr exact i64 %7769, 32
  %7771 = sext i32 %7768 to i64
  %7772 = mul i64 %7771, %7770
  %7773 = trunc i64 %7772 to i32
  %7774 = and i64 %7772, 4294967295
  store i64 %7774, i64* %RDX.i, align 8
  %7775 = shl i64 %7772, 32
  %7776 = ashr exact i64 %7775, 32
  %7777 = icmp ne i64 %7776, %7772
  %7778 = zext i1 %7777 to i8
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7778, i8* %7779, align 1
  %7780 = and i32 %7773, 255
  %7781 = call i32 @llvm.ctpop.i32(i32 %7780)
  %7782 = trunc i32 %7781 to i8
  %7783 = and i8 %7782, 1
  %7784 = xor i8 %7783, 1
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7784, i8* %7785, align 1
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7786, align 1
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7787, align 1
  %7788 = lshr i32 %7773, 31
  %7789 = trunc i32 %7788 to i8
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7789, i8* %7790, align 1
  %7791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7778, i8* %7791, align 1
  store %struct.Memory* %loadMem_42956a, %struct.Memory** %MEMORY
  %loadMem_42956e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7793 = getelementptr inbounds %struct.GPR, %struct.GPR* %7792, i32 0, i32 33
  %7794 = getelementptr inbounds %struct.Reg, %struct.Reg* %7793, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7794 to i64*
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7796 = getelementptr inbounds %struct.GPR, %struct.GPR* %7795, i32 0, i32 7
  %7797 = getelementptr inbounds %struct.Reg, %struct.Reg* %7796, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7797 to i32*
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7799 = getelementptr inbounds %struct.GPR, %struct.GPR* %7798, i32 0, i32 1
  %7800 = getelementptr inbounds %struct.Reg, %struct.Reg* %7799, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7800 to i64*
  %7801 = load i32, i32* %EDX.i
  %7802 = zext i32 %7801 to i64
  %7803 = load i64, i64* %PC.i22
  %7804 = add i64 %7803, 2
  store i64 %7804, i64* %PC.i22
  %7805 = and i64 %7802, 4294967295
  store i64 %7805, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42956e, %struct.Memory** %MEMORY
  %loadMem_429570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7807 = getelementptr inbounds %struct.GPR, %struct.GPR* %7806, i32 0, i32 33
  %7808 = getelementptr inbounds %struct.Reg, %struct.Reg* %7807, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7808 to i64*
  %7809 = load i64, i64* %PC.i21
  %7810 = add i64 %7809, 1
  store i64 %7810, i64* %PC.i21
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7813 = bitcast %union.anon* %7812 to i32*
  %7814 = load i32, i32* %7813, align 8
  %7815 = sext i32 %7814 to i64
  %7816 = lshr i64 %7815, 32
  store i64 %7816, i64* %7811, align 8
  store %struct.Memory* %loadMem_429570, %struct.Memory** %MEMORY
  %loadMem_429571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7818 = getelementptr inbounds %struct.GPR, %struct.GPR* %7817, i32 0, i32 33
  %7819 = getelementptr inbounds %struct.Reg, %struct.Reg* %7818, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7819 to i64*
  %7820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7821 = getelementptr inbounds %struct.GPR, %struct.GPR* %7820, i32 0, i32 5
  %7822 = getelementptr inbounds %struct.Reg, %struct.Reg* %7821, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7822 to i32*
  %7823 = load i32, i32* %ECX.i
  %7824 = zext i32 %7823 to i64
  %7825 = load i64, i64* %PC.i17
  %7826 = add i64 %7825, 2
  store i64 %7826, i64* %PC.i17
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7828 = bitcast %union.anon* %7827 to i32*
  %7829 = load i32, i32* %7828, align 8
  %7830 = zext i32 %7829 to i64
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %7832 = bitcast %union.anon* %7831 to i32*
  %7833 = load i32, i32* %7832, align 8
  %7834 = zext i32 %7833 to i64
  %7835 = shl i64 %7824, 32
  %7836 = ashr exact i64 %7835, 32
  %7837 = shl i64 %7834, 32
  %7838 = or i64 %7837, %7830
  %7839 = sdiv i64 %7838, %7836
  %7840 = shl i64 %7839, 32
  %7841 = ashr exact i64 %7840, 32
  %7842 = icmp eq i64 %7839, %7841
  br i1 %7842, label %7847, label %7843

; <label>:7843:                                   ; preds = %block_.L_42952a
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7845 = load i64, i64* %7844, align 8
  %7846 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7845, %struct.Memory* %loadMem_429571)
  br label %routine_idivl__ecx.exit

; <label>:7847:                                   ; preds = %block_.L_42952a
  %7848 = srem i64 %7838, %7836
  %7849 = getelementptr inbounds %union.anon, %union.anon* %7827, i64 0, i32 0
  %7850 = and i64 %7839, 4294967295
  store i64 %7850, i64* %7849, align 8
  %7851 = getelementptr inbounds %union.anon, %union.anon* %7831, i64 0, i32 0
  %7852 = and i64 %7848, 4294967295
  store i64 %7852, i64* %7851, align 8
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7853, align 1
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %7854, align 1
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7855, align 1
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7856, align 1
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7857, align 1
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7858, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %7843, %7847
  %7859 = phi %struct.Memory* [ %7846, %7843 ], [ %loadMem_429571, %7847 ]
  store %struct.Memory* %7859, %struct.Memory** %MEMORY
  %loadMem_429573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7861 = getelementptr inbounds %struct.GPR, %struct.GPR* %7860, i32 0, i32 33
  %7862 = getelementptr inbounds %struct.Reg, %struct.Reg* %7861, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7862 to i64*
  %7863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7864 = getelementptr inbounds %struct.GPR, %struct.GPR* %7863, i32 0, i32 17
  %7865 = getelementptr inbounds %struct.Reg, %struct.Reg* %7864, i32 0, i32 0
  %R8.i16 = bitcast %union.anon* %7865 to i64*
  %7866 = load i64, i64* %PC.i15
  %7867 = add i64 %7866, 8
  store i64 %7867, i64* %PC.i15
  %7868 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7868, i64* %R8.i16, align 8
  store %struct.Memory* %loadMem_429573, %struct.Memory** %MEMORY
  %loadMem_42957b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7870 = getelementptr inbounds %struct.GPR, %struct.GPR* %7869, i32 0, i32 33
  %7871 = getelementptr inbounds %struct.Reg, %struct.Reg* %7870, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7871 to i64*
  %7872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7873 = getelementptr inbounds %struct.GPR, %struct.GPR* %7872, i32 0, i32 1
  %7874 = getelementptr inbounds %struct.Reg, %struct.Reg* %7873, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7874 to i32*
  %7875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7876 = getelementptr inbounds %struct.GPR, %struct.GPR* %7875, i32 0, i32 17
  %7877 = getelementptr inbounds %struct.Reg, %struct.Reg* %7876, i32 0, i32 0
  %R8.i14 = bitcast %union.anon* %7877 to i64*
  %7878 = load i64, i64* %R8.i14
  %7879 = add i64 %7878, 16
  %7880 = load i32, i32* %EAX.i
  %7881 = zext i32 %7880 to i64
  %7882 = load i64, i64* %PC.i13
  %7883 = add i64 %7882, 4
  store i64 %7883, i64* %PC.i13
  %7884 = inttoptr i64 %7879 to i32*
  store i32 %7880, i32* %7884
  store %struct.Memory* %loadMem_42957b, %struct.Memory** %MEMORY
  %loadMem_42957f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7886 = getelementptr inbounds %struct.GPR, %struct.GPR* %7885, i32 0, i32 33
  %7887 = getelementptr inbounds %struct.Reg, %struct.Reg* %7886, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7887 to i64*
  %7888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7889 = getelementptr inbounds %struct.GPR, %struct.GPR* %7888, i32 0, i32 17
  %7890 = getelementptr inbounds %struct.Reg, %struct.Reg* %7889, i32 0, i32 0
  %R8.i12 = bitcast %union.anon* %7890 to i64*
  %7891 = load i64, i64* %PC.i11
  %7892 = add i64 %7891, 8
  store i64 %7892, i64* %PC.i11
  %7893 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7893, i64* %R8.i12, align 8
  store %struct.Memory* %loadMem_42957f, %struct.Memory** %MEMORY
  %loadMem_429587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7895 = getelementptr inbounds %struct.GPR, %struct.GPR* %7894, i32 0, i32 33
  %7896 = getelementptr inbounds %struct.Reg, %struct.Reg* %7895, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7896 to i64*
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7898 = getelementptr inbounds %struct.GPR, %struct.GPR* %7897, i32 0, i32 17
  %7899 = getelementptr inbounds %struct.Reg, %struct.Reg* %7898, i32 0, i32 0
  %R8.i10 = bitcast %union.anon* %7899 to i64*
  %7900 = load i64, i64* %R8.i10
  %7901 = add i64 %7900, 72504
  %7902 = load i64, i64* %PC.i9
  %7903 = add i64 %7902, 11
  store i64 %7903, i64* %PC.i9
  %7904 = inttoptr i64 %7901 to i32*
  store i32 0, i32* %7904
  store %struct.Memory* %loadMem_429587, %struct.Memory** %MEMORY
  %loadMem_429592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 33
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7907 to i64*
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7909 = getelementptr inbounds %struct.GPR, %struct.GPR* %7908, i32 0, i32 17
  %7910 = getelementptr inbounds %struct.Reg, %struct.Reg* %7909, i32 0, i32 0
  %R8.i8 = bitcast %union.anon* %7910 to i64*
  %7911 = load i64, i64* %PC.i7
  %7912 = add i64 %7911, 8
  store i64 %7912, i64* %PC.i7
  %7913 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7913, i64* %R8.i8, align 8
  store %struct.Memory* %loadMem_429592, %struct.Memory** %MEMORY
  %loadMem_42959a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7915 = getelementptr inbounds %struct.GPR, %struct.GPR* %7914, i32 0, i32 33
  %7916 = getelementptr inbounds %struct.Reg, %struct.Reg* %7915, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7916 to i64*
  %7917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7918 = getelementptr inbounds %struct.GPR, %struct.GPR* %7917, i32 0, i32 17
  %7919 = getelementptr inbounds %struct.Reg, %struct.Reg* %7918, i32 0, i32 0
  %R8.i = bitcast %union.anon* %7919 to i64*
  %7920 = load i64, i64* %R8.i
  %7921 = add i64 %7920, 72508
  %7922 = load i64, i64* %PC.i6
  %7923 = add i64 %7922, 11
  store i64 %7923, i64* %PC.i6
  %7924 = inttoptr i64 %7921 to i32*
  store i32 0, i32* %7924
  store %struct.Memory* %loadMem_42959a, %struct.Memory** %MEMORY
  %loadMem1_4295a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7926 = getelementptr inbounds %struct.GPR, %struct.GPR* %7925, i32 0, i32 33
  %7927 = getelementptr inbounds %struct.Reg, %struct.Reg* %7926, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7927 to i64*
  %7928 = load i64, i64* %PC.i5
  %7929 = add i64 %7928, 18315
  %7930 = load i64, i64* %PC.i5
  %7931 = add i64 %7930, 5
  %7932 = load i64, i64* %PC.i5
  %7933 = add i64 %7932, 5
  store i64 %7933, i64* %PC.i5
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7935 = load i64, i64* %7934, align 8
  %7936 = add i64 %7935, -8
  %7937 = inttoptr i64 %7936 to i64*
  store i64 %7931, i64* %7937
  store i64 %7936, i64* %7934, align 8
  %7938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7929, i64* %7938, align 8
  store %struct.Memory* %loadMem1_4295a5, %struct.Memory** %MEMORY
  %loadMem2_4295a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4295a5 = load i64, i64* %3
  %call2_4295a5 = call %struct.Memory* @sub_42dd30.init_dec_ref_pic_marking_buffer(%struct.State* %0, i64 %loadPC_4295a5, %struct.Memory* %loadMem2_4295a5)
  store %struct.Memory* %call2_4295a5, %struct.Memory** %MEMORY
  %loadMem_4295aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7940 = getelementptr inbounds %struct.GPR, %struct.GPR* %7939, i32 0, i32 33
  %7941 = getelementptr inbounds %struct.Reg, %struct.Reg* %7940, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7941 to i64*
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7943 = getelementptr inbounds %struct.GPR, %struct.GPR* %7942, i32 0, i32 13
  %7944 = getelementptr inbounds %struct.Reg, %struct.Reg* %7943, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7944 to i64*
  %7945 = load i64, i64* %RSP.i
  %7946 = load i64, i64* %PC.i4
  %7947 = add i64 %7946, 4
  store i64 %7947, i64* %PC.i4
  %7948 = add i64 64, %7945
  store i64 %7948, i64* %RSP.i, align 8
  %7949 = icmp ult i64 %7948, %7945
  %7950 = icmp ult i64 %7948, 64
  %7951 = or i1 %7949, %7950
  %7952 = zext i1 %7951 to i8
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7952, i8* %7953, align 1
  %7954 = trunc i64 %7948 to i32
  %7955 = and i32 %7954, 255
  %7956 = call i32 @llvm.ctpop.i32(i32 %7955)
  %7957 = trunc i32 %7956 to i8
  %7958 = and i8 %7957, 1
  %7959 = xor i8 %7958, 1
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7959, i8* %7960, align 1
  %7961 = xor i64 64, %7945
  %7962 = xor i64 %7961, %7948
  %7963 = lshr i64 %7962, 4
  %7964 = trunc i64 %7963 to i8
  %7965 = and i8 %7964, 1
  %7966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7965, i8* %7966, align 1
  %7967 = icmp eq i64 %7948, 0
  %7968 = zext i1 %7967 to i8
  %7969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7968, i8* %7969, align 1
  %7970 = lshr i64 %7948, 63
  %7971 = trunc i64 %7970 to i8
  %7972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7971, i8* %7972, align 1
  %7973 = lshr i64 %7945, 63
  %7974 = xor i64 %7970, %7973
  %7975 = add i64 %7974, %7970
  %7976 = icmp eq i64 %7975, 2
  %7977 = zext i1 %7976 to i8
  %7978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7977, i8* %7978, align 1
  store %struct.Memory* %loadMem_4295aa, %struct.Memory** %MEMORY
  %loadMem_4295ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7980 = getelementptr inbounds %struct.GPR, %struct.GPR* %7979, i32 0, i32 33
  %7981 = getelementptr inbounds %struct.Reg, %struct.Reg* %7980, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7981 to i64*
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7983 = getelementptr inbounds %struct.GPR, %struct.GPR* %7982, i32 0, i32 15
  %7984 = getelementptr inbounds %struct.Reg, %struct.Reg* %7983, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7984 to i64*
  %7985 = load i64, i64* %PC.i2
  %7986 = add i64 %7985, 1
  store i64 %7986, i64* %PC.i2
  %7987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7988 = load i64, i64* %7987, align 8
  %7989 = add i64 %7988, 8
  %7990 = inttoptr i64 %7988 to i64*
  %7991 = load i64, i64* %7990
  store i64 %7991, i64* %RBP.i3, align 8
  store i64 %7989, i64* %7987, align 8
  store %struct.Memory* %loadMem_4295ae, %struct.Memory** %MEMORY
  %loadMem_4295af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 33
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7994 to i64*
  %7995 = load i64, i64* %PC.i1
  %7996 = add i64 %7995, 1
  store i64 %7996, i64* %PC.i1
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7999 = load i64, i64* %7998, align 8
  %8000 = inttoptr i64 %7999 to i64*
  %8001 = load i64, i64* %8000
  store i64 %8001, i64* %7997, align 8
  %8002 = add i64 %7999, 8
  store i64 %8002, i64* %7998, align 8
  store %struct.Memory* %loadMem_4295af, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4295af
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

define %struct.Memory* @routine_movq_0x722ca0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722ca0_type* @G_0x722ca0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x6cea00(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*)
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

define %struct.Memory* @routine_movl__0x0__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x88__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x8c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 140
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xa4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x9c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x94__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xa0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x98__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x90__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl_0x3c__rdi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = shl i64 %16, 32
  %22 = ashr exact i64 %21, 32
  %23 = mul i64 %22, %20
  %24 = trunc i64 %23 to i32
  %25 = and i64 %23, 4294967295
  store i64 %25, i64* %12, align 8
  %26 = shl i64 %23, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp ne i64 %27, %23
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %30, align 1
  %31 = and i32 %24, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %38, align 1
  %39 = lshr i32 %24, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %29, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_jge_.L_428d51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 632, %15
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

define %struct.Memory* @routine_movl__0xffffffff__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -1, i32* %13
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

define %struct.Memory* @routine_jmpq_.L_428cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x118e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_42903f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x6cc024___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x6cc020___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_imull__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x11870__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71792
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x118c4__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71876
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x118c8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71880
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11870__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71792
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x118c4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71876
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x988__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2440
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

define %struct.Memory* @routine_je_.L_428e26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_428e26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x988__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 2440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x11870__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71792
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_428e6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x11870__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71792
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x6cd870(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6cd870_type* @G_0x6cd870 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3236
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

define %struct.Memory* @routine_jne_.L_428fba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_428f01(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x994__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2452
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

define %struct.Memory* @routine_jle_.L_428ee6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x994__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2452
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

define %struct.Memory* @routine_jl_.L_428ee6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x998__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 2456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_428efc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_428fb5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_428f56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_428f56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x98c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 2444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_428f6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_428fb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4fc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x500__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x2c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_428fba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x5c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x4c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 76
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

define %struct.Memory* @routine_jle_.L_42903a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_idivl_0x4c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

define %struct.Memory* @routine_movl_0x3c__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

define %struct.Memory* @routine_movl__edx__0x58__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42952a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx__0x118e0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 71904
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6cc024___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x6cc024_type* @G_0x6cc024 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_imull_0x118e0__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 71904
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_0x6cea00___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ECX
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

define %struct.Memory* @routine_cmpl_0x11ab8__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72376
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

define %struct.Memory* @routine_jge_.L_429120(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_0x118e0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 71904
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4290ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x988__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2440
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

define %struct.Memory* @routine_je_.L_429178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_429178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movsd_0x886e0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x886e0__rip__type* @G_0x886e0__rip_ to i64)
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

define %struct.Memory* @routine_jne_.L_4291e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x88689__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x88689__rip__type* @G_0x88689__rip_ to i64)
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

define %struct.Memory* @routine_je_.L_429259(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x118d8__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movq_0x6d0278___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x118e4__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_addl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_429294(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2sdl_0x118e4__rcx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_jl_.L_4292bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4294da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4294da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_42933e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_42933e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x990__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 2448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429357(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x4d8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x11b30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4294d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_42943c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_42943c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x99c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2460
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

define %struct.Memory* @routine_jge_.L_4293d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_429429(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 51
  %14 = icmp ult i32 %9, 51
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
  %23 = xor i64 51, %10
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

define %struct.Memory* @routine_jle_.L_429404(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x33___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 51, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_429423(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4294d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_0x4dc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 1244
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

define %struct.Memory* @routine_jge_.L_42946b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4294c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_42949d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4294bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_4294d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_429525(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_429520(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11ac0__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72384
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.UpdateSubseqInfo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4294967295, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.UpdateSceneInformation(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x100___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 256, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x3c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_movl__eax__0x10__r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b38__r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b3c__r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72508
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.init_dec_ref_pic_marking_buffer(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
