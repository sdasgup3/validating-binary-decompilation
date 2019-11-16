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
%G_0x6f96f8_type = type <{ [16 x i8] }>
%G_0x70d4b4_type = type <{ [16 x i8] }>
%G_0x70d4b8_type = type <{ [16 x i8] }>
%G_0x70d4bc_type = type <{ [16 x i8] }>
%G_0x70d4c0_type = type <{ [16 x i8] }>
%G_0x70d4c4_type = type <{ [16 x i8] }>
%G_0x70d4c8_type = type <{ [16 x i8] }>
%G_0x70d4cc_type = type <{ [16 x i8] }>
%G_0x9ddb5__rip__type = type <{ [4 x i8] }>
%G_0x9ddb9__rip__type = type <{ [4 x i8] }>
%G_0x9ddbd__rip__type = type <{ [4 x i8] }>
%G__0x4b8ad0_type = type <{ [8 x i8] }>
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
@G_0x6f96f8 = global %G_0x6f96f8_type zeroinitializer
@G_0x70d4b4 = global %G_0x70d4b4_type zeroinitializer
@G_0x70d4b8 = global %G_0x70d4b8_type zeroinitializer
@G_0x70d4bc = global %G_0x70d4bc_type zeroinitializer
@G_0x70d4c0 = global %G_0x70d4c0_type zeroinitializer
@G_0x70d4c4 = global %G_0x70d4c4_type zeroinitializer
@G_0x70d4c8 = global %G_0x70d4c8_type zeroinitializer
@G_0x70d4cc = global %G_0x70d4cc_type zeroinitializer
@G_0x9ddb5__rip_ = global %G_0x9ddb5__rip__type zeroinitializer
@G_0x9ddb9__rip_ = global %G_0x9ddb9__rip__type zeroinitializer
@G_0x9ddbd__rip_ = global %G_0x9ddbd__rip__type zeroinitializer
@G__0x4b8ad0 = global %G__0x4b8ad0_type zeroinitializer

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

; Function Attrs: alwaysinline
define %struct.Memory* @DefineThresholdMB(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41f9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41f9c0, %struct.Memory** %MEMORY
  %loadMem_41f9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i51
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i51
  store i64 %26, i64* %RBP.i52, align 8
  store %struct.Memory* %loadMem_41f9c1, %struct.Memory** %MEMORY
  %loadMem_41f9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i96
  %36 = add i64 %35, 5
  store i64 %36, i64* %PC.i96
  store i64 6, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_41f9c4, %struct.Memory** %MEMORY
  %loadMem_41f9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 33
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %42 to i64*
  %43 = load i64, i64* %PC.i135
  %44 = add i64 %43, 8
  store i64 %44, i64* %PC.i135
  %45 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %45, i64* %RCX.i136, align 8
  store %struct.Memory* %loadMem_41f9c9, %struct.Memory** %MEMORY
  %loadMem_41f9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 33
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %48 to i64*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.GPR, %struct.GPR* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %50, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %51 to i64*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %53 = getelementptr inbounds %struct.GPR, %struct.GPR* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.Reg, %struct.Reg* %53, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %54 to i64*
  %55 = load i64, i64* %RCX.i187
  %56 = add i64 %55, 16
  %57 = load i64, i64* %PC.i186
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC.i186
  %59 = inttoptr i64 %56 to i32*
  %60 = load i32, i32* %59
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_41f9d1, %struct.Memory** %MEMORY
  %loadMem_41f9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 33
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %64 to i64*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %66 = getelementptr inbounds %struct.GPR, %struct.GPR* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.Reg, %struct.Reg* %66, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %67 to i64*
  %68 = load i64, i64* %RDX.i204
  %69 = load i64, i64* %PC.i203
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC.i203
  %71 = trunc i64 %68 to i32
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %RDX.i204, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %73, align 1
  %74 = and i32 %71, 255
  %75 = call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %78, i8* %79, align 1
  %80 = trunc i64 %68 to i32
  %81 = xor i32 %80, %71
  %82 = lshr i32 %81, 4
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %84, i8* %85, align 1
  %86 = icmp eq i32 %71, 0
  %87 = zext i1 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %87, i8* %88, align 1
  %89 = lshr i32 %71, 31
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %90, i8* %91, align 1
  %92 = lshr i32 %71, 31
  %93 = xor i32 %89, %92
  %94 = add i32 %93, %92
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %96, i8* %97, align 1
  store %struct.Memory* %loadMem_41f9d4, %struct.Memory** %MEMORY
  %loadMem_41f9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i214
  %108 = sub i64 %107, 24
  %109 = load i32, i32* %EAX.i213
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i212
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i212
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_41f9d7, %struct.Memory** %MEMORY
  %loadMem_41f9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %EDX.i210 = bitcast %union.anon* %119 to i32*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %122 to i64*
  %123 = load i32, i32* %EDX.i210
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC.i209
  %126 = add i64 %125, 2
  store i64 %126, i64* %PC.i209
  %127 = and i64 %124, 4294967295
  store i64 %127, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_41f9da, %struct.Memory** %MEMORY
  %loadMem_41f9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %PC.i208
  %132 = add i64 %131, 1
  store i64 %132, i64* %PC.i208
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %135 = bitcast %union.anon* %134 to i32*
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = lshr i64 %137, 32
  store i64 %138, i64* %133, align 8
  store %struct.Memory* %loadMem_41f9dc, %struct.Memory** %MEMORY
  %loadMem_41f9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RSI.i206 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i207
  %149 = sub i64 %148, 24
  %150 = load i64, i64* %PC.i205
  %151 = add i64 %150, 3
  store i64 %151, i64* %PC.i205
  %152 = inttoptr i64 %149 to i32*
  %153 = load i32, i32* %152
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RSI.i206, align 8
  store %struct.Memory* %loadMem_41f9dd, %struct.Memory** %MEMORY
  %loadMem_41f9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %ESI.i201 = bitcast %union.anon* %160 to i32*
  %161 = load i32, i32* %ESI.i201
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i200
  %164 = add i64 %163, 2
  store i64 %164, i64* %PC.i200
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %166 = bitcast %union.anon* %165 to i32*
  %167 = load i32, i32* %166, align 8
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %170 = bitcast %union.anon* %169 to i32*
  %171 = load i32, i32* %170, align 8
  %172 = zext i32 %171 to i64
  %173 = shl i64 %162, 32
  %174 = ashr exact i64 %173, 32
  %175 = shl i64 %172, 32
  %176 = or i64 %175, %168
  %177 = sdiv i64 %176, %174
  %178 = shl i64 %177, 32
  %179 = ashr exact i64 %178, 32
  %180 = icmp eq i64 %177, %179
  br i1 %180, label %185, label %181

; <label>:181:                                    ; preds = %entry
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %183, %struct.Memory* %loadMem_41f9e0)
  br label %routine_idivl__esi.exit202

; <label>:185:                                    ; preds = %entry
  %186 = srem i64 %176, %174
  %187 = getelementptr inbounds %union.anon, %union.anon* %165, i64 0, i32 0
  %188 = and i64 %177, 4294967295
  store i64 %188, i64* %187, align 8
  %189 = getelementptr inbounds %union.anon, %union.anon* %169, i64 0, i32 0
  %190 = and i64 %186, 4294967295
  store i64 %190, i64* %189, align 8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %191, align 1
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %192, align 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %193, align 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %194, align 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %195, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %196, align 1
  br label %routine_idivl__esi.exit202

routine_idivl__esi.exit202:                       ; preds = %181, %185
  %197 = phi %struct.Memory* [ %184, %181 ], [ %loadMem_41f9e0, %185 ]
  store %struct.Memory* %197, %struct.Memory** %MEMORY
  %loadMem_41f9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %EAX.i198 = bitcast %union.anon* %203 to i32*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i199
  %208 = sub i64 %207, 4
  %209 = load i32, i32* %EAX.i198
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %PC.i197
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC.i197
  %213 = inttoptr i64 %208 to i32*
  store i32 %209, i32* %213
  store %struct.Memory* %loadMem_41f9e2, %struct.Memory** %MEMORY
  %loadMem_41f9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %PC.i195
  %221 = add i64 %220, 8
  store i64 %221, i64* %PC.i195
  %222 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %222, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_41f9e5, %struct.Memory** %MEMORY
  %loadMem_41f9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RCX.i194
  %233 = add i64 %232, 16
  %234 = load i64, i64* %PC.i192
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC.i192
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_41f9ed, %struct.Memory** %MEMORY
  %loadMem_41f9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RAX.i191
  %246 = load i64, i64* %PC.i190
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC.i190
  %248 = trunc i64 %245 to i32
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX.i191, align 8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %250, align 1
  %251 = and i32 %248, 255
  %252 = call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %255, i8* %256, align 1
  %257 = trunc i64 %245 to i32
  %258 = xor i32 %257, %248
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %261, i8* %262, align 1
  %263 = icmp eq i32 %248, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %264, i8* %265, align 1
  %266 = lshr i32 %248, 31
  %267 = trunc i32 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %267, i8* %268, align 1
  %269 = lshr i32 %248, 31
  %270 = xor i32 %266, %269
  %271 = add i32 %270, %269
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1
  store %struct.Memory* %loadMem_41f9f0, %struct.Memory** %MEMORY
  %loadMem_41f9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %PC.i189
  %279 = add i64 %278, 1
  store i64 %279, i64* %PC.i189
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %282 = bitcast %union.anon* %281 to i32*
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = lshr i64 %284, 32
  store i64 %285, i64* %280, align 8
  store %struct.Memory* %loadMem_41f9f3, %struct.Memory** %MEMORY
  %loadMem_41f9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 9
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %ESI.i184 = bitcast %union.anon* %291 to i32*
  %292 = load i32, i32* %ESI.i184
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %PC.i183
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC.i183
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %297 = bitcast %union.anon* %296 to i32*
  %298 = load i32, i32* %297, align 8
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %301 = bitcast %union.anon* %300 to i32*
  %302 = load i32, i32* %301, align 8
  %303 = zext i32 %302 to i64
  %304 = shl i64 %293, 32
  %305 = ashr exact i64 %304, 32
  %306 = shl i64 %303, 32
  %307 = or i64 %306, %299
  %308 = sdiv i64 %307, %305
  %309 = shl i64 %308, 32
  %310 = ashr exact i64 %309, 32
  %311 = icmp eq i64 %308, %310
  br i1 %311, label %316, label %312

; <label>:312:                                    ; preds = %routine_idivl__esi.exit202
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %314, %struct.Memory* %loadMem_41f9f4)
  br label %routine_idivl__esi.exit185

; <label>:316:                                    ; preds = %routine_idivl__esi.exit202
  %317 = srem i64 %307, %305
  %318 = getelementptr inbounds %union.anon, %union.anon* %296, i64 0, i32 0
  %319 = and i64 %308, 4294967295
  store i64 %319, i64* %318, align 8
  %320 = getelementptr inbounds %union.anon, %union.anon* %300, i64 0, i32 0
  %321 = and i64 %317, 4294967295
  store i64 %321, i64* %320, align 8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %322, align 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %323, align 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %324, align 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %325, align 1
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %326, align 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %327, align 1
  br label %routine_idivl__esi.exit185

routine_idivl__esi.exit185:                       ; preds = %312, %316
  %328 = phi %struct.Memory* [ %315, %312 ], [ %loadMem_41f9f4, %316 ]
  store %struct.Memory* %328, %struct.Memory** %MEMORY
  %loadMem_41f9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %EDX.i181 = bitcast %union.anon* %334 to i32*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i182
  %339 = sub i64 %338, 8
  %340 = load i32, i32* %EDX.i181
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %PC.i180
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC.i180
  %344 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %344
  store %struct.Memory* %loadMem_41f9f6, %struct.Memory** %MEMORY
  %loadMem_41f9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 7
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i179
  %355 = sub i64 %354, 4
  %356 = load i64, i64* %PC.i177
  %357 = add i64 %356, 3
  store i64 %357, i64* %PC.i177
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RDX.i178, align 8
  store %struct.Memory* %loadMem_41f9f9, %struct.Memory** %MEMORY
  %loadMem_41f9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 7
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RDX.i176
  %368 = load i64, i64* %PC.i175
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC.i175
  %370 = trunc i64 %367 to i32
  %371 = add i32 15, %370
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RDX.i176, align 8
  %373 = icmp ult i32 %371, %370
  %374 = icmp ult i32 %371, 15
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %376, i8* %377, align 1
  %378 = and i32 %371, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %382, i8* %383, align 1
  %384 = xor i64 15, %367
  %385 = trunc i64 %384 to i32
  %386 = xor i32 %385, %371
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i32 %371, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %371, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1
  %397 = lshr i32 %370, 31
  %398 = xor i32 %394, %397
  %399 = add i32 %398, %394
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %401, i8* %402, align 1
  store %struct.Memory* %loadMem_41f9fc, %struct.Memory** %MEMORY
  %loadMem_41f9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 7
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %EDX.i173 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i174
  %413 = sub i64 %412, 12
  %414 = load i32, i32* %EDX.i173
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC.i172
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC.i172
  %418 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %418
  store %struct.Memory* %loadMem_41f9ff, %struct.Memory** %MEMORY
  %loadMem_41fa02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %424 to i64*
  %425 = load i64, i64* %PC.i170
  %426 = add i64 %425, 8
  store i64 %426, i64* %PC.i170
  %427 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %427, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_41fa02, %struct.Memory** %MEMORY
  %loadMem_41fa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %RCX.i169
  %435 = add i64 %434, 24
  %436 = load i64, i64* %PC.i168
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC.i168
  %438 = inttoptr i64 %435 to i32*
  %439 = load i32, i32* %438
  %440 = sub i32 %439, 2
  %441 = icmp ult i32 %439, 2
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %442, i8* %443, align 1
  %444 = and i32 %440, 255
  %445 = call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %448, i8* %449, align 1
  %450 = xor i32 %439, 2
  %451 = xor i32 %450, %440
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %454, i8* %455, align 1
  %456 = icmp eq i32 %440, 0
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %457, i8* %458, align 1
  %459 = lshr i32 %440, 31
  %460 = trunc i32 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %460, i8* %461, align 1
  %462 = lshr i32 %439, 31
  %463 = xor i32 %459, %462
  %464 = add i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %466, i8* %467, align 1
  store %struct.Memory* %loadMem_41fa0a, %struct.Memory** %MEMORY
  %loadMem_41fa0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %PC.i167
  %472 = add i64 %471, 48
  %473 = load i64, i64* %PC.i167
  %474 = add i64 %473, 6
  %475 = load i64, i64* %PC.i167
  %476 = add i64 %475, 6
  store i64 %476, i64* %PC.i167
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %478 = load i8, i8* %477, align 1
  %479 = icmp eq i8 %478, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %BRANCH_TAKEN, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %482 = select i1 %479, i64 %472, i64 %474
  store i64 %482, i64* %481, align 8
  store %struct.Memory* %loadMem_41fa0e, %struct.Memory** %MEMORY
  %loadBr_41fa0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fa0e = icmp eq i8 %loadBr_41fa0e, 1
  br i1 %cmpBr_41fa0e, label %block_.L_41fa3e, label %block_41fa14

block_41fa14:                                     ; preds = %routine_idivl__esi.exit185
  %loadMem_41fa14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %PC.i165
  %490 = add i64 %489, 5
  store i64 %490, i64* %PC.i165
  store i64 3, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_41fa14, %struct.Memory** %MEMORY
  %loadMem_41fa19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 5
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %PC.i163
  %498 = add i64 %497, 5
  store i64 %498, i64* %PC.i163
  store i64 1, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_41fa19, %struct.Memory** %MEMORY
  %loadMem_41fa1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 7
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 15
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RBP.i162
  %509 = sub i64 %508, 12
  %510 = load i64, i64* %PC.i160
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i160
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RDX.i161, align 8
  store %struct.Memory* %loadMem_41fa1e, %struct.Memory** %MEMORY
  %loadMem_41fa21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 5
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %ECX.i158 = bitcast %union.anon* %520 to i32*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i159
  %525 = sub i64 %524, 28
  %526 = load i32, i32* %ECX.i158
  %527 = zext i32 %526 to i64
  %528 = load i64, i64* %PC.i157
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC.i157
  %530 = inttoptr i64 %525 to i32*
  store i32 %526, i32* %530
  store %struct.Memory* %loadMem_41fa21, %struct.Memory** %MEMORY
  %loadMem_41fa24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 7
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %EDX.i155 = bitcast %union.anon* %536 to i32*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 5
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %539 to i64*
  %540 = load i32, i32* %EDX.i155
  %541 = zext i32 %540 to i64
  %542 = load i64, i64* %PC.i154
  %543 = add i64 %542, 2
  store i64 %543, i64* %PC.i154
  %544 = and i64 %541, 4294967295
  store i64 %544, i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_41fa24, %struct.Memory** %MEMORY
  %loadMem_41fa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 7
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RDX.i152 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 15
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RBP.i153
  %555 = sub i64 %554, 28
  %556 = load i64, i64* %PC.i151
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i151
  %558 = inttoptr i64 %555 to i32*
  %559 = load i32, i32* %558
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RDX.i152, align 8
  store %struct.Memory* %loadMem_41fa26, %struct.Memory** %MEMORY
  %loadMem_41fa29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 5
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %567 = bitcast %union.anon* %566 to %struct.anon.2*
  %CL.i148 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %567, i32 0, i32 0
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 7
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RDX.i149
  %572 = load i8, i8* %CL.i148
  %573 = zext i8 %572 to i64
  %574 = load i64, i64* %PC.i147
  %575 = add i64 %574, 2
  store i64 %575, i64* %PC.i147
  %576 = trunc i64 %573 to i5
  switch i5 %576, label %583 [
    i5 0, label %routine_shll__cl___edx.exit150
    i5 1, label %577
  ]

; <label>:577:                                    ; preds = %block_41fa14
  %578 = trunc i64 %571 to i32
  %579 = shl i32 %578, 1
  %580 = icmp slt i32 %578, 0
  %581 = icmp slt i32 %579, 0
  %582 = xor i1 %580, %581
  br label %592

; <label>:583:                                    ; preds = %block_41fa14
  %584 = and i64 %573, 31
  %585 = add i64 %584, 4294967295
  %586 = and i64 %571, 4294967295
  %587 = and i64 %585, 4294967295
  %588 = shl i64 %586, %587
  %589 = trunc i64 %588 to i32
  %590 = icmp slt i32 %589, 0
  %591 = shl i32 %589, 1
  br label %592

; <label>:592:                                    ; preds = %583, %577
  %593 = phi i1 [ %580, %577 ], [ %590, %583 ]
  %594 = phi i1 [ %582, %577 ], [ false, %583 ]
  %595 = phi i32 [ %579, %577 ], [ %591, %583 ]
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RDX.i149, align 8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %598 = zext i1 %593 to i8
  store i8 %598, i8* %597, align 1
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %600 = and i32 %595, 254
  %601 = call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %599, align 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %605, align 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %607 = icmp eq i32 %595, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %606, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %610 = lshr i32 %595, 31
  %611 = trunc i32 %610 to i8
  store i8 %611, i8* %609, align 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %613 = zext i1 %594 to i8
  store i8 %613, i8* %612, align 1
  br label %routine_shll__cl___edx.exit150

routine_shll__cl___edx.exit150:                   ; preds = %block_41fa14, %592
  store %struct.Memory* %loadMem_41fa29, %struct.Memory** %MEMORY
  %loadMem_41fa2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %619 to i32*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i146
  %624 = sub i64 %623, 32
  %625 = load i32, i32* %EAX.i145
  %626 = zext i32 %625 to i64
  %627 = load i64, i64* %PC.i144
  %628 = add i64 %627, 3
  store i64 %628, i64* %PC.i144
  %629 = inttoptr i64 %624 to i32*
  store i32 %625, i32* %629
  store %struct.Memory* %loadMem_41fa2b, %struct.Memory** %MEMORY
  %loadMem_41fa2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 7
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %EDX.i142 = bitcast %union.anon* %635 to i32*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %638 to i64*
  %639 = load i32, i32* %EDX.i142
  %640 = zext i32 %639 to i64
  %641 = load i64, i64* %PC.i141
  %642 = add i64 %641, 2
  store i64 %642, i64* %PC.i141
  %643 = and i64 %640, 4294967295
  store i64 %643, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_41fa2e, %struct.Memory** %MEMORY
  %loadMem_41fa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %PC.i140
  %648 = add i64 %647, 1
  store i64 %648, i64* %PC.i140
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %651 = bitcast %union.anon* %650 to i32*
  %652 = load i32, i32* %651, align 8
  %653 = sext i32 %652 to i64
  %654 = lshr i64 %653, 32
  store i64 %654, i64* %649, align 8
  store %struct.Memory* %loadMem_41fa30, %struct.Memory** %MEMORY
  %loadMem_41fa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 9
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RSI.i138 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i139
  %665 = sub i64 %664, 32
  %666 = load i64, i64* %PC.i137
  %667 = add i64 %666, 3
  store i64 %667, i64* %PC.i137
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RSI.i138, align 8
  store %struct.Memory* %loadMem_41fa31, %struct.Memory** %MEMORY
  %loadMem_41fa34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 9
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %ESI.i133 = bitcast %union.anon* %676 to i32*
  %677 = load i32, i32* %ESI.i133
  %678 = zext i32 %677 to i64
  %679 = load i64, i64* %PC.i132
  %680 = add i64 %679, 2
  store i64 %680, i64* %PC.i132
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %682 = bitcast %union.anon* %681 to i32*
  %683 = load i32, i32* %682, align 8
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %686 = bitcast %union.anon* %685 to i32*
  %687 = load i32, i32* %686, align 8
  %688 = zext i32 %687 to i64
  %689 = shl i64 %678, 32
  %690 = ashr exact i64 %689, 32
  %691 = shl i64 %688, 32
  %692 = or i64 %691, %684
  %693 = sdiv i64 %692, %690
  %694 = shl i64 %693, 32
  %695 = ashr exact i64 %694, 32
  %696 = icmp eq i64 %693, %695
  br i1 %696, label %701, label %697

; <label>:697:                                    ; preds = %routine_shll__cl___edx.exit150
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %699, %struct.Memory* %loadMem_41fa34)
  br label %routine_idivl__esi.exit134

; <label>:701:                                    ; preds = %routine_shll__cl___edx.exit150
  %702 = srem i64 %692, %690
  %703 = getelementptr inbounds %union.anon, %union.anon* %681, i64 0, i32 0
  %704 = and i64 %693, 4294967295
  store i64 %704, i64* %703, align 8
  %705 = getelementptr inbounds %union.anon, %union.anon* %685, i64 0, i32 0
  %706 = and i64 %702, 4294967295
  store i64 %706, i64* %705, align 8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %707, align 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %708, align 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %709, align 1
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %710, align 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %711, align 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %712, align 1
  br label %routine_idivl__esi.exit134

routine_idivl__esi.exit134:                       ; preds = %697, %701
  %713 = phi %struct.Memory* [ %700, %697 ], [ %loadMem_41fa34, %701 ]
  store %struct.Memory* %713, %struct.Memory** %MEMORY
  %loadMem_41fa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %719 to i32*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i131
  %724 = sub i64 %723, 16
  %725 = load i32, i32* %EAX.i130
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %PC.i129
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC.i129
  %729 = inttoptr i64 %724 to i32*
  store i32 %725, i32* %729
  store %struct.Memory* %loadMem_41fa36, %struct.Memory** %MEMORY
  %loadMem_41fa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %PC.i128
  %734 = add i64 %733, 42
  %735 = load i64, i64* %PC.i128
  %736 = add i64 %735, 5
  store i64 %736, i64* %PC.i128
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %734, i64* %737, align 8
  store %struct.Memory* %loadMem_41fa39, %struct.Memory** %MEMORY
  br label %block_.L_41fa63

block_.L_41fa3e:                                  ; preds = %routine_idivl__esi.exit185
  %loadMem_41fa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %PC.i126
  %745 = add i64 %744, 5
  store i64 %745, i64* %PC.i126
  store i64 6, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_41fa3e, %struct.Memory** %MEMORY
  %loadMem_41fa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 5
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %PC.i124
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC.i124
  store i64 1, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_41fa43, %struct.Memory** %MEMORY
  %loadMem_41fa48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 7
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RBP.i123
  %764 = sub i64 %763, 12
  %765 = load i64, i64* %PC.i121
  %766 = add i64 %765, 3
  store i64 %766, i64* %PC.i121
  %767 = inttoptr i64 %764 to i32*
  %768 = load i32, i32* %767
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RDX.i122, align 8
  store %struct.Memory* %loadMem_41fa48, %struct.Memory** %MEMORY
  %loadMem_41fa4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 5
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %ECX.i119 = bitcast %union.anon* %775 to i32*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RBP.i120
  %780 = sub i64 %779, 36
  %781 = load i32, i32* %ECX.i119
  %782 = zext i32 %781 to i64
  %783 = load i64, i64* %PC.i118
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC.i118
  %785 = inttoptr i64 %780 to i32*
  store i32 %781, i32* %785
  store %struct.Memory* %loadMem_41fa4b, %struct.Memory** %MEMORY
  %loadMem_41fa4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 7
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %EDX.i116 = bitcast %union.anon* %791 to i32*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 5
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %794 to i64*
  %795 = load i32, i32* %EDX.i116
  %796 = zext i32 %795 to i64
  %797 = load i64, i64* %PC.i115
  %798 = add i64 %797, 2
  store i64 %798, i64* %PC.i115
  %799 = and i64 %796, 4294967295
  store i64 %799, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_41fa4e, %struct.Memory** %MEMORY
  %loadMem_41fa50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 7
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RBP.i114
  %810 = sub i64 %809, 36
  %811 = load i64, i64* %PC.i112
  %812 = add i64 %811, 3
  store i64 %812, i64* %PC.i112
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_41fa50, %struct.Memory** %MEMORY
  %loadMem_41fa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 5
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %822 = bitcast %union.anon* %821 to %struct.anon.2*
  %CL.i109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %822, i32 0, i32 0
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 7
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %RDX.i110
  %827 = load i8, i8* %CL.i109
  %828 = zext i8 %827 to i64
  %829 = load i64, i64* %PC.i108
  %830 = add i64 %829, 2
  store i64 %830, i64* %PC.i108
  %831 = trunc i64 %828 to i5
  switch i5 %831, label %838 [
    i5 0, label %routine_shll__cl___edx.exit111
    i5 1, label %832
  ]

; <label>:832:                                    ; preds = %block_.L_41fa3e
  %833 = trunc i64 %826 to i32
  %834 = shl i32 %833, 1
  %835 = icmp slt i32 %833, 0
  %836 = icmp slt i32 %834, 0
  %837 = xor i1 %835, %836
  br label %847

; <label>:838:                                    ; preds = %block_.L_41fa3e
  %839 = and i64 %828, 31
  %840 = add i64 %839, 4294967295
  %841 = and i64 %826, 4294967295
  %842 = and i64 %840, 4294967295
  %843 = shl i64 %841, %842
  %844 = trunc i64 %843 to i32
  %845 = icmp slt i32 %844, 0
  %846 = shl i32 %844, 1
  br label %847

; <label>:847:                                    ; preds = %838, %832
  %848 = phi i1 [ %835, %832 ], [ %845, %838 ]
  %849 = phi i1 [ %837, %832 ], [ false, %838 ]
  %850 = phi i32 [ %834, %832 ], [ %846, %838 ]
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RDX.i110, align 8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %853 = zext i1 %848 to i8
  store i8 %853, i8* %852, align 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %855 = and i32 %850, 254
  %856 = call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %854, align 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %860, align 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %862 = icmp eq i32 %850, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %861, align 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %865 = lshr i32 %850, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %864, align 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %868 = zext i1 %849 to i8
  store i8 %868, i8* %867, align 1
  br label %routine_shll__cl___edx.exit111

routine_shll__cl___edx.exit111:                   ; preds = %block_.L_41fa3e, %847
  store %struct.Memory* %loadMem_41fa53, %struct.Memory** %MEMORY
  %loadMem_41fa55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %874 to i32*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 15
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RBP.i107
  %879 = sub i64 %878, 40
  %880 = load i32, i32* %EAX.i106
  %881 = zext i32 %880 to i64
  %882 = load i64, i64* %PC.i105
  %883 = add i64 %882, 3
  store i64 %883, i64* %PC.i105
  %884 = inttoptr i64 %879 to i32*
  store i32 %880, i32* %884
  store %struct.Memory* %loadMem_41fa55, %struct.Memory** %MEMORY
  %loadMem_41fa58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 7
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %EDX.i103 = bitcast %union.anon* %890 to i32*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %893 to i64*
  %894 = load i32, i32* %EDX.i103
  %895 = zext i32 %894 to i64
  %896 = load i64, i64* %PC.i102
  %897 = add i64 %896, 2
  store i64 %897, i64* %PC.i102
  %898 = and i64 %895, 4294967295
  store i64 %898, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_41fa58, %struct.Memory** %MEMORY
  %loadMem_41fa5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %PC.i101
  %903 = add i64 %902, 1
  store i64 %903, i64* %PC.i101
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %906 = bitcast %union.anon* %905 to i32*
  %907 = load i32, i32* %906, align 8
  %908 = sext i32 %907 to i64
  %909 = lshr i64 %908, 32
  store i64 %909, i64* %904, align 8
  store %struct.Memory* %loadMem_41fa5a, %struct.Memory** %MEMORY
  %loadMem_41fa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 9
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RSI.i99 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RBP.i100
  %920 = sub i64 %919, 40
  %921 = load i64, i64* %PC.i98
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC.i98
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RSI.i99, align 8
  store %struct.Memory* %loadMem_41fa5b, %struct.Memory** %MEMORY
  %loadMem_41fa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 9
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %931 to i32*
  %932 = load i32, i32* %ESI.i
  %933 = zext i32 %932 to i64
  %934 = load i64, i64* %PC.i95
  %935 = add i64 %934, 2
  store i64 %935, i64* %PC.i95
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %937 = bitcast %union.anon* %936 to i32*
  %938 = load i32, i32* %937, align 8
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %941 = bitcast %union.anon* %940 to i32*
  %942 = load i32, i32* %941, align 8
  %943 = zext i32 %942 to i64
  %944 = shl i64 %933, 32
  %945 = ashr exact i64 %944, 32
  %946 = shl i64 %943, 32
  %947 = or i64 %946, %939
  %948 = sdiv i64 %947, %945
  %949 = shl i64 %948, 32
  %950 = ashr exact i64 %949, 32
  %951 = icmp eq i64 %948, %950
  br i1 %951, label %956, label %952

; <label>:952:                                    ; preds = %routine_shll__cl___edx.exit111
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %954 = load i64, i64* %953, align 8
  %955 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %954, %struct.Memory* %loadMem_41fa5e)
  br label %routine_idivl__esi.exit

; <label>:956:                                    ; preds = %routine_shll__cl___edx.exit111
  %957 = srem i64 %947, %945
  %958 = getelementptr inbounds %union.anon, %union.anon* %936, i64 0, i32 0
  %959 = and i64 %948, 4294967295
  store i64 %959, i64* %958, align 8
  %960 = getelementptr inbounds %union.anon, %union.anon* %940, i64 0, i32 0
  %961 = and i64 %957, 4294967295
  store i64 %961, i64* %960, align 8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %962, align 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %963, align 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %964, align 1
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %965, align 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %966, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %967, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %952, %956
  %968 = phi %struct.Memory* [ %955, %952 ], [ %loadMem_41fa5e, %956 ]
  store %struct.Memory* %968, %struct.Memory** %MEMORY
  %loadMem_41fa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 1
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %974 to i32*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %RBP.i94
  %979 = sub i64 %978, 16
  %980 = load i32, i32* %EAX.i93
  %981 = zext i32 %980 to i64
  %982 = load i64, i64* %PC.i92
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC.i92
  %984 = inttoptr i64 %979 to i32*
  store i32 %980, i32* %984
  store %struct.Memory* %loadMem_41fa60, %struct.Memory** %MEMORY
  br label %block_.L_41fa63

block_.L_41fa63:                                  ; preds = %routine_idivl__esi.exit, %routine_idivl__esi.exit134
  %loadMem_41fa63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %989 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %988, i64 0, i64 0
  %YMM0.i91 = bitcast %union.VectorReg* %989 to %"class.std::bitset"*
  %990 = bitcast %"class.std::bitset"* %YMM0.i91 to i8*
  %991 = load i64, i64* %PC.i90
  %992 = add i64 %991, ptrtoint (%G_0x9ddbd__rip__type* @G_0x9ddbd__rip_ to i64)
  %993 = load i64, i64* %PC.i90
  %994 = add i64 %993, 8
  store i64 %994, i64* %PC.i90
  %995 = inttoptr i64 %992 to float*
  %996 = load float, float* %995
  %997 = bitcast i8* %990 to float*
  store float %996, float* %997, align 1
  %998 = getelementptr inbounds i8, i8* %990, i64 4
  %999 = bitcast i8* %998 to float*
  store float 0.000000e+00, float* %999, align 1
  %1000 = getelementptr inbounds i8, i8* %990, i64 8
  %1001 = bitcast i8* %1000 to float*
  store float 0.000000e+00, float* %1001, align 1
  %1002 = getelementptr inbounds i8, i8* %990, i64 12
  %1003 = bitcast i8* %1002 to float*
  store float 0.000000e+00, float* %1003, align 1
  store %struct.Memory* %loadMem_41fa63, %struct.Memory** %MEMORY
  %loadMem_41fa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1007, i64 0, i64 1
  %YMM1.i89 = bitcast %union.VectorReg* %1008 to %"class.std::bitset"*
  %1009 = bitcast %"class.std::bitset"* %YMM1.i89 to i8*
  %1010 = load i64, i64* %PC.i88
  %1011 = add i64 %1010, ptrtoint (%G_0x9ddb9__rip__type* @G_0x9ddb9__rip_ to i64)
  %1012 = load i64, i64* %PC.i88
  %1013 = add i64 %1012, 8
  store i64 %1013, i64* %PC.i88
  %1014 = inttoptr i64 %1011 to float*
  %1015 = load float, float* %1014
  %1016 = bitcast i8* %1009 to float*
  store float %1015, float* %1016, align 1
  %1017 = getelementptr inbounds i8, i8* %1009, i64 4
  %1018 = bitcast i8* %1017 to float*
  store float 0.000000e+00, float* %1018, align 1
  %1019 = getelementptr inbounds i8, i8* %1009, i64 8
  %1020 = bitcast i8* %1019 to float*
  store float 0.000000e+00, float* %1020, align 1
  %1021 = getelementptr inbounds i8, i8* %1009, i64 12
  %1022 = bitcast i8* %1021 to float*
  store float 0.000000e+00, float* %1022, align 1
  store %struct.Memory* %loadMem_41fa6b, %struct.Memory** %MEMORY
  %loadMem_41fa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1026, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1027 to %"class.std::bitset"*
  %1028 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1029 = load i64, i64* %PC.i87
  %1030 = add i64 %1029, ptrtoint (%G_0x9ddb5__rip__type* @G_0x9ddb5__rip_ to i64)
  %1031 = load i64, i64* %PC.i87
  %1032 = add i64 %1031, 8
  store i64 %1032, i64* %PC.i87
  %1033 = inttoptr i64 %1030 to float*
  %1034 = load float, float* %1033
  %1035 = bitcast i8* %1028 to float*
  store float %1034, float* %1035, align 1
  %1036 = getelementptr inbounds i8, i8* %1028, i64 4
  %1037 = bitcast i8* %1036 to float*
  store float 0.000000e+00, float* %1037, align 1
  %1038 = getelementptr inbounds i8, i8* %1028, i64 8
  %1039 = bitcast i8* %1038 to float*
  store float 0.000000e+00, float* %1039, align 1
  %1040 = getelementptr inbounds i8, i8* %1028, i64 12
  %1041 = bitcast i8* %1040 to float*
  store float 0.000000e+00, float* %1041, align 1
  store %struct.Memory* %loadMem_41fa73, %struct.Memory** %MEMORY
  %loadMem_41fa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %PC.i85
  %1049 = add i64 %1048, 10
  store i64 %1049, i64* %PC.i85
  store i64 ptrtoint (%G__0x4b8ad0_type* @G__0x4b8ad0 to i64), i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_41fa7b, %struct.Memory** %MEMORY
  %loadMem_41fa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 5
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %PC.i83
  %1057 = add i64 %1056, 5
  store i64 %1057, i64* %PC.i83
  store i64 1, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_41fa85, %struct.Memory** %MEMORY
  %loadMem_41fa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 7
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 15
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RBP.i82
  %1068 = sub i64 %1067, 12
  %1069 = load i64, i64* %PC.i80
  %1070 = add i64 %1069, 3
  store i64 %1070, i64* %PC.i80
  %1071 = inttoptr i64 %1068 to i32*
  %1072 = load i32, i32* %1071
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RDX.i81, align 8
  store %struct.Memory* %loadMem_41fa8a, %struct.Memory** %MEMORY
  %loadMem_41fa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 5
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1079 to i32*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 15
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %RBP.i79
  %1084 = sub i64 %1083, 44
  %1085 = load i32, i32* %ECX.i
  %1086 = zext i32 %1085 to i64
  %1087 = load i64, i64* %PC.i78
  %1088 = add i64 %1087, 3
  store i64 %1088, i64* %PC.i78
  %1089 = inttoptr i64 %1084 to i32*
  store i32 %1085, i32* %1089
  store %struct.Memory* %loadMem_41fa8d, %struct.Memory** %MEMORY
  %loadMem_41fa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 7
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %EDX.i77 = bitcast %union.anon* %1095 to i32*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 5
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1098 to i64*
  %1099 = load i32, i32* %EDX.i77
  %1100 = zext i32 %1099 to i64
  %1101 = load i64, i64* %PC.i76
  %1102 = add i64 %1101, 2
  store i64 %1102, i64* %PC.i76
  %1103 = and i64 %1100, 4294967295
  store i64 %1103, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_41fa90, %struct.Memory** %MEMORY
  %loadMem_41fa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 7
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 15
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %1112 to i64*
  %1113 = load i64, i64* %RBP.i75
  %1114 = sub i64 %1113, 44
  %1115 = load i64, i64* %PC.i73
  %1116 = add i64 %1115, 3
  store i64 %1116, i64* %PC.i73
  %1117 = inttoptr i64 %1114 to i32*
  %1118 = load i32, i32* %1117
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_41fa92, %struct.Memory** %MEMORY
  %loadMem_41fa95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 5
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %1126 = bitcast %union.anon* %1125 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1126, i32 0, i32 0
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 7
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RDX.i72 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RDX.i72
  %1131 = load i8, i8* %CL.i
  %1132 = zext i8 %1131 to i64
  %1133 = load i64, i64* %PC.i71
  %1134 = add i64 %1133, 2
  store i64 %1134, i64* %PC.i71
  %1135 = trunc i64 %1132 to i5
  switch i5 %1135, label %1142 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %1136
  ]

; <label>:1136:                                   ; preds = %block_.L_41fa63
  %1137 = trunc i64 %1130 to i32
  %1138 = shl i32 %1137, 1
  %1139 = icmp slt i32 %1137, 0
  %1140 = icmp slt i32 %1138, 0
  %1141 = xor i1 %1139, %1140
  br label %1151

; <label>:1142:                                   ; preds = %block_.L_41fa63
  %1143 = and i64 %1132, 31
  %1144 = add i64 %1143, 4294967295
  %1145 = and i64 %1130, 4294967295
  %1146 = and i64 %1144, 4294967295
  %1147 = shl i64 %1145, %1146
  %1148 = trunc i64 %1147 to i32
  %1149 = icmp slt i32 %1148, 0
  %1150 = shl i32 %1148, 1
  br label %1151

; <label>:1151:                                   ; preds = %1142, %1136
  %1152 = phi i1 [ %1139, %1136 ], [ %1149, %1142 ]
  %1153 = phi i1 [ %1141, %1136 ], [ false, %1142 ]
  %1154 = phi i32 [ %1138, %1136 ], [ %1150, %1142 ]
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RDX.i72, align 8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1157 = zext i1 %1152 to i8
  store i8 %1157, i8* %1156, align 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1159 = and i32 %1154, 254
  %1160 = call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %1158, align 1
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1164, align 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1166 = icmp eq i32 %1154, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %1165, align 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1169 = lshr i32 %1154, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %1168, align 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1172 = zext i1 %1153 to i8
  store i8 %1172, i8* %1171, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %block_.L_41fa63, %1151
  store %struct.Memory* %loadMem_41fa95, %struct.Memory** %MEMORY
  %loadMem_41fa97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 7
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 15
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %1181 to i64*
  %1182 = load i64, i64* %RDX.i
  %1183 = load i64, i64* %RBP.i70
  %1184 = sub i64 %1183, 16
  %1185 = load i64, i64* %PC.i69
  %1186 = add i64 %1185, 3
  store i64 %1186, i64* %PC.i69
  %1187 = trunc i64 %1182 to i32
  %1188 = inttoptr i64 %1184 to i32*
  %1189 = load i32, i32* %1188
  %1190 = sub i32 %1187, %1189
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RDX.i, align 8
  %1192 = icmp ult i32 %1187, %1189
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1193, i8* %1194, align 1
  %1195 = and i32 %1190, 255
  %1196 = call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1199, i8* %1200, align 1
  %1201 = xor i32 %1189, %1187
  %1202 = xor i32 %1201, %1190
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1205, i8* %1206, align 1
  %1207 = icmp eq i32 %1190, 0
  %1208 = zext i1 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1208, i8* %1209, align 1
  %1210 = lshr i32 %1190, 31
  %1211 = trunc i32 %1210 to i8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1211, i8* %1212, align 1
  %1213 = lshr i32 %1187, 31
  %1214 = lshr i32 %1189, 31
  %1215 = xor i32 %1214, %1213
  %1216 = xor i32 %1210, %1213
  %1217 = add i32 %1216, %1215
  %1218 = icmp eq i32 %1217, 2
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1219, i8* %1220, align 1
  store %struct.Memory* %loadMem_41fa97, %struct.Memory** %MEMORY
  %loadMem_41fa9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 9
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RSI.i67 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 15
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %RBP.i68
  %1231 = sub i64 %1230, 8
  %1232 = load i64, i64* %PC.i66
  %1233 = add i64 %1232, 4
  store i64 %1233, i64* %PC.i66
  %1234 = inttoptr i64 %1231 to i32*
  %1235 = load i32, i32* %1234
  %1236 = sext i32 %1235 to i64
  store i64 %1236, i64* %RSI.i67, align 8
  store %struct.Memory* %loadMem_41fa9a, %struct.Memory** %MEMORY
  %loadMem_41fa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 9
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RSI.i65 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RSI.i65
  %1244 = load i64, i64* %PC.i64
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC.i64
  %1246 = shl i64 %1243, 5
  %1247 = icmp slt i64 %1246, 0
  %1248 = shl i64 %1246, 1
  store i64 %1248, i64* %RSI.i65, align 8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1250 = zext i1 %1247 to i8
  store i8 %1250, i8* %1249, align 1
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1252 = trunc i64 %1248 to i32
  %1253 = and i32 %1252, 254
  %1254 = call i32 @llvm.ctpop.i32(i32 %1253)
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  %1257 = xor i8 %1256, 1
  store i8 %1257, i8* %1251, align 1
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1258, align 1
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1260 = icmp eq i64 %1248, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %1259, align 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1263 = lshr i64 %1248, 63
  %1264 = trunc i64 %1263 to i8
  store i8 %1264, i8* %1262, align 1
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1265, align 1
  store %struct.Memory* %loadMem_41fa9e, %struct.Memory** %MEMORY
  %loadMem_41faa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 1
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 9
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RSI.i63 = bitcast %union.anon* %1274 to i64*
  %1275 = load i64, i64* %RAX.i62
  %1276 = load i64, i64* %RSI.i63
  %1277 = load i64, i64* %PC.i61
  %1278 = add i64 %1277, 3
  store i64 %1278, i64* %PC.i61
  %1279 = add i64 %1276, %1275
  store i64 %1279, i64* %RAX.i62, align 8
  %1280 = icmp ult i64 %1279, %1275
  %1281 = icmp ult i64 %1279, %1276
  %1282 = or i1 %1280, %1281
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1283, i8* %1284, align 1
  %1285 = trunc i64 %1279 to i32
  %1286 = and i32 %1285, 255
  %1287 = call i32 @llvm.ctpop.i32(i32 %1286)
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  %1290 = xor i8 %1289, 1
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1290, i8* %1291, align 1
  %1292 = xor i64 %1276, %1275
  %1293 = xor i64 %1292, %1279
  %1294 = lshr i64 %1293, 4
  %1295 = trunc i64 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1296, i8* %1297, align 1
  %1298 = icmp eq i64 %1279, 0
  %1299 = zext i1 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1299, i8* %1300, align 1
  %1301 = lshr i64 %1279, 63
  %1302 = trunc i64 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i64 %1275, 63
  %1305 = lshr i64 %1276, 63
  %1306 = xor i64 %1301, %1304
  %1307 = xor i64 %1301, %1305
  %1308 = add i64 %1306, %1307
  %1309 = icmp eq i64 %1308, 2
  %1310 = zext i1 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1310, i8* %1311, align 1
  store %struct.Memory* %loadMem_41faa2, %struct.Memory** %MEMORY
  %loadMem_41faa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 1
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 15
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %RBP.i60
  %1322 = sub i64 %1321, 56
  %1323 = load i64, i64* %RAX.i59
  %1324 = load i64, i64* %PC.i58
  %1325 = add i64 %1324, 4
  store i64 %1325, i64* %PC.i58
  %1326 = inttoptr i64 %1322 to i64*
  store i64 %1323, i64* %1326
  store %struct.Memory* %loadMem_41faa5, %struct.Memory** %MEMORY
  %loadMem_41faa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 7
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1332 to i32*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1335 to i64*
  %1336 = load i32, i32* %EDX.i
  %1337 = zext i32 %1336 to i64
  %1338 = load i64, i64* %PC.i57
  %1339 = add i64 %1338, 2
  store i64 %1339, i64* %PC.i57
  %1340 = and i64 %1337, 4294967295
  store i64 %1340, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41faa9, %struct.Memory** %MEMORY
  %loadMem_41faab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %PC.i56
  %1345 = add i64 %1344, 1
  store i64 %1345, i64* %PC.i56
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1348 = bitcast %union.anon* %1347 to i32*
  %1349 = load i32, i32* %1348, align 8
  %1350 = sext i32 %1349 to i64
  %1351 = lshr i64 %1350, 32
  store i64 %1351, i64* %1346, align 8
  store %struct.Memory* %loadMem_41faab, %struct.Memory** %MEMORY
  %loadMem_41faac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 9
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RSI.i54 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i55
  %1362 = sub i64 %1361, 56
  %1363 = load i64, i64* %PC.i53
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %PC.i53
  %1365 = inttoptr i64 %1362 to i64*
  %1366 = load i64, i64* %1365
  store i64 %1366, i64* %RSI.i54, align 8
  store %struct.Memory* %loadMem_41faac, %struct.Memory** %MEMORY
  %loadMem_41fab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 9
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RSI.i
  %1374 = load i64, i64* %PC.i50
  %1375 = add i64 %1374, 2
  store i64 %1375, i64* %PC.i50
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1377 = bitcast %union.anon* %1376 to i32*
  %1378 = load i32, i32* %1377, align 8
  %1379 = zext i32 %1378 to i64
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1381 = bitcast %union.anon* %1380 to i32*
  %1382 = load i32, i32* %1381, align 8
  %1383 = zext i32 %1382 to i64
  %1384 = inttoptr i64 %1373 to i32*
  %1385 = load i32, i32* %1384
  %1386 = sext i32 %1385 to i64
  %1387 = shl i64 %1383, 32
  %1388 = or i64 %1387, %1379
  %1389 = sdiv i64 %1388, %1386
  %1390 = shl i64 %1389, 32
  %1391 = ashr exact i64 %1390, 32
  %1392 = icmp eq i64 %1389, %1391
  br i1 %1392, label %1397, label %1393

; <label>:1393:                                   ; preds = %routine_shll__cl___edx.exit
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1395 = load i64, i64* %1394, align 8
  %1396 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1395, %struct.Memory* %loadMem_41fab0)
  br label %routine_idivl___rsi_.exit

; <label>:1397:                                   ; preds = %routine_shll__cl___edx.exit
  %1398 = srem i64 %1388, %1386
  %1399 = getelementptr inbounds %union.anon, %union.anon* %1376, i64 0, i32 0
  %1400 = and i64 %1389, 4294967295
  store i64 %1400, i64* %1399, align 8
  %1401 = getelementptr inbounds %union.anon, %union.anon* %1380, i64 0, i32 0
  %1402 = and i64 %1398, 4294967295
  store i64 %1402, i64* %1401, align 8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1403, align 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1404, align 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1405, align 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1406, align 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1407, align 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1408, align 1
  br label %routine_idivl___rsi_.exit

routine_idivl___rsi_.exit:                        ; preds = %1393, %1397
  %1409 = phi %struct.Memory* [ %1396, %1393 ], [ %loadMem_41fab0, %1397 ]
  store %struct.Memory* %1409, %struct.Memory** %MEMORY
  %loadMem_41fab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 1
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1415 to i32*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 15
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %1418 to i64*
  %1419 = load i64, i64* %RBP.i49
  %1420 = sub i64 %1419, 20
  %1421 = load i32, i32* %EAX.i
  %1422 = zext i32 %1421 to i64
  %1423 = load i64, i64* %PC.i48
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i48
  %1425 = inttoptr i64 %1420 to i32*
  store i32 %1421, i32* %1425
  store %struct.Memory* %loadMem_41fab2, %struct.Memory** %MEMORY
  %loadMem_41fab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 15
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1432, i64 0, i64 3
  %YMM3.i47 = bitcast %union.VectorReg* %1433 to %"class.std::bitset"*
  %1434 = bitcast %"class.std::bitset"* %YMM3.i47 to i8*
  %1435 = load i64, i64* %RBP.i46
  %1436 = sub i64 %1435, 20
  %1437 = load i64, i64* %PC.i45
  %1438 = add i64 %1437, 5
  store i64 %1438, i64* %PC.i45
  %1439 = bitcast i8* %1434 to <2 x i32>*
  %1440 = load <2 x i32>, <2 x i32>* %1439, align 1
  %1441 = getelementptr inbounds i8, i8* %1434, i64 8
  %1442 = bitcast i8* %1441 to <2 x i32>*
  %1443 = load <2 x i32>, <2 x i32>* %1442, align 1
  %1444 = inttoptr i64 %1436 to i32*
  %1445 = load i32, i32* %1444
  %1446 = sitofp i32 %1445 to float
  %1447 = bitcast i8* %1434 to float*
  store float %1446, float* %1447, align 1
  %1448 = extractelement <2 x i32> %1440, i32 1
  %1449 = getelementptr inbounds i8, i8* %1434, i64 4
  %1450 = bitcast i8* %1449 to i32*
  store i32 %1448, i32* %1450, align 1
  %1451 = extractelement <2 x i32> %1443, i32 0
  %1452 = bitcast i8* %1441 to i32*
  store i32 %1451, i32* %1452, align 1
  %1453 = extractelement <2 x i32> %1443, i32 1
  %1454 = getelementptr inbounds i8, i8* %1434, i64 12
  %1455 = bitcast i8* %1454 to i32*
  store i32 %1453, i32* %1455, align 1
  store %struct.Memory* %loadMem_41fab5, %struct.Memory** %MEMORY
  %loadMem_41faba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1459, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %1460 to %"class.std::bitset"*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1461, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1462 to %union.vec128_t*
  %1463 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1464 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1465 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1466 = load i64, i64* %PC.i44
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC.i44
  %1468 = bitcast i8* %1464 to <2 x float>*
  %1469 = load <2 x float>, <2 x float>* %1468, align 1
  %1470 = getelementptr inbounds i8, i8* %1464, i64 8
  %1471 = bitcast i8* %1470 to <2 x i32>*
  %1472 = load <2 x i32>, <2 x i32>* %1471, align 1
  %1473 = bitcast i8* %1465 to <2 x float>*
  %1474 = load <2 x float>, <2 x float>* %1473, align 1
  %1475 = extractelement <2 x float> %1469, i32 0
  %1476 = extractelement <2 x float> %1474, i32 0
  %1477 = fdiv float %1475, %1476
  %1478 = bitcast i8* %1463 to float*
  store float %1477, float* %1478, align 1
  %1479 = bitcast <2 x float> %1469 to <2 x i32>
  %1480 = extractelement <2 x i32> %1479, i32 1
  %1481 = getelementptr inbounds i8, i8* %1463, i64 4
  %1482 = bitcast i8* %1481 to i32*
  store i32 %1480, i32* %1482, align 1
  %1483 = extractelement <2 x i32> %1472, i32 0
  %1484 = getelementptr inbounds i8, i8* %1463, i64 8
  %1485 = bitcast i8* %1484 to i32*
  store i32 %1483, i32* %1485, align 1
  %1486 = extractelement <2 x i32> %1472, i32 1
  %1487 = getelementptr inbounds i8, i8* %1463, i64 12
  %1488 = bitcast i8* %1487 to i32*
  store i32 %1486, i32* %1488, align 1
  store %struct.Memory* %loadMem_41faba, %struct.Memory** %MEMORY
  %loadMem_41fabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1492, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %1493 to %union.vec128_t*
  %1494 = bitcast %union.vec128_t* %XMM3.i to i8*
  %1495 = load i64, i64* %PC.i43
  %1496 = add i64 %1495, 9
  store i64 %1496, i64* %PC.i43
  %1497 = bitcast i8* %1494 to <2 x float>*
  %1498 = load <2 x float>, <2 x float>* %1497, align 1
  %1499 = extractelement <2 x float> %1498, i32 0
  store float %1499, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*)
  store %struct.Memory* %loadMem_41fabe, %struct.Memory** %MEMORY
  %loadMem_41fac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1503, i64 0, i64 1
  %YMM1.i42 = bitcast %union.VectorReg* %1504 to %"class.std::bitset"*
  %1505 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %1506 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %1507 = load i64, i64* %PC.i41
  %1508 = add i64 %1507, 9
  store i64 %1508, i64* %PC.i41
  %1509 = bitcast i8* %1506 to <2 x float>*
  %1510 = load <2 x float>, <2 x float>* %1509, align 1
  %1511 = getelementptr inbounds i8, i8* %1506, i64 8
  %1512 = bitcast i8* %1511 to <2 x i32>*
  %1513 = load <2 x i32>, <2 x i32>* %1512, align 1
  %1514 = load float, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*)
  %1515 = extractelement <2 x float> %1510, i32 0
  %1516 = fmul float %1515, %1514
  %1517 = bitcast i8* %1505 to float*
  store float %1516, float* %1517, align 1
  %1518 = bitcast <2 x float> %1510 to <2 x i32>
  %1519 = extractelement <2 x i32> %1518, i32 1
  %1520 = getelementptr inbounds i8, i8* %1505, i64 4
  %1521 = bitcast i8* %1520 to i32*
  store i32 %1519, i32* %1521, align 1
  %1522 = extractelement <2 x i32> %1513, i32 0
  %1523 = getelementptr inbounds i8, i8* %1505, i64 8
  %1524 = bitcast i8* %1523 to i32*
  store i32 %1522, i32* %1524, align 1
  %1525 = extractelement <2 x i32> %1513, i32 1
  %1526 = getelementptr inbounds i8, i8* %1505, i64 12
  %1527 = bitcast i8* %1526 to i32*
  store i32 %1525, i32* %1527, align 1
  store %struct.Memory* %loadMem_41fac7, %struct.Memory** %MEMORY
  %loadMem_41fad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1531, i64 0, i64 1
  %XMM1.i40 = bitcast %union.VectorReg* %1532 to %union.vec128_t*
  %1533 = bitcast %union.vec128_t* %XMM1.i40 to i8*
  %1534 = load i64, i64* %PC.i39
  %1535 = add i64 %1534, 9
  store i64 %1535, i64* %PC.i39
  %1536 = bitcast i8* %1533 to <2 x float>*
  %1537 = load <2 x float>, <2 x float>* %1536, align 1
  %1538 = extractelement <2 x float> %1537, i32 0
  store float %1538, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*)
  store %struct.Memory* %loadMem_41fad0, %struct.Memory** %MEMORY
  %loadMem_41fad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1543 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1542, i64 0, i64 1
  %YMM1.i37 = bitcast %union.VectorReg* %1543 to %"class.std::bitset"*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1544, i64 0, i64 0
  %XMM0.i38 = bitcast %union.VectorReg* %1545 to %union.vec128_t*
  %1546 = bitcast %"class.std::bitset"* %YMM1.i37 to i8*
  %1547 = bitcast %union.vec128_t* %XMM0.i38 to i8*
  %1548 = load i64, i64* %PC.i36
  %1549 = add i64 %1548, 3
  store i64 %1549, i64* %PC.i36
  %1550 = bitcast i8* %1547 to <2 x i32>*
  %1551 = load <2 x i32>, <2 x i32>* %1550, align 1
  %1552 = getelementptr inbounds i8, i8* %1547, i64 8
  %1553 = bitcast i8* %1552 to <2 x i32>*
  %1554 = load <2 x i32>, <2 x i32>* %1553, align 1
  %1555 = extractelement <2 x i32> %1551, i32 0
  %1556 = bitcast i8* %1546 to i32*
  store i32 %1555, i32* %1556, align 1
  %1557 = extractelement <2 x i32> %1551, i32 1
  %1558 = getelementptr inbounds i8, i8* %1546, i64 4
  %1559 = bitcast i8* %1558 to i32*
  store i32 %1557, i32* %1559, align 1
  %1560 = extractelement <2 x i32> %1554, i32 0
  %1561 = getelementptr inbounds i8, i8* %1546, i64 8
  %1562 = bitcast i8* %1561 to i32*
  store i32 %1560, i32* %1562, align 1
  %1563 = extractelement <2 x i32> %1554, i32 1
  %1564 = getelementptr inbounds i8, i8* %1546, i64 12
  %1565 = bitcast i8* %1564 to i32*
  store i32 %1563, i32* %1565, align 1
  store %struct.Memory* %loadMem_41fad9, %struct.Memory** %MEMORY
  %loadMem_41fadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1569, i64 0, i64 1
  %YMM1.i35 = bitcast %union.VectorReg* %1570 to %"class.std::bitset"*
  %1571 = bitcast %"class.std::bitset"* %YMM1.i35 to i8*
  %1572 = bitcast %"class.std::bitset"* %YMM1.i35 to i8*
  %1573 = load i64, i64* %PC.i34
  %1574 = add i64 %1573, 9
  store i64 %1574, i64* %PC.i34
  %1575 = bitcast i8* %1572 to <2 x float>*
  %1576 = load <2 x float>, <2 x float>* %1575, align 1
  %1577 = getelementptr inbounds i8, i8* %1572, i64 8
  %1578 = bitcast i8* %1577 to <2 x i32>*
  %1579 = load <2 x i32>, <2 x i32>* %1578, align 1
  %1580 = load float, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*)
  %1581 = extractelement <2 x float> %1576, i32 0
  %1582 = fmul float %1581, %1580
  %1583 = bitcast i8* %1571 to float*
  store float %1582, float* %1583, align 1
  %1584 = bitcast <2 x float> %1576 to <2 x i32>
  %1585 = extractelement <2 x i32> %1584, i32 1
  %1586 = getelementptr inbounds i8, i8* %1571, i64 4
  %1587 = bitcast i8* %1586 to i32*
  store i32 %1585, i32* %1587, align 1
  %1588 = extractelement <2 x i32> %1579, i32 0
  %1589 = getelementptr inbounds i8, i8* %1571, i64 8
  %1590 = bitcast i8* %1589 to i32*
  store i32 %1588, i32* %1590, align 1
  %1591 = extractelement <2 x i32> %1579, i32 1
  %1592 = getelementptr inbounds i8, i8* %1571, i64 12
  %1593 = bitcast i8* %1592 to i32*
  store i32 %1591, i32* %1593, align 1
  store %struct.Memory* %loadMem_41fadc, %struct.Memory** %MEMORY
  %loadMem_41fae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1597, i64 0, i64 1
  %XMM1.i33 = bitcast %union.VectorReg* %1598 to %union.vec128_t*
  %1599 = bitcast %union.vec128_t* %XMM1.i33 to i8*
  %1600 = load i64, i64* %PC.i32
  %1601 = add i64 %1600, 9
  store i64 %1601, i64* %PC.i32
  %1602 = bitcast i8* %1599 to <2 x float>*
  %1603 = load <2 x float>, <2 x float>* %1602, align 1
  %1604 = extractelement <2 x float> %1603, i32 0
  store float %1604, float* bitcast (%G_0x70d4c8_type* @G_0x70d4c8 to float*)
  store %struct.Memory* %loadMem_41fae5, %struct.Memory** %MEMORY
  %loadMem_41faee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1608, i64 0, i64 1
  %YMM1.i30 = bitcast %union.VectorReg* %1609 to %"class.std::bitset"*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1611 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1610, i64 0, i64 0
  %XMM0.i31 = bitcast %union.VectorReg* %1611 to %union.vec128_t*
  %1612 = bitcast %"class.std::bitset"* %YMM1.i30 to i8*
  %1613 = bitcast %union.vec128_t* %XMM0.i31 to i8*
  %1614 = load i64, i64* %PC.i29
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %PC.i29
  %1616 = bitcast i8* %1613 to <2 x i32>*
  %1617 = load <2 x i32>, <2 x i32>* %1616, align 1
  %1618 = getelementptr inbounds i8, i8* %1613, i64 8
  %1619 = bitcast i8* %1618 to <2 x i32>*
  %1620 = load <2 x i32>, <2 x i32>* %1619, align 1
  %1621 = extractelement <2 x i32> %1617, i32 0
  %1622 = bitcast i8* %1612 to i32*
  store i32 %1621, i32* %1622, align 1
  %1623 = extractelement <2 x i32> %1617, i32 1
  %1624 = getelementptr inbounds i8, i8* %1612, i64 4
  %1625 = bitcast i8* %1624 to i32*
  store i32 %1623, i32* %1625, align 1
  %1626 = extractelement <2 x i32> %1620, i32 0
  %1627 = getelementptr inbounds i8, i8* %1612, i64 8
  %1628 = bitcast i8* %1627 to i32*
  store i32 %1626, i32* %1628, align 1
  %1629 = extractelement <2 x i32> %1620, i32 1
  %1630 = getelementptr inbounds i8, i8* %1612, i64 12
  %1631 = bitcast i8* %1630 to i32*
  store i32 %1629, i32* %1631, align 1
  store %struct.Memory* %loadMem_41faee, %struct.Memory** %MEMORY
  %loadMem_41faf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 1
  %YMM1.i28 = bitcast %union.VectorReg* %1636 to %"class.std::bitset"*
  %1637 = bitcast %"class.std::bitset"* %YMM1.i28 to i8*
  %1638 = bitcast %"class.std::bitset"* %YMM1.i28 to i8*
  %1639 = load i64, i64* %PC.i27
  %1640 = add i64 %1639, 9
  store i64 %1640, i64* %PC.i27
  %1641 = bitcast i8* %1638 to <2 x float>*
  %1642 = load <2 x float>, <2 x float>* %1641, align 1
  %1643 = getelementptr inbounds i8, i8* %1638, i64 8
  %1644 = bitcast i8* %1643 to <2 x i32>*
  %1645 = load <2 x i32>, <2 x i32>* %1644, align 1
  %1646 = load float, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*)
  %1647 = extractelement <2 x float> %1642, i32 0
  %1648 = fmul float %1647, %1646
  %1649 = bitcast i8* %1637 to float*
  store float %1648, float* %1649, align 1
  %1650 = bitcast <2 x float> %1642 to <2 x i32>
  %1651 = extractelement <2 x i32> %1650, i32 1
  %1652 = getelementptr inbounds i8, i8* %1637, i64 4
  %1653 = bitcast i8* %1652 to i32*
  store i32 %1651, i32* %1653, align 1
  %1654 = extractelement <2 x i32> %1645, i32 0
  %1655 = getelementptr inbounds i8, i8* %1637, i64 8
  %1656 = bitcast i8* %1655 to i32*
  store i32 %1654, i32* %1656, align 1
  %1657 = extractelement <2 x i32> %1645, i32 1
  %1658 = getelementptr inbounds i8, i8* %1637, i64 12
  %1659 = bitcast i8* %1658 to i32*
  store i32 %1657, i32* %1659, align 1
  store %struct.Memory* %loadMem_41faf1, %struct.Memory** %MEMORY
  %loadMem_41fafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1663, i64 0, i64 1
  %XMM1.i26 = bitcast %union.VectorReg* %1664 to %union.vec128_t*
  %1665 = bitcast %union.vec128_t* %XMM1.i26 to i8*
  %1666 = load i64, i64* %PC.i25
  %1667 = add i64 %1666, 9
  store i64 %1667, i64* %PC.i25
  %1668 = bitcast i8* %1665 to <2 x float>*
  %1669 = load <2 x float>, <2 x float>* %1668, align 1
  %1670 = extractelement <2 x float> %1669, i32 0
  store float %1670, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*)
  store %struct.Memory* %loadMem_41fafa, %struct.Memory** %MEMORY
  %loadMem_41fb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1675 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1674, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %1675 to %"class.std::bitset"*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1677 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1676, i64 0, i64 0
  %XMM0.i24 = bitcast %union.VectorReg* %1677 to %union.vec128_t*
  %1678 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %1679 = bitcast %union.vec128_t* %XMM0.i24 to i8*
  %1680 = load i64, i64* %PC.i22
  %1681 = add i64 %1680, 3
  store i64 %1681, i64* %PC.i22
  %1682 = bitcast i8* %1679 to <2 x i32>*
  %1683 = load <2 x i32>, <2 x i32>* %1682, align 1
  %1684 = getelementptr inbounds i8, i8* %1679, i64 8
  %1685 = bitcast i8* %1684 to <2 x i32>*
  %1686 = load <2 x i32>, <2 x i32>* %1685, align 1
  %1687 = extractelement <2 x i32> %1683, i32 0
  %1688 = bitcast i8* %1678 to i32*
  store i32 %1687, i32* %1688, align 1
  %1689 = extractelement <2 x i32> %1683, i32 1
  %1690 = getelementptr inbounds i8, i8* %1678, i64 4
  %1691 = bitcast i8* %1690 to i32*
  store i32 %1689, i32* %1691, align 1
  %1692 = extractelement <2 x i32> %1686, i32 0
  %1693 = getelementptr inbounds i8, i8* %1678, i64 8
  %1694 = bitcast i8* %1693 to i32*
  store i32 %1692, i32* %1694, align 1
  %1695 = extractelement <2 x i32> %1686, i32 1
  %1696 = getelementptr inbounds i8, i8* %1678, i64 12
  %1697 = bitcast i8* %1696 to i32*
  store i32 %1695, i32* %1697, align 1
  store %struct.Memory* %loadMem_41fb03, %struct.Memory** %MEMORY
  %loadMem_41fb06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1701, i64 0, i64 1
  %YMM1.i21 = bitcast %union.VectorReg* %1702 to %"class.std::bitset"*
  %1703 = bitcast %"class.std::bitset"* %YMM1.i21 to i8*
  %1704 = bitcast %"class.std::bitset"* %YMM1.i21 to i8*
  %1705 = load i64, i64* %PC.i20
  %1706 = add i64 %1705, 9
  store i64 %1706, i64* %PC.i20
  %1707 = bitcast i8* %1704 to <2 x float>*
  %1708 = load <2 x float>, <2 x float>* %1707, align 1
  %1709 = getelementptr inbounds i8, i8* %1704, i64 8
  %1710 = bitcast i8* %1709 to <2 x i32>*
  %1711 = load <2 x i32>, <2 x i32>* %1710, align 1
  %1712 = load float, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*)
  %1713 = extractelement <2 x float> %1708, i32 0
  %1714 = fmul float %1713, %1712
  %1715 = bitcast i8* %1703 to float*
  store float %1714, float* %1715, align 1
  %1716 = bitcast <2 x float> %1708 to <2 x i32>
  %1717 = extractelement <2 x i32> %1716, i32 1
  %1718 = getelementptr inbounds i8, i8* %1703, i64 4
  %1719 = bitcast i8* %1718 to i32*
  store i32 %1717, i32* %1719, align 1
  %1720 = extractelement <2 x i32> %1711, i32 0
  %1721 = getelementptr inbounds i8, i8* %1703, i64 8
  %1722 = bitcast i8* %1721 to i32*
  store i32 %1720, i32* %1722, align 1
  %1723 = extractelement <2 x i32> %1711, i32 1
  %1724 = getelementptr inbounds i8, i8* %1703, i64 12
  %1725 = bitcast i8* %1724 to i32*
  store i32 %1723, i32* %1725, align 1
  store %struct.Memory* %loadMem_41fb06, %struct.Memory** %MEMORY
  %loadMem_41fb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1729, i64 0, i64 1
  %XMM1.i19 = bitcast %union.VectorReg* %1730 to %union.vec128_t*
  %1731 = bitcast %union.vec128_t* %XMM1.i19 to i8*
  %1732 = load i64, i64* %PC.i18
  %1733 = add i64 %1732, 9
  store i64 %1733, i64* %PC.i18
  %1734 = bitcast i8* %1731 to <2 x float>*
  %1735 = load <2 x float>, <2 x float>* %1734, align 1
  %1736 = extractelement <2 x float> %1735, i32 0
  store float %1736, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*)
  store %struct.Memory* %loadMem_41fb0f, %struct.Memory** %MEMORY
  %loadMem_41fb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1741 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1740, i64 0, i64 1
  %YMM1.i16 = bitcast %union.VectorReg* %1741 to %"class.std::bitset"*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1743 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1742, i64 0, i64 0
  %XMM0.i17 = bitcast %union.VectorReg* %1743 to %union.vec128_t*
  %1744 = bitcast %"class.std::bitset"* %YMM1.i16 to i8*
  %1745 = bitcast %union.vec128_t* %XMM0.i17 to i8*
  %1746 = load i64, i64* %PC.i15
  %1747 = add i64 %1746, 3
  store i64 %1747, i64* %PC.i15
  %1748 = bitcast i8* %1745 to <2 x i32>*
  %1749 = load <2 x i32>, <2 x i32>* %1748, align 1
  %1750 = getelementptr inbounds i8, i8* %1745, i64 8
  %1751 = bitcast i8* %1750 to <2 x i32>*
  %1752 = load <2 x i32>, <2 x i32>* %1751, align 1
  %1753 = extractelement <2 x i32> %1749, i32 0
  %1754 = bitcast i8* %1744 to i32*
  store i32 %1753, i32* %1754, align 1
  %1755 = extractelement <2 x i32> %1749, i32 1
  %1756 = getelementptr inbounds i8, i8* %1744, i64 4
  %1757 = bitcast i8* %1756 to i32*
  store i32 %1755, i32* %1757, align 1
  %1758 = extractelement <2 x i32> %1752, i32 0
  %1759 = getelementptr inbounds i8, i8* %1744, i64 8
  %1760 = bitcast i8* %1759 to i32*
  store i32 %1758, i32* %1760, align 1
  %1761 = extractelement <2 x i32> %1752, i32 1
  %1762 = getelementptr inbounds i8, i8* %1744, i64 12
  %1763 = bitcast i8* %1762 to i32*
  store i32 %1761, i32* %1763, align 1
  store %struct.Memory* %loadMem_41fb18, %struct.Memory** %MEMORY
  %loadMem_41fb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1768 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1767, i64 0, i64 1
  %YMM1.i14 = bitcast %union.VectorReg* %1768 to %"class.std::bitset"*
  %1769 = bitcast %"class.std::bitset"* %YMM1.i14 to i8*
  %1770 = bitcast %"class.std::bitset"* %YMM1.i14 to i8*
  %1771 = load i64, i64* %PC.i13
  %1772 = add i64 %1771, 9
  store i64 %1772, i64* %PC.i13
  %1773 = bitcast i8* %1770 to <2 x float>*
  %1774 = load <2 x float>, <2 x float>* %1773, align 1
  %1775 = getelementptr inbounds i8, i8* %1770, i64 8
  %1776 = bitcast i8* %1775 to <2 x i32>*
  %1777 = load <2 x i32>, <2 x i32>* %1776, align 1
  %1778 = load float, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*)
  %1779 = extractelement <2 x float> %1774, i32 0
  %1780 = fmul float %1779, %1778
  %1781 = bitcast i8* %1769 to float*
  store float %1780, float* %1781, align 1
  %1782 = bitcast <2 x float> %1774 to <2 x i32>
  %1783 = extractelement <2 x i32> %1782, i32 1
  %1784 = getelementptr inbounds i8, i8* %1769, i64 4
  %1785 = bitcast i8* %1784 to i32*
  store i32 %1783, i32* %1785, align 1
  %1786 = extractelement <2 x i32> %1777, i32 0
  %1787 = getelementptr inbounds i8, i8* %1769, i64 8
  %1788 = bitcast i8* %1787 to i32*
  store i32 %1786, i32* %1788, align 1
  %1789 = extractelement <2 x i32> %1777, i32 1
  %1790 = getelementptr inbounds i8, i8* %1769, i64 12
  %1791 = bitcast i8* %1790 to i32*
  store i32 %1789, i32* %1791, align 1
  store %struct.Memory* %loadMem_41fb1b, %struct.Memory** %MEMORY
  %loadMem_41fb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1795, i64 0, i64 1
  %XMM1.i12 = bitcast %union.VectorReg* %1796 to %union.vec128_t*
  %1797 = bitcast %union.vec128_t* %XMM1.i12 to i8*
  %1798 = load i64, i64* %PC.i11
  %1799 = add i64 %1798, 9
  store i64 %1799, i64* %PC.i11
  %1800 = bitcast i8* %1797 to <2 x float>*
  %1801 = load <2 x float>, <2 x float>* %1800, align 1
  %1802 = extractelement <2 x float> %1801, i32 0
  store float %1802, float* bitcast (%G_0x70d4bc_type* @G_0x70d4bc to float*)
  store %struct.Memory* %loadMem_41fb24, %struct.Memory** %MEMORY
  %loadMem_41fb2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1807 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1806, i64 0, i64 1
  %YMM1.i9 = bitcast %union.VectorReg* %1807 to %"class.std::bitset"*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1808, i64 0, i64 0
  %XMM0.i10 = bitcast %union.VectorReg* %1809 to %union.vec128_t*
  %1810 = bitcast %"class.std::bitset"* %YMM1.i9 to i8*
  %1811 = bitcast %union.vec128_t* %XMM0.i10 to i8*
  %1812 = load i64, i64* %PC.i8
  %1813 = add i64 %1812, 3
  store i64 %1813, i64* %PC.i8
  %1814 = bitcast i8* %1811 to <2 x i32>*
  %1815 = load <2 x i32>, <2 x i32>* %1814, align 1
  %1816 = getelementptr inbounds i8, i8* %1811, i64 8
  %1817 = bitcast i8* %1816 to <2 x i32>*
  %1818 = load <2 x i32>, <2 x i32>* %1817, align 1
  %1819 = extractelement <2 x i32> %1815, i32 0
  %1820 = bitcast i8* %1810 to i32*
  store i32 %1819, i32* %1820, align 1
  %1821 = extractelement <2 x i32> %1815, i32 1
  %1822 = getelementptr inbounds i8, i8* %1810, i64 4
  %1823 = bitcast i8* %1822 to i32*
  store i32 %1821, i32* %1823, align 1
  %1824 = extractelement <2 x i32> %1818, i32 0
  %1825 = getelementptr inbounds i8, i8* %1810, i64 8
  %1826 = bitcast i8* %1825 to i32*
  store i32 %1824, i32* %1826, align 1
  %1827 = extractelement <2 x i32> %1818, i32 1
  %1828 = getelementptr inbounds i8, i8* %1810, i64 12
  %1829 = bitcast i8* %1828 to i32*
  store i32 %1827, i32* %1829, align 1
  store %struct.Memory* %loadMem_41fb2d, %struct.Memory** %MEMORY
  %loadMem_41fb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1833, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1834 to %"class.std::bitset"*
  %1835 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1836 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1837 = load i64, i64* %PC.i7
  %1838 = add i64 %1837, 9
  store i64 %1838, i64* %PC.i7
  %1839 = bitcast i8* %1836 to <2 x float>*
  %1840 = load <2 x float>, <2 x float>* %1839, align 1
  %1841 = getelementptr inbounds i8, i8* %1836, i64 8
  %1842 = bitcast i8* %1841 to <2 x i32>*
  %1843 = load <2 x i32>, <2 x i32>* %1842, align 1
  %1844 = load float, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*)
  %1845 = extractelement <2 x float> %1840, i32 0
  %1846 = fmul float %1845, %1844
  %1847 = bitcast i8* %1835 to float*
  store float %1846, float* %1847, align 1
  %1848 = bitcast <2 x float> %1840 to <2 x i32>
  %1849 = extractelement <2 x i32> %1848, i32 1
  %1850 = getelementptr inbounds i8, i8* %1835, i64 4
  %1851 = bitcast i8* %1850 to i32*
  store i32 %1849, i32* %1851, align 1
  %1852 = extractelement <2 x i32> %1843, i32 0
  %1853 = getelementptr inbounds i8, i8* %1835, i64 8
  %1854 = bitcast i8* %1853 to i32*
  store i32 %1852, i32* %1854, align 1
  %1855 = extractelement <2 x i32> %1843, i32 1
  %1856 = getelementptr inbounds i8, i8* %1835, i64 12
  %1857 = bitcast i8* %1856 to i32*
  store i32 %1855, i32* %1857, align 1
  store %struct.Memory* %loadMem_41fb30, %struct.Memory** %MEMORY
  %loadMem_41fb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1861, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1862 to %union.vec128_t*
  %1863 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1864 = load i64, i64* %PC.i6
  %1865 = add i64 %1864, 9
  store i64 %1865, i64* %PC.i6
  %1866 = bitcast i8* %1863 to <2 x float>*
  %1867 = load <2 x float>, <2 x float>* %1866, align 1
  %1868 = extractelement <2 x float> %1867, i32 0
  store float %1868, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*)
  store %struct.Memory* %loadMem_41fb39, %struct.Memory** %MEMORY
  %loadMem_41fb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1872, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1873 to %"class.std::bitset"*
  %1874 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1875 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1876 = load i64, i64* %PC.i5
  %1877 = add i64 %1876, 9
  store i64 %1877, i64* %PC.i5
  %1878 = bitcast i8* %1875 to <2 x float>*
  %1879 = load <2 x float>, <2 x float>* %1878, align 1
  %1880 = getelementptr inbounds i8, i8* %1875, i64 8
  %1881 = bitcast i8* %1880 to <2 x i32>*
  %1882 = load <2 x i32>, <2 x i32>* %1881, align 1
  %1883 = load float, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*)
  %1884 = extractelement <2 x float> %1879, i32 0
  %1885 = fmul float %1884, %1883
  %1886 = bitcast i8* %1874 to float*
  store float %1885, float* %1886, align 1
  %1887 = bitcast <2 x float> %1879 to <2 x i32>
  %1888 = extractelement <2 x i32> %1887, i32 1
  %1889 = getelementptr inbounds i8, i8* %1874, i64 4
  %1890 = bitcast i8* %1889 to i32*
  store i32 %1888, i32* %1890, align 1
  %1891 = extractelement <2 x i32> %1882, i32 0
  %1892 = getelementptr inbounds i8, i8* %1874, i64 8
  %1893 = bitcast i8* %1892 to i32*
  store i32 %1891, i32* %1893, align 1
  %1894 = extractelement <2 x i32> %1882, i32 1
  %1895 = getelementptr inbounds i8, i8* %1874, i64 12
  %1896 = bitcast i8* %1895 to i32*
  store i32 %1894, i32* %1896, align 1
  store %struct.Memory* %loadMem_41fb42, %struct.Memory** %MEMORY
  %loadMem_41fb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1901 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1900, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1901 to %union.vec128_t*
  %1902 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1903 = load i64, i64* %PC.i4
  %1904 = add i64 %1903, 9
  store i64 %1904, i64* %PC.i4
  %1905 = bitcast i8* %1902 to <2 x float>*
  %1906 = load <2 x float>, <2 x float>* %1905, align 1
  %1907 = extractelement <2 x float> %1906, i32 0
  store float %1907, float* bitcast (%G_0x70d4b4_type* @G_0x70d4b4 to float*)
  store %struct.Memory* %loadMem_41fb4b, %struct.Memory** %MEMORY
  %loadMem_41fb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 15
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %PC.i2
  %1915 = add i64 %1914, 1
  store i64 %1915, i64* %PC.i2
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1917 = load i64, i64* %1916, align 8
  %1918 = add i64 %1917, 8
  %1919 = inttoptr i64 %1917 to i64*
  %1920 = load i64, i64* %1919
  store i64 %1920, i64* %RBP.i3, align 8
  store i64 %1918, i64* %1916, align 8
  store %struct.Memory* %loadMem_41fb54, %struct.Memory** %MEMORY
  %loadMem_41fb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %PC.i1
  %1925 = add i64 %1924, 1
  store i64 %1925, i64* %PC.i1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1928 = load i64, i64* %1927, align 8
  %1929 = inttoptr i64 %1928 to i64*
  %1930 = load i64, i64* %1929
  store i64 %1930, i64* %1926, align 8
  %1931 = add i64 %1928, 8
  store i64 %1931, i64* %1927, align 8
  store %struct.Memory* %loadMem_41fb55, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41fb55
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

define %struct.Memory* @routine_movl__0x6___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
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

define %struct.Memory* @routine_movl_0x10__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xf___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 15, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 15
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
  %26 = xor i64 15, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41fa3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__cl___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
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
  store i64 %38, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_jmpq_.L_41fa63(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x9ddbd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x9ddbd__rip__type* @G_0x9ddbd__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9ddb9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x9ddb9__rip__type* @G_0x9ddb9__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9ddb5__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x9ddb5__rip__type* @G_0x9ddb5__rip_ to i64)
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

define %struct.Memory* @routine_movq__0x4b8ad0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4b8ad0_type* @G__0x4b8ad0 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl___rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %17 = bitcast %union.anon* %16 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = inttoptr i64 %9 to i32*
  %21 = load i32, i32* %20
  %22 = sext i32 %21 to i64
  %23 = shl i64 %19, 32
  %24 = or i64 %23, %15
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = srem i64 %24, %22
  %35 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %36 = and i64 %25, 4294967295
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
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
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %29, %33
  %45 = phi %struct.Memory* [ %32, %29 ], [ %2, %33 ]
  ret %struct.Memory* %45
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x14__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divss__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_movss__xmm3__0x6f96f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_0x6f96f8___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = load float, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*)
  %18 = extractelement <2 x float> %13, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast i8* %8 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %13 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %16, i32 0
  %26 = getelementptr inbounds i8, i8* %8, i64 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x70d4cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_mulss_0x70d4cc___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = load float, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*)
  %18 = extractelement <2 x float> %13, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast i8* %8 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %13 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %16, i32 0
  %26 = getelementptr inbounds i8, i8* %8, i64 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x70d4c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4c8_type* @G_0x70d4c8 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x70d4c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_0x70d4c4___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = load float, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*)
  %18 = extractelement <2 x float> %13, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast i8* %8 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %13 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %16, i32 0
  %26 = getelementptr inbounds i8, i8* %8, i64 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x70d4c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_0x70d4c0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = load float, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*)
  %18 = extractelement <2 x float> %13, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast i8* %8 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %13 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %16, i32 0
  %26 = getelementptr inbounds i8, i8* %8, i64 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x70d4bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4bc_type* @G_0x70d4bc to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x70d4b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_0x70d4b8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = load float, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*)
  %18 = extractelement <2 x float> %13, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast i8* %8 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %13 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %16, i32 0
  %26 = getelementptr inbounds i8, i8* %8, i64 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x70d4b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x70d4b4_type* @G_0x70d4b4 to float*)
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
